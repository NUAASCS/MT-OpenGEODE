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

package body og_type is
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
      tmp111 : aliased asn1SccMy_OctStr;
      tmp79 : BOOLEAN := False;
      tmp89 : BOOLEAN := False;
      tmp157 : aliased asn1SccMy_OctStr;
      --  !! stack: _call_external_function line 1271
      tmp100 : aliased asn1SccMy_OctStr;
      tmp108 : aliased asn1SccMy_OctStr;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  COMMENT Task with unicode: voilà! (30,8)
                  --  test := 5 (25,13)
                  ctxt.test := AsN1INT(5);
                  --  test := power(test, 1) (26,0)
                  ctxt.test := ctxt.test ** Natural(1);
                  --  test := abs(-4+1) (27,0)
                  ctxt.test := abs((-3));
                  --  test := abs(test) (28,0)
                  ctxt.test := abs(ctxt.test);
                  --  COMMENT String assignment (34,8)
                  --  first_msg := 'Say hello first!' (32,13)
                  ctxt.first_msg := (Data => (83, 97, 121, 32, 104, 101, 108, 108, 111, 32, 102, 105, 114, 115, 116, 33, others => 0), Length => 16);
                  --  writeln( first_msg(1,2)) (36,13)
                  for i in ctxt.first_msg.Data(2..3)'Range loop
                     Put(Character'Val(ctxt.first_msg.Data(2..3)(i)));
                  end loop;
                  New_Line;
                  --  writeln( not (not not true)) (38,13)
                  Put(Boolean'Image(false));
                  New_Line;
                  --  COMMENT default_seqof is a constant
                  --  defined in the ASN.1 model (43,8)
                  --  seq := default_seqof (40,13)
                  ctxt.seq := default_seqof;
                  --  seq := {1,2,3} (41,0)
                  ctxt.seq := (Data => (1 => 1, 2 => 2, 3 => 3, others => 1), Length => 3);
                  --  COMMENT Concatenate
                  --  two SEQUENCE OF (48,8)
                  --  seq := seq // {4, test} // default_seqof (46,13)
                  ctxt.seq.Data(1..ctxt.seq.Length + 2 + default_seqof.Length) := ((((ctxt.seq.Data(1..ctxt.seq.Length)) & asn1SccSeqOf_Array'(1 => 4, 2 => ctxt.test, others => <>)(1 .. 2))) & default_seqof.Data(1..default_seqof.Length));
                  ctxt.seq.Length := ctxt.seq.Length + 2 + default_seqof.Length;
                  -- seq(1) := seq(2)
                  --  COMMENT Remove 3rd element (55,8)
                  --  seq := seq(0,1) // seq(3, 4) (53,13)
                  ctxt.seq.Data(1..2 + 2) := ((ctxt.seq.Data(1..2)) & ctxt.seq.Data(4..5));
                  ctxt.seq.Length := 2 + 2;
                  --  TASK for x in seq:
                  --      call writeln(x);
                  --  endfor (57,13)
                  declare
                     x : asn1SccSome_Thing;
                  begin
                     for x_idx in 1 .. ctxt.seq.Length loop
                        x := ctxt.seq.Data(1..ctxt.seq.Length)(x_idx);
                        --  writeln(x) (58,9)
                        Put(asn1SccSome_Thing'Image(x));
                        New_Line;
                     end loop;
                  end;
                  --  writeln('test=', test) (61,13)
                  Put("test=");
                  Put(asn1SccSome_Thing'Image(ctxt.test));
                  New_Line;
                  --  DECISION test in seq (63,22)
                  --  COMMENT Test the "in" operator
                  --  Unicode test: Ï (65,8)
                  in_loop_tmp79:
                  for elem in 1..ctxt.seq.Length loop
                     if ctxt.seq.Data(elem) = ctxt.test then
                        tmp79 := True;
                     end if;
                     exit in_loop_tmp79 when tmp79 = True;
                  end loop in_loop_tmp79;
                  --  ANSWER TRUE (68,13)
                  if (tmp79) = true then
                     --  writeln('All OK (1)') (70,21)
                     Put("All OK (1)");
                     New_Line;
                     --  ANSWER FALSE (72,13)
                  elsif (tmp79) = false then
                     --  writeln('NOT OK (1)') (74,21)
                     --  COMMENT Call UnicÔDË (76,16)
                     Put("NOT OK (1)");
                     New_Line;
                  end if;
                  --  DECISION 3 in seq (79,19)
                  --  COMMENT test==3 so it should also return true (81,8)
                  in_loop_tmp89:
                  for elem in 1..ctxt.seq.Length loop
                     if ctxt.seq.Data(elem) = 3 then
                        tmp89 := True;
                     end if;
                     exit in_loop_tmp89 when tmp89 = True;
                  end loop in_loop_tmp89;
                  --  ANSWER TRUE (83,13)
                  if (tmp89) = true then
                     --  writeln('ALL OK (2)') (85,21)
                     Put("ALL OK (2)");
                     New_Line;
                     --  ANSWER FALSE (87,13)
                  elsif (tmp89) = false then
                     --  writeln('NOT OK (2)') (89,21)
                     Put("NOT OK (2)");
                     New_Line;
                  end if;
                  --  NEXT_STATE Wait (92,18) at 1427, 1151
                  trId := -1;
                  ctxt.state := Wait;
                  goto next_transition;
               when 1 =>
                  --  writeln(msg) (100,17)
                  for i in 1 .. ctxt.msg.Length loop
                     Put(Character'Val(ctxt.msg.Data(i)));
                  end loop;
                  New_Line;
                  --  DECISION msg (-1,-1)
                  --  COMMENT Switch-case
                  --  on strings (104,12)
                  tmp100 := ctxt.msg;
                  --  ANSWER 'egg' (107,17)
                  if asn1SccMy_OctStr_Equal(tmp100, (Data => (101, 103, 103, others => 0), Length => 3)) then
                     --  COMMENT Concatenate
                     --  strings (111,20)
                     --  msg := msg // '!!' (109,25)
                     ctxt.msg.Data(1..ctxt.msg.Length + 2) := ((ctxt.msg.Data(1..ctxt.msg.Length)) & asn1SccMy_OctStr_Array'(33, 33, others => <>)(1 .. 2));
                     ctxt.msg.Length := ctxt.msg.Length + 2;
                     --  rezult(default_str) (114,27)
                     --  COMMENT Send a constant
                     --  defined in the ASN.1
                     --  model (116,20)
                     tmp108 := default_str;
                     RIÜrezult(tmp108'Access);
                     --  NEXT_STATE Running (120,30) at 2454, 620
                     --  COMMENT Néxtaytè (122,20)
                     trId := -1;
                     ctxt.state := Running;
                     goto next_transition;
                     --  ANSWER 'end' (124,17)
                  elsif asn1SccMy_OctStr_Equal(tmp100, (Data => (101, 110, 100, others => 0), Length => 3)) then
                     --  rezult
                     --  ('Goodbye!') (126,27)
                     tmp111 := (Data => (71, 111, 111, 100, 98, 121, 101, 33, others => 0), Length => 8);
                     RIÜrezult(tmp111'Access);
                     --  NEXT_STATE Wait (129,30) at 1864, 557
                     trId := -1;
                     ctxt.state := Wait;
                     goto next_transition;
                     --  ANSWER ELSE (None,None)
                  else
                     --  COMMENT Concatenate
                     --  strings (135,20)
                     --  msg := msg // '!' (133,25)
                     ctxt.msg.Data(1..ctxt.msg.Length + 1) := ((ctxt.msg.Data(1..ctxt.msg.Length)) & asn1SccMy_OctStr_Array'(33, others => <>)(1 .. 1));
                     ctxt.msg.Length := ctxt.msg.Length + 1;
                     --  writeln('msg//! = ', msg) (138,25)
                     Put("msg//! = ");
                     for i in 1 .. ctxt.msg.Length loop
                        Put(Character'Val(ctxt.msg.Data(i)));
                     end loop;
                     New_Line;
                     --  COMMENT Concatenate two substrings
                     --  (can be used to remove an
                     --  element from a list) (142,20)
                     --  msg := msg(3,4) // msg(1,2) (140,25)
                     ctxt.msg.Data(1..2 + 2) := ((ctxt.msg.Data(4..5)) & ctxt.msg.Data(2..3));
                     ctxt.msg.Length := 2 + 2;
                     --  writeln('msg(3,4)//(1,2) = ',msg) (146,25)
                     Put("msg(3,4)//(1,2) = ");
                     for i in 1 .. ctxt.msg.Length loop
                        Put(Character'Val(ctxt.msg.Data(i)));
                     end loop;
                     New_Line;
                     --  COMMENT Substring
                     --  TODO check range
                     --  against current Length (150,20)
                     --  msg := first_msg(1, 2) (148,25)
                     ctxt.msg.Data(1..ctxt.first_msg.Data(2..3)'Length) := ctxt.first_msg.Data(2..3);
                     ctxt.msg.Length := ctxt.first_msg.Data(2..3)'Length;
                     --  writeln('first_msg(1,2)=',msg) (154,25)
                     --  COMMENT should be ay (156,20)
                     Put("first_msg(1,2)=");
                     for i in 1 .. ctxt.msg.Length loop
                        Put(Character'Val(ctxt.msg.Data(i)));
                     end loop;
                     New_Line;
                     --  rezult(msg) (158,27)
                     RIÜrezult(ctxt.msg'Access);
                     --  NEXT_STATE Running (160,30) at 2042, 915
                     trId := -1;
                     ctxt.state := Running;
                     goto next_transition;
                  end if;
               when 2 =>
                  --  DECISION msg = 'hello' (170,25)
                  --  COMMENT Boolean test
                  --  on string value (172,12)
                  --  ANSWER FALSE (175,17)
                  if (asn1SccMy_OctStr_Equal(ctxt.msg, (Data => (104, 101, 108, 108, 111, others => 0), Length => 5))) = false then
                     --  rezult(first_msg) (177,27)
                     --  COMMENT OûtpUT (179,20)
                     RIÜrezult(ctxt.first_msg'Access);
                     --  NEXT_STATE Wait (181,30) at 1638, 1491
                     trId := -1;
                     ctxt.state := Wait;
                     goto next_transition;
                     --  ANSWER TRUE (183,17)
                  elsif (asn1SccMy_OctStr_Equal(ctxt.msg, (Data => (104, 101, 108, 108, 111, others => 0), Length => 5))) = true then
                     --  rezult('Welcome') (185,27)
                     --  COMMENT Send raw
                     --  string (187,20)
                     tmp157 := (Data => (87, 101, 108, 99, 111, 109, 101, others => 0), Length => 7);
                     RIÜrezult(tmp157'Access);
                     --  DECISION 3 in {1,2,3} (190,31)
                     --  ANSWER 1 in {1,2} (192,27)
                     if (true) = true then
                        null;
                        --  ANSWER 0 in {1,2} (194,27)
                     elsif (true) = false then
                        null;
                     end if;
                     --  DECISION 4 in {1,2,3} (197,31)
                     --  ANSWER true (199,25)
                     if (false) = true then
                        null;
                        --  ANSWER false (201,25)
                     elsif (false) = false then
                        null;
                     end if;
                     --  NEXT_STATE Running (204,30) at 1367, 1727
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
end og_type;