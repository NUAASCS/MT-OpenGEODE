-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package og is
   --  Provided interface "go"
   procedure go(ze_param: access asn1SccMy_OctStr);
   pragma Export(C, go, "og_PI_go");
   --  Required interface "rezult"
   procedure RI�rezult(ze_rezult: access asn1SccMy_OctStr);
   pragma import(C, RI�rezult, "og_RI_rezult");
end og;