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
   type States is (wait_for_gui);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      tutu : aliased asn1SccEnum_with_dash := asn1Sccfirst_one;
      titi : aliased asn1SccNamedInt_with_dash := NamedInt_with_dash_second_value;
      toto : aliased asn1SccNamedInt := NamedInt_one;
      recursive : aliased asn1SccTASTE_Peek_id := myInt2;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   procedure pulse(pulse_param: access asn1SccNamedInt_with_dash) is
      begin
         case ctxt.state is
            when wait_for_gui =>
               ctxt.titi := pulse_param.all;
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end pulse;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE Wait_for_GUI (19,18) at 512, 201
                  trId := -1;
                  ctxt.state := Wait_for_GUI;
                  goto next_transition;
               when 1 =>
                  --  writeln(titi) (28,17)
                  Put(asn1SccNamedInt_with_dash'Image(ctxt.titi));
                  New_Line;
                  --  telemetry(tutu) (30,19)
                  RIÜtelemetry(ctxt.tutu'Access);
                  --  tutu := second_one (32,17)
                  ctxt.tutu := asn1Sccsecond_one;
                  --  recursive := 1 + myInt2 (34,17)
                  ctxt.recursive := Asn1UInt((1 + myInt2));
                  --  NEXT_STATE - (36,22) at 535, 519
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
end orchestrator;