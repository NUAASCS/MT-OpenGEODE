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

package body DCS is
   type States is (device_computer_selfcheck);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      dp1r : aliased asn1SccDevice_PowerOn1_Result;
      dsr : aliased asn1SccDevice_SelfCheck_Result;
      dcsi : aliased asn1SccDevice_Current_StateInfo;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   function p�power_off(dcsi: in asn1SccDevice_Current_StateInfo) return asn1SccDevice_PowerOn1_Result;
   function p�power_off(dcsi: in asn1SccDevice_Current_StateInfo) return asn1SccDevice_PowerOn1_Result is
      dpr : aliased asn1SccDevice_PowerOn1_Result;
      begin
         --  RETURN dpr (None,None) at 378, 92
         return dpr;
      end p�power_off;
      

   procedure DSR(DSR_param: access asn1SccDevice_SelfCheck_Result) is
      begin
         case ctxt.state is
            when device_computer_selfcheck =>
               ctxt.dsr := DSR_param.all;
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end DSR;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      --  !! stack: _call_external_function line 1271
      tmp23 : aliased asn1SccDevice_PowerOn_Result;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE device_computer_selfcheck (47,26) at 309, 70
                  trId := -1;
                  ctxt.state := device_computer_selfcheck;
                  goto next_transition;
               when 1 =>
                  --  DECISION dsr!content=errorDSR (53,40)
                  --  ANSWER TRUE (55,25)
                  if (asn1SccMessage_Equal(ctxt.dsr.content, errorDSR)) = true then
                     --  dp1r:=power_off(dcsi) (57,33)
                     ctxt.dp1r := p�power_off(ctxt.dcsi);
                     --  DPR(errorDSR) (59,35)
                     tmp23 := errorDSR;
                     RI�DPR(tmp23'Access);
                     --  ANSWER FALSE (61,25)
                  elsif (asn1SccMessage_Equal(ctxt.dsr.content, errorDSR)) = false then
                     --  DSSC_OK (63,35)
                     RI�DSSC_OK;
                  end if;
                  --  NEXT_STATE - (66,30) at 375, 400
                  trId := -1;
                  goto next_transition;
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
end DCS;