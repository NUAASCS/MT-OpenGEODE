-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;



package orchestrator is
   --  Provided interface "pulse"
   procedure pulse;
   pragma Export(C, pulse, "orchestrator_PI_pulse");
   --  Provided interface "run"
   procedure run(cmd: access MyInteger);
   pragma Export(C, run, "orchestrator_PI_run");
   --  Required interface "housekeeping"
   procedure RI�housekeeping(hk: access MyInteger);
   pragma import(C, RI�housekeeping, "orchestrator_RI_housekeeping");
   --  Sync required interface "computeGNC"
   procedure RI�computeGNC(inP: access MyInteger; outP: access MyInteger);
   pragma import(C, RI�computeGNC, "orchestrator_RI_computeGNC");
end orchestrator;