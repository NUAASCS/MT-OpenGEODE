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
   procedure RI�DPR(DPR_param: access asn1SccDevice_PowerOn_Result);
   pragma import(C, RI�DPR, "CCS_RI_DPR");
   --  Paramless required interface "DCSC_OK"
   procedure RI�DCSC_OK;
   pragma import(C, RI�DCSC_OK, "CCS_RI_DCSC_OK");
end CCS;