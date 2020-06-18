-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body challenge is
   type States is (Üfinished, off, aggreg, aggregÜa, aggregÜb);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      aggregÜaÜstate: States;
      aggregÜbÜstate: States;
      result : aliased T_UInt32 := 0;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 4;
   aggregÜaÜSTART : constant := 2;
   aggregÜbÜSTART : constant := 3;
   procedure aggregÜSTART;
   procedure runTransition(Id: Integer);
   procedure aggregÜSTART is
      begin
         runTransition(aggregÜaÜSTART);
         runTransition(aggregÜbÜSTART);
      end aggregÜSTART;
      

   procedure run is
      begin
         case ctxt.state is
            when off =>
               runTransition(1);
            when aggreg =>
               -- this is a state aggregation
               null;
            when aggregÜa =>
               runTransition(CS_Only);
            when aggregÜb =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end run;
      

   procedure go_off is
      begin
         case ctxt.state is
            when off =>
               runTransition(CS_Only);
            when aggreg =>
               -- this is a state aggregation
               null;
            when aggregÜa =>
               runTransition(CS_Only);
            when aggregÜb =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end go_off;
      

   procedure any_one is
      begin
         case ctxt.state is
            when off =>
               runTransition(CS_Only);
            when aggreg =>
               -- this is a state aggregation
               null;
            when aggregÜa =>
               runTransition(CS_Only);
            when aggregÜb =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end any_one;
      

   procedure any_two is
      begin
         case ctxt.state is
            when off =>
               runTransition(CS_Only);
            when aggreg =>
               -- this is a state aggregation
               null;
            when aggregÜa =>
               runTransition(CS_Only);
            when aggregÜb =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end any_two;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  writeln('1') (34,13)
                  Put("1");
                  New_Line;
                  --  NEXT_STATE OFF (36,18) at 88, 181
                  trId := -1;
                  ctxt.state := OFF;
                  goto next_transition;
               when 1 =>
                  --  writeln('2') (45,17)
                  Put("2");
                  New_Line;
                  --  NEXT_STATE Aggreg (47,22) at 81, 336
                  -- Entering state aggregation Aggreg
                  aggregÜSTART;
                  ctxt.state := Aggreg;
                  trId := -1;
                  goto next_transition;
               when 2 =>
                  --  RETURN  (None,None) at 59, 117
                  ctxt.aggregÜaÜstate := Üfinished;
                  if ctxt.aggregÜbÜstate = Üfinished then
                     return;
                  else
                     trId := -1;
                     goto next_transition;
                  end if;
               when 3 =>
                  --  RETURN  (None,None) at 208, 140
                  ctxt.aggregÜbÜstate := Üfinished;
                  if ctxt.aggregÜaÜstate = Üfinished then
                     return;
                  else
                     trId := -1;
                     goto next_transition;
                  end if;
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
end challenge;