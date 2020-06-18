-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package orchestrator is
   --  Provided interface "pulse"
   procedure pulse;
   pragma Export(C, pulse, "orchestrator_PI_pulse");
   --  Provided interface "run"
   procedure run(cmd: access asn1SccMyInteger);
   pragma Export(C, run, "orchestrator_PI_run");
   --  Required interface "housekeeping"
   procedure RIÜhousekeeping(hk: access asn1SccMyInteger);
   pragma import(C, RIÜhousekeeping, "orchestrator_RI_housekeeping");
   --  Sync required interface "computeGNC"
   procedure RIÜcomputeGNC(inp: access asn1SccMyInteger; outp: access asn1SccMyInteger);
   pragma import(C, RIÜcomputeGNC, "orchestrator_RI_computeGNC");
end orchestrator;