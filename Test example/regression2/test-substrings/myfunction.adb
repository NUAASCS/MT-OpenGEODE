-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body myfunction is
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      seqbool2 : aliased SeqBool2 := (Data => (1 => true, 2 => false, others => true), Length => 2);
      iseq : aliased IntSeq := (Data => (1 => 0, 2 => 1, 3 => 2, 4 => 3, others => 0), Length => 4);
      seqof : aliased MySeqOf := (Data => (1 => hello, 2 => world, others => hello));
      seqint : aliased SeqInt := (Data => (1 => 1, others => 1), Length => 1);
      seqbool : aliased SeqBool := (Data => (1 => true, 2 => false, others => true));
      n : aliased T_UInt8;
      fixedseq : aliased FixedIntSeq := (Data => (1 => 0, 2 => 1, 3 => 2, 4 => 3, 5 => 4, others => 0));
      variable_str : aliased String := (Data => (72, 101, 108, 108, 111, 33, others => 0), Length => 6);
      str : aliased MyOctStr := (Data => (97, 98, 99, others => 0));
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 1;
   procedure runTransition(Id: Integer);
   procedure pÜfactorial(N: in MyInteger;result: in out MyInteger);
   procedure pÜfactorial(N: in MyInteger;result: in out MyInteger) is
      begin
         --  result := 1 (29,17)
         result := 1;
         --  TASK for x in range(1, n+1):
         --      result := (result * x) mod 255
         --  endfor (31,17)
         for x in 1 .. Integer ((n + 1)) - 1 loop
            --  result := (result * x) mod 255 (32,4)
            result := Asn1UInt(((result * MyInteger(x)) mod 255));
         end loop;
         --  RETURN  (None,None) at 315, 201
         return;
      end pÜfactorial;
      

   procedure start_something(tutu: access T_Int32) is
      begin
         case ctxt.state is
            when wait =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end start_something;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp152 : BOOLEAN := False;
      tmp81 : BOOLEAN := False;
      tmp91 : BOOLEAN := False;
      tmp148 : BOOLEAN := False;
      tmp99 : BOOLEAN := False;
      tmp85 : BOOLEAN := False;
      tmp166 : BOOLEAN := False;
      tmp158 : BOOLEAN := False;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  n := iseq(0,2)(0) (40,13)
                  ctxt.n := ctxt.iseq.Data(1..3)(1);
                  --  writeln(n) (42,13)
                  --  COMMENT print 0 (44,8)
                  Put(T_UInt8'Image(ctxt.n));
                  New_Line;
                  --  iseq := iseq(0,3)(0,2) (46,13)
                  ctxt.iseq.Data(1..ctxt.iseq.Data(1..4)(1..3)'Length) := ctxt.iseq.Data(1..4)(1..3);
                  ctxt.iseq.Length := ctxt.iseq.Data(1..4)(1..3)'Length;
                  --  COMMENT print
                  --  0
                  --  1
                  --  2 (52,8)
                  --  TASK for x in iseq:
                  --     call writeln(x);
                  --  endfor (48,13)
                  --  COMMENT print
                  --  0
                  --  1
                  --  2 (52,8)
                  declare
                     x : T_UInt8;
                  begin
                     for x_idx in 1 .. ctxt.iseq.Length loop
                        x := ctxt.iseq.Data(1..ctxt.iseq.Length)(x_idx);
                        --  writeln(x) (49,8)
                        Put(T_UInt8'Image(x));
                        New_Line;
                     end loop;
                  end;
                  --  n := length(fixedseq(0,1)) (57,13)
                  ctxt.n := Asn1UInt(ctxt.fixedseq.Data(1..2)'Length);
                  --  writeln(n) (59,13)
                  --  COMMENT print 2 (61,8)
                  Put(T_UInt8'Image(ctxt.n));
                  New_Line;
                  --  COMMENT equivalent to seqof := seqof (65,8)
                  --  seqof := seqof(0,1) (63,13)
                  ctxt.seqof.Data(1..ctxt.seqof.Data(1..2)'Length) := ctxt.seqof.Data(1..2);
                  --  n := iseq(0,2)(0,1)(0) (67,13)
                  ctxt.n := ctxt.iseq.Data(1..3)(1..2)(1);
                  --  n := iseq(100- 1) (69,13)
                  ctxt.n := ctxt.iseq.Data(100);
                  --  DECISION hello in seqof (71,23)
                  --  COMMENT Check IN operator with
                  --  enumerated type (73,8)
                  in_loop_tmp81:
                  for elem in ctxt.seqof.Data'Range loop
                     if ctxt.seqof.Data(elem) = hello then
                        tmp81 := True;
                     end if;
                     exit in_loop_tmp81 when tmp81 = True;
                  end loop in_loop_tmp81;
                  --  ANSWER true (76,17)
                  if (tmp81) = true then
                     --  writeln(hello in seqof) (78,25)
                     --  COMMENT print "TRUE" (80,20)
                     in_loop_tmp85:
                     for elem in ctxt.seqof.Data'Range loop
                        if ctxt.seqof.Data(elem) = hello then
                           tmp85 := True;
                        end if;
                        exit in_loop_tmp85 when tmp85 = True;
                     end loop in_loop_tmp85;
                     Put(Boolean'Image(tmp85));
                     New_Line;
                     --  ANSWER false (82,17)
                  elsif (tmp81) = false then
                     null;
                  end if;
                  --  DECISION hello in seqof(0,0) (85,23)
                  --  COMMENT Check IN operator with
                  --  list substring - first element only
                  --  should go to branch TRUE (87,8)
                  in_loop_tmp91:
                  for elem in ctxt.seqof.Data(1..1)'Range loop
                     if ctxt.seqof.Data(1..1)(elem) = hello then
                        tmp91 := True;
                     end if;
                     exit in_loop_tmp91 when tmp91 = True;
                  end loop in_loop_tmp91;
                  --  ANSWER true (91,17)
                  if (tmp91) = true then
                     --  writeln(hello in seqof(0,1)) (93,25)
                     --  COMMENT print "TRUE" (95,20)
                     in_loop_tmp99:
                     for elem in ctxt.seqof.Data(1..2)'Range loop
                        if ctxt.seqof.Data(1..2)(elem) = hello then
                           tmp99 := True;
                        end if;
                        exit in_loop_tmp99 when tmp99 = True;
                     end loop in_loop_tmp99;
                     Put(Boolean'Image(tmp99));
                     New_Line;
                     --  ANSWER false (97,17)
                  elsif (tmp91) = false then
                     null;
                  end if;
                  --  writeln(variable_str(0,4)) (100,13)
                  --  COMMENT print "Hello" (102,8)
                  for i in ctxt.variable_str.Data(1..5)'Range loop
                     Put(Character'Val(ctxt.variable_str.Data(1..5)(i)));
                  end loop;
                  New_Line;
                  --  COMMENT print:
                  --  12
                  --  13 (108,8)
                  --  TASK for x in seqof:
                  --      call writeln(num(x));
                  --  endfor (104,13)
                  --  COMMENT print:
                  --  12
                  --  13 (108,8)
                  declare
                     x : MyEnum;
                  begin
                     for x_idx in ctxt.seqof.Data'Range loop
                        x := ctxt.seqof.Data(x_idx);
                        declare
                           function num_MyEnum is new Ada.Unchecked_Conversion(MyEnum, Asn1UInt);
                        begin
                           --  writeln(num(x)) (105,9)
                           Put(Asn1UInt'Image(num_MyEnum(x)));
                           New_Line;
                        end;
                     end loop;
                  end;
                  --  COMMENT print:
                  --  -12
                  --  -13 (116,8)
                  --  TASK for x in seqof(0,1):
                  --      call writeln(-num(x));
                  --  endfor (112,13)
                  --  COMMENT print:
                  --  -12
                  --  -13 (116,8)
                  declare
                     x : MyEnum;
                  begin
                     for x_idx in ctxt.seqof.Data(1..2)'Range loop
                        x := ctxt.seqof.Data(1..2)(x_idx);
                        declare
                           function num_MyEnum is new Ada.Unchecked_Conversion(MyEnum, Asn1UInt);
                        begin
                           --  writeln(-num(x)) (113,9)
                           Put(AsN1INT'Image((-AsN1INT(num_MyEnum(x)))));
                           New_Line;
                        end;
                     end loop;
                  end;
                  --  writeln(length(seqof)) (120,13)
                  --  COMMENT print 2 (122,8)
                  Put(Integer'Image(2));
                  New_Line;
                  --  writeln(length(seqof(0,1))) (124,13)
                  --  COMMENT print 2 (126,8)
                  Put(Integer'Image(ctxt.seqof.Data(1..2)'Length));
                  New_Line;
                  --  JOIN variable_length_seq (None,None) at None, None
                  goto variable_length_seq;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            goto next_transition;
            --  CONNECTION variable_length_seq (128,8)
            <<variable_length_seq>>
            --  COMMENT print:
            --  1 (134,8)
            --  TASK for x in seqint:
            --      call writeln(x);
            --  endfor (130,13)
            --  COMMENT print:
            --  1 (134,8)
            declare
               x : T_UInt8;
            begin
               for x_idx in 1 .. ctxt.seqint.Length loop
                  x := ctxt.seqint.Data(1..ctxt.seqint.Length)(x_idx);
                  --  writeln(x) (131,9)
                  Put(T_UInt8'Image(x));
                  New_Line;
               end loop;
            end;
            --  COMMENT print:
            --  1 (141,8)
            --  TASK for x in seqint(0,0):
            --      call writeln(x);
            --  endfor (137,13)
            --  COMMENT print:
            --  1 (141,8)
            declare
               x : T_UInt8;
            begin
               for x_idx in ctxt.seqint.Data(1..1)'Range loop
                  x := ctxt.seqint.Data(1..1)(x_idx);
                  --  writeln(x) (138,9)
                  Put(T_UInt8'Image(x));
                  New_Line;
               end loop;
            end;
            --  DECISION 1 in seqint (144,19)
            --  COMMENT Check IN operator with
            --  variable-length seqOf (146,8)
            in_loop_tmp148:
            for elem in 1..ctxt.seqint.Length loop
               if ctxt.seqint.Data(elem) = 1 then
                  tmp148 := True;
               end if;
               exit in_loop_tmp148 when tmp148 = True;
            end loop in_loop_tmp148;
            --  ANSWER true (149,17)
            if (tmp148) = true then
               --  writeln(1 in seqint) (151,25)
               --  COMMENT print "TRUE" (153,20)
               in_loop_tmp152:
               for elem in 1..ctxt.seqint.Length loop
                  if ctxt.seqint.Data(elem) = 1 then
                     tmp152 := True;
                  end if;
                  exit in_loop_tmp152 when tmp152 = True;
               end loop in_loop_tmp152;
               Put(Boolean'Image(tmp152));
               New_Line;
               --  ANSWER false (155,17)
            elsif (tmp148) = false then
               null;
            end if;
            --  DECISION 1 in seqint(0,0) (158,19)
            --  COMMENT Check IN operator with
            --  variable-length seqOf (160,8)
            in_loop_tmp158:
            for elem in ctxt.seqint.Data(1..1)'Range loop
               if ctxt.seqint.Data(1..1)(elem) = 1 then
                  tmp158 := True;
               end if;
               exit in_loop_tmp158 when tmp158 = True;
            end loop in_loop_tmp158;
            --  ANSWER true (163,17)
            if (tmp158) = true then
               --  writeln(1 in seqint(0,0)) (165,25)
               --  COMMENT print "TRUE" (167,20)
               in_loop_tmp166:
               for elem in ctxt.seqint.Data(1..1)'Range loop
                  if ctxt.seqint.Data(1..1)(elem) = 1 then
                     tmp166 := True;
                  end if;
                  exit in_loop_tmp166 when tmp166 = True;
               end loop in_loop_tmp166;
               Put(Boolean'Image(tmp166));
               New_Line;
               --  ANSWER false (169,17)
            elsif (tmp158) = false then
               null;
            end if;
            --  writeln(length(seqint)) (172,13)
            --  COMMENT print 1 (174,8)
            Put(Integer'Image(ctxt.seqint.Length));
            New_Line;
            --  writeln(length(seqint(0,0))) (176,13)
            --  COMMENT print 1 (178,8)
            Put(Integer'Image(ctxt.seqint.Data(1..1)'Length));
            New_Line;
            --  seqint := seqint // {2} (180,13)
            ctxt.seqint.Data(1..ctxt.seqint.Length + 1) := ((ctxt.seqint.Data(1..ctxt.seqint.Length)) & SeqInt_Array'(1 => 2, others => <>)(1 .. 1));
            ctxt.seqint.Length := ctxt.seqint.Length + 1;
            --  seqint := seqint(0,0) // {5} (182,13)
            ctxt.seqint.Data(1..1 + 1) := ((ctxt.seqint.Data(1..1)) & SeqInt_Array'(1 => 5, others => <>)(1 .. 1));
            ctxt.seqint.Length := 1 + 1;
            --  COMMENT print:
            --  1
            --  5 (188,8)
            --  TASK for x in seqint:
            --      call writeln(x);
            --  endfor (184,13)
            --  COMMENT print:
            --  1
            --  5 (188,8)
            declare
               x : T_UInt8;
            begin
               for x_idx in 1 .. ctxt.seqint.Length loop
                  x := ctxt.seqint.Data(1..ctxt.seqint.Length)(x_idx);
                  --  writeln(x) (185,9)
                  Put(T_UInt8'Image(x));
                  New_Line;
               end loop;
            end;
            --  COMMENT should not raise any error (194,8)
            --  seqbool := seqbool and seqbool (192,13)
            ctxt.seqbool := (Data => (ctxt.seqbool.Data and ctxt.seqbool.Data));
            --  COMMENT Variable-length -> raise error (198,8)
            -- seqbool2 := seqbool2 and seqbool2
            --  NEXT_STATE Wait (200,18) at 339, 2266
            trId := -1;
            ctxt.state := Wait;
            goto next_transition;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end myfunction;