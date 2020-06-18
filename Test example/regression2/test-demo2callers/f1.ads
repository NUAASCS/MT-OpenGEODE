-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package f1 is
   --  Provided interface "pulse"
   procedure pulse;
   pragma Export(C, pulse, "f1_PI_pulse");
   --  Required interface "AA"
   procedure RIÜAA(p: access MySeq);
   pragma import(C, RIÜAA, "f1_RI_AA");
end f1;