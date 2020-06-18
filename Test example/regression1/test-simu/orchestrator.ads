-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;



package orchestrator is
   --  Provided interface "pulse"
   procedure pulse(pulse_param: access asn1SccMyEnum);
   pragma Export(C, pulse, "orchestrator_PI_pulse");
   --  Provided interface "Paramless_TC"
   procedure Paramless_TC;
   pragma Export(C, paramless_tc, "orchestrator_PI_paramless_tc");
   --  Provided interface "other"
   procedure other;
   pragma Export(C, other, "orchestrator_PI_other");
   --  Provided interface "mytimer"
   procedure mytimer;
   pragma Export(C, mytimer, "orchestrator_PI_mytimer");
   --  Required interface "telemetry"
   procedure RI�telemetry(telemetry_param: access asn1SccMyEnum);
   pragma import(C, RI�telemetry, "orchestrator_RI_telemetry");
   --  Required interface "peek_list"
   procedure RI�peek_list(peek_list_param: access asn1SccTASTE_Peek_id_list);
   pragma import(C, RI�peek_list, "orchestrator_RI_peek_list");
   --  Required interface "peek_fixed"
   procedure RI�peek_fixed(peek_fixed_param: access asn1SccFixedIntList);
   pragma import(C, RI�peek_fixed, "orchestrator_RI_peek_fixed");
   --  Paramless required interface "Paramless_TM"
   procedure RI�Paramless_TM;
   pragma import(C, RI�Paramless_TM, "orchestrator_RI_Paramless_TM");
   --  Sync required interface "ExternalProc"
   procedure RI�ExternalProc(gnc_output: access asn1SccT_UInt32; gnc_input: access asn1SccT_UInt32);
   pragma import(C, RI�ExternalProc, "orchestrator_RI_ExternalProc");
   --  Sync required interface "VDM"
   procedure RI�VDM(inp: access asn1SccFixedIntList; outp: access asn1SccFixedIntList);
   pragma import(C, RI�VDM, "orchestrator_RI_VDM");
   --  Sync required interface "VDM2"
   procedure RI�VDM2(inp: access asn1SccT_UInt32; outp: access asn1SccMySimpleSeq);
   pragma import(C, RI�VDM2, "orchestrator_RI_VDM2");
   --  Timer mytimer SET and RESET functions
   procedure SET_mytimer(val: access asn1SccT_UInt32);
   pragma import(C, SET_mytimer, "orchestrator_RI_set_mytimer");
   procedure RESET_mytimer;
   pragma import(C, RESET_mytimer, "orchestrator_RI_reset_mytimer");
end orchestrator;