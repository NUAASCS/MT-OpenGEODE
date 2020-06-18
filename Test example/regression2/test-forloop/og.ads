-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package og is
   --  Provided interface "dd"
   procedure dd(dd_param: access MyInteger);
   pragma Export(C, dd, "og_PI_dd");
   --  Required interface "we"
   procedure RIÜwe(we_param: access MyInteger);
   pragma import(C, RIÜwe, "og_RI_we");
   --  Sync required interface "anExternalProc"
   procedure RIÜanExternalProc(a_param: access MyInteger);
   pragma import(C, RIÜanExternalProc, "og_RI_anExternalProc");
end og;