-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;



with Interfaces;
use Interfaces;

package body og is
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   procedure dd is
      begin
         case ctxt.state is
            when wait =>
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end dd;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE wait (20,26) at 155, 266
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE - (26,30) at 155, 371
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
end og;