-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package og is
   --  Provided interface "telecommand"
   procedure telecommand(telecommand_param: access asn1SccTC_Type);
   pragma Export(C, telecommand, "og_PI_telecommand");
   --  Required interface "telemetry"
   procedure RIÜtelemetry(telemetry_param: access asn1SccTM_Type);
   pragma import(C, RIÜtelemetry, "og_RI_telemetry");
   procedure Check_Queue(res: access Asn1Boolean);
   pragma import(C, Check_Queue, "og_check_queue");
end og;