-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package challenge is
   --  Provided interface "run"
   procedure run;
   pragma Export(C, run, "challenge_PI_run");
   --  Sync required interface "pow"
   procedure RIÜpow(a: access T_UInt32; b: access T_UInt32; res: access T_UInt32);
   pragma import(C, RIÜpow, "challenge_RI_pow");
   --  Sync required interface "test"
   procedure RIÜtest(first: access T_UInt8; second: access T_Boolean);
   pragma import(C, RIÜtest, "challenge_RI_test");
end challenge;