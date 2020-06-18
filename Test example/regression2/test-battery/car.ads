-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package car is
   --  Provided interface "dd"
   procedure dd(dd_param: access MyInteger);
   pragma Export(C, dd, "car_PI_dd");
   --  Required interface "we"
   procedure RIÜwe(we_param: access Some_Thing);
   pragma import(C, RIÜwe, "car_RI_we");
   --  Sync required interface "hehe"
   procedure RIÜhehe(a_param: access Type2);
   pragma import(C, RIÜhehe, "car_RI_hehe");
   procedure Check_Queue(res: access Asn1Boolean);
   pragma import(C, Check_Queue, "car_check_queue");
end car;