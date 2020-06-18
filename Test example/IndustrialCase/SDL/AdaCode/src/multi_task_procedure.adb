with Ada.Text_IO; use Ada.Text_IO;
with TASTE_Dataview;
use TASTE_Dataview;

with Multi_Task;
use Multi_Task;

package body Multi_Task_Procedure is

   procedure CCS_RI_DPR(DPR_param: access Device_PowerOn_Result)is
      begin
         null;
   end CCS_RI_DPR;
   
   procedure RI_DCC_AND_DSM is
      ccsrt:CCSR_Task;  
      dsrt:DSR_Task;
   begin
      ccsrt.Start;
      dsrt.Start;
   end RI_DCC_AND_DSM;
   
   procedure DCS_RI_DPR(DPR_param: access Device_PowerOn_Result)is
   begin
      null;
   end DCS_RI_DPR;
   
   procedure RI_DCSC_OK is
   dcsc_okt: DCSC_OK_Task;
   begin
       dcsc_okt.Start;
   end RI_DCSC_OK;
   
   procedure RI_DSSC_OK is
   dssc_okt: DSSC_OK_Task;
   begin
   dssc_okt.Start;
   end RI_DSSC_OK;
   
   procedure PO_RI_DPR(DPR_param: access Device_PowerOn_Result) is
   begin
   null;
   end PO_RI_DPR;
   
   procedure RI_TRIGGER1(TRIGGER1_param: access Trigger_1)is
   begin
      null;
   end RI_TRIGGER1;

end Multi_Task_Procedure;
