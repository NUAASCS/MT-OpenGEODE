-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package test is
   --  Provided interface "go"
   procedure go(go_param: access MyChoice);
   pragma Export(C, go, "test_PI_go");
   --  Required interface "response"
   procedure RI�response(response_param: access MyChoice);
   pragma import(C, RI�response, "test_RI_response");
end test;