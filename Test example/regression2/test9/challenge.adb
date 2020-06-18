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

package body challenge is
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      count : aliased CountTab;
      bitwise2 : aliased SeqBit2;
      actual_count : aliased CountTab;
      pow_value : aliased T_UInt32 := 0;
      bitwise : aliased SeqBit;
      nested : aliased Nested := Nested'( a => Nested_a'( b => Nested_a_b'( c => Nested_a_b_c'( p => Point'( y => 2,  x => 1),  l => (Data => (1 => 3, 2 => 4, others => 3))))));
      testvalue : aliased T_Boolean := true;
      boolwise : aliased T_Boolean;
      check : aliased T_UInt8;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   procedure pÜtest(first: in T_UInt8;second: in out T_Boolean);
   pragma import(C, pÜtest, "test");
   

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
   begin
      while (trId /= -1) loop
         case trId is
            when 0 =>
               --  TASK for x in range(length(count)):
               --      count(x) := count_max
               --      actual_count(x) := 0
               --  endfor (26,13)
               for x in 0 .. 19 loop
                  --  count(x) := count_max (27,4)
                  ctxt.count.Data(1 + Integer(x)) := count_max;
                  --  actual_count(x) := 0 (28,4)
                  ctxt.actual_count.Data(1 + Integer(x)) := 0;
               end loop;
               --  nested := {a {b {c {p {x 1, y 2}, l {3, 4}}}}} (31,13)
               ctxt.nested := Nested'( a => Nested_a'( b => Nested_a_b'( c => Nested_a_b_c'( p => Point'( y => 2,  x => 1),  l => (Data => (1 => 3, 2 => 4, others => 3))))));
               --  NEXT_STATE Wait (33,18) at 631, 213
               trId := -1;
               ctxt.state := Wait;
               goto next_transition;
            when 1 =>
               --  writeln('Computing') (42,17)
               Put("Computing");
               New_Line;
               --  TASK for x in range(exceed_nb):
               --      for n in range(20): -- can't use nb_bit: asn1 constants are not visible
               --          call pow(2, n, pow_value);
               --          check := if val_max - x>0 and pow_value>0 then 1 else 0 fi
               --          bitwise := bitwise and bitwise
               --          -- bitwise2 := bitwise2 xor {true, false}
               --          -- bitwise2 := bitwise2 and bitwise2
               --          boolwise := boolwise and boolwise
               --          check := if (check=0) and pow_value>1  then 1 else 0 fi
               --          count(n) := count(n) - check
               --          call test((n+1) mod 255, testvalue);
               --      endfor
               --  endfor (44,17)
               for x in 0 .. Integer (exceed_nb) - 1 loop
                  --  TASK for n in range(20): -- can't use nb_bit: asn1 constants are not visible
                  --          call pow(2, n, pow_value);
                  --          check := if val_max - x>0 and pow_value>0 then 1 else 0 fi
                  --          bitwise := bitwise and bitwise
                  --          -- bitwise2 := bitwise2 xor {true, false}
                  --          -- bitwise2 := bitwise2 and bitwise2
                  --          boolwise := boolwise and boolwise
                  --          check := if (check=0) and pow_value>1  then 1 else 0 fi
                  --          count(n) := count(n) - check
                  --          call test((n+1) mod 255, testvalue);
                  --      endfor (45,4)
                  for n in 0 .. 19 loop
                     declare
                        tmp89 : aliased T_UInt8;
                        --  !! stack: _call_external_function line 1271
                        tmp44 : T_UInt8;
                        tmp65 : T_UInt8;
                        tmp40 : aliased T_UInt32;
                        tmp41 : aliased T_UInt32;
                     begin
                        --  pow(2, n, pow_value) (46,13)
                        tmp40 := T_UInt32(2);
                        tmp41 := T_UInt32(n);
                        RIÜpow(tmp40'Access, tmp41'Access, ctxt.pow_value'Access);
                        --  check := if val_max - x>0 and pow_value>0 then 1 else 0 fi (47,8)
                        if (((val_max - T_UInt32(x)) > 0) and (ctxt.pow_value > 0)) then
                           tmp44 := 1;
                        else
                           tmp44 := 0;
                        end if;
                        ctxt.check := tmp44;
                        --  bitwise := bitwise and bitwise (48,8)
                        ctxt.bitwise := (Data => (ctxt.bitwise.Data and ctxt.bitwise.Data));
                        --  boolwise := boolwise and boolwise (51,8)
                        ctxt.boolwise := (ctxt.boolwise and ctxt.boolwise);
                        --  check := if (check=0) and pow_value>1  then 1 else 0 fi (52,8)
                        if ((ctxt.check = 0) and (ctxt.pow_value > 1)) then
                           tmp65 := 1;
                        else
                           tmp65 := 0;
                        end if;
                        ctxt.check := tmp65;
                        --  count(n) := count(n) - check (53,8)
                        ctxt.count.Data(1 + Integer(n)) := (ctxt.count.Data(1 + Integer(n)) - ctxt.check);
                        --  test((n+1) mod 255, testvalue) (54,13)
                        tmp89 := T_UInt8(((n + 1) mod 255));
                        RIÜtest(tmp89'Access, ctxt.testvalue'Access);
                     end;
                  end loop;
               end loop;
               --  NEXT_STATE wait (58,22) at 631, 599
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
end challenge;