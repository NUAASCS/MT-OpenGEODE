-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package function0 is
   --  Provided interface "runStep"
   procedure runStep(val: access asn1SccMyTest);
   pragma Export(C, runstep, "function0_PI_runstep");
   --  Required interface "result"
   procedure RIÜresult(outparam: access asn1SccMyTest);
   pragma import(C, RIÜresult, "function0_RI_result");
   --  Required interface "counter"
   procedure RIÜcounter(c: access asn1SccMyInteger);
   pragma import(C, RIÜcounter, "function0_RI_counter");
   --  Sync required interface "ada"
   procedure RIÜada(outparam: access asn1SccMyTest);
   pragma import(C, RIÜada, "function0_RI_ada");
end function0;