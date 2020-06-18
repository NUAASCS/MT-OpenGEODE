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
      opt : aliased asn1SccSeqOpt := asn1SccSeqOpt'( A => true,  b => false, c => asn1SccSeqOpt_c_Init, d => asn1SccSeqOpt_d_Init, Exist => (a => 1, c => 0, d => 0));
      seqbool2 : aliased asn1SccSeqBoolFix := (Data => (1 => true, 2 => false, others => true));
      seqen2 : aliased asn1SccSeqEnumFix := (Data => (1 => asn1Scchello, 2 => asn1Sccworld, others => asn1Scchello));
      seq : aliased asn1SccTASTE_Peek_id_list;
      choice : aliased asn1SccMyChoice;
      myenum : aliased asn1SccMyEnum := asn1Scca;
      seqboolean : aliased asn1SccSeqBool := (Data => (1 => true, 2 => false, others => true), Length => 2);
      variable : aliased asn1SccVariableString := (Data => (72, 101, 108, 108, 111, others => 0), Length => 5);
      fixed : aliased asn1SccFixedString := (Data => (72, 101, 108, 108, 111, others => 0));
      check : aliased asn1SccTASTE_Peek_id;
      seqen : aliased asn1SccSeqEnum := (Data => (1 => asn1Scchello2, 2 => asn1Sccworld2, others => asn1Scchello2), Length => 2);
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 4;
   procedure runTransition(Id: Integer);
   procedure pÜemptyproc;
   procedure pÜnumProc;
   procedure pÜemptyproc is
      begin
         null;  --  Empty procedure
      end pÜemptyproc;
      

   procedure pÜnumProc is
      function num_asn1SccMyEnum is new Ada.Unchecked_Conversion(asn1SccMyEnum, Asn1UInt);
      begin
         --  DECISION num(myenum) (-1,-1)
         --  ANSWER else (None,None)
         null;
         --  DECISION num(myenum) (-1,-1)
         --  ANSWER else (None,None)
         null;
         --  RETURN  (None,None) at None, None
         return;
      end pÜnumProc;
      

   procedure pulse(pulse_param: access asn1SccMyEnum) is
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
      function num_asn1SccMyEnum is new Ada.Unchecked_Conversion(asn1SccMyEnum, Asn1UInt);
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  COMMENT Test optional fields (38,8)
                  --  opt := { B TRUE } (37,13)
                  ctxt.opt := asn1SccSeqOpt'( B => true, a => False, c => asn1SccSeqOpt_c_Init, d => asn1SccSeqOpt_d_Init, Exist => (a => 0, c => 0, d => 0));
                  --  DECISION num(myenum) (-1,-1)
                  --  ANSWER 0 (40,17)
                  if (num_asn1SccMyEnum(ctxt.myenum)) = 0 then
                     null;
                     --  ANSWER else (None,None)
                  else
                     null;
                  end if;
                  --  DECISION num(myenum) (-1,-1)
                  --  ANSWER 0 (44,17)
                  if (num_asn1SccMyEnum(ctxt.myenum)) = 0 then
                     null;
                     --  ANSWER else (None,None)
                  else
                     null;
                  end if;
                  -- Informal decision was ignored: 'informal'
                  null;
                  --  seqboolean := {true, false} (54,13)
                  ctxt.seqboolean := (Data => (1 => true, 2 => false, others => true), Length => 2);
                  --  seqboolean := not {true, false} (55,0)
                  ctxt.seqboolean := (Data => (1 => false, 2 => true, others => false), Length => 2);
                  --  COMMENT Check that num is not
                  --  declared twice (61,8)
                  --  TASK for x in seqen:
                  --   call writeln(num(x));
                  --   call writeln(num(myenum));
                  --   call writeln(num(myenum));
                  --  endfor (56,13)
                  --  COMMENT Check that num is not
                  --  declared twice (61,8)
                  declare
                     x : asn1SccSeqEnum_elem;
                  begin
                     for x_idx in 1 .. ctxt.seqen.Length loop
                        x := ctxt.seqen.Data(1..ctxt.seqen.Length)(x_idx);
                        declare
                           function num_asn1SccSeqEnum_elem is new Ada.Unchecked_Conversion(asn1SccSeqEnum_elem, Asn1UInt);
                           function num_asn1SccMyEnum is new Ada.Unchecked_Conversion(asn1SccMyEnum, Asn1UInt);
                        begin
                           --  writeln(num(x)) (57,6)
                           Put(Asn1UInt'Image(num_asn1SccSeqEnum_elem(x)));
                           New_Line;
                           --  writeln(num(myenum)) (58,6)
                           Put(Asn1UInt'Image(num_asn1SccMyEnum(ctxt.myenum)));
                           New_Line;
                           --  writeln(num(myenum)) (59,6)
                           Put(Asn1UInt'Image(num_asn1SccMyEnum(ctxt.myenum)));
                           New_Line;
                        end;
                     end loop;
                  end;
                  --  TASK for x in seqen2:
                  --   call writeln(num(x));
                  --  endfor (63,13)
                  declare
                     x : asn1SccSeqEnumFix_elem;
                  begin
                     for x_idx in ctxt.seqen2.Data'Range loop
                        x := ctxt.seqen2.Data(x_idx);
                        declare
                           function num_asn1SccSeqEnumFix_elem is new Ada.Unchecked_Conversion(asn1SccSeqEnumFix_elem, Asn1UInt);
                        begin
                           --  writeln(num(x)) (64,6)
                           Put(Asn1UInt'Image(num_asn1SccSeqEnumFix_elem(x)));
                           New_Line;
                        end;
                     end loop;
                  end;
                  --  COMMENT FOR with a basic type (69,8)
                  --  TASK for x in seqboolean:
                  --      call writeln(x);
                  --  endfor (66,13)
                  --  COMMENT FOR with a basic type (69,8)
                  declare
                     x : Boolean;
                  begin
                     for x_idx in 1 .. ctxt.seqboolean.Length loop
                        x := ctxt.seqboolean.Data(1..ctxt.seqboolean.Length)(x_idx);
                        --  writeln(x) (67,9)
                        Put(Boolean'Image(x));
                        New_Line;
                     end loop;
                  end;
                  --  COMMENT check NOT on a SEQUENCE of BOOLEAN (71,8)
                  --  seqboolean := not seqboolean (70,13)
                  ctxt.seqboolean := (Data => (not ctxt.seqboolean.Data), Length => ctxt.seqboolean.Length);
                  --  TASK for x in seqboolean:
                  --      call writeln(x);
                  --  endfor (72,13)
                  declare
                     x : Boolean;
                  begin
                     for x_idx in 1 .. ctxt.seqboolean.Length loop
                        x := ctxt.seqboolean.Data(1..ctxt.seqboolean.Length)(x_idx);
                        --  writeln(x) (73,9)
                        Put(Boolean'Image(x));
                        New_Line;
                     end loop;
                  end;
                  --  fixed := 'hello' (75,13)
                  ctxt.fixed := (Data => (104, 101, 108, 108, 111, others => 0));
                  --  variable := 'HELLO' (76,13)
                  ctxt.variable := (Data => (72, 69, 76, 76, 79, others => 0), Length => 5);
                  --  writeln(variable // '!!!') (77,13)
                  for i in 1 .. ctxt.variable.Length loop
                     Put(Character'Val(ctxt.variable.Data(i)));
                  end loop;
                  Put("!!!");
                  New_Line;
                  --  writeln(variable // variable // variable) (78,13)
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
                  --  seq := {1} (79,13)
                  ctxt.seq := (Data => (1 => 1, others => 1), Length => 1);
                  --  seq := {1} // {2} // {3} (80,13)
                  ctxt.seq.Data(1..2 + 1) := ((((1 => 1) & asn1SccTASTE_Peek_id_list_Array'(1 => 2, others => <>)(1 .. 1))) & asn1SccTASTE_Peek_id_list_Array'(1 => 3, others => <>)(1 .. 1));
                  ctxt.seq.Length := 2 + 1;
                  --  seq := seq // {2} // {1} (81,13)
                  ctxt.seq.Data(1..ctxt.seq.Length + 1 + 1) := ((((ctxt.seq.Data(1..ctxt.seq.Length)) & asn1SccTASTE_Peek_id_list_Array'(1 => 2, others => <>)(1 .. 1))) & asn1SccTASTE_Peek_id_list_Array'(1 => 1, others => <>)(1 .. 1));
                  ctxt.seq.Length := ctxt.seq.Length + 1 + 1;
                  -- "DECISION ANY" statement was ignored
                  null;
                  --  DECISION myenum (-1,-1)
                  --  COMMENT Check case insensitivity (87,8)
                  --  ANSWER a (88,17)
                  if (ctxt.myenum) = asn1Scca then
                     null;
                     --  ANSWER B (89,17)
                  elsif (ctxt.myenum) = asn1Sccb then
                     null;
                     --  ANSWER c (90,17)
                  elsif (ctxt.myenum) = asn1Sccc then
                     null;
                     --  ANSWER d (91,17)
                  elsif (ctxt.myenum) = asn1Sccd then
                     null;
                     --  ANSWER Ee (92,17)
                  elsif (ctxt.myenum) = asn1ScceE then
                     null;
                  end if;
                  --  DECISION present(choice) (-1,-1)
                  --  COMMENT Check case insensitivity (95,8)
                  --  ANSWER cde2 (96,17)
                  if (ctxt.choice.Kind) = cDe2_PRESENT then
                     null;
                     --  ANSWER ELSE (None,None)
                  else
                     null;
                  end if;
                  --  NEXT_STATE Wait_for_GUI (99,18) at None, None
                  trId := -1;
                  ctxt.state := Wait_for_GUI;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE Wait_for_gui (102,22) at None, None
                  trId := -1;
                  ctxt.state := Wait_for_gui;
                  goto next_transition;
               when 2 =>
                  --  NEXT_STATE Third (106,22) at None, None
                  trId := -1;
                  ctxt.state := Third;
                  goto next_transition;
               when 3 =>
                  --  writeln('Got PULSE', num(myenum)) (110,17)
                  Put("Got PULSE");
                  Put(Asn1UInt'Image(num_asn1SccMyEnum(ctxt.myenum)));
                  New_Line;
                  --  telemetry(myenum) (111,19)
                  RIÜtelemetry(ctxt.myenum'Access);
                  --  NEXT_STATE AnotherState (112,22) at None, None
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