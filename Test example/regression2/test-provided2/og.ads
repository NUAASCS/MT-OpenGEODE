-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package og is
   --  Provided interface "telecommand"
   procedure telecommand(telecommand_param: access TC_Type);
   pragma Export(C, telecommand, "og_PI_telecommand");
   --  Provided interface "timer1"
   procedure timer1;
   pragma Export(C, timer1, "og_PI_timer1");
   --  Provided interface "timer2"
   procedure timer2;
   pragma Export(C, timer2, "og_PI_timer2");
   --  Required interface "telemetry"
   procedure RIÜtelemetry(telemetry_param: access TM_Type);
   pragma import(C, RIÜtelemetry, "og_RI_telemetry");
   --  Timer timer1 SET and RESET functions
   procedure SET_timer1(val: access T_UInt32);
   pragma import(C, SET_timer1, "og_RI_set_timer1");
   procedure RESET_timer1;
   pragma import(C, RESET_timer1, "og_RI_reset_timer1");
   --  Timer timer2 SET and RESET functions
   procedure SET_timer2(val: access T_UInt32);
   pragma import(C, SET_timer2, "og_RI_set_timer2");
   procedure RESET_timer2;
   pragma import(C, RESET_timer2, "og_RI_reset_timer2");
   procedure Check_Queue(res: access Asn1Boolean);
   pragma import(C, Check_Queue, "og_check_queue");
end og;