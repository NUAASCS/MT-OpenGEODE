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

package body expressions is
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      f : aliased Real;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   function pÜlog(par: in Real) return Real;
   pragma import(C, pÜlog, "log");
   

procedure run is
   begin
      case ctxt.state is
         when wait =>
            runTransition(1);
         when others =>
            runTransition(CS_Only);
      end case;
   end run;
   

procedure runTransition(Id: Integer) is
   trId : Integer := Id;
   begin
      while (trId /= -1) loop
         case trId is
            when 0 =>
               --  NEXT_STATE wait (19,18) at 625, 199
               trId := -1;
               ctxt.state := wait;
               goto next_transition;
            when 1 =>
               --  f := log(f) (25,17)
               ctxt.f := pÜlog(ctxt.f);
               --  NEXT_STATE Wait (27,22) at 624, 358
               trId := -1;
               ctxt.state := Wait;
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
end expressions;