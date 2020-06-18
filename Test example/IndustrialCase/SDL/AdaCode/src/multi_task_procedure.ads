with TASTE_Dataview;
use TASTE_Dataview;

package Multi_Task_Procedure is

   procedure CCS_RI_DPR(DPR_param: access Device_PowerOn_Result);
   pragma export(C, CCS_RI_DPR, "CCS_RI_DPR");
   
   procedure RI_DCC_AND_DSM;
   pragma export(C, RI_DCC_AND_DSM, "DP_RI_DCC_AND_DSM");
   
   procedure DCS_RI_DPR(DPR_param: access Device_PowerOn_Result);
   pragma export(C, DCS_RI_DPR, "DCS_RI_DPR");
   
   procedure RI_DCSC_OK;
   pragma export(C, RI_DCSC_OK, "CCS_RI_DCSC_OK");
   
   procedure RI_DSSC_OK;
   pragma export(C, RI_DSSC_OK, "DCS_RI_DSSC_OK");
   
   procedure PO_RI_DPR(DPR_param: access Device_PowerOn_Result);
   pragma export(C, PO_RI_DPR, "PO_RI_DPR");
   
   procedure RI_TRIGGER1(TRIGGER1_param: access Trigger_1);
   pragma export(C, RI_TRIGGER1, "PO_RI_TRIGGER1");

end Multi_Task_Procedure;
