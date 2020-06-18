-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;

with Multi_Task_Procedure;
use Multi_Task_Procedure;

with Multi_Task_Procedure;
use Multi_Task_Procedure;


   --change Ü 2 _ , delete asn1Scc by zong
package CCS is
   --  Provided interface "CCSR"
   procedure CCSR(CCSR_param: access Control_Computer_SelfCheck_Result);
   pragma Export(C, ccsr, "ccs_PI_ccsr");
   --  Required interface "DPR"

   procedure CCS_RI_DPR(DPR_param: access Device_PowerOn_Result);
   pragma import(C, CCS_RI_DPR, "CCS_RI_DPR");
   --  Paramless required interface "DCSC_OK"
   procedure RI_DCSC_OK;
   pragma import(C, RI_DCSC_OK, "CCS_RI_DCSC_OK");
end CCS;
