-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package og is
   --  Provided interface "go"
   procedure go(ze_param: access My_OctStr);
   pragma Export(C, go, "og_PI_go");
   --  Provided interface "bye"
   procedure bye;
   pragma Export(C, bye, "og_PI_bye");
   --  Required interface "rezult"
   procedure RIÜrezult(ze_rezult: access My_OctStr);
   pragma import(C, RIÜrezult, "og_RI_rezult");
end og;