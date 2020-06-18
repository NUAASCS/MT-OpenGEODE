-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with VEGA;
use VEGA;
with TASTE_MONITORING;
use TASTE_MONITORING;
with adaasn1rtl;
use adaasn1rtl;



package orchestrator is
   --  Provided interface "pulse"
   procedure pulse;
   pragma Export(C, pulse, "orchestrator_PI_pulse");
   --  Provided interface "start_simulation"
   procedure start_simulation(gnc_input: access asn1SccT_GNC_LV_SIM_CONTEXT);
   pragma Export(C, start_simulation, "orchestrator_PI_start_simulation");
   --  Required interface "plot"
   procedure RIÜplot(gnc_data: access asn1SccT_Plot);
   pragma import(C, RIÜplot, "orchestrator_RI_plot");
   --  Paramless required interface "telemetry"
   procedure RIÜtelemetry;
   pragma import(C, RIÜtelemetry, "orchestrator_RI_telemetry");
   --  Paramless required interface "Get_telemetry"
   procedure RIÜGet_telemetry;
   pragma import(C, RIÜGet_telemetry, "orchestrator_RI_Get_telemetry");
   --  Sync required interface "Scheduler"
   procedure RIÜScheduler(intr: access asn1SccT_INTR);
   pragma import(C, RIÜScheduler, "orchestrator_RI_Scheduler");
   --  Sync required interface "S_SET_GNC_LV_SIM_CONTEXT_FOR_NEXT_MAJOR_CYCLE"
   procedure RIÜS_SET_GNC_LV_SIM_CONTEXT_FOR_NEXT_MAJOR_CYCLE(gnc_lv_sim_context: access asn1SccT_GNC_LV_SIM_CONTEXT);
   pragma import(C, RIÜS_SET_GNC_LV_SIM_CONTEXT_FOR_NEXT_MAJOR_CYCLE, "orchestrator_RI_S_SET_GNC_LV_SIM_CONTEXT_FOR_NEXT_MAJOR_CYCLE");
   --  Sync required interface "S_GET_GNC_LV_SIM_INPUTS_FOR_NEXT_MAJOR_CYCLE"
   procedure RIÜS_GET_GNC_LV_SIM_INPUTS_FOR_NEXT_MAJOR_CYCLE(gnc_lv_sim_inputs: access asn1SccT_GNC_LV_SIM_INPUTS);
   pragma import(C, RIÜS_GET_GNC_LV_SIM_INPUTS_FOR_NEXT_MAJOR_CYCLE, "orchestrator_RI_S_GET_GNC_LV_SIM_INPUTS_FOR_NEXT_MAJOR_CYCLE");
   --  Sync required interface "S_JUMP_TO_NEXT_MAJOR_CYCLE"
   procedure RIÜS_JUMP_TO_NEXT_MAJOR_CYCLE;
   pragma import(C, RIÜS_JUMP_TO_NEXT_MAJOR_CYCLE, "orchestrator_RI_S_JUMP_TO_NEXT_MAJOR_CYCLE");
   --  Sync required interface "VESAT_Simulation_Step"
   procedure RIÜVESAT_Simulation_Step(gnc_output: access asn1SccT_GNC_LV_SIM_INPUTS; gnc_input: access asn1SccT_GNC_LV_SIM_CONTEXT);
   pragma import(C, RIÜVESAT_Simulation_Step, "orchestrator_RI_VESAT_Simulation_Step");
end orchestrator;