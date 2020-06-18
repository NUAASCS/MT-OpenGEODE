-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package test is
   --  Provided interface "go"
   procedure go;
   pragma Export(C, go, "test_PI_go");
   --  Provided interface "go2"
   procedure go2;
   pragma Export(C, go2, "test_PI_go2");
end test;