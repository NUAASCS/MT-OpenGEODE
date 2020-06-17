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

package body DP is
   type States is (data_parse);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      trigger : aliased asn1SccTrigger;
      dpc : aliased asn1SccDevice_PowerOn_Command;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   procedure pÜtrigger_start(trigger: in asn1SccTrigger);
   function pÜdata_parser(dpc: in asn1SccDevice_PowerOn_Command) return asn1SccTrigger;
   procedure pÜtrigger_start(trigger: in asn1SccTrigger) is
      begin
         --  RETURN  (None,None) at 417, 106
         return;
      end pÜtrigger_start;
      

   function pÜdata_parser(dpc: in asn1SccDevice_PowerOn_Command) return asn1SccTrigger is
      t : aliased asn1SccTrigger;
      begin
         --  RETURN t (None,None) at 406, 102
         return t;
      end pÜdata_parser;
      

   procedure DPC(DPC_param: access asn1SccDevice_PowerOn_Command) is
      begin
         case ctxt.state is
            when data_parse =>
               ctxt.dpc := DPC_param.all;
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end DPC;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE data_parse (59,26) at 336, 94
                  trId := -1;
                  ctxt.state := data_parse;
                  goto next_transition;
               when 1 =>
                  --  trigger:=data_parser(dpc) (65,25)
                  ctxt.trigger := pÜdata_parser(ctxt.dpc);
                  --  trigger_start(trigger) (67,25)
                  pÜtrigger_start(ctxt.trigger);
                  --  DCC (69,27)
                  RIÜDCC;
                  --  DSM (71,27)
                  RIÜDSM;
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
end DP;