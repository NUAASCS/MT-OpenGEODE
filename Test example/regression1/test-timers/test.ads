-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package test is
   --  Provided interface "blah"
   procedure blah;
   pragma Export(C, blah, "test_PI_blah");
   --  Provided interface "toto"
   procedure toto;
   pragma Export(C, toto, "test_PI_toto");
   --  Timer toto SET and RESET functions
   procedure SET_toto(val: access asn1SccT_UInt32);
   pragma import(C, SET_toto, "test_RI_set_toto");
   procedure RESET_toto;
   pragma import(C, RESET_toto, "test_RI_reset_toto");
end test;