with Ada.Text_IO; use Ada.Text_IO;
-- This file was generated automatically: DO NOT MODIFY IT !


with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

with Multi_Task;
use Multi_Task;



package body DP is
   type States is (data_parse);
   type ctxt_Ty is
      record
      state : States;
         initDone : Boolean := False;
         -- identifier should be different from the type,no case match. by zong
      trigger1 : aliased Trigger;
      dpc : aliased Device_PowerOn_Command;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
      
   procedure runTransition(Id: Integer);
   function p_data_parser(dpc: in Device_PowerOn_Command) return Trigger;
   procedure p_trigger_start(trigger1: in Trigger);
   function p_data_parser(dpc: in Device_PowerOn_Command) return Trigger is
      t : aliased Trigger;
      begin
         --  RETURN t (None,None) at 406, 102
         return t;
      end p_data_parser;
      

   procedure p_trigger_start(trigger1: in Trigger) is
      begin
         --  RETURN  (None,None) at 417, 106
         return;
      end p_trigger_start;
      

   procedure DPC(DPC_param: access Device_PowerOn_Command) is
      begin
         case ctxt.state is
         when data_parse =>
            --  Put_Line("222");
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
                  --  NEXT_STATE data_parse (58,26) at 346, 94
               trId := -1;
               --  Put_Line("CALL T0");
                  ctxt.state := data_parse;
                  goto next_transition;
               when 1 =>
                  --  trigger:=data_parser(dpc) (64,25)
                  ctxt.trigger1 := p_data_parser(ctxt.dpc);
                  --  trigger_start(trigger) (66,25)
               p_trigger_start(ctxt.trigger1);
                --  Put_Line("444");
                  --  DCC (68,275)
               --  RI_DCC;
                --I wanna let them run together. by zong
                RI_DCC_AND_DSM;
               --  ccsrt.Start(1);
               --  Put_Line("333");
                  --  DSM (70,27)
               --  RI_DSM;
               --  DSR_Taskt.Start(1);
                  --  NEXT_STATEATE - (72,30) at 356, 419
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
   --  Put_Line("CALLED T0");
      ctxt.initDone := true;
end DP;
