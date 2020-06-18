-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package og is
   --  Provided interface "reset_all"
   procedure reset_all(reset_all_param: access asn1SccMyInteger);
   pragma Export(C, reset_all, "og_PI_reset_all");
   --  Provided interface "for_a"
   procedure for_a;
   pragma Export(C, for_a, "og_PI_for_a");
   --  Provided interface "for_b"
   procedure for_b;
   pragma Export(C, for_b, "og_PI_for_b");
   --  Provided interface "exit_aggreg"
   procedure exit_aggreg;
   pragma Export(C, exit_aggreg, "og_PI_exit_aggreg");
   --  Paramless required interface "response"
   procedure RIÜresponse;
   pragma import(C, RIÜresponse, "og_RI_response");
end og;