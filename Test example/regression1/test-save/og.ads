-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package og is
   --  Provided interface "run"
   procedure run;
   pragma Export(C, run, "og_PI_run");
   --  Provided interface "saved_signal"
   procedure saved_signal(saved_signal_param: access asn1SccBoolType);
   pragma Export(C, saved_signal, "og_PI_saved_signal");
   --  Paramless required interface "we"
   procedure RIÜwe;
   pragma import(C, RIÜwe, "og_RI_we");
   procedure Check_Queue(res: access Asn1Boolean);
   pragma import(C, Check_Queue, "og_check_queue");
end og;