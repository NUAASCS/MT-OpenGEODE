-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;



package function1 is
   --  Provided interface "PI1"
   procedure PI1(test: access asn1SccMyInteger);
   pragma Export(C, pi1, "function1_PI_pi1");
end function1;