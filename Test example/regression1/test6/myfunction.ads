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
   --  Provided interface "mytimer"
   procedure mytimer;
   pragma Export(C, mytimer, "myfunction_PI_mytimer");
   --  Required interface "result_data"
   procedure RIÜresult_data(titi: access asn1SccT_Int32);
   pragma import(C, RIÜresult_data, "myfunction_RI_result_data");
   --  Timer mytimer SET and RESET functions
   procedure SET_mytimer(val: access asn1SccT_UInt32);
   pragma import(C, SET_mytimer, "myfunction_RI_set_mytimer");
   procedure RESET_mytimer;
   pragma import(C, RESET_mytimer, "myfunction_RI_reset_mytimer");
end myfunction;