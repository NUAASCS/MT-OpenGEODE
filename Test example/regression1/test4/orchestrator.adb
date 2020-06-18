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

package body orchestrator is
   type States is (running, stopped);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      a : aliased asn1SccMyInteger;
      c : aliased asn1SccMySeq;
      b : aliased asn1SccMySeqOf;
      e : aliased asn1SccMyChoice;
      g : aliased asn1SccMyChoice;
      f : aliased asn1SccMyEnum;
      i : aliased asn1SccMyPossiblyEmptySeqOf;
      h : aliased asn1SccMyReal;
      k : aliased asn1SccMyComplexSeqOf;
      j : aliased asn1SccMyComplexType;
      toto : aliased asn1SccMySeqOf;
      l : aliased asn1SccMyComplexChoice;
      deep : aliased asn1SccDeepSeq;
      mycmd : aliased asn1SccMyInteger;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 5;
   procedure runTransition(Id: Integer);
   procedure p‹myproc(toto: in asn1SccMyInteger;tutu: in out asn1SccMyInteger);
   procedure p‹myproc(toto: in asn1SccMyInteger;tutu: in out asn1SccMyInteger) is
      foo : aliased asn1SccMyInteger;
      begin
         --  a := 42 (73,17)
         ctxt.a := 42;
         --  DECISION toto (-1,-1)
         --  ANSWER <10 (77,17)
         if (toto) < 10 then
            --  tutu := 128 (79,25)
            tutu := 128;
            --  ANSWER ELSE (None,None)
         else
            --  tutu := 254 (83,25)
            tutu := 254;
         end if;
         --  foo := a (86,17)
         foo := ctxt.a;
         --  RETURN  (None,None) at 642, 449
         return;
      end p‹myproc;
      

   procedure pulse is
      begin
         case ctxt.state is
            when running =>
               runTransition(4);
            when stopped =>
               runTransition(3);
            when others =>
               runTransition(CS_Only);
         end case;
      end pulse;
      

   procedure run(cmd: access asn1SccMyInteger) is
      begin
         case ctxt.state is
            when running =>
               ctxt.mycmd := cmd.all;
               runTransition(1);
            when stopped =>
               ctxt.a := cmd.all;
               runTransition(2);
            when others =>
               runTransition(CS_Only);
         end case;
      end run;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp122 : aliased asn1SccMyInteger;
      tmp150 : aliased asn1SccMyInteger;
      --  !! stack: _call_external_function line 1271
      tmp108 : aliased asn1SccMyChoice;
      tmp46 : asn1SccMyInteger;
      tmp50 : asn1SccMyInteger;
      tmp74 : asn1SccMyInteger;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  COMMENT This is a multiline
                  --  comment - should
                  --  we reflected as so
                  --  in the generated code (122,8)
                  --  a := 42 + 5 * 3 - 1 (93,13)
                  ctxt.a := 56;
                  --  b := { hello, world } (94,0)
                  ctxt.b := (Data => (1 => asn1Scchello, 2 => asn1Sccworld, others => asn1Scchello));
                  --  a := length(b) (95,0)
                  ctxt.a := Asn1UInt(2);
                  --  c := {a 5, b taste} (96,0)
                  ctxt.c := asn1SccMySeq'( a => 5,  b => asn1Scctaste);
                  --  f := hello (97,0)
                  ctxt.f := asn1Scchello;
                  --  g := b:{a 33, b you} (98,0)
                  ctxt.g := (Kind => b_PRESENT, b => asn1SccMySeq'( a => 33,  b => asn1Sccyou));
                  --  e:=g (99,0)
                  ctxt.e := ctxt.g;
                  --  e := a:TRUE (100,0)
                  ctxt.e := (Kind => MyChoice_a_PRESENT, a => true);
                  --  b(0) := hello (101,0)
                  ctxt.b.Data(1) := asn1Scchello;
                  --  h := 42.5 (103,0)
                  ctxt.h := 42.5;
                  --  i := {} (104,0)
                  ctxt.i := asn1SccMyPossiblyEmptySeqOf_Init;
                  --  i := { 1 } (105,0)
                  ctxt.i := (Data => (1 => 1, others => 1), Length => 1);
                  --  a := length(i) (106,0)
                  ctxt.a := Asn1UInt(ctxt.i.Length);
                  --  a := if e!a then 8 else  if b(0) = hello then a  else 9 fi fi (107,0)
                  if (ctxt.b.Data(1) = asn1Scchello) then
                     tmp50 := ctxt.a;
                  else
                     tmp50 := 9;
                  end if;
                  if ctxt.e.a then
                     tmp46 := 8;
                  else
                     tmp46 := tmp50;
                  end if;
                  ctxt.a := tmp46;
                  --  j := { a { x 5, y 6 } } (108,0)
                  ctxt.j := asn1SccMyComplexType'( a => asn1SccMyComplexType_a'( y => 6,  x => 5));
                  --  k := { {x 4}, {x 5} } (109,0)
                  ctxt.k := (Data => (1 => asn1SccMyComplexSeqOf_elem'( x => 4), 2 => asn1SccMyComplexSeqOf_elem'( x => 5), others => asn1SccMyComplexSeqOf_elem'( x => 4)));
                  --  l := a:{ x 5 } (110,0)
                  ctxt.l := (Kind => MyComplexChoice_a_PRESENT, a => asn1SccMyComplexChoice_a'( x => 5));
                  --  a:= if present(e)=b then 42 else 43 fi (111,0)
                  if (ctxt.e.Kind = b_PRESENT) then
                     tmp74 := 42;
                  else
                     tmp74 := 43;
                  end if;
                  ctxt.a := tmp74;
                  --  deep!a!b!c := 3 (112,0)
                  ctxt.deep.a.b.c := 3;
                  --  deep!a := { b { c 4, d e:TRUE } } (113,0)
                  ctxt.deep.a := asn1SccDeepSeq_a'( b => asn1SccDeepSeq_a_b'( c => 4,  d => (Kind => e_PRESENT, e => true)));
                  --  deep!a!b!d := e:FALSE (120,0)
                  ctxt.deep.a.b.d := (Kind => e_PRESENT, e => false);
                  --  DECISION present(e) (-1,-1)
                  --  ANSWER a (129,13)
                  if (ctxt.e.Kind) = MyChoice_a_PRESENT then
                     --  a := 37 (131,21)
                     ctxt.a := 37;
                     --  ANSWER b (133,13)
                  elsif (ctxt.e.Kind) = b_PRESENT then
                     --  a := 38 (135,21)
                     ctxt.a := 38;
                     --  ANSWER ELSE (None,None)
                  else
                     null;
                  end if;
                  --  DECISION e (-1,-1)
                  tmp108 := ctxt.e;
                  --  ANSWER a:TRUE (142,13)
                  if asn1SccMyChoice_Equal(tmp108, (Kind => MyChoice_a_PRESENT, a => true)) then
                     --  a := 41 (144,21)
                     ctxt.a := 41;
                     --  ANSWER g (146,13)
                  elsif asn1SccMyChoice_Equal(tmp108, ctxt.g) then
                     --  a := 40 (148,21)
                     ctxt.a := 40;
                     --  ANSWER ELSE (None,None)
                  else
                     --  a := 42 (152,21)
                     ctxt.a := 42;
                  end if;
                  --  NEXT_STATE Stopped (155,18) at 1377, 1455
                  trId := -1;
                  ctxt.state := Stopped;
                  goto next_transition;
               when 1 =>
                  --  writeln
                  --  ('Already running! So stopping') (172,17)
                  Put("Already running! So stopping");
                  New_Line;
                  --  JOIN Transition_to_Stop (175,17) at 165, 1483
                  goto Transition_to_Stop;
               when 2 =>
                  --  JOIN Here (None,None) at None, None
                  goto Here;
               when 3 =>
                  --  housekeeping (1) (210,19)
                  tmp150 := asn1SccMyInteger(1);
                  RI‹housekeeping(tmp150'Access);
                  --  NEXT_STATE - (212,22) at 607, 895
                  --  COMMENT Stay in the same state (214,12)
                  trId := -1;
                  goto next_transition;
               when 4 =>
                  --  a := (a+1) mod 10 (221,17)
                  ctxt.a := Asn1UInt(((ctxt.a + 1) mod 10));
                  --  writeln
                  --  ('Calling GNC') (223,17)
                  Put("Calling GNC");
                  New_Line;
                  --  computeGNC(a, a) (226,17)
                  RI‹computeGNC(ctxt.a'Access, ctxt.a'Access);
                  --  housekeeping(a) (228,19)
                  RI‹housekeeping(ctxt.a'Access);
                  --  NEXT_STATE Running (230,22) at 1073, 1008
                  trId := -1;
                  ctxt.state := Running;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            goto next_transition;
            --  CONNECTION Transition_to_Stop (157,15)
            <<Transition_to_Stop>>
            --  writeln
            --  ('Floating label: Transition to stop (Sending HK 31)') (159,13)
            Put("Floating label: Transition to stop (Sending HK 31)");
            New_Line;
            --  housekeeping(31) (162,15)
            tmp122 := asn1SccMyInteger(31);
            RI‹housekeeping(tmp122'Access);
            --  NEXT_STATE Stopped (164,18) at 1028, 433
            trId := -1;
            ctxt.state := Stopped;
            goto next_transition;
            --  CONNECTION Here (185,12)
            <<Here>>
            --  DECISION a>10 (187,22)
            --  ANSWER TRUE (189,17)
            if ((ctxt.a > 10)) = true then
               --  writeln
               --  ('a is too big! - decrementing :', a, a - 1) (191,25)
               Put("a is too big! - decrementing :");
               Put(asn1SccMyInteger'Image(ctxt.a));
               Put(asn1SccMyInteger'Image((ctxt.a - 1)));
               New_Line;
               --  a := (a - 1) mod 1 (194,25)
               ctxt.a := Asn1UInt(((ctxt.a - 1) mod 1));
               --  myproc(5,a) (196,25)
               p‹myproc(5, ctxt.a);
               --  JOIN Here (198,25) at 120, 1218
               goto Here;
               --  ANSWER FALSE (200,17)
            elsif ((ctxt.a > 10)) = false then
               null;
            end if;
            --  NEXT_STATE Running (203,22) at 119, 1283
            trId := -1;
            ctxt.state := Running;
            goto next_transition;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end orchestrator;