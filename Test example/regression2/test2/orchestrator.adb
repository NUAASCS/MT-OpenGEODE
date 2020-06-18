-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with VEGA;
use VEGA;
with TASTE_MONITORING;
use TASTE_MONITORING;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body orchestrator is
   type States is (running, wait_for_gui);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      plot_data : aliased T_Plot;
      sub_cycle : aliased T_UInt32;
      seq : aliased TASTE_Peek_id_list := (Data => (1 => 1, others => 1), Length => 1);
      gnc_input : aliased T_GNC_LV_SIM_CONTEXT;
      major_cycle : aliased T_UInt32;
      intr : aliased T_INTR;
      gnc_output : aliased T_GNC_LV_SIM_INPUTS;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 4;
   procedure runTransition(Id: Integer);
   procedure pulse is
      begin
         case ctxt.state is
            when running =>
               runTransition(2);
            when wait_for_gui =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end pulse;
      

   procedure start_simulation(gnc_input: access T_GNC_LV_SIM_CONTEXT) is
      begin
         case ctxt.state is
            when running =>
               ctxt.gnc_input := gnc_input.all;
               runTransition(1);
            when wait_for_gui =>
               ctxt.gnc_input := gnc_input.all;
               runTransition(3);
            when others =>
               runTransition(CS_Only);
         end case;
      end start_simulation;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  seq := seq // {2} // {1} (22,13)
                  ctxt.seq.Data(1..ctxt.seq.Length + 1 + 1) := ((((ctxt.seq.Data(1..ctxt.seq.Length)) & TASTE_Peek_id_list_Array'(1 => 2, others => <>)(1 .. 1))) & TASTE_Peek_id_list_Array'(1 => 1, others => <>)(1 .. 1));
                  ctxt.seq.Length := ctxt.seq.Length + 1 + 1;
                  --  writeln
                  --  ('[Orchestrator] Startup') (24,13)
                  Put("[Orchestrator] Startup");
                  New_Line;
                  --  intr := obt_pulse4 (27,13)
                  ctxt.intr := obt_pulse4;
                  --  telemetry (29,15)
                  RIÜtelemetry;
                  --  major_cycle := 1 (31,13)
                  ctxt.major_cycle := 1;
                  --  sub_cycle := 0 (32,0)
                  ctxt.sub_cycle := 0;
                  --  NEXT_STATE Wait_for_GUI (34,18) at 484, 732
                  trId := -1;
                  ctxt.state := Wait_for_GUI;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE Wait_for_GUI (44,22) at 1542, 336
                  trId := -1;
                  ctxt.state := Wait_for_GUI;
                  goto next_transition;
               when 2 =>
                  --  S_SET_GNC_LV_SIM_CONTEXT_FOR_NEXT_MAJOR_CYCLE
                  --  (gnc_input) (50,17)
                  --  COMMENT Set data computed
                  --  by the Simulink model
                  --  (Simulator) in the GNC
                  --  input vector (53,12)
                  RIÜS_SET_GNC_LV_SIM_CONTEXT_FOR_NEXT_MAJOR_CYCLE(ctxt.gnc_input'Access);
                  --  Scheduler
                  --  (intr) (58,17)
                  --  COMMENT Call the GNC function (61,12)
                  RIÜScheduler(ctxt.intr'Access);
                  --  S_GET_GNC_LV_SIM_INPUTS_FOR_NEXT_MAJOR_CYCLE
                  --  (gnc_output) (63,17)
                  --  COMMENT Read output data
                  --  from the GNC function (66,12)
                  RIÜS_GET_GNC_LV_SIM_INPUTS_FOR_NEXT_MAJOR_CYCLE(ctxt.gnc_output'Access);
                  --  VESAT_Simulation_Step
                  --  (gnc_output, gnc_input) (69,17)
                  --  COMMENT Call the Simulink model (72,12)
                  RIÜVESAT_Simulation_Step(ctxt.gnc_output'Access, ctxt.gnc_input'Access);
                  --  DECISION major_cycle mod 50 = 0
                  --  and
                  --  sub_cycle = 0 (75,0)
                  --  COMMENT Plot only every 50 major cycles
                  --  (otherwise performance is too low) (78,12)
                  --  ANSWER true (81,21)
                  if ((((ctxt.major_cycle mod 50) = 0) and (ctxt.sub_cycle = 0))) = true then
                     --  plot_data!major_cycle := major_cycle (83,29)
                     ctxt.plot_data.major_cycle := ctxt.major_cycle;
                     --  plot_data!subcycle := sub_cycle mod 7 (84,0)
                     ctxt.plot_data.subcycle := Asn1UInt((ctxt.sub_cycle mod 7));
                     --  plot_data!gnc_inputs := gnc_input (85,0)
                     ctxt.plot_data.gnc_inputs := ctxt.gnc_input;
                     --  plot_data!gnc_outputs := gnc_output (86,0)
                     ctxt.plot_data.gnc_outputs := ctxt.gnc_output;
                     --  plot(plot_data) (88,31)
                     RIÜplot(ctxt.plot_data'Access);
                     --  ANSWER false (90,21)
                  elsif ((((ctxt.major_cycle mod 50) = 0) and (ctxt.sub_cycle = 0))) = false then
                     null;
                  end if;
                  --  DECISION sub_cycle = 7 (93,31)
                  --  COMMENT Compute next major cycle (95,12)
                  --  ANSWER true (97,21)
                  if ((ctxt.sub_cycle = 7)) = true then
                     --  sub_cycle := 0 (99,29)
                     ctxt.sub_cycle := 0;
                     --  major_cycle := (major_cycle + 1) mod 100 (100,0)
                     ctxt.major_cycle := Asn1UInt(((ctxt.major_cycle + 1) mod 100));
                     --  S_JUMP_TO_NEXT_MAJOR_CYCLE (102,29)
                     RIÜS_JUMP_TO_NEXT_MAJOR_CYCLE;
                     --  ANSWER false (104,21)
                  elsif ((ctxt.sub_cycle = 7)) = false then
                     --  sub_cycle := (sub_cycle + 1) mod 100 (106,29)
                     ctxt.sub_cycle := Asn1UInt(((ctxt.sub_cycle + 1) mod 100));
                  end if;
                  --  NEXT_STATE Running (109,22) at 1090, 1206
                  trId := -1;
                  ctxt.state := Running;
                  goto next_transition;
               when 3 =>
                  --  writeln
                  --  ('[Orchestrator] Running') (117,17)
                  Put("[Orchestrator] Running");
                  New_Line;
                  --  NEXT_STATE Running (120,22) at 693, 422
                  trId := -1;
                  ctxt.state := Running;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end orchestrator;