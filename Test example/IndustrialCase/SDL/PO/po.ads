-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package PO is
   --  Provided interface "DCSC_OK"
   procedure DCSC_OK;
   pragma Export(C, dcsc_ok, "po_PI_dcsc_ok");
   --  Provided interface "DSSC_OK"
   procedure DSSC_OK;
   pragma Export(C, dssc_ok, "po_PI_dssc_ok");
   --  Required interface "DPR"
   procedure RI�DPR(DPR_param: access asn1SccDevice_PowerOn_Result);
   pragma import(C, RI�DPR, "PO_RI_DPR");
   --  Required interface "TRIGGER1"
   procedure RI�TRIGGER1(TRIGGER1_param: access asn1SccTrigger_1);
   pragma import(C, RI�TRIGGER1, "PO_RI_TRIGGER1");
end PO;