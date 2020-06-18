-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body og is
   type States is (wait‹generic_tc_handler_1‹wait_for_tc, wait‹exception_handler‹wait_for_tc, wait‹generic_tc_handler_2‹processing_tc, wait‹tc_router, wait‹generic_tc_handler_2‹wait_for_tc, ‹finished, wait‹tc_router‹wait_for_tc, safe‹inside_safe, wait‹generic_tc_handler_1, wait‹generic_tc_handler_2, wait‹exception_handler, wait‹generic_tc_handler_1‹processing_tc, wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      wait‹exception_handler‹state: States;
      wait‹tc_router‹state: States;
      wait‹generic_tc_handler_2‹state: States;
      wait‹generic_tc_handler_1‹state: States;
      got_tc : aliased Boolean_Type;
      failure : aliased Boolean_Type := false;
      tm : aliased TM_Type;
      tc : aliased TC_Type;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 14;
   wait‹generic_tc_handler_2‹START : constant := 8;
   wait‹exception_handler‹START : constant := 4;
   wait‹generic_tc_handler_1‹START : constant := 11;
   safe‹START : constant := 3;
   wait‹tc_router‹START : constant := 6;
   procedure wait‹START;
   procedure runTransition(Id: Integer);
   procedure wait‹START is
      begin
         runTransition(wait‹exception_handler‹START);
         runTransition(wait‹tc_router‹START);
         runTransition(wait‹generic_tc_handler_2‹START);
         runTransition(wait‹generic_tc_handler_1‹START);
      end wait‹START;
      

   procedure telecommand(telecommand_param: access TC_Type) is
      begin
         case ctxt.state is
            when wait‹tc_router =>
               runTransition(CS_Only);
            when safe‹inside_safe =>
               runTransition(CS_Only);
            when wait‹generic_tc_handler_1 =>
               runTransition(CS_Only);
            when wait‹generic_tc_handler_2 =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.wait‹tc_router‹state is
                  when wait‹tc_router‹wait_for_tc =>
                     ctxt.tc := telecommand_param.all;
                     runTransition(7);
                  when others =>
                     null;
               end case;
            when wait‹exception_handler =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end telecommand;
      

   procedure timer1 is
      begin
         case ctxt.state is
            when wait‹tc_router =>
               runTransition(CS_Only);
            when safe‹inside_safe =>
               runTransition(CS_Only);
            when wait‹generic_tc_handler_1 =>
               runTransition(CS_Only);
            when wait‹generic_tc_handler_2 =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.wait‹generic_tc_handler_1‹state is
                  when wait‹generic_tc_handler_1‹wait_for_tc =>
                     runTransition(CS_Only);
                  when wait‹generic_tc_handler_1‹processing_tc =>
                     runTransition(12);
                  when others =>
                     null;
               end case;
            when wait‹exception_handler =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end timer1;
      

   procedure timer2 is
      begin
         case ctxt.state is
            when wait‹tc_router =>
               runTransition(CS_Only);
            when safe‹inside_safe =>
               runTransition(CS_Only);
            when wait‹generic_tc_handler_1 =>
               runTransition(CS_Only);
            when wait‹generic_tc_handler_2 =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.wait‹generic_tc_handler_2‹state is
                  when wait‹generic_tc_handler_2‹wait_for_tc =>
                     runTransition(CS_Only);
                  when wait‹generic_tc_handler_2‹processing_tc =>
                     runTransition(9);
                  when others =>
                     null;
               end case;
            when wait‹exception_handler =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end timer2;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      msgPending : aliased Asn1Boolean := True;
      tmp28 : aliased T_UInt32;
      tmp17 : aliased T_UInt32;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE wait (163,26) at 354, 348
                  -- Entering state aggregation wait
                  wait‹START;
                  ctxt.state := wait;
                  trId := -1;
                  goto next_transition;
               when 1 =>
                  --  writeln('Going to SAFE mode') (170,25)
                  Put("Going to SAFE mode");
                  New_Line;
                  --  NEXT_STATE safe (172,30) at 358, 505
                  trId := safe‹START;
                  goto next_transition;
               when 2 =>
                  --  NEXT_STATE wait (176,30) at 556, 452
                  -- Entering state aggregation wait
                  wait‹START;
                  ctxt.state := wait;
                  trId := -1;
                  goto next_transition;
               when 3 =>
                  --  NEXT_STATE safe‹Inside_safe (24,34) at 135, 146
                  trId := -1;
                  ctxt.state := safe‹Inside_safe;
                  goto next_transition;
               when 4 =>
                  --  NEXT_STATE wait‹exception_handler‹wait_for_tc (36,42) at 246, 128
                  trId := -1;
                  ctxt.wait‹exception_handler‹state := wait‹exception_handler‹wait_for_tc;
                  goto next_transition;
               when 5 =>
                  --  writeln('ERROR, all TC handlers are busy - discarding') (42,41)
                  Put("ERROR, all TC handlers are busy - discarding");
                  New_Line;
                  --  failure := true (44,41)
                  ctxt.failure := true;
                  --  NEXT_STATE - (46,46) at 263, 336
                  trId := -1;
                  goto next_transition;
               when 6 =>
                  --  NEXT_STATE wait‹tc_router‹wait_for_tc (54,42) at 116, 106
                  trId := -1;
                  ctxt.wait‹tc_router‹state := wait‹tc_router‹wait_for_tc;
                  goto next_transition;
               when 7 =>
                  --  got_tc := true (60,41)
                  ctxt.got_tc := true;
                  --  NEXT_STATE - (62,46) at 145, 261
                  trId := -1;
                  goto next_transition;
               when 8 =>
                  --  NEXT_STATE wait‹generic_tc_handler_2‹wait_for_tc (75,42) at 494, 134
                  trId := -1;
                  ctxt.wait‹generic_tc_handler_2‹state := wait‹generic_tc_handler_2‹wait_for_tc;
                  goto next_transition;
               when 9 =>
                  --  writeln('TC2 completed') (81,41)
                  Put("TC2 completed");
                  New_Line;
                  --  NEXT_STATE wait‹generic_tc_handler_2‹wait_for_tc (83,46) at 839, 319
                  trId := -1;
                  ctxt.wait‹generic_tc_handler_2‹state := wait‹generic_tc_handler_2‹wait_for_tc;
                  goto next_transition;
               when 10 =>
                  --  got_tc := false (90,41)
                  ctxt.got_tc := false;
                  --  writeln('Processing TC 2') (92,41)
                  Put("Processing TC 2");
                  New_Line;
                  --  set_timer(5000, timer2) (94,41)
                  tmp17 := 5000;
                  SET_timer2(tmp17'access);
                  --  NEXT_STATE wait‹generic_tc_handler_2‹Processing_TC (96,46) at 483, 389
                  trId := -1;
                  ctxt.wait‹generic_tc_handler_2‹state := wait‹generic_tc_handler_2‹Processing_TC;
                  goto next_transition;
               when 11 =>
                  --  NEXT_STATE wait‹generic_tc_handler_1‹wait_for_tc (109,42) at 472, 134
                  trId := -1;
                  ctxt.wait‹generic_tc_handler_1‹state := wait‹generic_tc_handler_1‹wait_for_tc;
                  goto next_transition;
               when 12 =>
                  --  writeln('TC1 completed') (115,41)
                  Put("TC1 completed");
                  New_Line;
                  --  NEXT_STATE wait‹generic_tc_handler_1‹wait_for_tc (117,46) at 675, 337
                  trId := -1;
                  ctxt.wait‹generic_tc_handler_1‹state := wait‹generic_tc_handler_1‹wait_for_tc;
                  goto next_transition;
               when 13 =>
                  --  got_tc := false (124,41)
                  ctxt.got_tc := false;
                  --  writeln('Processing TC 1') (126,41)
                  Put("Processing TC 1");
                  New_Line;
                  --  set_timer(5000, timer1) (128,41)
                  tmp28 := 5000;
                  SET_timer1(tmp28'access);
                  --  NEXT_STATE wait‹generic_tc_handler_1‹Processing_TC (130,46) at 461, 389
                  trId := -1;
                  ctxt.wait‹generic_tc_handler_1‹state := wait‹generic_tc_handler_1‹Processing_TC;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            <<next_transition>>
            --  Process continuous signals
            if ctxt.initDone then
               Check_Queue(msgPending'access);
            end if;
            if not msgPending and trId = -1 and ctxt.state = wait and ctxt.wait‹generic_tc_handler_1‹state = wait‹generic_tc_handler_1‹wait_for_tc then
               -- Priority 1
               --  DECISION got_tc (-1,-1)
               --  ANSWER true (None,None)
               if (ctxt.got_tc) = true then
                  trId := 13;
               end if;
            elsif not msgPending and trId = -1 and ctxt.state = wait and ctxt.wait‹exception_handler‹state = wait‹exception_handler‹wait_for_tc then
               -- Priority 1
               --  DECISION got_tc (-1,-1)
               --  ANSWER true (None,None)
               if (ctxt.got_tc) = true then
                  trId := 5;
               end if;
            elsif not msgPending and trId = -1 and ctxt.state = wait and ctxt.wait‹generic_tc_handler_2‹state = wait‹generic_tc_handler_2‹wait_for_tc then
               -- Priority 1
               --  DECISION got_tc (-1,-1)
               --  ANSWER true (None,None)
               if (ctxt.got_tc) = true then
                  trId := 10;
               end if;
            elsif not msgPending and trId = -1 and ctxt.state = wait then
               -- Priority 2
               --  DECISION failure (-1,-1)
               --  ANSWER true (None,None)
               if (ctxt.failure) = true then
                  trId := 1;
                  -- Priority 3
                  --  DECISION true = false (174,30)
                  --  ANSWER true (None,None)
               elsif ((true = false)) = true then
                  trId := 2;
               end if;
            end if;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end og;