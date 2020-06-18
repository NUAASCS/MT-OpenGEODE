-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body orchestrator is
   type States is (waitÜwaiting_in_wait, waitÜentering_wait, timeout, next);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      a : aliased asn1SccMyEnum;
      simpleseq : aliased asn1SccMySimpleSeq := asn1SccMySimpleSeq'( a => 42,  c => asn1Sccthree,  b => true);
      counter : aliased asn1SccT_UInt32 := 0;
      seq : aliased asn1SccTASTE_Peek_id_list := (Data => (1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, others => 1), Length => 5);
      fixed : aliased asn1SccFixedIntList := (Data => (1 => 1, 2 => 2, 3 => 3, others => 1));
      anint : aliased asn1SccT_UInt32 := 0;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 9;
   waitÜSTART : constant := 6;
   procedure runTransition(Id: Integer);
   procedure pÜVDM(inp: in asn1SccFixedIntList;outp: in out asn1SccFixedIntList);
   pragma import(C, pÜVDM, "VDM");
   procedure pÜVDM2(inp: in asn1SccT_UInt32;outp: in out asn1SccMySimpleSeq);
   pragma import(C, pÜVDM2, "VDM2");
   



procedure pulse(pulse_param: access asn1SccMyEnum) is
begin
   case ctxt.state is
      when waitÜwaiting_in_wait =>
         ctxt.a := pulse_param.all;
         runTransition(3);
      when waitÜentering_wait =>
         ctxt.a := pulse_param.all;
         runTransition(3);
      when timeout =>
         runTransition(CS_Only);
      when next =>
         ctxt.a := pulse_param.all;
         runTransition(2);
      when others =>
         runTransition(CS_Only);
   end case;
end pulse;


procedure Paramless_TC is
begin
   case ctxt.state is
      when waitÜwaiting_in_wait =>
         runTransition(4);
      when waitÜentering_wait =>
         runTransition(4);
      when timeout =>
         runTransition(1);
      when next =>
         runTransition(CS_Only);
      when others =>
         runTransition(CS_Only);
   end case;
end Paramless_TC;


procedure other is
begin
   case ctxt.state is
      when waitÜwaiting_in_wait =>
         runTransition(7);
      when waitÜentering_wait =>
         runTransition(8);
      when timeout =>
         runTransition(CS_Only);
      when next =>
         runTransition(CS_Only);
      when others =>
         runTransition(CS_Only);
   end case;
end other;


procedure mytimer is
begin
   case ctxt.state is
      when waitÜwaiting_in_wait =>
         runTransition(5);
      when waitÜentering_wait =>
         runTransition(5);
      when timeout =>
         runTransition(CS_Only);
      when next =>
         runTransition(CS_Only);
      when others =>
         runTransition(CS_Only);
   end case;
end mytimer;


