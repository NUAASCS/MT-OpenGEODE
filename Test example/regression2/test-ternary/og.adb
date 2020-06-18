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
      msg : aliased MyStr := (Data => (104, 101, 108, 108, 111, others => 0), Length => 5);
      save_buffer : aliased SeqOf;
      param : aliased BoolType;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 6;
   procedure runTransition(Id: Integer);
   procedure run is
      begin
         case ctxt.state is
            when running =>
               runTransition(1);
            when wait =>
               runTransition(5);
            when others =>
               runTransition(CS_Only);
         end case;
      end run;
      

   procedure saved_signal(saved_signal_param: access BoolType) is
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
      tmp73 : aliased MyStr;
      tmp31 : SeqOf;
      tmp19 : SeqOf;
      --  !! stack: _call_external_function line 1271
      tmp56 : MyStr;
      tmp69 : aliased MyStr;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE wait (36,26) at 0, 276
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 1 =>
                  --  writeln('Already running') (42,25)
                  Put("Already running");
                  New_Line;
                  --  NEXT_STATE - (44,30) at 1017, 376
                  trId := -1;
                  goto next_transition;
               when 2 =>
                  --  param := save_buffer(0) (48,25)
                  ctxt.param := ctxt.save_buffer.Data(1);
                  --  save_buffer := save_buffer(1, length(save_buffer)) (50,25)
                  ctxt.save_buffer.Data(1..ctxt.save_buffer.Data(2..Integer(ctxt.save_buffer.Length) + 1)'Length) := ctxt.save_buffer.Data(2..Integer(ctxt.save_buffer.Length) + 1);
                  ctxt.save_buffer.Length := ctxt.save_buffer.Data(2..Integer(ctxt.save_buffer.Length) + 1)'Length;
                  --  save_buffer := if length(save_buffer) > 1
                  --  then {true} else save_buffer // {false } fi (52,25)
                  if (ctxt.save_buffer.Length > 1) then
                     tmp19 := (Data => (1 => true, others => true), Length => 1);
                  else
                     tmp19.Data(1..ctxt.save_buffer.Length + 1) := ((ctxt.save_buffer.Data(1..ctxt.save_buffer.Length)) & SeqOf_Array'(1 => false, others => <>)(1 .. 1));
                     tmp19.Length := ctxt.save_buffer.Length + 1;
                  end if;
                  ctxt.save_buffer := tmp19;
                  --  save_buffer := if length(save_buffer) > 1
                  --  then save_buffer(1, length(save_buffer))
                  --  else {} fi (55,25)
                  if (ctxt.save_buffer.Length > 1) then
                     tmp31.Data(1..ctxt.save_buffer.Data(2..Integer(ctxt.save_buffer.Length) + 1)'Length) := ctxt.save_buffer.Data(2..Integer(ctxt.save_buffer.Length) + 1);
                     tmp31.Length := ctxt.save_buffer.Data(2..Integer(ctxt.save_buffer.Length) + 1)'Length;
                  else
                     tmp31 := SeqOf_Init;
                  end if;
                  ctxt.save_buffer := tmp31;
                  --  writeln('Running: ', param) (59,25)
                  Put("Running: ");
                  Put(BoolType'Image(ctxt.param));
                  New_Line;
                  --  NEXT_STATE Running (61,30) at 725, 617
                  trId := -1;
                  ctxt.state := Running;
                  goto next_transition;
               when 3 =>
                  --  msg := msg // ' world' (65,25)
                  ctxt.msg.Data(1..ctxt.msg.Length + 6) := ((ctxt.msg.Data(1..ctxt.msg.Length)) & MyStr_Array'(32, 119, 111, 114, 108, 100, others => <>)(1 .. 6));
                  ctxt.msg.Length := ctxt.msg.Length + 6;
                  --  msg := if false then 'helo' else msg // 'world' // '!!' fi (67,25)
                  if false then
                     tmp56 := (Data => (104, 101, 108, 111, others => 0), Length => 4);
                  else
                     tmp56.Data(1..ctxt.msg.Length + 5 + 2) := ((((ctxt.msg.Data(1..ctxt.msg.Length)) & MyStr_Array'(119, 111, 114, 108, 100, others => <>)(1 .. 5))) & MyStr_Array'(33, 33, others => <>)(1 .. 2));
                     tmp56.Length := ctxt.msg.Length + 5 + 2;
                  end if;
                  ctxt.msg := tmp56;
                  --  we (msg) (69,27)
                  RIÜwe(ctxt.msg'Access);
                  --  we (msg // '!') (71,27)
                  --  !! stack: _call_external_function line 1290
                  tmp69.Data (1 .. ctxt.msg.Length + 1) := ((ctxt.msg.Data(1..ctxt.msg.Length)) & MyStr_Array'(33, others => <>)(1 .. 1));
                  tmp69.Length := ctxt.msg.Length + 1;
                  RIÜwe(tmp69'Access);
                  --  we ('hello' // ' world!') (73,27)
                  --  !! stack: _call_external_function line 1290
                  tmp73.Data (1 .. 5 + 7) := ((104, 101, 108, 108, 111) & MyStr_Array'(32, 119, 111, 114, 108, 100, 33, others => <>)(1 .. 7));
                  tmp73.Length := 5 + 7;
                  RIÜwe(tmp73'Access);
                  --  NEXT_STATE - (75,30) at 1294, 601
                  trId := -1;
                  goto next_transition;
               when 4 =>
                  --  DECISION length(save_buffer) (-1,-1)
                  --  ANSWER <10 (84,25)
                  if (ctxt.save_buffer.Length) < 10 then
                     --  save_buffer :=
                     --  save_buffer // {param} (86,33)
                     ctxt.save_buffer.Data(1..ctxt.save_buffer.Length + 1) := ((ctxt.save_buffer.Data(1..ctxt.save_buffer.Length)) & SeqOf_Array'(1 => ctxt.param, others => <>)(1 .. 1));
                     ctxt.save_buffer.Length := ctxt.save_buffer.Length + 1;
                     --  ANSWER 10 (89,25)
                  elsif (ctxt.save_buffer.Length) = 10 then
                     --  writeln('Buffer Overflow!') (91,33)
                     Put("Buffer Overflow!");
                     New_Line;
                  end if;
                  --  NEXT_STATE wait (94,30) at 342, 516
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 5 =>
                  --  NEXT_STATE Running (98,30) at 79, 332
                  trId := -1;
                  ctxt.state := Running;
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
               --  DECISION length(save_buffer) > 0 (46,45)
               --  ANSWER true (None,None)
               if ((ctxt.save_buffer.Length > 0)) = true then
                  trId := 2;
                  -- Priority 1
                  --  DECISION length (msg) < 100 (63,38)
                  --  ANSWER true (None,None)
               elsif ((ctxt.msg.Length < 100)) = true then
                  trId := 3;
               end if;
            end if;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end og;