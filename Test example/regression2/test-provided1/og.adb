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
   type States is (wait‹mode_manager‹wait_for_tc, wait‹tc_router, wait‹memory_manager, wait‹tc_router‹wait_for_tc, wait‹memory_manager‹wait_for_tc, ‹finished, starting, wait‹mode_manager, wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      wait‹memory_manager‹state: States;
      wait‹tc_router‹state: States;
      wait‹mode_manager‹state: States;
      got_tc : aliased Boolean_Type;
      tm : aliased TM_Type;
      tc : aliased TC_Type;
      anything : aliased Boolean_Type := true;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 9;
   wait‹mode_manager‹START : constant := 6;
   wait‹memory_manager‹START : constant := 2;
   wait‹tc_router‹START : constant := 4;
   procedure wait‹START;
   procedure runTransition(Id: Integer);
   procedure wait‹START is
      begin
         runTransition(wait‹memory_manager‹START);
         runTransition(wait‹tc_router‹START);
         runTransition(wait‹mode_manager‹START);
      end wait‹START;
      

   procedure telecommand(telecommand_param: access TC_Type) is
      begin
         case ctxt.state is
            when starting =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.wait‹tc_router‹state is
                  when wait‹tc_router‹wait_for_tc =>
                     ctxt.tc := telecommand_param.all;
                     runTransition(5);
                  when others =>
                     null;
               end case;
            when wait‹tc_router =>
               runTransition(CS_Only);
            when wait‹mode_manager =>
               runTransition(CS_Only);
            when wait‹memory_manager =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end telecommand;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      msgPending : aliased Asn1Boolean := True;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE starting (108,26) at 336, 348
                  trId := -1;
                  ctxt.state := starting;
                  goto next_transition;
               when 1 =>
                  --  anything := false (117,25)
                  ctxt.anything := false;
                  --  writeln('Lets go') (119,25)
                  Put("Lets go");
                  New_Line;
                  --  NEXT_STATE wait (121,30) at 499, 549
                  -- Entering state aggregation wait
                  wait‹START;
                  ctxt.state := wait;
                  trId := -1;
                  goto next_transition;
               when 2 =>
                  --  NEXT_STATE wait‹memory_manager‹wait_for_tc (26,42) at 231, 110
                  trId := -1;
                  ctxt.wait‹memory_manager‹state := wait‹memory_manager‹wait_for_tc;
                  goto next_transition;
               when 3 =>
                  --  writeln('Patch Memory') (32,41)
                  Put("Patch Memory");
                  New_Line;
                  --  COMMENT Reset the flag to avoid
                  --  infinite loop (36,36)
                  --  got_tc := false (34,41)
                  ctxt.got_tc := false;
                  --  NEXT_STATE - (39,46) at 258, 315
                  trId := -1;
                  goto next_transition;
               when 4 =>
                  --  NEXT_STATE wait‹tc_router‹wait_for_tc (47,42) at 116, 106
                  trId := -1;
                  ctxt.wait‹tc_router‹state := wait‹tc_router‹wait_for_tc;
                  goto next_transition;
               when 5 =>
                  --  got_tc := true (53,41)
                  ctxt.got_tc := true;
                  --  NEXT_STATE - (55,46) at 145, 261
                  trId := -1;
                  goto next_transition;
               when 6 =>
                  --  NEXT_STATE wait‹mode_manager‹wait_for_tc (63,42) at 331, 158
                  trId := -1;
                  ctxt.wait‹mode_manager‹state := wait‹mode_manager‹wait_for_tc;
                  goto next_transition;
               when 7 =>
                  --  writeln('Change Mode') (69,41)
                  Put("Change Mode");
                  New_Line;
                  --  COMMENT Reset the flag to avoid
                  --  infinite loop (73,36)
                  --  got_tc := false (71,41)
                  ctxt.got_tc := false;
                  --  NEXT_STATE - (76,46) at 213, 363
                  trId := -1;
                  goto next_transition;
               when 8 =>
                  --  NEXT_STATE - (80,46) at 590, 263
                  trId := -1;
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
            if not msgPending and trId = -1 and ctxt.state = wait and ctxt.wait‹mode_manager‹state = wait‹mode_manager‹wait_for_tc then
               -- Priority 1
               --  DECISION got_tc=true and present(tc!content)=change_mode (67,53)
               --  ANSWER true (None,None)
               if (((ctxt.got_tc = true) and (ctxt.tc.content.Kind = change_mode_PRESENT))) = true then
                  trId := 7;
                  -- Priority 1
                  --  DECISION true = false (78,46)
                  --  ANSWER true (None,None)
               elsif ((true = false)) = true then
                  trId := 8;
               end if;
            elsif not msgPending and trId = -1 and ctxt.state = wait and ctxt.wait‹memory_manager‹state = wait‹memory_manager‹wait_for_tc then
               -- Priority 1
               --  DECISION got_tc=true and present(tc!content)=patch_memory (30,53)
               --  ANSWER true (None,None)
               if (((ctxt.got_tc = true) and (ctxt.tc.content.Kind = patch_memory_PRESENT))) = true then
                  trId := 3;
               end if;
            elsif not msgPending and trId = -1 and ctxt.state = starting then
               -- Priority 1
               --  DECISION anything (-1,-1)
               --  ANSWER true (None,None)
               if (ctxt.anything) = true then
                  trId := 1;
               end if;
            end if;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end og;