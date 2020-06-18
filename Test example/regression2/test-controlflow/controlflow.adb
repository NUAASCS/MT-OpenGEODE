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

package body controlflow is
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      seq2 : aliased IntegerSeqOf;
      seq1 : aliased IntegerSeqOf;
      b : aliased Boolean;
      n : aliased Integer;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   procedure run is
      begin
         case ctxt.state is
            when wait =>
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end run;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp52 : aliased CharString;
      tmp17 : aliased CharString;
      tmp37 : aliased CharString;
      --  !! stack: _call_external_function line 1271
      tmp105 : aliased CharString;
      tmp68 : aliased CharString;
      tmp51 : aliased Boolean;
      tmp12 : aliased CharString;
      tmp67 : aliased Boolean;
      tmp33 : aliased CharString;
      tmp83 : aliased Boolean;
      tmp84 : aliased CharString;
      tmp20 : aliased CharString;
      tmp104 : aliased Boolean;
      tmp25 : aliased CharString;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE Wait (16,18) at 290, 50
                  trId := -1;
                  ctxt.state := Wait;
                  goto next_transition;
               when 1 =>
                  -- ------------------------------- Decision -------------------------------
                  --  n := 2 (44,17)
                  ctxt.n := AsN1INT(2);
                  --  DECISION n (-1,-1)
                  --  ANSWER 1 (48,17)
                  if (ctxt.n) = 1 then
                     --  fail('decision else') (50,25)
                     tmp12 := (Data => (100, 101, 99, 105, 115, 105, 111, 110, 32, 101, 108, 115, 101, others => 0), Length => 13);
                     RIÜfail(tmp12'Access);
                     --  ANSWER else (None,None)
                  else
                     null;
                  end if;
                  --  DECISION n (-1,-1)
                  --  ANSWER 1 (57,17)
                  if (ctxt.n) = 1 then
                     --  fail( 'decision constant') (59,25)
                     tmp17 := (Data => (100, 101, 99, 105, 115, 105, 111, 110, 32, 99, 111, 110, 115, 116, 97, 110, 116, others => 0), Length => 17);
                     RIÜfail(tmp17'Access);
                     --  ANSWER 2 (61,17)
                  elsif (ctxt.n) = 2 then
                     null;
                     --  ANSWER else (None,None)
                  else
                     --  fail( 'decision constant') (65,25)
                     tmp20 := (Data => (100, 101, 99, 105, 115, 105, 111, 110, 32, 99, 111, 110, 115, 116, 97, 110, 116, others => 0), Length => 17);
                     RIÜfail(tmp20'Access);
                  end if;
                  --  DECISION n (-1,-1)
                  --  ANSWER <2 (70,17)
                  if (ctxt.n) < 2 then
                     --  fail('decision open range') (72,25)
                     tmp25 := (Data => (100, 101, 99, 105, 115, 105, 111, 110, 32, 111, 112, 101, 110, 32, 114, 97, 110, 103, 101, others => 0), Length => 19);
                     RIÜfail(tmp25'Access);
                     --  ANSWER >1 (74,17)
                  elsif (ctxt.n) > 1 then
                     null;
                  end if;
                  --  DECISION n (-1,-1)
                  --  ANSWER -1:1 (79,18)
                  if  ctxt.n >= (-1) and ctxt.n <= 1 then
                     --  fail('decision closed range') (81,25)
                     tmp33 := (Data => (100, 101, 99, 105, 115, 105, 111, 110, 32, 99, 108, 111, 115, 101, 100, 32, 114, 97, 110, 103, 101, others => 0), Length => 21);
                     RIÜfail(tmp33'Access);
                     --  ANSWER 2:5 (83,17)
                  elsif  ctxt.n >= 2 and ctxt.n <= 5 then
                     null;
                     --  ANSWER else (None,None)
                  else
                     --  fail('decision closed range') (87,25)
                     tmp37 := (Data => (100, 101, 99, 105, 115, 105, 111, 110, 32, 99, 108, 111, 115, 101, 100, 32, 114, 97, 110, 103, 101, others => 0), Length => 21);
                     RIÜfail(tmp37'Access);
                  end if;
                  -- ------------------------------- For loops -------------------------------
                  --  n := 0 (92,17)
                  ctxt.n := AsN1INT(0);
                  --  TASK for x in range(10):
                  --     n := n + x mod 255
                  --  endfor (94,17)
                  for x in 0 .. 9 loop
                     --  n := n + x mod 255 (95,3)
                     ctxt.n := AsN1INT((ctxt.n + Integer((x mod 255))));
                  end loop;
                  --  assert(n = 45, 'for x in range(10)') (98,17)
                  tmp51 := (ctxt.n = 45);
                  tmp52 := (Data => (102, 111, 114, 32, 120, 32, 105, 110, 32, 114, 97, 110, 103, 101, 40, 49, 48, 41, others => 0), Length => 18);
                  RIÜassert(tmp51'Access, tmp52'Access);
                  --  n := 0 (100,17)
                  ctxt.n := AsN1INT(0);
                  --  TASK for x in range(4, 10):
                  --     n := n + x mod 255
                  --  endfor (102,17)
                  for x in 4 .. 9 loop
                     --  n := n + x mod 255 (103,3)
                     ctxt.n := AsN1INT((ctxt.n + Integer((x mod 255))));
                  end loop;
                  --  assert(n = 39, 'for x in range(4, 10)') (106,17)
                  tmp67 := (ctxt.n = 39);
                  tmp68 := (Data => (102, 111, 114, 32, 120, 32, 105, 110, 32, 114, 97, 110, 103, 101, 40, 52, 44, 32, 49, 48, 41, others => 0), Length => 21);
                  RIÜassert(tmp67'Access, tmp68'Access);
                  --  n := 0 (108,17)
                  ctxt.n := AsN1INT(0);
                  --  TASK for x in range(4, 10, 2):
                  --      n := n + x mod 255
                  --  endfor (110,17)
                  declare
                     x : Integer := 4;
                  begin
                     while x < 10 loop
                        --  n := n + x mod 255 (111,4)
                        ctxt.n := AsN1INT((ctxt.n + Integer((x mod 255))));
                        x := x + 2;
                     end loop;
                  end;
                  --  assert(n = 18, 'for x in range(4, 10, 2)') (114,17)
                  tmp83 := (ctxt.n = 18);
                  tmp84 := (Data => (102, 111, 114, 32, 120, 32, 105, 110, 32, 114, 97, 110, 103, 101, 40, 52, 44, 32, 49, 48, 44, 32, 50, 41, others => 0), Length => 24);
                  RIÜassert(tmp83'Access, tmp84'Access);
                  --  seq1 := {7, 8, 9, 10} (116,17)
                  ctxt.seq1 := (Data => (1 => 7, 2 => 8, 3 => 9, 4 => 10, others => 7), Length => 4);
                  --  n := 0 (118,17)
                  ctxt.n := AsN1INT(0);
                  --  TASK for x in seq1:
                  --    n := n + x mod 255
                  --  endfor (120,17)
                  declare
                     x : Integer;
                  begin
                     for x_idx in 1 .. ctxt.seq1.Length loop
                        x := ctxt.seq1.Data(1..ctxt.seq1.Length)(x_idx);
                        --  n := n + x mod 255 (121,2)
                        ctxt.n := (ctxt.n + (x mod 255));
                     end loop;
                  end;
                  --  assert(n = 34, 'for x in seq1' ) (124,17)
                  tmp104 := (ctxt.n = 34);
                  tmp105 := (Data => (102, 111, 114, 32, 120, 32, 105, 110, 32, 115, 101, 113, 49, others => 0), Length => 13);
                  RIÜassert(tmp104'Access, tmp105'Access);
                  -- ------------------------------- Join -------------------------------  
                  --  JOIN label1 (128,17) at 308, 1725
                  goto label1;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            goto next_transition;
            --  CONNECTION label1 (18,15)
            <<label1>>
            --  writeln('label1') (20,13)
            Put("label1");
            New_Line;
            --  JOIN label2 (22,13) at 53, 1847
            goto label2;
            --  CONNECTION label2 (26,15)
            <<label2>>
            --  writeln('label2') (28,13)
            Put("label2");
            New_Line;
            --  JOIN label3 (None,None) at None, None
            goto label3;
            --  CONNECTION label3 (30,8)
            <<label3>>
            --  writeln('label3') (32,13)
            Put("label3");
            New_Line;
            --  NEXT_STATE wait (34,18) at 292, 2104
            trId := -1;
            ctxt.state := wait;
            goto next_transition;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end controlflow;