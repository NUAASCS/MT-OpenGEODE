-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package car is
   --  Provided interface "dd"
   procedure dd(dd_param: access asn1SccMyInteger);
   pragma Export(C, dd, "car_PI_dd");
   --  Required interface "we"
   procedure RI�we(we_param: access asn1SccSome_Thing);
   pragma import(C, RI�we, "car_RI_we");
   --  Sync required interface "hehe"
   procedure RI�hehe(a_param: access asn1SccType2);
   pragma import(C, RI�hehe, "car_RI_hehe");
   procedure Check_Queue(res: access Asn1Boolean);
   pragma import(C, Check_Queue, "car_check_queue");
end car;