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
      msg : aliased asn1SccOctStr := (Data => (104, 105, others => 0), Length => 2);
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 3;
   procedure runTransition(Id: Integer);
   procedure go is
      begin
         case ctxt.state is
            when running =>
               runTransition(CS_Only);
            when wait =>
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end go;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      msgPending : aliased Asn1Boolean := True;
      --  !! stack: _call_external_function line 1271
      tmp21 : aliased asn1SccOctStr;
      tmp5 : aliased asn1SccOctStr;
      tmp15 : aliased asn1SccOctStr;
      tmp9 : aliased asn1SccOctStr;
      tmp23 : asn1SccOctStr;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  writeln('Hello') (31,21)
                  Put("Hello");
                  New_Line;
                  --  NEXT_STATE wait (33,26) at 363, 264
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE wait (42,30) at 473, 374
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 2 =>
                  --  send_to_uart ('hello') (46,27)
                  tmp5 := (Data => (104, 101, 108, 108, 111, others => 0), Length => 5);
                  RIÜsend_to_uart(tmp5'Access);
                  --  send_to_uart ('hello' // 'world') (48,27)
                  --  !! stack: _call_external_function line 1290
                  tmp9.Data (1 .. 5 + 5) := ((104, 101, 108, 108, 111) & asn1SccOctStr_Array'(119, 111, 114, 108, 100, others => <>)(1 .. 5));
                  tmp9.Length := 5 + 5;
                  RIÜsend_to_uart(tmp9'Access);
                  --  send_to_uart ('How' // 'are' // 'you?') (50,27)
                  --  !! stack: _call_external_function line 1290
                  tmp15.Data (1 .. 6 + 4) := ((((72, 111, 119) & asn1SccOctStr_Array'(97, 114, 101, others => <>)(1 .. 3))) & asn1SccOctStr_Array'(121, 111, 117, 63, others => <>)(1 .. 4));
                  tmp15.Length := 6 + 4;
                  RIÜsend_to_uart(tmp15'Access);
                  --  send_to_uart('I said' // msg // '!') (52,27)
                  --  !! stack: _call_external_function line 1290
                  tmp21.Data (1 .. 6 + ctxt.msg.Length + 1) := ((((73, 32, 115, 97, 105, 100) & ctxt.msg.Data(1..ctxt.msg.Length))) & asn1SccOctStr_Array'(33, others => <>)(1 .. 1));
                  tmp21.Length := 6 + ctxt.msg.Length + 1;
                  RIÜsend_to_uart(tmp21'Access);
                  --  msg := if msg = 'hi' then 'ping' else 'Received: ' // msg // ' ' fi (54,25)
                  if asn1SccOctStr_Equal(ctxt.msg, (Data => (104, 105, others => 0), Length => 2)) then
                     tmp23 := (Data => (112, 105, 110, 103, others => 0), Length => 4);
                  else
                     tmp23.Data(1..10 + ctxt.msg.Length + 1) := ((((82, 101, 99, 101, 105, 118, 101, 100, 58, 32) & ctxt.msg.Data(1..ctxt.msg.Length))) & asn1SccOctStr_Array'(32, others => <>)(1 .. 1));
                     tmp23.Length := 10 + ctxt.msg.Length + 1;
                  end if;
                  ctxt.msg := tmp23;
                  --  NEXT_STATE running (56,30) at 239, 647
                  trId := -1;
                  ctxt.state := running;
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
            if not msgPending and trId = -1 and ctxt.state = wait then
               -- Priority 1
               --  DECISION true (-1,-1)
               --  ANSWER true (None,None)
               if (true) = true then
                  trId := 2;
               end if;
            end if;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end og;