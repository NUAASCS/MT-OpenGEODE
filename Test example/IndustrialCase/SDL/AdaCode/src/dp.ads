-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;

with Multi_Task_Procedure;
use Multi_Task_Procedure;

--  with RI_DSM_P;
--  use RI_DSM_P;




package DP is
   --  Provided interface "DPC"
   procedure DPC(DPC_param: access Device_PowerOn_Command);
   pragma Export(C, dpc, "dp_PI_dpc");

   procedure RI_DCC_AND_DSM;
   pragma import(C, RI_DCC_AND_DSM, "DP_RI_DCC_AND_DSM");

   --  Paramless required interface "DCC"
   --  procedure RI_DCC;
   --  pragma import(C, RI_DCC, "DP_RI_DCC");
   --  --  Paramless required interface "DSM"
   --  procedure RI_DSM;
   --  pragma import(C, RI_DSM, "DP_RI_DSM");
end DP;
