-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package og is
   --  Provided interface "dd"
   procedure dd(dd_param: access Type2);
   pragma Export(C, dd, "og_PI_dd");
   --  Required interface "we"
   procedure RIÜwe(we_param: access Some_Thing);
   pragma import(C, RIÜwe, "og_RI_we");
   --  Sync required interface "hehe"
   procedure RIÜhehe(a_param: access Type2);
   pragma import(C, RIÜhehe, "og_RI_hehe");
end og;