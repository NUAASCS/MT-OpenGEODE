-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body orchestrator is
   type States is (running, wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      counter : aliased T_Int := 0;
      seqof : aliased T_SeqOf;
      t : aliased T_Int := 0;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 5;
   procedure runTransition(Id: Integer);
   procedure pulse(pulse_param: access T_Int) is
      begin
         case ctxt.state is
            when running =>
               runTransition(1);
            when wait =>
               ctxt.t := pulse_param.all;
               runTransition(2);
            when others =>
               runTransition(CS_Only);
         end case;
      end pulse;
      

   procedure arr(arr_param: access T_SeqOf) is
      begin
         case ctxt.state is
            when running =>
               runTransition(1);
            when wait =>
               ctxt.seqof := arr_param.all;
               runTransition(3);
            when others =>
               runTransition(CS_Only);
         end case;
      end arr;
      

   procedure paramless is
      begin
         case ctxt.state is
            when running =>
               runTransition(1);
            when wait =>
               runTransition(4);
            when others =>
               runTransition(CS_Only);
         end case;
      end paramless;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  writeln( 'Orchestrator startup') (36,21)
                  Put("Orchestrator startup");
                  New_Line;
                  --  NEXT_STATE wait (38,26) at 435, 152
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE wait (44,30) at 825, 204
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 2 =>
                  --  DECISION t (-1,-1)
                  --  ANSWER 0 (53,25)
                  if (ctxt.t) = 0 then
                     --  seqof := {1,1,1,1} (55,33)
                     ctxt.seqof := (Data => (1 => 1, 2 => 1, 3 => 1, 4 => 1, others => 1), Length => 4);
                     --  counter := 0 (56,0)
                     ctxt.counter := 0;
                     --  t := 0 (57,0)
                     ctxt.t := 0;
                     --  NEXT_STATE wait (59,38) at 27, 443
                     trId := -1;
                     ctxt.state := wait;
                     goto next_transition;
                     --  ANSWER else (None,None)
                  else
                     --  seqof := {1,1,1,1} (63,33)
                     ctxt.seqof := (Data => (1 => 1, 2 => 1, 3 => 1, 4 => 1, others => 1), Length => 4);
                     --  counter := 0 (64,0)
                     ctxt.counter := 0;
                     --  t := 0 (65,0)
                     ctxt.t := 0;
                     --  NEXT_STATE running (67,38) at 161, 443
                     trId := -1;
                     ctxt.state := running;
                     goto next_transition;
                  end if;
               when 3 =>
                  --  counter := (counter + 1) mod 4 (72,25)
                  ctxt.counter := Asn1UInt(((ctxt.counter + 1) mod 4));
                  --  DECISION seqof = {4,4,4,4}
                  --  and counter = 0 (75,0)
                  --  ANSWER true (77,25)
                  if ((T_SeqOf_Equal(ctxt.seqof, (Data => (1 => 4, 2 => 4, 3 => 4, 4 => 4, others => 4), Length => 4)) and (ctxt.counter = 0))) = true then
                     --  writeln( 'Property should be checked') (79,33)
                     Put("Property should be checked");
                     New_Line;
                     --  ANSWER false (81,25)
                  elsif ((T_SeqOf_Equal(ctxt.seqof, (Data => (1 => 4, 2 => 4, 3 => 4, 4 => 4, others => 4), Length => 4)) and (ctxt.counter = 0))) = false then
                     --  seqof(1) := 1 (83,33)
                     ctxt.seqof.Data(2) := 1;
                  end if;
                  --  NEXT_STATE - (86,30) at 412, 480
                  trId := -1;
                  goto next_transition;
               when 4 =>
                  --  counter := 4 (90,25)
                  ctxt.counter := 4;
                  --  t := 1 (91,0)
                  ctxt.t := 1;
                  --  seqof := {1,1,1,1} (93,25)
                  ctxt.seqof := (Data => (1 => 1, 2 => 1, 3 => 1, 4 => 1, others => 1), Length => 4);
                  --  NEXT_STATE running (95,30) at 691, 373
                  trId := -1;
                  ctxt.state := running;
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