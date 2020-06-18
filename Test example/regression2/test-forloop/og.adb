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
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      a : aliased MyInteger;
      c : aliased MyReal;
      foo : aliased SeqOf;
      b : aliased MyInteger;
      d : aliased MyReal;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 1;
   procedure runTransition(Id: Integer);
   procedure dd(dd_param: access MyInteger) is
      begin
         case ctxt.state is
            when wait =>
               runTransition(CS_Only);
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
                  --  TASK for each in range (fix(1),fix(20.0) , 2):
                  --      call writeln(each);
                  --  endfor (39,21)
                  declare
                     each : Integer := Integer (Asn1UInt(1));
                  begin
                     while each < Integer (Asn1UInt(20.0)) loop
                        --  writeln(each) (40,9)
                        Put(Integer'Image(each));
                        New_Line;
                        each := each + 2;
                     end loop;
                  end;
                  --  NEXT_STATE wait (43,26) at 184, 350
                  trId := -1;
                  ctxt.state := wait;
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