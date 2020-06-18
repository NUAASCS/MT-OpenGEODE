-- This file was generated automatically: DO NOT MODIFY IT !

with VEGA;
use VEGA;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;



package orchestrator is
   --  Provided interface "pulse"
   procedure pulse;
   pragma Export(C, pulse, "orchestrator_PI_pulse");
   --  Provided interface "simulate"
   procedure simulate(simulation_choice: access asn1SccSimulation_Param);
   pragma Export(C, simulate, "orchestrator_PI_simulate");
   --  Provided interface "VESAT_Data"
   procedure VESAT_Data(gnc_inputs: access asn1SccT_GNC_LV_SIM_CONTEXT);
   pragma Export(C, vesat_data, "orchestrator_PI_vesat_data");
   --  Required interface "VESAT_one_step"
   procedure RIÜVESAT_one_step(vesat_input: access asn1SccT_GNC_LV_SIM_INPUTS);
   pragma import(C, RIÜVESAT_one_step, "orchestrator_RI_VESAT_one_step");
   --  Required interface "plot"
   procedure RIÜplot(gnc_data: access asn1SccT_Plot);
   pragma import(C, RIÜplot, "orchestrator_RI_plot");
   --  Sync required interface "jump_to_next_major_cycle"
   procedure RIÜjump_to_next_major_cycle;
   pragma import(C, RIÜjump_to_next_major_cycle, "orchestrator_RI_jump_to_next_major_cycle");
   --  Sync required interface "gnc_onestep"
   procedure RIÜgnc_onestep(gnc_inputs: access asn1SccT_GNC_LV_SIM_CONTEXT; gnc_outputs: access asn1SccT_GNC_LV_SIM_INPUTS);
   pragma import(C, RIÜgnc_onestep, "orchestrator_RI_gnc_onestep");
   --  Sync required interface "gnc_init"
   procedure RIÜgnc_init;
   pragma import(C, RIÜgnc_init, "orchestrator_RI_gnc_init");
end orchestrator;