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

package body test is
   type States is (hello, wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      blah : aliased MyChoice;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 5;
   procedure runTransition(Id: Integer);
   procedure go is
      begin
         case ctxt.state is
            when hello =>
               runTransition(CS_Only);
            when wait =>
               runTransition(2);
            when others =>
               runTransition(CS_Only);
         end case;
      end go;
      

   procedure go2 is
      begin
         case ctxt.state is
            when hello =>
               runTransition(1);
            when wait =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end go2;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE wait (32,26) at 106, 98
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE - (38,30) at 617, 222
                  trId := -1;
                  goto next_transition;
               when 2 =>
                  --  NEXT_STATE - (45,30) at 112, 203
                  trId := -1;
                  goto next_transition;
               when 3 =>
                  --  NEXT_STATE - (52,30) at 463, 186
                  trId := -1;
                  goto next_transition;
               when 4 =>
                  --  NEXT_STATE - (59,30) at 291, 187
                  trId := -1;
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
end test;