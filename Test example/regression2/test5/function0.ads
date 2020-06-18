-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package function0 is
   --  Provided interface "runStep"
   procedure runStep(val: access MyTest);
   pragma Export(C, runstep, "function0_PI_runstep");
   --  Required interface "result"
   procedure RIÜresult(outparam: access MyTest);
   pragma import(C, RIÜresult, "function0_RI_result");
   --  Required interface "counter"
   procedure RIÜcounter(c: access MyInteger);
   pragma import(C, RIÜcounter, "function0_RI_counter");
   --  Sync required interface "ada"
   procedure RIÜada(outparam: access MyTest);
   pragma import(C, RIÜada, "function0_RI_ada");
end function0;