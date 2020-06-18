-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package og is
   --  Provided interface "go"
   procedure go;
   pragma Export(C, go, "og_PI_go");
   --  Required interface "send_to_uart"
   procedure RIÜsend_to_uart(send_to_uart_param: access asn1SccOctStr);
   pragma import(C, RIÜsend_to_uart, "og_RI_send_to_uart");
   procedure Check_Queue(res: access Asn1Boolean);
   pragma import(C, Check_Queue, "og_check_queue");
end og;