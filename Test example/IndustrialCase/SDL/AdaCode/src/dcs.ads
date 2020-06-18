-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;

with Multi_Task_Procedure;
use Multi_Task_Procedure;

package DCS is
   --  Provided interface "DSR"
   procedure DSR(DSR_param: access Device_SelfCheck_Result);
   pragma Export(C, dsr, "dcs_PI_dsr");
   --  Paramless required interface "DSSC_OK"
   procedure RI_DSSC_OK;
   pragma import(C, RI_DSSC_OK, "DCS_RI_DSSC_OK");
   --  Required interface "DPR"
   procedure DCS_RI_DPR(DPR_param: access Device_PowerOn_Result);
   pragma import(C, DCS_RI_DPR, "DCS_RI_DPR");
end DCS;
