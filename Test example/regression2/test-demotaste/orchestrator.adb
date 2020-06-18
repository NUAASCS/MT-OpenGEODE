-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_Dataview;
use TASTE_Dataview;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
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
      a : aliased MyInteger := 4;
      c : aliased MySeq;
      b : aliased MySeqOf;
      e : aliased MyChoice;
      g : aliased MyChoice;
      f : aliased MyEnum;
      i : aliased MyPossiblyEmptySeqOf;
      h : aliased MyReal;
      k : aliased MyComplexSeqOf;
      j : aliased MyComplexType;
      toto : aliased MySeqOf;
      l : aliased MyComplexChoice;
      m : aliased MyChoice2;
      mycmd : aliased MyInteger;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 5;
   procedure runTransition(Id: Integer);
   procedure p‹myproc(toto: in MyInteger;tutu: in out MyInteger);
   procedure p‹myproc(toto: in MyInteger;tutu: in out MyInteger) is
      foo : aliased MyInteger;
      begin
         --  a := 42 (73,17)
         ctxt.a := AsN1INT(42);
         --  DECISION toto (-1,-1)
         --  ANSWER <10 (77,17)
         if (toto) < 10 then
            --  tutu := 128 (79,25)
            tutu := AsN1INT(128);
            --  ANSWER ELSE (None,None)
         else
            --  tutu := 254 (83,25)
            tutu := AsN1INT(254);
         end if;
         --  foo := a (86,17)
         foo := ctxt.a;
         --  RETURN  (None,None) at 642, 419
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
      

   procedure run(cmd: access MyInteger) is
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
      tmp136 : aliased MyInteger;
      tmp52 : MyInteger;
      tmp61 : MyComplexType_a_x;
      tmp80 : MyInteger;
      --  !! stack: _call_external_function line 1271
      tmp138 : aliased MyInteger;
      tmp124 : aliased MyChoice;
      tmp162 : aliased MyInteger;
      tmp48 : MyInteger;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  COMMENT This is a comment
                  --  A multiline one, I mean (118,8)
                  --  a := 42 + 5 * 3 - 1 (93,13)
                  ctxt.a := AsN1INT(56);
                  --  b := { hello, world } (94,0)
                  ctxt.b := (Data => (1 => hello, 2 => world, others => hello));
                  --  a := length(b) (95,0)
                  ctxt.a := AsN1INT(2);
                  --  c := {a 5, b taste} (96,0)
                  ctxt.c := MySeq'( a => 5,  b => taste);
                  --  f := hello (97,0)
                  ctxt.f := hello;
                  --  g := b:{a 33, b you} (98,0)
                  ctxt.g := (Kind => MyChoice_b_PRESENT, b => MySeq'( a => 33,  b => you));
                  --  e:=g (99,0)
                  ctxt.e := ctxt.g;
                  --  e := a:TRUE (100,0)
                  ctxt.e := (Kind => MyChoice_a_PRESENT, a => true);
                  --  b(1) := hello (101,0)
                  ctxt.b.Data(2) := hello;
                  --  h := -42.5 (103,0)
                  ctxt.h := (-42.5);
                  --  i := {} (104,0)
                  ctxt.i := MyPossiblyEmptySeqOf_Init;
                  --  i := { 1 } (105,0)
                  ctxt.i := (Data => (1 => 1, others => 1), Length => 1);
                  --  a := length(i) (106,0)
                  ctxt.a := AsN1INT(ctxt.i.Length);
                  --  a := if e!a then 8 else  if b(0) = hello then a  else 9 fi fi (107,0)
                  if (ctxt.b.Data(1) = hello) then
                     tmp52 := ctxt.a;
                  else
                     tmp52 := 9;
                  end if;
                  if ctxt.e.a then
                     tmp48 := 8;
                  else
                     tmp48 := tmp52;
                  end if;
                  ctxt.a := tmp48;
                  --  j := { a { x if e!a then 5 else 9 fi, y 6 } } (108,0)
                  if ctxt.e.a then
                     tmp61 := 5;
                  else
                     tmp61 := 9;
                  end if;
                  ctxt.j := MyComplexType'( a => MyComplexType_a'( y => 6,  x => tmp61));
                  --  k := { {x 4}, {x 5} } (109,0)
                  ctxt.k := (Data => (1 => MyComplexSeqOf_elem'( x => 4), 2 => MyComplexSeqOf_elem'( x => 5), others => MyComplexSeqOf_elem'( x => 4)));
                  --  l := a:{ x 5 } (110,0)
                  ctxt.l := (Kind => MyComplexChoice_a_PRESENT, a => MyComplexChoice_a'( x => 5));
                  --  a := if present(e)=b then 42 else 43 fi (111,0)
                  if (ctxt.e.Kind = MyChoice_b_PRESENT) then
                     tmp80 := 42;
                  else
                     tmp80 := 43;
                  end if;
                  ctxt.a := tmp80;
                  --  a := abs(-5) (112,0)
                  ctxt.a := abs((-5));
                  --  h := abs(-42.5) (113,0)
                  ctxt.h := abs((-42.5));
                  --  h := abs(h) (114,0)
                  ctxt.h := abs(ctxt.h);
                  --  i := {1, 2} (115,0)
                  ctxt.i := (Data => (1 => 1, 2 => 2, others => 1), Length => 2);
                  --  m := B:C:TRUE (116,0)
                  ctxt.m := (Kind => MyChoice2_b_PRESENT, B => (Kind => c_PRESENT, C => true));
                  --  TASK for x in i:
                  --  call writeln(x);
                  --  endfor (121,13)
                  declare
                     x : MyPossiblyEmptySeqOf_elem;
                  begin
                     for x_idx in 1 .. ctxt.i.Length loop
                        x := ctxt.i.Data(1..ctxt.i.Length)(x_idx);
                        --  writeln(x) (122,5)
                        Put(MyPossiblyEmptySeqOf_elem'Image(x));
                        New_Line;
                     end loop;
                  end;
                  --  writeln('Should show "5 42.5": ', a, h) (125,13)
                  Put("Should show '5 42.5': ");
                  Put(MyInteger'Image(ctxt.a));
                  Put(MyReal'Image(ctxt.h));
                  New_Line;
                  --  DECISION present(e) (-1,-1)
                  --  ANSWER a (129,13)
                  if (ctxt.e.Kind) = MyChoice_a_PRESENT then
                     --  a := 37 (131,21)
                     ctxt.a := AsN1INT(37);
                     --  ANSWER b (133,13)
                  elsif (ctxt.e.Kind) = MyChoice_b_PRESENT then
                     --  a := 38 (135,21)
                     ctxt.a := AsN1INT(38);
                     --  ANSWER ELSE (None,None)
                  else
                     null;
                  end if;
                  --  DECISION e (-1,-1)
                  tmp124 := ctxt.e;
                  --  ANSWER a:TRUE (142,13)
                  if MyChoice_Equal(tmp124, (Kind => MyChoice_a_PRESENT, a => true)) then
                     --  a := 41 (144,21)
                     ctxt.a := AsN1INT(41);
                     --  ANSWER g (146,13)
                  elsif MyChoice_Equal(tmp124, ctxt.g) then
                     --  a := 40 (148,21)
                     ctxt.a := AsN1INT(40);
                     --  ANSWER ELSE (None,None)
                  else
                     --  a := 42 (152,21)
                     ctxt.a := AsN1INT(42);
                  end if;
                  --  NEXT_STATE Stopped (155,18) at 956, 1004
                  trId := -1;
                  ctxt.state := Stopped;
                  goto next_transition;
               when 1 =>
                  --  housekeeping(42) (169,19)
                  tmp138 := MyInteger(42);
                  RI‹housekeeping(tmp138'Access);
                  --  JOIN Transition_to_Stop (171,17) at 2421, 817
                  goto Transition_to_Stop;
               when 2 =>
                  --  JOIN Here (None,None) at None, None
                  goto Here;
               when 3 =>
                  --  housekeeping (1) (203,19)
                  tmp162 := MyInteger(1);
                  RI‹housekeeping(tmp162'Access);
                  --  NEXT_STATE - (205,22) at 1750, 220
                  --  COMMENT Stay in the same state (207,12)
                  trId := -1;
                  goto next_transition;
               when 4 =>
                  --  a := (a+1) mod 10 (214,17)
                  ctxt.a := AsN1INT(((ctxt.a + 1) mod 10));
                  --  writeln
                  --  ('Calling GNC with value ', a) (216,17)
                  Put("Calling GNC with value ");
                  Put(MyInteger'Image(ctxt.a));
                  New_Line;
                  --  computeGNC(a, a) (219,17)
                  RI‹computeGNC(ctxt.a'Access, ctxt.a'Access);
                  --  housekeeping(a) (221,19)
                  RI‹housekeeping(ctxt.a'Access);
                  --  NEXT_STATE Running (223,22) at 1503, 424
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
            --  housekeeping(31) (159,15)
            tmp136 := MyInteger(31);
            RI‹housekeeping(tmp136'Access);
            --  NEXT_STATE Stopped (161,18) at 478, 621
            trId := -1;
            ctxt.state := Stopped;
            goto next_transition;
            --  CONNECTION Here (181,12)
            <<Here>>
            --  DECISION a>10 (183,22)
            --  ANSWER TRUE (185,17)
            if ((ctxt.a > 10)) = true then
               --  writeln
               --  ('a is too big! - decrementing :', a, a - 1) (187,25)
               Put("a is too big! - decrementing :");
               Put(MyInteger'Image(ctxt.a));
               Put(MyInteger'Image((ctxt.a - 1)));
               New_Line;
               --  a := a - 1 (190,25)
               ctxt.a := AsN1INT((ctxt.a - 1));
               --  myproc(5,a) (192,25)
               p‹myproc(5, ctxt.a);
               --  JOIN Here (194,25) at 2329, 552
               goto Here;
               --  ANSWER FALSE (196,17)
            elsif ((ctxt.a > 10)) = false then
               null;
            end if;
            --  NEXT_STATE Running (199,22) at 2396, 617
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