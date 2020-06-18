-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package CCS is
   --  Provided interface "CCSR"
   procedure CCSR(CCSR_param: access asn1SccControl_Computer_SelfCheck_Result);
   pragma Export(C, ccsr, "ccs_PI_ccsr");
   --  Required interface "DPR"
   procedure RIÜDPR(DPR_param: access asn1SccDevice_PowerOn_Result);
   pragma import(C, RIÜDPR, "CCS_RI_DPR");
   --  Paramless required interface "DCSC_OK"
   procedure RIÜDCSC_OK;
   pragma import(C, RIÜDCSC_OK, "CCS_RI_DCSC_OK");
end CCS;