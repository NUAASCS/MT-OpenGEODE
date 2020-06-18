-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package DCS is
   --  Provided interface "DSR"
   procedure DSR(DSR_param: access asn1SccDevice_SelfCheck_Result);
   pragma Export(C, dsr, "dcs_PI_dsr");
   --  Paramless required interface "DSSC_OK"
   procedure RIÜDSSC_OK;
   pragma import(C, RIÜDSSC_OK, "DCS_RI_DSSC_OK");
   --  Required interface "DPR"
   procedure RIÜDPR(DPR_param: access asn1SccDevice_PowerOn_Result);
   pragma import(C, RIÜDPR, "DCS_RI_DPR");
end DCS;