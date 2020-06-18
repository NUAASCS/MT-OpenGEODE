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
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      variable : aliased asn1SccVariableString := (Data => (72, 111, 112, others => 0), Length => 3);
      fixed : aliased asn1SccFixedString := (Data => (72, 101, 108, 111, others => 0));
      seqof : aliased asn1SccSeqBool;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 1;
   procedure runTransition(Id: Integer);
   procedure pulse is
      begin
         case ctxt.state is
            when wait =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end pulse;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  seqof := {true} // {false} // {false} (15,13)
                  ctxt.seqof.Data(1..2 + 1) := ((((1 => true) & asn1SccSeqBool_Array'(1 => false, others => <>)(1 .. 1))) & asn1SccSeqBool_Array'(1 => false, others => <>)(1 .. 1));
                  ctxt.seqof.Length := 2 + 1;
                  --  TASK for each in seqof:
                  --      call writeln(each);
                  --  endfor (17,13)
                  declare
                     each : Boolean;
                  begin
                     for each_idx in 1 .. ctxt.seqof.Length loop
                        each := ctxt.seqof.Data(1..ctxt.seqof.Length)(each_idx);
                        --  writeln(each) (18,9)
                        Put(Boolean'Image(each));
                        New_Line;
                     end loop;
                  end;
                  --  writeln('(1) -> ', seqof(0), seqof(1)) (21,13)
                  Put("(1) -> ");
                  Put(Boolean'Image(ctxt.seqof.Data(1)));
                  Put(Boolean'Image(ctxt.seqof.Data(2)));
                  New_Line;
                  --  seqof := seqof // {true} (23,13)
                  ctxt.seqof.Data(1..ctxt.seqof.Length + 1) := ((ctxt.seqof.Data(1..ctxt.seqof.Length)) & asn1SccSeqBool_Array'(1 => true, others => <>)(1 .. 1));
                  ctxt.seqof.Length := ctxt.seqof.Length + 1;
                  --  writeln('(2) -> ', seqof(0), seqof(3)) (25,13)
                  Put("(2) -> ");
                  Put(Boolean'Image(ctxt.seqof.Data(1)));
                  Put(Boolean'Image(ctxt.seqof.Data(4)));
                  New_Line;
                  -- for each in seqof:
--     call writeln(each);
-- endfor
                  --  writeln(fixed(0,2)//fixed(2,3)// ' word') (31,13)
                  for i in ctxt.fixed.Data(1..3)'Range loop
                     Put(Character'Val(ctxt.fixed.Data(1..3)(i)));
                  end loop;
                  for i in ctxt.fixed.Data(3..4)'Range loop
                     Put(Character'Val(ctxt.fixed.Data(3..4)(i)));
                  end loop;
                  Put(" word");
                  New_Line;
                  --  writeln(variable) (33,13)
                  for i in 1 .. ctxt.variable.Length loop
                     Put(Character'Val(ctxt.variable.Data(i)));
                  end loop;
                  New_Line;
                  --  variable := variable // '!!' (35,13)
                  ctxt.variable.Data(1..ctxt.variable.Length + 2) := ((ctxt.variable.Data(1..ctxt.variable.Length)) & asn1SccVariableString_Array'(33, 33, others => <>)(1 .. 2));
                  ctxt.variable.Length := ctxt.variable.Length + 2;
                  --  writeln(variable) (37,13)
                  for i in 1 .. ctxt.variable.Length loop
                     Put(Character'Val(ctxt.variable.Data(i)));
                  end loop;
                  New_Line;
                  --  writeln(variable//':-)') (39,13)
                  for i in 1 .. ctxt.variable.Length loop
                     Put(Character'Val(ctxt.variable.Data(i)));
                  end loop;
                  Put(":-)");
                  New_Line;
                  --  variable := variable(0,2) (41,13)
                  ctxt.variable.Data(1..ctxt.variable.Data(1..3)'Length) := ctxt.variable.Data(1..3);
                  ctxt.variable.Length := ctxt.variable.Data(1..3)'Length;
                  --  writeln(variable(0, 2)) (43,13)
                  for i in ctxt.variable.Data(1..3)'Range loop
                     Put(Character'Val(ctxt.variable.Data(1..3)(i)));
                  end loop;
                  New_Line;
                  --  DECISION variable // variable = 'HopHop' (45,38)
                  --  ANSWER true (47,17)
                  if ((((ctxt.variable.Data(1..ctxt.variable.Length)) & ctxt.variable.Data(1..ctxt.variable.Length))) = (72, 111, 112, 72, 111, 112)) = true then
                     --  writeln('OK') (49,25)
                     Put("OK");
                     New_Line;
                     --  ANSWER false (51,17)
                  elsif ((((ctxt.variable.Data(1..ctxt.variable.Length)) & ctxt.variable.Data(1..ctxt.variable.Length))) = (72, 111, 112, 72, 111, 112)) = false then
                     --  writeln(variable // variable) (53,25)
                     for i in 1 .. ctxt.variable.Length loop
                        Put(Character'Val(ctxt.variable.Data(i)));
                     end loop;
                     for i in 1 .. ctxt.variable.Length loop
                        Put(Character'Val(ctxt.variable.Data(i)));
                     end loop;
                     New_Line;
                  end if;
                  --  NEXT_STATE wait (56,18) at 455, 1002
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
end orchestrator;