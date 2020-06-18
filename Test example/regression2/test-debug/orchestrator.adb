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
   type States is (anotherstate, wait_for_gui, third);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      opt : aliased SeqOpt := SeqOpt'( A => true,  b => false, c => SeqOpt_c_Init, d => SeqOpt_d_Init, Exist => (a => 1, c => 0, d => 0));
      seqbool2 : aliased SeqBoolFix := (Data => (1 => true, 2 => false, others => true));
      seqen2 : aliased SeqEnumFix := (Data => (1 => hello, 2 => world, others => hello));
      seq : aliased TASTE_Peek_id_list := (Data => (1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, others => 1), Length => 5);
      turlututu : aliased MyEnum := a;
      choice : aliased MyChoice := (Kind => c1_PRESENT, c1 => true);
      myenum : aliased MyEnum := a;
      seqboolean : aliased SeqBool := (Data => (1 => true, 2 => false, others => true), Length => 2);
      variable : aliased VariableString := (Data => (72, 101, 108, 108, 111, others => 0), Length => 5);
      somebool : aliased Boolean := true;
      fixed : aliased FixedString := (Data => (72, 101, 108, 108, 111, others => 0));
      check : aliased TASTE_Peek_id := 42;
      seqen : aliased SeqEnum := (Data => (1 => hello2, 2 => world2, others => hello2), Length => 2);
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 4;
   procedure runTransition(Id: Integer);
   procedure pÜnumProc;
   procedure pÜemptyproc;
   procedure pÜnumProc is
      function num_MyEnum is new Ada.Unchecked_Conversion(MyEnum, Asn1UInt);
      begin
         --  DECISION num(myenum) (-1,-1)
         --  ANSWER else (None,None)
         null;
         --  DECISION num(myenum) (-1,-1)
         --  ANSWER else (None,None)
         null;
         --  RETURN  (None,None) at 178, 348
         return;
      end pÜnumProc;
      

   procedure pÜemptyproc is
      begin
         null;  --  Empty procedure
      end pÜemptyproc;
      

   procedure pulse(pulse_param: access MyEnum) is
      begin
         case ctxt.state is
            when anotherstate =>
               ctxt.myenum := pulse_param.all;
               runTransition(2);
            when wait_for_gui =>
               ctxt.myenum := pulse_param.all;
               runTransition(3);
            when third =>
               ctxt.myenum := pulse_param.all;
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end pulse;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      function num_MyEnum is new Ada.Unchecked_Conversion(MyEnum, Asn1UInt);
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  COMMENT Test optional fields (55,8)
                  --  opt := { B TRUE } (53,13)
                  ctxt.opt := SeqOpt'( B => true, a => False, c => SeqOpt_c_Init, d => SeqOpt_d_Init, Exist => (a => 0, c => 0, d => 0));
                  --  DECISION num(myenum) (-1,-1)
                  --  ANSWER 0 (59,17)
                  if (num_MyEnum(ctxt.myenum)) = 0 then
                     null;
                     --  ANSWER else (None,None)
                  else
                     null;
                  end if;
                  --  DECISION num(myenum) (-1,-1)
                  --  ANSWER 0 (66,17)
                  if (num_MyEnum(ctxt.myenum)) = 0 then
                     null;
                     --  ANSWER else (None,None)
                  else
                     null;
                  end if;
                  -- Informal decision was ignored: 'informal'
                  null;
                  --  seqboolean := {true, false} (82,13)
                  ctxt.seqboolean := (Data => (1 => true, 2 => false, others => true), Length => 2);
                  --  seqboolean := not {true, false} (83,0)
                  ctxt.seqboolean := (Data => (1 => false, 2 => true, others => false), Length => 2);
                  --  COMMENT Check that num is not
                  --  declared twice (91,8)
                  --  TASK for x in seqen:
                  --   call writeln(num(x));
                  --   call writeln(num(myenum));
                  --   call writeln(num(myenum));
                  --  endfor (85,13)
                  --  COMMENT Check that num is not
                  --  declared twice (91,8)
                  declare
                     x : SeqEnum_elem;
                  begin
                     for x_idx in 1 .. ctxt.seqen.Length loop
                        x := ctxt.seqen.Data(1..ctxt.seqen.Length)(x_idx);
                        declare
                           function num_SeqEnum_elem is new Ada.Unchecked_Conversion(SeqEnum_elem, Asn1UInt);
                           function num_MyEnum is new Ada.Unchecked_Conversion(MyEnum, Asn1UInt);
                        begin
                           --  writeln(num(x)) (86,6)
                           Put(Asn1UInt'Image(num_SeqEnum_elem(x)));
                           New_Line;
                           --  writeln(num(myenum)) (87,6)
                           Put(Asn1UInt'Image(num_MyEnum(ctxt.myenum)));
                           New_Line;
                           --  writeln(num(myenum)) (88,6)
                           Put(Asn1UInt'Image(num_MyEnum(ctxt.myenum)));
                           New_Line;
                        end;
                     end loop;
                  end;
                  --  TASK for x in seqen2:
                  --   call writeln(num(x));
                  --  endfor (94,13)
                  declare
                     x : SeqEnumFix_elem;
                  begin
                     for x_idx in ctxt.seqen2.Data'Range loop
                        x := ctxt.seqen2.Data(x_idx);
                        declare
                           function num_SeqEnumFix_elem is new Ada.Unchecked_Conversion(SeqEnumFix_elem, Asn1UInt);
                        begin
                           --  writeln(num(x)) (95,6)
                           Put(Asn1UInt'Image(num_SeqEnumFix_elem(x)));
                           New_Line;
                        end;
                     end loop;
                  end;
                  --  COMMENT FOR with a basic type (102,8)
                  --  TASK for x in seqboolean:
                  --      call writeln(x);
                  --  endfor (98,13)
                  --  COMMENT FOR with a basic type (102,8)
                  declare
                     x : Boolean;
                  begin
                     for x_idx in 1 .. ctxt.seqboolean.Length loop
                        x := ctxt.seqboolean.Data(1..ctxt.seqboolean.Length)(x_idx);
                        --  writeln(x) (99,9)
                        Put(Boolean'Image(x));
                        New_Line;
                     end loop;
                  end;
                  --  COMMENT check NOT on a SEQUENCE of BOOLEAN (106,8)
                  --  seqboolean := not seqboolean (104,13)
                  ctxt.seqboolean := (Data => (not ctxt.seqboolean.Data), Length => ctxt.seqboolean.Length);
                  --  TASK for x in seqboolean:
                  --      call writeln(x);
                  --  endfor (108,13)
                  declare
                     x : Boolean;
                  begin
                     for x_idx in 1 .. ctxt.seqboolean.Length loop
                        x := ctxt.seqboolean.Data(1..ctxt.seqboolean.Length)(x_idx);
                        --  writeln(x) (109,9)
                        Put(Boolean'Image(x));
                        New_Line;
                     end loop;
                  end;
                  --  fixed := 'hello' (112,13)
                  ctxt.fixed := (Data => (104, 101, 108, 108, 111, others => 0));
                  --  variable := 'HELLO' (114,13)
                  ctxt.variable := (Data => (72, 69, 76, 76, 79, others => 0), Length => 5);
                  --  writeln(variable // '!!!') (116,13)
                  for i in 1 .. ctxt.variable.Length loop
                     Put(Character'Val(ctxt.variable.Data(i)));
                  end loop;
                  Put("!!!");
                  New_Line;
                  --  writeln(variable // variable // variable) (118,13)
                  for i in 1 .. ctxt.variable.Length loop
                     Put(Character'Val(ctxt.variable.Data(i)));
                  end loop;
                  for i in 1 .. ctxt.variable.Length loop
                     Put(Character'Val(ctxt.variable.Data(i)));
                  end loop;
                  for i in 1 .. ctxt.variable.Length loop
                     Put(Character'Val(ctxt.variable.Data(i)));
                  end loop;
                  New_Line;
                  --  seq := {1} (120,13)
                  ctxt.seq := (Data => (1 => 1, others => 1), Length => 1);
                  --  seq := {1} // {2} // {3} (122,13)
                  ctxt.seq.Data(1..2 + 1) := ((((1 => 1) & TASTE_Peek_id_list_Array'(1 => 2, others => <>)(1 .. 1))) & TASTE_Peek_id_list_Array'(1 => 3, others => <>)(1 .. 1));
                  ctxt.seq.Length := 2 + 1;
                  --  seq := seq // {2} // {1} (124,13)
                  ctxt.seq.Data(1..ctxt.seq.Length + 1 + 1) := ((((ctxt.seq.Data(1..ctxt.seq.Length)) & TASTE_Peek_id_list_Array'(1 => 2, others => <>)(1 .. 1))) & TASTE_Peek_id_list_Array'(1 => 1, others => <>)(1 .. 1));
                  ctxt.seq.Length := ctxt.seq.Length + 1 + 1;
                  -- "DECISION ANY" statement was ignored
                  null;
                  --  DECISION myenum (-1,-1)
                  --  COMMENT Check case insensitivity (135,8)
                  --  ANSWER a (137,17)
                  if (ctxt.myenum) = a then
                     null;
                     --  ANSWER B (139,17)
                  elsif (ctxt.myenum) = b then
                     null;
                     --  ANSWER c (141,17)
                  elsif (ctxt.myenum) = c then
                     null;
                     --  ANSWER d (143,17)
                  elsif (ctxt.myenum) = d then
                     null;
                     --  ANSWER Ee (145,17)
                  elsif (ctxt.myenum) = eE then
                     null;
                  end if;
                  --  DECISION present(choice) (-1,-1)
                  --  COMMENT Check case insensitivity (150,8)
                  --  ANSWER cde2 (152,17)
                  if (ctxt.choice.Kind) = cDe2_PRESENT then
                     null;
                     --  ANSWER ELSE (None,None)
                  else
                     null;
                  end if;
                  --  NEXT_STATE Wait_for_GUI (157,18) at 578, 1741
                  trId := -1;
                  ctxt.state := Wait_for_GUI;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE Wait_for_gui (163,22) at 1062, 532
                  trId := -1;
                  ctxt.state := Wait_for_gui;
                  goto next_transition;
               when 2 =>
                  --  NEXT_STATE Third (170,22) at 1083, 427
                  trId := -1;
                  ctxt.state := Third;
                  goto next_transition;
               when 3 =>
                  --  writeln('Got PULSE', num(myenum)) (177,17)
                  Put("Got PULSE");
                  Put(Asn1UInt'Image(num_MyEnum(ctxt.myenum)));
                  New_Line;
                  --  telemetry(myenum) (179,19)
                  RIÜtelemetry(ctxt.myenum'Access);
                  --  NEXT_STATE AnotherState (181,22) at 1059, 322
                  trId := -1;
                  ctxt.state := AnotherState;
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