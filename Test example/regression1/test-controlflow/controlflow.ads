-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package controlflow is
   --  Provided interface "run"
   procedure run;
   pragma Export(C, run, "controlflow_PI_run");
   --  Sync required interface "assert"
   procedure RIÜassert(res: access asn1SccBoolean; msg: access asn1SccCharString);
   pragma import(C, RIÜassert, "controlflow_RI_assert");
   --  Sync required interface "fail"
   procedure RIÜfail(msg: access asn1SccCharString);
   pragma import(C, RIÜfail, "controlflow_RI_fail");
end controlflow;