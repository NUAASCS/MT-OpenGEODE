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
   type States is (nestedÜnested_1, well, nestedÜnested_1Ünested_2);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 6;
   nestedÜSTART : constant := 3;
   nestedÜnested_1ÜSTART : constant := 5;
   procedure runTransition(Id: Integer);
   procedure pÜnestedÜnested_1Üentry;
   procedure pÜnestedÜnested_1Üexit;
   procedure pÜnestedÜentry;
   procedure pÜnestedÜexit;
   procedure pÜnestedÜnested_1Üentry is
      begin
         --  writeln('entering nested_1') (12,33)
         Put("entering nested_1");
         New_Line;
         --  RETURN  (None,None) at 122, 154
         return;
      end pÜnestedÜnested_1Üentry;
      

   procedure pÜnestedÜnested_1Üexit is
      begin
         --  writeln('exit nested_1') (21,33)
         Put("exit nested_1");
         New_Line;
         --  RETURN  (None,None) at 215, 216
         return;
      end pÜnestedÜnested_1Üexit;
      

   procedure pÜnestedÜentry is
      begin
         --  writeln('entering nested') (38,25)
         Put("entering nested");
         New_Line;
         --  RETURN  (None,None) at 138, 185
         return;
      end pÜnestedÜentry;
      

   procedure pÜnestedÜexit is
      begin
         --  writeln('exit nested') (47,25)
         Put("exit nested");
         New_Line;
         --  RETURN  (None,None) at 93, 153
         return;
      end pÜnestedÜexit;
      

   procedure run is
      begin
         case ctxt.state is
            when nestedÜnested_1 =>
               pÜnestedÜnested_1Üexit;
               pÜnestedÜexit;
               runTransition(2);
            when well =>
               runTransition(CS_Only);
            when nestedÜnested_1Ünested_2 =>
               pÜnestedÜnested_1Üexit;
               pÜnestedÜexit;
               runTransition(2);
            when others =>
               runTransition(CS_Only);
         end case;
      end run;
      

   procedure go_off is
      begin
         case ctxt.state is
            when nestedÜnested_1 =>
               pÜnestedÜnested_1Üexit;
               runTransition(4);
            when well =>
               runTransition(CS_Only);
            when nestedÜnested_1Ünested_2 =>
               pÜnestedÜnested_1Üexit;
               runTransition(4);
            when others =>
               runTransition(CS_Only);
         end case;
      end go_off;
      

   procedure any_one is
      begin
         case ctxt.state is
            when nestedÜnested_1 =>
               runTransition(CS_Only);
            when well =>
               runTransition(CS_Only);
            when nestedÜnested_1Ünested_2 =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end any_one;
      

   procedure any_two is
      begin
         case ctxt.state is
            when nestedÜnested_1 =>
               runTransition(CS_Only);
            when well =>
               runTransition(CS_Only);
            when nestedÜnested_1Ünested_2 =>
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
                  --  NEXT_STATE nested (66,18) at 86, 128
                  trId := nestedÜSTART;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE well (75,22) at 12, 233
                  trId := -1;
                  ctxt.state := well;
                  goto next_transition;
               when 2 =>
                  --  NEXT_STATE - (79,22) at 145, 233
                  case ctxt.state is
                     when nestedÜnested_1|nestedÜnested_1Ünested_2 =>
                        trId := nestedÜSTART;
                     when others =>
                        trId := -1;
                  end case;
                  goto next_transition;
               when 3 =>
                  --  entry (None,None)
                  pÜnestedÜentry;
                  --  NEXT_STATE nestedÜnested_1 (54,26) at 124, 118
                  trId := nestedünested_1ÜSTART;
                  goto next_transition;
               when 4 =>
                  --  exit (None,None)
                  pÜnestedÜexit;
                  --  RETURN  (None,None) at 153, 223
                  trId := 1;
                  goto next_transition;
               when 5 =>
                  --  entry (None,None)
                  pÜnestedÜnested_1Üentry;
                  --  NEXT_STATE nestedÜnested_1Ünested_2 (28,34) at 234, 105
                  trId := -1;
                  ctxt.state := nestedÜnested_1Ünested_2;
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
end challenge;