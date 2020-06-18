-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;



package orchestrator is
   --  Provided interface "pulse"
   procedure pulse;
   pragma Export(C, pulse, "orchestrator_PI_pulse");
   --  Paramless required interface "telemetry"
   procedure RIÜtelemetry;
   pragma import(C, RIÜtelemetry, "orchestrator_RI_telemetry");
end orchestrator;