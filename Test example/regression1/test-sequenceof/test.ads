-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package test is
   --  Provided interface "seqof1"
   procedure seqof1(seqof1_param: access asn1SccMySeqOf);
   pragma Export(C, seqof1, "test_PI_seqof1");
   --  Provided interface "seqof2"
   procedure seqof2(seqof2_param: access asn1SccMySeqOf2);
   pragma Export(C, seqof2, "test_PI_seqof2");
   --  Provided interface "seqof3"
   procedure seqof3(seqof3_param: access asn1SccMySeqOf3);
   pragma Export(C, seqof3, "test_PI_seqof3");
   --  Required interface "res1"
   procedure RI�res1(res1_param: access asn1SccMySeqOf);
   pragma import(C, RI�res1, "test_RI_res1");
   --  Required interface "res2"
   procedure RI�res2(res2_param: access asn1SccMySeqOf2);
   pragma import(C, RI�res2, "test_RI_res2");
   --  Required interface "res3"
   procedure RI�res3(res3_param: access asn1SccMySeqOf3);
   pragma import(C, RI�res3, "test_RI_res3");
end test;