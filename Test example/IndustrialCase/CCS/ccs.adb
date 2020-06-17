-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body CCS is
   type States is (control_computer_selfcheck);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      ccsr : aliased asn1SccControl_Computer_SelfCheck_Result;
      dp1r : aliased asn1SccDevice_PowerOn1_Result;
      dcsi : aliased asn1SccDevice_Current_StateInfo;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   function pÜpower_off(dcsi: in asn1SccDevice_Current_StateInfo) return asn1SccDevice_PowerOn1_Result;
   function pÜpower_off(dcsi: in asn1SccDevice_Current_StateInfo) return asn1SccDevice_PowerOn1_Result is
      dpr : aliased asn1SccDevice_PowerOn1_Result;
      begin
         --  RETURN dpr (None,None) at 425, 101
         return dpr;
      end pÜpower_off;
      

   procedure CCSR(CCSR_param: access asn1SccControl_Computer_SelfCheck_Result) is
      begin
         case ctxt.state is
            when control_computer_selfcheck =>
               ctxt.ccsr := CCSR_param.all;
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end CCSR;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp10 : aliased asn1SccDevice_PowerOn_Result;
      --  !! stack: _call_external_function line 1271
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE control_computer_selfcheck (47,26) at 79, 94
                  trId := -1;
                  ctxt.state := control_computer_selfcheck;
                  goto next_transition;
               when 1 =>
                  --  DECISION ccsr!content=errorCCSR (53,41)
                  --  ANSWER TRUE (55,29)
                  if (asn1SccMessage_Equal(ctxt.ccsr.content, errorCCSR)) = true then
                     --  dp1r:=power_off(dcsi) (57,37)
                     ctxt.dp1r := pÜpower_off(ctxt.dcsi);
                     --  DPR(errorCCSR) (59,39)
                     tmp10 := errorCCSR;
                     RIÜDPR(tmp10'Access);
                     --  ANSWER FALSE (61,29)
                  elsif (asn1SccMessage_Equal(ctxt.ccsr.content, errorCCSR)) = false then
                     --  DCSC_OK (63,39)
                     RIÜDCSC_OK;
                  end if;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end CCS;