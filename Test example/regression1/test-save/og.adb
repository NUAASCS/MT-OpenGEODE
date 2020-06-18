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

package body og is
   type States is (running, wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      save_buffer : aliased asn1SccSeqOf;
      param : aliased asn1SccBoolType;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 5;
   procedure runTransition(Id: Integer);
   procedure p‹SAVE_PARAM(param: in asn1SccBoolType);
   procedure p‹GET_PARAM;
   procedure p‹SAVE_PARAM(param: in asn1SccBoolType) is
      begin
         --  DECISION length(save_buffer) (-1,-1)
         --  ANSWER <10 (44,29)
         if (ctxt.save_buffer.Length) < 10 then
            --  save_buffer :=
            --  save_buffer // {param} (46,37)
            ctxt.save_buffer.Data(1..ctxt.save_buffer.Length + 1) := ((ctxt.save_buffer.Data(1..ctxt.save_buffer.Length)) & asn1SccSeqOf_Array'(1 => param, others => <>)(1 .. 1));
            ctxt.save_buffer.Length := ctxt.save_buffer.Length + 1;
            --  ANSWER 10 (49,29)
         elsif (ctxt.save_buffer.Length) = 10 then
            --  writeln('Buffer Overflow!') (51,37)
            Put("Buffer Overflow!");
            New_Line;
         end if;
         --  RETURN  (None,None) at 163, 422
         return;
      end p‹SAVE_PARAM;
      

   procedure p‹GET_PARAM is
      idx : aliased asn1SccMyInteger := 0;
      tmp35 : asn1SccSeqOf;
      begin
         --  param := save_buffer(0) (66,25)
         ctxt.param := ctxt.save_buffer.Data(1);
         --  idx := length (save_buffer) - 1 (68,25)
         idx := Asn1UInt((ctxt.save_buffer.Length - 1));
         --  save_buffer := if length(save_buffer) > 1
         --  then save_buffer(1, idx) else {} fi (70,25)
         if (ctxt.save_buffer.Length > 1) then
            tmp35.Data(1..ctxt.save_buffer.Data(2..Integer(idx) + 1)'Length) := ctxt.save_buffer.Data(2..Integer(idx) + 1);
            tmp35.Length := ctxt.save_buffer.Data(2..Integer(idx) + 1)'Length;
         else
            tmp35 := asn1SccSeqOf_Init;
         end if;
         ctxt.save_buffer := tmp35;
         --  RETURN  (None,None) at 170, 302
         return;
      end p‹GET_PARAM;
      

   procedure run is
      begin
         case ctxt.state is
            when running =>
               runTransition(1);
            when wait =>
               runTransition(3);
            when others =>
               runTransition(CS_Only);
         end case;
      end run;
      

   procedure saved_signal(saved_signal_param: access asn1SccBoolType) is
      begin
         case ctxt.state is
            when running =>
               runTransition(CS_Only);
            when wait =>
               ctxt.param := saved_signal_param.all;
               runTransition(4);
            when others =>
               runTransition(CS_Only);
         end case;
      end saved_signal;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      msgPending : aliased Asn1Boolean := True;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE wait (78,26) at 97, 274
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 1 =>
                  --  writeln('Already running') (84,25)
                  Put("Already running");
                  New_Line;
                  --  NEXT_STATE - (86,30) at 588, 391
                  trId := -1;
                  goto next_transition;
               when 2 =>
                  --  GET_PARAM (90,25)
                  p‹GET_PARAM;
                  --  writeln('Running: ', param) (92,25)
                  Put("Running: ");
                  Put(asn1SccBoolType'Image(ctxt.param));
                  New_Line;
                  --  NEXT_STATE Running (94,30) at 370, 441
                  trId := -1;
                  ctxt.state := Running;
                  goto next_transition;
               when 3 =>
                  --  NEXT_STATE Running (101,30) at 5, 379
                  trId := -1;
                  ctxt.state := Running;
                  goto next_transition;
               when 4 =>
                  --  SAVE_PARAM(param) (105,25)
                  p‹SAVE_PARAM(ctxt.param);
                  --  NEXT_STATE wait (107,30) at 149, 429
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            <<next_transition>>
            --  Process continuous signals
            if ctxt.initDone then
               Check_Queue(msgPending'access);
            end if;
            if not msgPending and trId = -1 and ctxt.state = running then
               -- Priority 1
               --  DECISION length(save_buffer) > 0 (88,45)
               --  ANSWER true (None,None)
               if ((ctxt.save_buffer.Length > 0)) = true then
                  trId := 2;
               end if;
            end if;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end og;