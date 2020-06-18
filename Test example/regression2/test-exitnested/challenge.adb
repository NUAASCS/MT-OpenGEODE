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
   type States is (nested�nested_1, well, nested�nested_1�nested_2);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 6;
   nested�START : constant := 3;
   nested�nested_1�START : constant := 5;
   procedure runTransition(Id: Integer);
   procedure p�nested�nested_1�entry;
   procedure p�nested�nested_1�exit;
   procedure p�nested�entry;
   procedure p�nested�exit;
   procedure p�nested�nested_1�entry is
      begin
         --  writeln('entering nested_1') (12,33)
         Put("entering nested_1");
         New_Line;
         --  RETURN  (None,None) at 122, 154
         return;
      end p�nested�nested_1�entry;
      

   procedure p�nested�nested_1�exit is
      begin
         --  writeln('exit nested_1') (21,33)
         Put("exit nested_1");
         New_Line;
         --  RETURN  (None,None) at 215, 216
         return;
      end p�nested�nested_1�exit;
      

   procedure p�nested�entry is
      begin
         --  writeln('entering nested') (38,25)
         Put("entering nested");
         New_Line;
         --  RETURN  (None,None) at 138, 185
         return;
      end p�nested�entry;
      

   procedure p�nested�exit is
      begin
         --  writeln('exit nested') (47,25)
         Put("exit nested");
         New_Line;
         --  RETURN  (None,None) at 93, 153
         return;
      end p�nested�exit;
      

   procedure run is
      begin
         case ctxt.state is
            when nested�nested_1 =>
               p�nested�nested_1�exit;
               p�nested�exit;
               runTransition(2);
            when well =>
               runTransition(CS_Only);
            when nested�nested_1�nested_2 =>
               p�nested�nested_1�exit;
               p�nested�exit;
               runTransition(2);
            when others =>
               runTransition(CS_Only);
         end case;
      end run;
      

   procedure go_off is
      begin
         case ctxt.state is
            when nested�nested_1 =>
               p�nested�nested_1�exit;
               runTransition(4);
            when well =>
               runTransition(CS_Only);
            when nested�nested_1�nested_2 =>
               p�nested�nested_1�exit;
               runTransition(4);
            when others =>
               runTransition(CS_Only);
         end case;
      end go_off;
      

   procedure any_one is
      begin
         case ctxt.state is
            when nested�nested_1 =>
               runTransition(CS_Only);
            when well =>
               runTransition(CS_Only);
            when nested�nested_1�nested_2 =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end any_one;
      

   procedure any_two is
      begin
         case ctxt.state is
            when nested�nested_1 =>
               runTransition(CS_Only);
            when well =>
               runTransition(CS_Only);
            when nested�nested_1�nested_2 =>
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
                  trId := nested�START;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE well (75,22) at 12, 233
                  trId := -1;
                  ctxt.state := well;
                  goto next_transition;
               when 2 =>
                  --  NEXT_STATE - (79,22) at 145, 233
                  case ctxt.state is
                     when nested�nested_1|nested�nested_1�nested_2 =>
                        trId := nested�START;
                     when others =>
                        trId := -1;
                  end case;
                  goto next_transition;
               when 3 =>
                  --  entry (None,None)
                  p�nested�entry;
                  --  NEXT_STATE nested�nested_1 (54,26) at 124, 118
                  trId := nested�nested_1�START;
                  goto next_transition;
               when 4 =>
                  --  exit (None,None)
                  p�nested�exit;
                  --  RETURN  (None,None) at 153, 223
                  trId := 1;
                  goto next_transition;
               when 5 =>
                  --  entry (None,None)
                  p�nested�nested_1�entry;
                  --  NEXT_STATE nested�nested_1�nested_2 (28,34) at 234, 105
                  trId := -1;
                  ctxt.state := nested�nested_1�nested_2;
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