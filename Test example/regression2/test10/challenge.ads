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
   --  Provided interface "go_off"
   procedure go_off;
   pragma Export(C, go_off, "challenge_PI_go_off");
   --  Provided interface "any_one"
   procedure any_one;
   pragma Export(C, any_one, "challenge_PI_any_one");
   --  Provided interface "any_two"
   procedure any_two;
   pragma Export(C, any_two, "challenge_PI_any_two");
   --  Sync required interface "pow"
   procedure RIÜpow(a: access T_UInt32; b: access T_UInt32; res: access T_UInt32);
   pragma import(C, RIÜpow, "challenge_RI_pow");
end challenge;