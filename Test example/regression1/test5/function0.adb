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

package body function0 is
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      outp : aliased asn1SccMyTest;
      count : aliased asn1SccMyInteger;
      inp : aliased asn1SccMyTest;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   procedure runStep(val: access asn1SccMyTest) is
      begin
         case ctxt.state is
            when wait =>
               ctxt.inp := val.all;
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end runStep;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  outP := {true, false} (12,5)
                  ctxt.outP := (Data => (1 => true, 2 => false, others => true));
                  --  count := 42 (14,5)
                  ctxt.count := 42;
                  --  NEXT_STATE Wait (16,10) at 86, 193
                  trId := -1;
                  ctxt.state := Wait;
                  goto next_transition;
               when 1 =>
                  --  DECISION count (-1,-1)
                  --  ANSWER 42 (26,1)
                  if (ctxt.count) = 42 then
                     --  ada(outP) (28,5)
                     RIÜada(ctxt.outP'Access);
                     --  result(outP) (30,7)
                     RIÜresult(ctxt.outP'Access);
                     --  ANSWER ELSE (None,None)
                  else
                     --  counter(count) (34,7)
                     RIÜcounter(ctxt.count'Access);
                  end if;
                  --  count := 
                  --  (count + 1) mod 50 (37,5)
                  ctxt.count := Asn1UInt(((ctxt.count + 1) mod 50));
                  --  NEXT_STATE Wait (40,10) at 85, 277
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
end function0;