-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package DP is
   --  Provided interface "DPC"
   procedure DPC(DPC_param: access asn1SccDevice_PowerOn_Command);
   pragma Export(C, dpc, "dp_PI_dpc");
   --  Paramless required interface "DCC"
   procedure RI�DCC;
   pragma import(C, RI�DCC, "DP_RI_DCC");
   --  Paramless required interface "DSM"
   procedure RI�DSM;
   pragma import(C, RI�DSM, "DP_RI_DSM");
end DP;