-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package myfunction is
   --  Provided interface "start_something"
   procedure start_something(tutu: access asn1SccT_Int32);
   pragma Export(C, start_something, "myfunction_PI_start_something");
   --  Required interface "result_data"
   procedure RIÜresult_data(titi: access asn1SccT_Int32);
   pragma import(C, RIÜresult_data, "myfunction_RI_result_data");
end myfunction;