procedure runTransition(Id: Integer) is
trId : Integer := Id;
tmp110 : aliased asn1SccT_UInt32;
tmp20 : aliased asn1SccT_UInt32;
--  !! stack: _call_external_function line 1271
tmp77 : aliased asn1SccT_UInt32;
begin
   while (trId /= -1) loop
      case trId is
         when 0 =>
            --  writeln('Simulation startup') (55,13)
            Put("Simulation startup");
            New_Line;
            --  NEXT_STATE Wait (57,18) at 1095, 251
            trId := waitÜSTART;
            goto next_transition;
         when 1 =>
            --  SET_timer(1000, mytimer) (63,17)
            tmp20 := 1000;
            SET_mytimer(tmp20'access);
            --  NEXT_STATE next (65,22) at 1687, 280
            trId := -1;
            ctxt.state := next;
            goto next_transition;
         when 2 =>
            --  reset_timer(mytimer) (72,17)
            RESET_mytimer;
            --  NEXT_STATE wait (74,22) at 1681, 500
            trId := waitÜSTART;
            goto next_transition;
         when 3 =>
            --  seq := {0,1,0,1,0} (81,17)
            ctxt.seq := (Data => (1 => 0, 2 => 1, 3 => 0, 4 => 1, 5 => 0, others => 0), Length => 5);
            --  anint := 478 (82,0)
            ctxt.anint := 478;
            --  writeln('Input param', anint) (84,17)
            Put("Input param");
            Put(asn1SccT_UInt32'Image(ctxt.anint));
            New_Line;
            --  ExternalProc(anint, anint) (86,17)
            RIÜExternalProc(ctxt.anint'Access, ctxt.anint'Access);
            --  writeln('Output param', anint) (88,17)
            Put("Output param");
            Put(asn1SccT_UInt32'Image(ctxt.anint));
            New_Line;
            --  write('Calling VDM with data') (90,17)
            Put("Calling VDM with data");
            --  TASK for each in fixed: call write(each, ' '); endfor (92,17)
            declare
               each : asn1SccTASTE_Peek_id;
            begin
               for each_idx in ctxt.fixed.Data'Range loop
                  each := ctxt.fixed.Data(each_idx);
                  --  write(each, ' ') (92,41)
                  Put(asn1SccTASTE_Peek_id'Image(each));
                  Put(" ");
               end loop;
            end;
            --  writeln('') (94,17)
            Put("");
            New_Line;
            --  vdm(fixed, fixed) (96,17)
            RIÜvdm(ctxt.fixed'Access, ctxt.fixed'Access);
            --  write('Result:') (98,17)
            Put("Result:");
            --  TASK for each in fixed: call write(each, ' '); endfor (100,17)
            declare
               each : asn1SccTASTE_Peek_id;
            begin
               for each_idx in ctxt.fixed.Data'Range loop
                  each := ctxt.fixed.Data(each_idx);
                  --  write(each, ' ') (100,41)
                  Put(asn1SccTASTE_Peek_id'Image(each));
                  Put(" ");
               end loop;
            end;
            --  writeln('') (102,17)
            Put("");
            New_Line;
            --  writeln('Calling VDM2 with value', fixed(0)) (104,17)
            Put("Calling VDM2 with value");
            Put(asn1SccTASTE_Peek_id'Image(ctxt.fixed.Data(1)));
            New_Line;
            --  vdm2(fixed(0), simpleseq) (106,17)
            tmp77 := asn1SccT_UInt32(ctxt.fixed.Data(1));
            RIÜvdm2(tmp77'Access, ctxt.simpleseq'Access);
            --  writeln('Result:', simpleseq!a, ' ', simpleseq!b, ' ', simpleseq!c) (108,17)
            Put("Result:");
            Put(asn1SccMySimpleSeq_a'Image(ctxt.simpleseq.a));
            Put(" ");
            Put(Boolean'Image(ctxt.simpleseq.b));
            Put(" ");
            Put(asn1SccMyEnum'Image(ctxt.simpleseq.c));
            New_Line;
            --  telemetry(a) (110,19)
            RIÜtelemetry(ctxt.a'Access);
            --  peek_list(seq) (112,19)
            RIÜpeek_list(ctxt.seq'Access);
            --  peek_fixed(fixed) (114,19)
            RIÜpeek_fixed(ctxt.fixed'Access);
            --  NEXT_STATE next (116,22) at 820, 1251
            trId := -1;
            ctxt.state := next;
            goto next_transition;
         when 4 =>
            --  counter := (counter + 1)  mod 500 (120,17)
            ctxt.counter := Asn1UInt(((ctxt.counter + 1) mod 500));
            --  writeln('Got Paramless TC') (122,17)
            Put("Got Paramless TC");
            New_Line;
            --  SET_timer(1000, mytimer) (124,17)
            tmp110 := 1000;
            SET_mytimer(tmp110'access);
            --  Paramless_TM (126,19)
            RIÜParamless_TM;
            --  anint := (anint + 1) mod 100 (128,17)
            ctxt.anint := Asn1UInt(((ctxt.anint + 1) mod 100));
            --  NEXT_STATE wait (130,22) at 1257, 610
            trId := waitÜSTART;
            goto next_transition;
         when 5 =>
            --  NEXT_STATE Timeout (134,22) at 1430, 355
            trId := -1;
            ctxt.state := Timeout;
            goto next_transition;
         when 6 =>
            --  NEXT_STATE waitÜentering_wait (10,26) at 89, 88
            trId := -1;
            ctxt.state := waitÜentering_wait;
            goto next_transition;
         when 7 =>
            --  NEXT_STATE waitÜentering_wait (16,30) at 83, 298
            trId := -1;
            ctxt.state := waitÜentering_wait;
            goto next_transition;
         when 8 =>
            --  NEXT_STATE waitÜwaiting_in_wait (23,30) at 83, 193
            trId := -1;
            ctxt.state := waitÜwaiting_in_wait;
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
end orchestrator;