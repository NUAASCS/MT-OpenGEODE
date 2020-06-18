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

package body test is
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      s2 : aliased asn1SccMySeqOf;
      s1 : aliased asn1SccMySeqOf;
      boo : aliased asn1SccMyBoolean;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 1;
   procedure runTransition(Id: Integer);
   procedure seqof1(seqof1_param: access asn1SccMySeqOf) is
      begin
         case ctxt.state is
            when wait =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end seqof1;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  s2 := { true, true, false, true } (24,21)
                  ctxt.s2 := (Data => (1 => true, 2 => true, 3 => false, 4 => true, others => true), Length => 4);
                  --  writeln ( length (s1) ) (26,21)
                  --  COMMENT Uninitialized => will return 0 (28,16)
                  Put(Integer'Image(ctxt.s1.Length));
                  New_Line;
                  --  COMMENT Minimum size
                  --  s1 (1, 3) := { true, false, true} provokes a bug (32,16)
                  --  s1  :=  s2 (1,3) (30,21)
                  ctxt.s1.Data(1..ctxt.s2.Data(2..4)'Length) := ctxt.s2.Data(2..4);
                  ctxt.s1.Length := ctxt.s2.Data(2..4)'Length;
                  --  writeln ( length (s1) ) (35,21)
                  Put(Integer'Image(ctxt.s1.Length));
                  New_Line;
                  --  s1 := s1 // { false } (37,21)
                  ctxt.s1.Data(1..ctxt.s1.Length + 1) := ((ctxt.s1.Data(1..ctxt.s1.Length)) & asn1SccMySeqOf_Array'(1 => false, others => <>)(1 .. 1));
                  ctxt.s1.Length := ctxt.s1.Length + 1;
                  --  writeln ( length (s1) ) (39,21)
                  Put(Integer'Image(ctxt.s1.Length));
                  New_Line;
                  --  s1 := s1 // {boo} (41,21)
                  ctxt.s1.Data(1..ctxt.s1.Length + 1) := ((ctxt.s1.Data(1..ctxt.s1.Length)) & asn1SccMySeqOf_Array'(1 => ctxt.boo, others => <>)(1 .. 1));
                  ctxt.s1.Length := ctxt.s1.Length + 1;
                  --  writeln ( length (s1) ) (43,21)
                  Put(Integer'Image(ctxt.s1.Length));
                  New_Line;
                  --  NEXT_STATE wait (45,26) at 198, 541
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
end test;