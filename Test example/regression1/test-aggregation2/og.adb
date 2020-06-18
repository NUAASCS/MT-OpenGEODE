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
   type States is (waitÜa, waitÜb, waitÜbÜb1, waitÜbÜb2, the_end, waitÜaÜa1, waitÜaÜa2, Üfinished, wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      waitÜaÜstate: States;
      waitÜbÜstate: States;
      x : aliased asn1SccMyInteger;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 12;
   waitÜaÜSTART : constant := 5;
   waitÜaÜhehe_START : constant := 4;
   waitÜbÜSTART : constant := 9;
   procedure waitÜSTART;
   procedure runTransition(Id: Integer);
   procedure pÜwaitÜaÜentry;
   procedure pÜwaitÜaÜentry is
      begin
         --  writeln('[a] entry (before startup)') (38,41)
         Put("[a] entry (before startup)");
         New_Line;
         --  RETURN  (None,None) at 136, 158
         return;
      end pÜwaitÜaÜentry;
      

   procedure waitÜSTART is
      begin
         runTransition(waitÜaÜSTART);
         runTransition(waitÜbÜSTART);
      end waitÜSTART;
      

   procedure reset_all(reset_all_param: access asn1SccMyInteger) is
      begin
         case ctxt.state is
            when waitÜa =>
               runTransition(CS_Only);
            when waitÜb =>
               runTransition(CS_Only);
            when the_end =>
               ctxt.x := reset_all_param.all;
               runTransition(3);
            when wait =>
               -- this is a state aggregation
               case ctxt.waitÜaÜstate is
                  when waitÜaÜa1 =>
                     runTransition(CS_Only);
                  when waitÜaÜa2 =>
                     ctxt.x := reset_all_param.all;
                     runTransition(7);
                  when others =>
                     null;
               end case;
            when others =>
               runTransition(CS_Only);
         end case;
      end reset_all;
      

   procedure for_a is
      begin
         case ctxt.state is
            when waitÜa =>
               runTransition(CS_Only);
            when waitÜb =>
               runTransition(CS_Only);
            when the_end =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.waitÜaÜstate is
                  when waitÜaÜa1 =>
                     runTransition(8);
                  when waitÜaÜa2 =>
                     runTransition(6);
                  when others =>
                     null;
               end case;
            when others =>
               runTransition(CS_Only);
         end case;
      end for_a;
      

   procedure for_b is
      begin
         case ctxt.state is
            when waitÜa =>
               runTransition(CS_Only);
            when waitÜb =>
               runTransition(CS_Only);
            when the_end =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.waitÜbÜstate is
                  when waitÜbÜb1 =>
                     runTransition(11);
                  when waitÜbÜb2 =>
                     runTransition(10);
                  when others =>
                     null;
               end case;
            when others =>
               runTransition(CS_Only);
         end case;
      end for_b;
      

   procedure exit_aggreg is
      begin
         case ctxt.state is
            when waitÜa =>
               runTransition(CS_Only);
            when waitÜb =>
               runTransition(CS_Only);
            when the_end =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               runTransition(1);
               null;
            when others =>
               runTransition(CS_Only);
         end case;
      end exit_aggreg;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE wait (119,26) at 0, 299
                  -- Entering state aggregation wait
                  waitÜSTART;
                  ctxt.state := wait;
                  trId := -1;
                  goto next_transition;
               when 1 =>
                  --  writeln('got exit_aggreg') (125,25)
                  Put("got exit_aggreg");
                  New_Line;
                  --  NEXT_STATE the_end (127,30) at 213, 461
                  trId := -1;
                  ctxt.state := the_end;
                  goto next_transition;
               when 2 =>
                  --  writeln('Synchronous return from wait') (131,25)
                  Put("Synchronous return from wait");
                  New_Line;
                  --  NEXT_STATE the_end (133,30) at 462, 461
                  trId := -1;
                  ctxt.state := the_end;
                  goto next_transition;
               when 3 =>
                  --  writeln('Entering again aggregation') (140,25)
                  Put("Entering again aggregation");
                  New_Line;
                  --  NEXT_STATE wait (142,30) at 791, 458
                  -- Entering state aggregation wait
                  waitÜSTART;
                  ctxt.state := wait;
                  trId := -1;
                  goto next_transition;
               when 4 =>
                  --  entry (None,None)
                  pÜwaitÜaÜentry;
                  --  NEXT_STATE waitÜaÜa1 (45,42) at 307, 364
                  trId := -1;
                  ctxt.waitÜaÜstate := waitÜaÜa1;
                  goto next_transition;
               when 5 =>
                  --  entry (None,None)
                  pÜwaitÜaÜentry;
                  --  writeln('[a] startup') (49,37)
                  Put("[a] startup");
                  New_Line;
                  --  NEXT_STATE waitÜaÜa1 (51,42) at 0, 157
                  trId := -1;
                  ctxt.waitÜaÜstate := waitÜaÜa1;
                  goto next_transition;
               when 6 =>
                  --  writeln('[a] Going to a1') (57,41)
                  Put("[a] Going to a1");
                  New_Line;
                  --  NEXT_STATE waitÜaÜa1 (59,46) at 243, 208
                  trId := -1;
                  ctxt.waitÜaÜstate := waitÜaÜa1;
                  goto next_transition;
               when 7 =>
                  --  writeln('Reset_all from substate a2') (63,41)
                  Put("Reset_all from substate a2");
                  New_Line;
                  --  RETURN  (None,None) at 520, 208
                  ctxt.waitÜaÜstate := Üfinished;
                  if ctxt.waitÜbÜstate = Üfinished then
                     trId := 2;
                     goto next_transition;
                  else
                     trId := -1;
                     goto next_transition;
                  end if;
               when 8 =>
                  --  writeln('[a] Going to a2') (72,41)
                  Put("[a] Going to a2");
                  New_Line;
                  --  NEXT_STATE waitÜaÜa2 (74,46) at 0, 312
                  trId := -1;
                  ctxt.waitÜaÜstate := waitÜaÜa2;
                  goto next_transition;
               when 9 =>
                  --  writeln('[b] startup') (82,37)
                  Put("[b] startup");
                  New_Line;
                  --  NEXT_STATE waitÜbÜb1 (84,42) at 85, 155
                  trId := -1;
                  ctxt.waitÜbÜstate := waitÜbÜb1;
                  goto next_transition;
               when 10 =>
                  --  writeln('[b] got for_b in b2, exiting state b...') (90,41)
                  Put("[b] got for_b in b2, exiting state b...");
                  New_Line;
                  --  RETURN  (None,None) at 410, 299
                  ctxt.waitÜbÜstate := Üfinished;
                  if ctxt.waitÜaÜstate = Üfinished then
                     trId := 2;
                     goto next_transition;
                  else
                     trId := -1;
                     goto next_transition;
                  end if;
               when 11 =>
                  --  writeln('[b] Going to b2') (99,41)
                  Put("[b] Going to b2");
                  New_Line;
                  --  NEXT_STATE waitÜbÜb2 (101,46) at 82, 310
                  trId := -1;
                  ctxt.waitÜbÜstate := waitÜbÜb2;
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
end og;