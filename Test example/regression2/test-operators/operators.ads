-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package operators is
   --  Provided interface "run"
   procedure run;
   pragma Export(C, run, "operators_PI_run");
   --  Sync required interface "assert"
   procedure RIÜassert(res: access Boolean; msg: access CharString);
   pragma import(C, RIÜassert, "operators_RI_assert");
end operators;