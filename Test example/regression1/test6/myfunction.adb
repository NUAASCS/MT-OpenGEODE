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
      variable_str : aliased asn1SccString := (Data => (72, 101, 108, 108, 111, 33, others => 0), Length => 6);
      testenum : aliased asn1SccMyEnum := asn1Sccworld;
      bar : aliased asn1SccSeqInt := (Data => (1 => 1, 2 => 1, others => 1), Length => 2);
      def_val : aliased asn1SccMySeq := asn1SccMySeq'( a => 3,  b => asn1Scctaste);
      toto : aliased asn1SccT_Int32;
      largereal : aliased asn1SccLargerReal := 0.0;
      otherint : aliased asn1SccT_UInt8 := 1;
      negint : aliased asn1SccT_Int8 := (-3);
      somereal : aliased asn1SccMyReal := 1.5;
      str : aliased asn1SccMyOctStr := (Data => (97, 98, 99, others => 0));
      verytrue : aliased asn1SccT_Boolean := true;
      other : aliased asn1SccString := (Data => (87, 111, 114, 108, 100, others => 0), Length => 5);
      opnot : aliased asn1SccT_Boolean := false;
      someint : aliased asn1SccT_UInt8 := 2;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 3;
   procedure runTransition(Id: Integer);
   procedure pÜfactorial(n: in asn1SccMyInteger;result: in out asn1SccMyInteger);
   procedure pÜfactorial(n: in asn1SccMyInteger;result: in out asn1SccMyInteger) is
      begin
         --  result := 1 (48,17)
         result := 1;
         --  TASK for x in range(1, n+1):
         --      result := (result * x) mod 255
         --  endfor (50,17)
         for x in 1 .. Integer ((n + 1)) - 1 loop
            --  result := (result * x) mod 255 (51,4)
            result := Asn1UInt(((result * asn1SccMyInteger(x)) mod 255));
         end loop;
         --  RETURN  (None,None) at 315, 216
         return;
      end pÜfactorial;
      

   procedure start_something(tutu: access asn1SccT_Int32) is
      begin
         case ctxt.state is
            when wait =>
               ctxt.toto := tutu.all;
               runTransition(2);
            when others =>
               runTransition(CS_Only);
         end case;
      end start_something;
      

   procedure mytimer is
      begin
         case ctxt.state is
            when wait =>
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end mytimer;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      function num_asn1SccMyEnum is new Ada.Unchecked_Conversion(asn1SccMyEnum, Asn1UInt);
      tmp108 : asn1SccT_UInt8;
      tmp82 : Asn1UInt;
      --  !! stack: _call_external_function line 1271
      tmp57 : asn1SccString;
      tmp71 : String(1 .. 4);
      tmp162 : aliased asn1SccT_UInt32;
      tmp155 : aliased asn1SccT_Int32;
      tmp89 : asn1SccT_UInt8;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  verytrue := not false (59,13)
                  ctxt.verytrue := true;
                  --  DECISION someint + 1 (61,25)
                  --  COMMENT Test closed range (63,8)
                  --  ANSWER 0:998 (65,13)
                  if  (ctxt.someint + 1) >= 0 and (ctxt.someint + 1) <= 998 then
                     null;
                     --  ANSWER 2:otherint (67,13)
                  elsif  (ctxt.someint + 1) >= 2 and (ctxt.someint + 1) <= ctxt.otherint then
                     null;
                  end if;
                  --  COMMENT Check consistent behaviour (77,8)
                  --  TASK for x in range(4):
                  --   call writeln(x);
                  --  endfor,
                  --  for x in range(0,4,1):
                  --   call writeln(x);
                  --  endfor (70,13)
                  --  COMMENT Check consistent behaviour (77,8)
                  for x in 0 .. 3 loop
                     --  writeln(x) (71,6)
                     Put(Integer'Image(x));
                     New_Line;
                  end loop;
                  for x in 0 .. 3 loop
                     --  writeln(x) (74,6)
                     Put(Integer'Image(x));
                     New_Line;
                  end loop;
                  --  writeln(-(someint + 1)) (79,13)
                  --  COMMENT Test unary on expression result
                  --  should display -3 (81,8)
                  Put(AsN1INT'Image((-AsN1INT((ctxt.someint + 1)))));
                  New_Line;
                  --  writeln(not(true or false)) (84,13)
                  --  COMMENT test unary on expression
                  --  should display FALSE (86,8)
                  Put(Boolean'Image((not (true or false))));
                  New_Line;
                  --  writeln(str) (89,13)
                  --  COMMENT Test writeln with an octet string (91,8)
                  for i in ctxt.str.Data'Range loop
                     Put(Character'Val(ctxt.str.Data(i)));
                  end loop;
                  New_Line;
                  --  writeln(str) (93,13)
                  --  COMMENT Write again to check local variables (95,8)
                  for i in ctxt.str.Data'Range loop
                     Put(Character'Val(ctxt.str.Data(i)));
                  end loop;
                  New_Line;
                  --  writeln(variable_str) (97,13)
                  --  COMMENT Write a non-fixed length OCTET STRING (99,8)
                  for i in 1 .. ctxt.variable_str.Length loop
                     Put(Character'Val(ctxt.variable_str.Data(i)));
                  end loop;
                  New_Line;
                  --  writeln(variable_str // '!!!') (101,13)
                  --  COMMENT with APPEND (103,8)
                  for i in 1 .. ctxt.variable_str.Length loop
                     Put(Character'Val(ctxt.variable_str.Data(i)));
                  end loop;
                  Put("!!!");
                  New_Line;
                  --  writeln(if someint>0 then variable_str else other fi) (105,13)
                  --  COMMENT Write a non-fixed lenght OCTET STRING (107,8)
                  if (ctxt.someint > 0) then
                     tmp57 := ctxt.variable_str;
                  else
                     tmp57 := ctxt.other;
                  end if;
                  for i in 1 .. tmp57.Length loop
                     Put(Character'Val(tmp57.Data(i)));
                  end loop;
                  New_Line;
                  --  writeln(1 + (-otherint)) (109,13)
                  --  COMMENT Test the op_minus in a sub-expression (111,8)
                  Put(AsN1INT'Image((1 + (-AsN1INT(ctxt.otherint)))));
                  New_Line;
                  --  writeln(-someint, if someint>0 then ' is ' else 'Foo' fi, not true) (113,13)
                  --  COMMENT Various tests with strings, ternary, op_not (115,8)
                  Put(AsN1INT'Image((-AsN1INT(ctxt.someint))));
                  if (ctxt.someint > 0) then
                     tmp71 := " is ";
                  else
                     tmp71 := "Foo ";
                  end if;
                  Put(tmp71);
                  Put(Boolean'Image(false));
                  New_Line;
                  --  write(if someint>0 then 2 else 1 fi) (117,13)
                  --  COMMENT test ternary with raw numbers (119,8)
                  if (ctxt.someint > 0) then
                     tmp82 := 2;
                  else
                     tmp82 := 1;
                  end if;
                  Put(Asn1UInt'Image(tmp82));
                  --  write(if someint>0 then someint else 1 fi) (121,13)
                  --  COMMENT test ternary with mixed variable/raw number (123,8)
                  if (ctxt.someint > 0) then
                     tmp89 := ctxt.someint;
                  else
                     tmp89 := 1;
                  end if;
                  Put(asn1SccT_UInt8'Image(tmp89));
                  --  writeln(bar(1)) (125,13)
                  --  COMMENT test index (127,8)
                  Put(asn1SccT_UInt8'Image(ctxt.bar.Data(2)));
                  New_Line;
                  --  writeln(opnot, ' ', not opnot) (129,13)
                  --  COMMENT test op_not with variable (131,8)
                  Put(asn1SccT_Boolean'Image(ctxt.opnot));
                  Put(" ");
                  Put(Boolean'Image((not ctxt.opnot)));
                  New_Line;
                  --  someInt := if someint = 0 then someint else 0 fi (133,13)
                  if (ctxt.someint = 0) then
                     tmp108 := ctxt.someint;
                  else
                     tmp108 := 0;
                  end if;
                  ctxt.someInt := tmp108;
                  --  otherint := num(testenum) (135,13)
                  ctxt.otherint := num_asn1SccMyEnum(ctxt.testenum);
                  --  writeln(otherint, num(testenum)+1) (137,13)
                  --  COMMENT Will display 1 2 with the Ada generator
                  --  * even if the ASN.1 model specifies explicit values *
                  --  because Ada has no operator to get the explicit value,
                  --  even if it is set as representation clause. Enumerated values
                  --  are logical states, not integers in Ada - as in ASN.1
                  --   (139,8)
                  Put(asn1SccT_UInt8'Image(ctxt.otherint));
                  Put(Asn1UInt'Image((num_asn1SccMyEnum(ctxt.testenum) + 1)));
                  New_Line;
                  --  DECISION someint /=0 and then (10 / someInt > 0)
                  --  or else someint = 0 (147,0)
                  --  COMMENT Using "and else" is the
                  --  short-circuit form. The
                  --  second part should not
                  --  be evaluated. (149,8)
                  --  ANSWER true (154,13)
                  if ((((ctxt.someint /= 0) and then ((10 / ctxt.someInt) > 0)) or else (ctxt.someint = 0))) = true then
                     --  someInt := 2 (156,21)
                     ctxt.someInt := 2;
                     --  writeln('OK') (158,21)
                     Put("OK");
                     New_Line;
                     --  ANSWER false (160,13)
                  elsif ((((ctxt.someint /= 0) and then ((10 / ctxt.someInt) > 0)) or else (ctxt.someint = 0))) = false then
                     null;
                  end if;
                  --  NEXT_STATE Wait (163,18) at 605, 1455
                  trId := -1;
                  ctxt.state := Wait;
                  goto next_transition;
               when 1 =>
                  --  writeln('timer expired') (169,17)
                  Put("timer expired");
                  New_Line;
                  --  factorial(3, someint) (171,17)
                  pÜfactorial(3, ctxt.someint);
                  --  NEXT_STATE Wait (173,22) at 1019, 1652
                  trId := -1;
                  ctxt.state := Wait;
                  goto next_transition;
               when 2 =>
                  --  result_data((toto+1) mod 2147483647) (177,19)
                  tmp155 := asn1SccT_Int32(((ctxt.toto + 1) mod 2147483647));
                  RIÜresult_data(tmp155'Access);
                  --  writeln
                  --  ('Hello Toto', toto) (179,17)
                  Put("Hello Toto");
                  Put(asn1SccT_Int32'Image(ctxt.toto));
                  New_Line;
                  --  set_timer(1000, myTimer) (182,17)
                  tmp162 := 1000;
                  SET_myTimer(tmp162'access);
                  --  largeReal := power(someReal, 2) (184,17)
                  ctxt.largeReal := ctxt.someReal ** Natural(2);
                  --  writeln(someReal, ' ** 2' , ' == ', largeReal, ' (should be 2.25 )') (186,17)
                  Put(asn1SccMyReal'Image(ctxt.someReal));
                  Put(" ** 2");
                  Put(" == ");
                  Put(asn1SccLargerReal'Image(ctxt.largeReal));
                  Put(" (should be 2.25 )");
                  New_Line;
                  --  someReal := float(someInt) (188,17)
                  ctxt.someReal := Asn1Real(ctxt.someInt);
                  --  someInt := fix(someReal) mod 255 (190,17)
                  ctxt.someInt := (Asn1UInt(ctxt.someReal) mod 255);
                  --  opnot := not opnot (192,17)
                  ctxt.opnot := (not ctxt.opnot);
                  --  COMMENT XXX should raise an error! (196,12)
                  -- someint := -someint
                  --  someint := (-8) mod 5 (198,17)
                  ctxt.someint := 2;
                  --  negint := (-8) mod 5 (200,17)
                  ctxt.negint := AsN1INT(2);
                  --  NEXT_STATE wait (202,22) at 494, 2120
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
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end myfunction;