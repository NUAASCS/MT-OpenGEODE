-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;



package orchestrator is
   --  Provided interface "pulse"
   procedure pulse(pulse_param: access NamedInt_with_dash);
   pragma Export(C, pulse, "orchestrator_PI_pulse");
   --  Required interface "telemetry"
   procedure RIÜtelemetry(telemetry_param: access Enum_with_dash);
   pragma import(C, RIÜtelemetry, "orchestrator_RI_telemetry");
end orchestrator;