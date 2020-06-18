-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package test is
   --  Provided interface "seqof1"
   procedure seqof1(seqof1_param: access MySeqOf);
   pragma Export(C, seqof1, "test_PI_seqof1");
end test;