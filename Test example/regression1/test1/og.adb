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
      seq : aliased asn1SccSeqOf;
      alwaysfalse : aliased asn1SccType2 := false;
      msg : aliased asn1SccMy_OctStr;
      seqofbool : aliased asn1SccSeqBool := (Data => (1 => true, 2 => true, others => true), Length => 2);
      first_msg : aliased asn1SccMy_OctStr;
      test : aliased asn1SccSome_Thing;
      foo : aliased asn1SccMyInteger := 3;
      nonposint : aliased asn1SccNegativeInt := (-5);
      alwaystrue : aliased asn1SccType2 := true;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 3;
   procedure runTransition(Id: Integer);
   procedure go(ze_param: access asn1SccMy_OctStr) is
      begin
         case ctxt.state is
            when running =>
               ctxt.msg := ze_param.all;
               runTransition(1);
            when wait =>
               ctxt.msg := ze_param.all;
               runTransition(2);
            when others =>
               runTransition(CS_Only);
         end case;
      end go;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp92 : BOOLEAN := False;
      tmp82 : BOOLEAN := False;
      --  !! stack: _call_external_function line 1271
      tmp111 : aliased asn1SccMy_OctStr;
      tmp114 : aliased asn1SccMy_OctStr;
      tmp103 : aliased asn1SccMy_OctStr;
      tmp160 : aliased asn1SccMy_OctStr;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  COMMENT Task with unicode: voilà! (30,8)
                  --  test := 5 (26,13)
                  ctxt.test := 5;
                  --  test := power(test, 1) (27,0)
                  ctxt.test := ctxt.test ** Natural(1);
                  --  test := abs(test) (28,0)
                  ctxt.test := abs(ctxt.test);
                  --  Nonposint := abs (Nonposint) (32,13)
                  ctxt.Nonposint := abs(ctxt.Nonposint);
                  --  Nonposint := abs (-5) (33,0)
                  ctxt.Nonposint := abs((-5));
                  --  COMMENT String assignment (37,8)
                  --  first_msg := 'Say hello first!' (35,13)
                  ctxt.first_msg := (Data => (83, 97, 121, 32, 104, 101, 108, 108, 111, 32, 102, 105, 114, 115, 116, 33, others => 0), Length => 16);
                  --  writeln( first_msg(1,2)) (39,13)
                  for i in ctxt.first_msg.Data(2..3)'Range loop
                     Put(Character'Val(ctxt.first_msg.Data(2..3)(i)));
                  end loop;
                  New_Line;
                  --  writeln( not (not not true)) (41,13)
                  Put(Boolean'Image(false));
                  New_Line;
                  --  COMMENT default_seqof is a constant
                  --  defined in the ASN.1 model (46,8)
                  --  seq := default_seqof (43,13)
                  ctxt.seq := default_seqof;
                  --  seq := {1,2,3} (44,0)
                  ctxt.seq := (Data => (1 => 1, 2 => 2, 3 => 3, others => 1), Length => 3);
                  --  COMMENT Concatenate
                  --  two SEQUENCE OF (51,8)
                  --  seq := seq // {4, test} // default_seqof (49,13)
                  ctxt.seq.Data(1..ctxt.seq.Length + 2 + default_seqof.Length) := ((((ctxt.seq.Data(1..ctxt.seq.Length)) & asn1SccSeqOf_Array'(1 => 4, 2 => ctxt.test, others => <>)(1 .. 2))) & default_seqof.Data(1..default_seqof.Length));
                  ctxt.seq.Length := ctxt.seq.Length + 2 + default_seqof.Length;
                  -- seq(1) := seq(2)
                  --  COMMENT Remove 3rd element (58,8)
                  --  seq := seq(0,1) // seq(3, 4) (56,13)
                  ctxt.seq.Data(1..2 + 2) := ((ctxt.seq.Data(1..2)) & ctxt.seq.Data(4..5));
                  ctxt.seq.Length := 2 + 2;
                  --  TASK for x in seq:
                  --      call writeln(x);
                  --  endfor (60,13)
                  declare
                     x : asn1SccMyInteger;
                  begin
                     for x_idx in 1 .. ctxt.seq.Length loop
                        x := ctxt.seq.Data(1..ctxt.seq.Length)(x_idx);
                        --  writeln(x) (61,9)
                        Put(asn1SccMyInteger'Image(x));
                        New_Line;
                     end loop;
                  end;
                  --  writeln('test=', test) (64,13)
                  Put("test=");
                  Put(asn1SccSome_Thing'Image(ctxt.test));
                  New_Line;
                  --  DECISION test in seq (66,22)
                  --  COMMENT Test the "in" operator
                  --  Unicode test: Ï (68,8)
                  in_loop_tmp82:
                  for elem in 1..ctxt.seq.Length loop
                     if ctxt.seq.Data(elem) = ctxt.test then
                        tmp82 := True;
                     end if;
                     exit in_loop_tmp82 when tmp82 = True;
                  end loop in_loop_tmp82;
                  --  ANSWER TRUE (71,13)
                  if (tmp82) = true then
                     --  writeln('All OK (1)') (73,21)
                     Put("All OK (1)");
                     New_Line;
                     --  ANSWER FALSE (75,13)
                  elsif (tmp82) = false then
                     --  writeln('NOT OK (1)') (77,21)
                     --  COMMENT Call UnicÔDË (79,16)
                     Put("NOT OK (1)");
                     New_Line;
                  end if;
                  --  DECISION 3 in seq (82,19)
                  --  COMMENT test==3 so it should also return true (84,8)
                  in_loop_tmp92:
                  for elem in 1..ctxt.seq.Length loop
                     if ctxt.seq.Data(elem) = 3 then
                        tmp92 := True;
                     end if;
                     exit in_loop_tmp92 when tmp92 = True;
                  end loop in_loop_tmp92;
                  --  ANSWER TRUE (86,13)
                  if (tmp92) = true then
                     --  writeln('ALL OK (2)') (88,21)
                     Put("ALL OK (2)");
                     New_Line;
                     --  ANSWER FALSE (90,13)
                  elsif (tmp92) = false then
                     --  writeln('NOT OK (2)') (92,21)
                     Put("NOT OK (2)");
                     New_Line;
                  end if;
                  --  NEXT_STATE Wait (95,18) at 1427, 1212
                  trId := -1;
                  ctxt.state := Wait;
                  goto next_transition;
               when 1 =>
                  --  writeln(msg) (101,17)
                  for i in 1 .. ctxt.msg.Length loop
                     Put(Character'Val(ctxt.msg.Data(i)));
                  end loop;
                  New_Line;
                  --  DECISION msg (-1,-1)
                  --  COMMENT Switch-case
                  --  on strings (105,12)
                  tmp103 := ctxt.msg;
                  --  ANSWER 'egg' (108,17)
                  if asn1SccMy_OctStr_Equal(tmp103, (Data => (101, 103, 103, others => 0), Length => 3)) then
                     --  COMMENT Concatenate
                     --  strings (112,20)
                     --  msg := msg // '!!' (110,25)
                     ctxt.msg.Data(1..ctxt.msg.Length + 2) := ((ctxt.msg.Data(1..ctxt.msg.Length)) & asn1SccMy_OctStr_Array'(33, 33, others => <>)(1 .. 2));
                     ctxt.msg.Length := ctxt.msg.Length + 2;
                     --  rezult(default_str) (115,27)
                     --  COMMENT Send a constant
                     --  defined in the ASN.1
                     --  model (117,20)
                     tmp111 := default_str;
                     RIÜrezult(tmp111'Access);
                     --  NEXT_STATE Running (121,30) at 2454, 620
                     --  COMMENT Néxtaytè (123,20)
                     trId := -1;
                     ctxt.state := Running;
                     goto next_transition;
                     --  ANSWER 'end' (125,17)
                  elsif asn1SccMy_OctStr_Equal(tmp103, (Data => (101, 110, 100, others => 0), Length => 3)) then
                     --  rezult
                     --  ('Goodbye!') (127,27)
                     tmp114 := (Data => (71, 111, 111, 100, 98, 121, 101, 33, others => 0), Length => 8);
                     RIÜrezult(tmp114'Access);
                     --  NEXT_STATE Wait (130,30) at 1864, 557
                     trId := -1;
                     ctxt.state := Wait;
                     goto next_transition;
                     --  ANSWER ELSE (None,None)
                  else
                     --  COMMENT Concatenate
                     --  strings (136,20)
                     --  msg := msg // '!' (134,25)
                     ctxt.msg.Data(1..ctxt.msg.Length + 1) := ((ctxt.msg.Data(1..ctxt.msg.Length)) & asn1SccMy_OctStr_Array'(33, others => <>)(1 .. 1));
                     ctxt.msg.Length := ctxt.msg.Length + 1;
                     --  writeln('msg//! = ', msg) (139,25)
                     Put("msg//! = ");
                     for i in 1 .. ctxt.msg.Length loop
                        Put(Character'Val(ctxt.msg.Data(i)));
                     end loop;
                     New_Line;
                     --  COMMENT Concatenate two substrings
                     --  (can be used to remove an
                     --  element from a list) (143,20)
                     --  msg := msg(3,4) // msg(1,2) (141,25)
                     ctxt.msg.Data(1..2 + 2) := ((ctxt.msg.Data(4..5)) & ctxt.msg.Data(2..3));
                     ctxt.msg.Length := 2 + 2;
                     --  writeln('msg(3,4)//(1,2) = ',msg) (147,25)
                     Put("msg(3,4)//(1,2) = ");
                     for i in 1 .. ctxt.msg.Length loop
                        Put(Character'Val(ctxt.msg.Data(i)));
                     end loop;
                     New_Line;
                     --  COMMENT Substring
                     --  TODO check range
                     --  against current Length (151,20)
                     --  msg := first_msg(1, 2) (149,25)
                     ctxt.msg.Data(1..ctxt.first_msg.Data(2..3)'Length) := ctxt.first_msg.Data(2..3);
                     ctxt.msg.Length := ctxt.first_msg.Data(2..3)'Length;
                     --  writeln('first_msg(1,2)=',msg) (155,25)
                     --  COMMENT should be ay (157,20)
                     Put("first_msg(1,2)=");
                     for i in 1 .. ctxt.msg.Length loop
                        Put(Character'Val(ctxt.msg.Data(i)));
                     end loop;
                     New_Line;
                     --  rezult(msg) (159,27)
                     RIÜrezult(ctxt.msg'Access);
                     --  NEXT_STATE Running (161,30) at 2042, 915
                     trId := -1;
                     ctxt.state := Running;
                     goto next_transition;
                  end if;
               when 2 =>
                  --  DECISION msg = 'hello' (171,25)
                  --  COMMENT Boolean test
                  --  on string value (173,12)
                  --  ANSWER FALSE (176,17)
                  if (asn1SccMy_OctStr_Equal(ctxt.msg, (Data => (104, 101, 108, 108, 111, others => 0), Length => 5))) = false then
                     --  rezult(first_msg) (178,27)
                     --  COMMENT OûtpUT (180,20)
                     RIÜrezult(ctxt.first_msg'Access);
                     --  NEXT_STATE Wait (182,30) at 1638, 1552
                     trId := -1;
                     ctxt.state := Wait;
                     goto next_transition;
                     --  ANSWER TRUE (184,17)
                  elsif (asn1SccMy_OctStr_Equal(ctxt.msg, (Data => (104, 101, 108, 108, 111, others => 0), Length => 5))) = true then
                     --  rezult('Welcome') (186,27)
                     --  COMMENT Send raw
                     --  string (188,20)
                     tmp160 := (Data => (87, 101, 108, 99, 111, 109, 101, others => 0), Length => 7);
                     RIÜrezult(tmp160'Access);
                     --  DECISION 3 in {1,2,3} (191,31)
                     --  ANSWER 1 in {1,2} (193,27)
                     if (true) = true then
                        null;
                        --  ANSWER 0 in {1,2} (195,27)
                     elsif (true) = false then
                        null;
                     end if;
                     --  DECISION 4 in {1,2,3} (198,31)
                     --  ANSWER true (200,25)
                     if (false) = true then
                        null;
                        --  ANSWER false (202,25)
                     elsif (false) = false then
                        null;
                     end if;
                     --  NEXT_STATE Running (205,30) at 1367, 1788
                     trId := -1;
                     ctxt.state := Running;
                     goto next_transition;
                  end if;
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
end og;