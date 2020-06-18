-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;



package orchestrator is
   --  Provided interface "pulse"
   procedure pulse(pulse_param: access T_Int);
   pragma Export(C, pulse, "orchestrator_PI_pulse");
   --  Provided interface "arr"
   procedure arr(arr_param: access T_SeqOf);
   pragma Export(C, arr, "orchestrator_PI_arr");
   --  Provided interface "paramless"
   procedure paramless;
   pragma Export(C, paramless, "orchestrator_PI_paramless");
end orchestrator;