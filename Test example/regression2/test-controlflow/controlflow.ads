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
   procedure RI�assert(res: access Boolean; msg: access CharString);
   pragma import(C, RI�assert, "controlflow_RI_assert");
   --  Sync required interface "fail"
   procedure RI�fail(msg: access CharString);
   pragma import(C, RI�fail, "controlflow_RI_fail");
end controlflow;