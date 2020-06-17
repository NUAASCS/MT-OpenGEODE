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

package body PO is
   type States is (power_on, device_computer_selfcheck_ok, control_computer_selfcheck_ok);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      dp1r : aliased asn1SccDevice_PowerOn1_Result;
      trigger1 : aliased asn1SccTrigger_1;
      dcsi : aliased asn1SccDevice_Current_StateInfo;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 5;
   procedure runTransition(Id: Integer);
   function p‹power_on(dcsi: in asn1SccDevice_Current_StateInfo) return asn1SccDevice_PowerOn1_Result;
   function p‹power_off(dcsi: in asn1SccDevice_Current_StateInfo) return asn1SccDevice_PowerOn1_Result;
   function p‹power_on(dcsi: in asn1SccDevice_Current_StateInfo) return asn1SccDevice_PowerOn1_Result is
      dpr : aliased asn1SccDevice_PowerOn1_Result;
      begin
         --  RETURN dpr (None,None) at 428, 95
         return dpr;
      end p‹power_on;
      

   function p‹power_off(dcsi: in asn1SccDevice_Current_StateInfo) return asn1SccDevice_PowerOn1_Result is
      dpr : aliased asn1SccDevice_PowerOn1_Result;
      begin
         --  RETURN dpr (None,None) at 428, 95
         return dpr;
      end p‹power_off;
      

   procedure DCSC_OK is
      begin
         case ctxt.state is
            when power_on =>
               runTransition(3);
            when device_computer_selfcheck_ok =>
               runTransition(1);
            when control_computer_selfcheck_ok =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end DCSC_OK;
      

   procedure DSSC_OK is
      begin
         case ctxt.state is
            when power_on =>
               runTransition(4);
            when device_computer_selfcheck_ok =>
               runTransition(CS_Only);
            when control_computer_selfcheck_ok =>
               runTransition(2);
            when others =>
               runTransition(CS_Only);
         end case;
      end DSSC_OK;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp205 : aliased asn1SccDevice_PowerOn_Result;
      --  !! stack: _call_external_function line 1271
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE power_on (65,26) at 229, 55
                  trId := -1;
                  ctxt.state := power_on;
                  goto next_transition;
               when 1 =>
                  --  JOIN dcs_OK (71,25) at 405, 275
                  goto dcs_OK;
               when 2 =>
                  --  JOIN dcs_OK (None,None) at None, None
                  goto dcs_OK;
               when 3 =>
                  --  NEXT_STATE control_computer_selfcheck_ok (104,30) at 42, 165
                  trId := -1;
                  ctxt.state := control_computer_selfcheck_ok;
                  goto next_transition;
               when 4 =>
                  --  NEXT_STATE device_computer_selfcheck_ok (108,30) at 311, 165
                  trId := -1;
                  ctxt.state := device_computer_selfcheck_ok;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            goto next_transition;
            --  CONNECTION dcs_OK (78,20)
            <<dcs_OK>>
            --  dp1r:=power_on(dcsi) (80,25)
            ctxt.dp1r := p‹power_on(ctxt.dcsi);
            --  DECISION dp1r=errorDP1 (82,33)
            --  ANSWER FALSE (84,25)
            if (asn1SccDevice_PowerOn1_Result_Equal(ctxt.dp1r, errorDP1)) = false then
               --  TRIGGER1(trigger1) (86,35)
               RI‹TRIGGER1(ctxt.trigger1'Access);
               --  DPR(dp1r) (88,35)
               RI‹DPR(ctxt.dp1r'Access);
               --  ANSWER TRUE (90,25)
            elsif (asn1SccDevice_PowerOn1_Result_Equal(ctxt.dp1r, errorDP1)) = true then
               --  dp1r:=power_off(dcsi) (92,33)
               ctxt.dp1r := p‹power_off(ctxt.dcsi);
               --  DPR(errorDP1) (94,35)
               tmp205 := errorDP1;
               RI‹DPR(tmp205'Access);
            end if;
            --  NEXT_STATE - (97,30) at 121, 600
            trId := -1;
            goto next_transition;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end PO;