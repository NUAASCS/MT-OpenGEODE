-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package expressions is
   --  Provided interface "run"
   procedure run;
   pragma Export(C, run, "expressions_PI_run");
   --  Sync required interface "assert"
   procedure RI�assert(res: access asn1SccBoolean; msg: access asn1SccCharString);
   pragma import(C, RI�assert, "expressions_RI_assert");
   --  Sync required interface "log"
   procedure RI�log(par: access asn1SccReal);
   pragma import(C, RI�log, "expressions_RI_log");
end expressions;