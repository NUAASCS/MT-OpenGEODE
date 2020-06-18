-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with VEGA;
use VEGA;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body orchestrator is
   type States is (wait_for_vesat, running, pause, stopped, test_mode);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      sub_cycle : aliased asn1SccT_Int8 := (-1);
      gnc_input : aliased asn1SccT_GNC_LV_SIM_CONTEXT;
      major_cycle : aliased asn1SccT_UInt32 := 1;
      run_counter : aliased asn1SccT_UInt32 := 0;
      command : aliased asn1SccSimulation_Param;
      gnc_output : aliased asn1SccT_GNC_LV_SIM_INPUTS;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 9;
   procedure runTransition(Id: Integer);
   procedure p‹update_cycle;
   procedure p‹update_cycle is
      begin
         --  DECISION sub_cycle = 7 (26,31)
         --  COMMENT Compute next major cycle (28,12)
         --  ANSWER true (30,17)
         if ((ctxt.sub_cycle = 7)) = true then
            --  sub_cycle := 0 (32,25)
            ctxt.sub_cycle := AsN1INT(0);
            --  major_cycle := (major_cycle + 1) mod 50 (33,0)
            ctxt.major_cycle := Asn1UInt(((ctxt.major_cycle + 1) mod 50));
            --  jump_to_next_major_cycle (35,25)
            RI‹jump_to_next_major_cycle;
            --  ANSWER false (37,17)
         elsif ((ctxt.sub_cycle = 7)) = false then
            --  sub_cycle := (sub_cycle + 1) mod 7 (39,25)
            ctxt.sub_cycle := AsN1INT(((ctxt.sub_cycle + 1) mod 7));
         end if;
         --  RETURN  (None,None) at 360, 476
         return;
      end p‹update_cycle;
      

   procedure pulse is
      begin
         case ctxt.state is
            when wait_for_vesat =>
               runTransition(7);
            when running =>
               runTransition(3);
            when pause =>
               runTransition(CS_Only);
            when stopped =>
               runTransition(CS_Only);
            when test_mode =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end pulse;
      

   procedure simulate(simulation_choice: access asn1SccSimulation_Param) is
      begin
         case ctxt.state is
            when wait_for_vesat =>
               runTransition(CS_Only);
            when running =>
               ctxt.command := simulation_choice.all;
               runTransition(4);
            when pause =>
               ctxt.command := simulation_choice.all;
               runTransition(2);
            when stopped =>
               ctxt.command := simulation_choice.all;
               runTransition(5);
            when test_mode =>
               ctxt.command := simulation_choice.all;
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end simulate;
      

   procedure VESAT_Data(gnc_inputs: access asn1SccT_GNC_LV_SIM_CONTEXT) is
      begin
         case ctxt.state is
            when wait_for_vesat =>
               ctxt.gnc_input := gnc_inputs.all;
               runTransition(6);
            when running =>
               runTransition(CS_Only);
            when pause =>
               runTransition(CS_Only);
            when stopped =>
               runTransition(CS_Only);
            when test_mode =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end VESAT_Data;
      

   procedure timeout is
      begin
         case ctxt.state is
            when wait_for_vesat =>
               runTransition(8);
            when running =>
               runTransition(CS_Only);
            when pause =>
               runTransition(CS_Only);
            when stopped =>
               runTransition(CS_Only);
            when test_mode =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end timeout;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp14 : aliased asn1SccT_UInt32;
      tmp69 : aliased asn1SccT_Plot;
      --  !! stack: _call_external_function line 1271
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  writeln
                  --  ('[Orchestrator] Startup') (47,13)
                  Put("[Orchestrator] Startup");
                  New_Line;
                  --  NEXT_STATE Stopped (50,18) at 1571, 403
                  trId := -1;
                  ctxt.state := Stopped;
                  goto next_transition;
               when 1 =>
                  --  JOIN run_cmd (61,17) at 782, 263
                  goto run_cmd;
               when 2 =>
                  --  JOIN run_cmd (69,17) at 447, 165
                  goto run_cmd;
               when 3 =>
                  --  gnc_onestep
                  --  (gnc_input,
                  --  gnc_output) (79,17)
                  --  COMMENT Call the GNC function (83,12)
                  RI‹gnc_onestep(ctxt.gnc_input'Access, ctxt.gnc_output'Access);
                  --  VESAT_one_step
                  --  (gnc_output) (85,19)
                  --  COMMENT Get VESAT data (88,12)
                  RI‹VESAT_one_step(ctxt.gnc_output'Access);
                  --  set_timer
                  --  (1000, timeout) (90,17)
                  --  COMMENT Make sure we receive
                  --  an answer within one second (93,12)
                  tmp14 := 1000;
                  SET_timeout(tmp14'access);
                  --  NEXT_STATE Wait_for_vesat (96,22) at 1739, 438
                  trId := -1;
                  ctxt.state := Wait_for_vesat;
                  goto next_transition;
               when 4 =>
                  --  JOIN run_cmd (103,17) at 2149, 240
                  goto run_cmd;
               when 5 =>
                  --  gnc_init (111,17)
                  RI‹gnc_init;
                  --  JOIN run_cmd (None,None) at None, None
                  goto run_cmd;
               when 6 =>
                  --  reset_timer
                  --  (timeout) (196,17)
                  RESET_timeout;
                  --  update_cycle (199,17)
                  --  COMMENT Compute next major cycle (201,12)
                  p‹update_cycle;
                  --  DECISION run_counter (-1,-1)
                  --  ANSWER 0 (205,17)
                  if (ctxt.run_counter) = 0 then
                     null;
                     --  ANSWER >1 (207,17)
                  elsif (ctxt.run_counter) > 1 then
                     --  run_counter :=
                     --  (run_counter-1) mod 1 (209,25)
                     ctxt.run_counter := Asn1UInt(((ctxt.run_counter - 1) mod 1));
                     --  ANSWER ELSE (None,None)
                  else
                     --  writeln
                     --  ('[Orchestrator] Done') (214,25)
                     Put("[Orchestrator] Done");
                     New_Line;
                     --  NEXT_STATE Pause (217,30) at 2769, 568
                     trId := -1;
                     ctxt.state := Pause;
                     goto next_transition;
                  end if;
                  --  NEXT_STATE Running (220,22) at 2563, 633
                  trId := -1;
                  ctxt.state := Running;
                  goto next_transition;
               when 7 =>
                  --  writeln
                  --  ('[Orchestrator] Cycle loss') (224,17)
                  Put("[Orchestrator] Cycle loss");
                  New_Line;
                  --  NEXT_STATE Wait_for_vesat (227,22) at 2989, 297
                  trId := -1;
                  ctxt.state := Wait_for_vesat;
                  goto next_transition;
               when 8 =>
                  --  writeln
                  --  ('[Orchestrator] Lost connection?') (231,17)
                  Put("[Orchestrator] Lost connection?");
                  New_Line;
                  --  NEXT_STATE Pause (234,22) at 3241, 297
                  trId := -1;
                  ctxt.state := Pause;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            goto next_transition;
            --  CONNECTION Here (52,15)
            <<Here>>
            return;
            --  CONNECTION There (156,20)
            <<There>>
            goto AndHereAgain;
            --  CONNECTION AndHereAgain (177,12)
            <<AndHereAgain>>
            --  DECISION run_counter = 0 (179,33)
            --  ANSWER false (181,17)
            if ((ctxt.run_counter = 0)) = false then
               --  NEXT_STATE Running (183,30) at 276, 982
               trId := -1;
               ctxt.state := Running;
               goto next_transition;
               --  ANSWER true (185,17)
            elsif ((ctxt.run_counter = 0)) = true then
               --  NEXT_STATE Pause (187,30) at 166, 982
               trId := -1;
               ctxt.state := Pause;
               goto next_transition;
            end if;
            --  CONNECTION run_cmd (113,12)
            <<run_cmd>>
            --  gnc_input :=
            --  command!gnc_inputs (115,17)
            ctxt.gnc_input := ctxt.command.gnc_inputs;
            --  DECISION present(command!command) (-1,-1)
            --  ANSWER pause (120,17)
            if (ctxt.command.command.Kind) = pause_PRESENT then
               --  writeln
               --  ('[Orchestrator] Pause') (122,25)
               Put("[Orchestrator] Pause");
               New_Line;
               --  NEXT_STATE Pause (125,30) at 843, 561
               trId := -1;
               ctxt.state := Pause;
               goto next_transition;
               --  ANSWER run_forever (127,17)
            elsif (ctxt.command.command.Kind) = run_forever_PRESENT then
               --  run_counter := 0 (129,25)
               ctxt.run_counter := 0;
               --  writeln
               --  ('[Orchestrator] Running forever ') (131,25)
               Put("[Orchestrator] Running forever ");
               New_Line;
               --  ANSWER run_n_seconds (134,17)
            elsif (ctxt.command.command.Kind) = run_n_seconds_PRESENT then
               --  run_counter :=
               --  (command!command!run_n_seconds * 25)
               --  mod 2147483647 (136,25)
               ctxt.run_counter := Asn1UInt(((ctxt.command.command.run_n_seconds * 25) mod 2147483647));
               --  writeln
               --  ('[Orchestrator] Running ',
               --  run_counter,
               --   ' steps') (140,25)
               Put("[Orchestrator] Running ");
               Put(asn1SccT_UInt32'Image(ctxt.run_counter));
               Put(" steps");
               New_Line;
               --  ANSWER run_n_steps (145,17)
            elsif (ctxt.command.command.Kind) = run_n_steps_PRESENT then
               --  run_counter :=
               --  (command!command!run_n_steps)
               --  mod 2147483647 (147,25)
               ctxt.run_counter := Asn1UInt((ctxt.command.command.run_n_steps mod 2147483647));
               --  writeln
               --  ('[Orchestrator] Running ',
               --  run_counter,
               --   ' steps') (151,25)
               Put("[Orchestrator] Running ");
               Put(asn1SccT_UInt32'Image(ctxt.run_counter));
               Put(" steps");
               New_Line;
               --  JOIN There (None,None) at None, None
               goto There;
               --  ANSWER test_gnc (158,17)
            elsif (ctxt.command.command.Kind) = test_gnc_PRESENT then
               --  gnc_onestep
               --  (gnc_input,
               --  gnc_output) (160,25)
               --  COMMENT Call the GNC function
               --  (for testing only) (164,20)
               RI‹gnc_onestep(ctxt.gnc_input'Access, ctxt.gnc_output'Access);
               --  plot( { major_cycle major_cycle,
               --  subcycle sub_cycle,
               --  gnc_inputs gnc_input,
               --  gnc_outputs gnc_output }) (167,27)
               tmp69 := asn1SccT_Plot'( gnc_inputs => ctxt.gnc_input,  major_cycle => ctxt.major_cycle,  subcycle => ctxt.sub_cycle,  gnc_outputs => ctxt.gnc_output);
               RI‹plot(tmp69'Access);
               --  update_cycle (172,25)
               p‹update_cycle;
               --  NEXT_STATE test_mode (174,30) at 1051, 712
               trId := -1;
               ctxt.state := test_mode;
               goto next_transition;
            end if;
            --  JOIN AndHereAgain (None,None) at None, None
            goto AndHereAgain;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end orchestrator;