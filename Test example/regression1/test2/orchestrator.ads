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
   procedure RI�plot(gnc_data: access asn1SccT_Plot);
   pragma import(C, RI�plot, "orchestrator_RI_plot");
   --  Paramless required interface "telemetry"
   procedure RI�telemetry;
   pragma import(C, RI�telemetry, "orchestrator_RI_telemetry");
   --  Paramless required interface "Get_telemetry"
   procedure RI�Get_telemetry;
   pragma import(C, RI�Get_telemetry, "orchestrator_RI_Get_telemetry");
   --  Sync required interface "Scheduler"
   procedure RI�Scheduler(intr: access asn1SccT_INTR);
   pragma import(C, RI�Scheduler, "orchestrator_RI_Scheduler");
   --  Sync required interface "S_SET_GNC_LV_SIM_CONTEXT_FOR_NEXT_MAJOR_CYCLE"
   procedure RI�S_SET_GNC_LV_SIM_CONTEXT_FOR_NEXT_MAJOR_CYCLE(gnc_lv_sim_context: access asn1SccT_GNC_LV_SIM_CONTEXT);
   pragma import(C, RI�S_SET_GNC_LV_SIM_CONTEXT_FOR_NEXT_MAJOR_CYCLE, "orchestrator_RI_S_SET_GNC_LV_SIM_CONTEXT_FOR_NEXT_MAJOR_CYCLE");
   --  Sync required interface "S_GET_GNC_LV_SIM_INPUTS_FOR_NEXT_MAJOR_CYCLE"
   procedure RI�S_GET_GNC_LV_SIM_INPUTS_FOR_NEXT_MAJOR_CYCLE(gnc_lv_sim_inputs: access asn1SccT_GNC_LV_SIM_INPUTS);
   pragma import(C, RI�S_GET_GNC_LV_SIM_INPUTS_FOR_NEXT_MAJOR_CYCLE, "orchestrator_RI_S_GET_GNC_LV_SIM_INPUTS_FOR_NEXT_MAJOR_CYCLE");
   --  Sync required interface "S_JUMP_TO_NEXT_MAJOR_CYCLE"
   procedure RI�S_JUMP_TO_NEXT_MAJOR_CYCLE;
   pragma import(C, RI�S_JUMP_TO_NEXT_MAJOR_CYCLE, "orchestrator_RI_S_JUMP_TO_NEXT_MAJOR_CYCLE");
   --  Sync required interface "VESAT_Simulation_Step"
   procedure RI�VESAT_Simulation_Step(gnc_output: access asn1SccT_GNC_LV_SIM_INPUTS; gnc_input: access asn1SccT_GNC_LV_SIM_CONTEXT);
   pragma import(C, RI�VESAT_Simulation_Step, "orchestrator_RI_VESAT_Simulation_Step");
end orchestrator;