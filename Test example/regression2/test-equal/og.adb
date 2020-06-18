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
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      v8 : aliased AChoice := (Kind => b_PRESENT, b => (Data => (1 => (Data => (72, 101, 108, 108, 111, others => 0), Length => 5), 2 => (Data => (87, 111, 114, 108, 100, 33, others => 0), Length => 6), others => (Data => (72, 101, 108, 108, 111, others => 0), Length => 5)), Length => 2));
      number1 : aliased MyReal := 1.0;
      v1 : aliased My_OctStr := (Data => (72, 101, 108, 108, 111, others => 0), Length => 5);
      v2 : aliased My_OctStr := (Data => (87, 111, 114, 108, 100, 33, others => 0), Length => 6);
      v3 : aliased SeqOf := (Data => (1 => (Data => (72, 101, 108, 108, 111, others => 0), Length => 5), 2 => (Data => (87, 111, 114, 108, 100, 33, others => 0), Length => 6), others => (Data => (72, 101, 108, 108, 111, others => 0), Length => 5)), Length => 2);
      v4 : aliased SeqOf := (Data => (1 => (Data => (72, 101, 108, 108, 111, others => 0), Length => 5), 2 => (Data => (87, 111, 114, 108, 100, others => 0), Length => 5), others => (Data => (72, 101, 108, 108, 111, others => 0), Length => 5)), Length => 2);
      v5 : aliased Toto := Toto'( elem_1 => (Data => (72, 101, 108, 108, 111, others => 0), Length => 5), elem_2 => SeqOf_Init, Exist => (elem_2 => 0));
      v6 : aliased Toto := Toto'( elem_2 => (Data => (1 => (Data => (79, 108, 97, others => 0), Length => 3), 2 => (Data => (84, 104, 101, 87, 111, 114, 108, 100, others => 0), Length => 8), others => (Data => (79, 108, 97, others => 0), Length => 3)), Length => 2),  elem_1 => (Data => (72, 101, 108, 108, 111, others => 0), Length => 5), Exist => (elem_2 => 1));
      v7 : aliased AChoice := (Kind => a_PRESENT, a => true);
      fail : aliased T_Bool := false;
      number2 : aliased MyReal := 1.000001;
      number3 : aliased MyReal := 3.0;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 1;
   procedure runTransition(Id: Integer);
   procedure go(ze_param: access My_OctStr) is
      begin
         case ctxt.state is
            when wait =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end go;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  v8 := b: {'hello', 'world'} (29,13)
                  ctxt.v8 := (Kind => b_PRESENT, b => (Data => (1 => (Data => (104, 101, 108, 108, 111, others => 0), Length => 5), 2 => (Data => (119, 111, 114, 108, 100, others => 0), Length => 5), others => (Data => (104, 101, 108, 108, 111, others => 0), Length => 5)), Length => 2));
                  --  JOIN one (None,None) at None, None
                  goto one;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            goto next_transition;
            --  CONNECTION three (51,32)
            <<three>>
            --  DECISION V5 /= V6
            --  and V7 /= V8 (54,0)
            --  ANSWER true (56,41)
            if ((not Toto_Equal(ctxt.V5, ctxt.V6) and not AChoice_Equal(ctxt.V7, ctxt.V8))) = true then
               --  writeln('5') (58,49)
               Put("5");
               New_Line;
               --  V5 := V6 (60,49)
               ctxt.V5 := ctxt.V6;
               --  V7 := b: {'Hello', 'World'} (61,0)
               ctxt.V7 := (Kind => b_PRESENT, b => (Data => (1 => (Data => (72, 101, 108, 108, 111, others => 0), Length => 5), 2 => (Data => (87, 111, 114, 108, 100, others => 0), Length => 5), others => (Data => (72, 101, 108, 108, 111, others => 0), Length => 5)), Length => 2));
               --  V8 := b: {'Hello', 'world' } (63,49)
               ctxt.V8 := (Kind => b_PRESENT, b => (Data => (1 => (Data => (72, 101, 108, 108, 111, others => 0), Length => 5), 2 => (Data => (119, 111, 114, 108, 100, others => 0), Length => 5), others => (Data => (72, 101, 108, 108, 111, others => 0), Length => 5)), Length => 2));
               --  JOIN three (65,49) at 0, 1028
               goto three;
               --  ANSWER false (67,41)
            elsif ((not Toto_Equal(ctxt.V5, ctxt.V6) and not AChoice_Equal(ctxt.V7, ctxt.V8))) = false then
               --  writeln('6') (69,49)
               Put("6");
               New_Line;
               --  DECISION number1 = number2 (71,61)
               --  ANSWER true (73,53)
               if (MyReal_Equal(ctxt.number1, ctxt.number2)) = true then
                  --  writeln('7') (75,61)
                  Put("7");
                  New_Line;
                  --  DECISION number1 = number3 (77,73)
                  --  ANSWER true (79,65)
                  if (MyReal_Equal(ctxt.number1, ctxt.number3)) = true then
                     --  writeln('FAIL number1 = number3') (81,73)
                     Put("FAIL number1 = number3");
                     New_Line;
                     --  ANSWER false (83,65)
                  elsif (MyReal_Equal(ctxt.number1, ctxt.number3)) = false then
                     --  writeln('8') (85,73)
                     Put("8");
                     New_Line;
                  end if;
                  --  ANSWER false (88,53)
               elsif (MyReal_Equal(ctxt.number1, ctxt.number2)) = false then
                  --  writeln('FAIL number1 /= number2') (90,61)
                  Put("FAIL number1 /= number2");
                  New_Line;
                  --  number3 := abs((number1 - number2)/number1) (92,61)
                  ctxt.number3 := abs(((ctxt.number1 - ctxt.number2) / ctxt.number1));
                  --  writeln(number3, ' >= 0.00001 !?', number3 < 0.00001) (94,61)
                  Put(MyReal'Image(ctxt.number3));
                  Put(" >= 0.00001 !?");
                  Put(Boolean'Image((ctxt.number3 < 0.00001)));
                  New_Line;
               end if;
               --  NEXT_STATE wait (97,54) at 585, 1282
               trId := -1;
               ctxt.state := wait;
               goto next_transition;
            end if;
            --  CONNECTION two (41,20)
            <<two>>
            --  DECISION V3 = V4 (43,32)
            --  ANSWER true (45,29)
            if (SeqOf_Equal(ctxt.V3, ctxt.V4)) = true then
               --  fail := false (47,37)
               ctxt.fail := false;
               --  writeln('4') (49,37)
               Put("4");
               New_Line;
               --  JOIN three (None,None) at None, None
               goto three;
               --  ANSWER false (100,29)
            elsif (SeqOf_Equal(ctxt.V3, ctxt.V4)) = false then
               --  DECISION fail (-1,-1)
               --  ANSWER true (104,41)
               if (ctxt.fail) = true then
                  --  writeln('FAIL: V3 = V4 reports FALSE, but...') (106,49)
                  Put("FAIL: V3 = V4 reports FALSE, but...");
                  New_Line;
                  --  writeln('Length of V3(1) =', Length(V3(1)), ' and Value = ', V3(1)) (108,49)
                  Put("Length of V3(1) =");
                  Put(Integer'Image(ctxt.V3.Data(2).Length));
                  Put(" and Value = ");
                  for i in 1 .. ctxt.V3.Data(2).Length loop
                     Put(Character'Val(ctxt.V3.Data(2).Data(i)));
                  end loop;
                  New_Line;
                  --  writeln('Length of V4(1) =', Length(V4(1)), ' and Value = ', V4(1)) (110,49)
                  Put("Length of V4(1) =");
                  Put(Integer'Image(ctxt.V4.Data(2).Length));
                  Put(" and Value = ");
                  for i in 1 .. ctxt.V4.Data(2).Length loop
                     Put(Character'Val(ctxt.V4.Data(2).Data(i)));
                  end loop;
                  New_Line;
                  --  NEXT_STATE wait (112,54) at 1452, 817
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
                  --  ANSWER false (114,41)
               elsif (ctxt.fail) = false then
                  --  writeln('3') (116,49)
                  Put("3");
                  New_Line;
                  --  V3(1) := V4(1)(0,4) (118,49)
                  ctxt.V3.Data(2).Data(1..ctxt.V4.Data(2).Data(1..5)'Length) := ctxt.V4.Data(2).Data(1..5);
                  ctxt.V3.Data(2).Length := ctxt.V4.Data(2).Data(1..5)'Length;
                  --  fail := true (120,49)
                  ctxt.fail := true;
                  --  JOIN two (122,49) at 1762, 817
                  goto two;
               end if;
            end if;
            --  CONNECTION one (31,8)
            <<one>>
            --  DECISION V1 = V2 (33,20)
            --  ANSWER true (35,17)
            if (My_OctStr_Equal(ctxt.V1, ctxt.V2)) = true then
               --  fail := false (37,25)
               ctxt.fail := false;
               --  writeln('2') (39,25)
               Put("2");
               New_Line;
               --  JOIN two (None,None) at None, None
               goto two;
               --  ANSWER false (126,17)
            elsif (My_OctStr_Equal(ctxt.V1, ctxt.V2)) = false then
               --  DECISION fail (-1,-1)
               --  ANSWER true (130,29)
               if (ctxt.fail) = true then
                  --  writeln('FAIL') (132,37)
                  Put("FAIL");
                  New_Line;
                  --  NEXT_STATE wait (134,42) at 1919, 451
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
                  --  ANSWER false (136,29)
               elsif (ctxt.fail) = false then
                  --  writeln('1') (138,37)
                  Put("1");
                  New_Line;
                  --  V2 := V1 (140,37)
                  ctxt.V2 := ctxt.V1;
                  --  fail := true (142,37)
                  ctxt.fail := true;
                  --  JOIN one (144,37) at 2099, 551
                  goto one;
               end if;
            end if;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end og;