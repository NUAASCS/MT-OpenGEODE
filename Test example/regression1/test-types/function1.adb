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

package body function1 is
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      test : aliased asn1SccMyInteger;
      c2 : aliased asn1SccMyChoice2;
      c1 : aliased asn1SccMyChoice;
      c3 : aliased asn1SccT1 := (Kind => replyToCommand_PRESENT, replyToCommand => (Kind => cmd2_PRESENT, cmd2 => asn1SccT1_replyToCommand_cmd2_Init));
      c4 : aliased asn1SccT2;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   procedure PI1(test: access asn1SccMyInteger) is
      begin
         case ctxt.state is
            when wait =>
               ctxt.test := test.all;
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end PI1;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  c3 := replyToCommand: cmd2: {} (21,13)
                  ctxt.c3 := (Kind => replyToCommand_PRESENT, replyToCommand => (Kind => cmd2_PRESENT, cmd2 => asn1SccT1_replyToCommand_cmd2_Init));
                  --  c4!outputData := replyToCommand: cmd2: {} (23,13)
                  ctxt.c4.outputdata := (Kind => replyToCommand_PRESENT, replyToCommand => (Kind => cmd2_PRESENT, cmd2 => asn1SccT1_replyToCommand_cmd2_Init));
                  --  NEXT_STATE Wait (25,18) at 319, 160
                  trId := -1;
                  ctxt.state := Wait;
                  goto next_transition;
               when 1 =>
                  --  Writeln(test) (31,17)
                  Put(asn1SccMyInteger'Image(ctxt.test));
                  New_Line;
                  --  c1 := b:{a 1, b taste} (33,17)
                  ctxt.c1 := (Kind => b_PRESENT, b => asn1SccMySeq'( a => 1,  b => asn1Scctaste));
                  --  Writeln(c1!b!a) (35,17)
                  Put(asn1SccMyInteger'Image(ctxt.c1.b.a));
                  New_Line;
                  --  c1 := c:{a 1, b taste} (37,17)
                  ctxt.c1 := (Kind => c_PRESENT, c => asn1SccMySeq2'( a => 1,  b => asn1Scctaste));
                  --  Writeln(c1!c!a) (39,17)
                  Put(asn1SccMyInteger'Image(ctxt.c1.c.a));
                  New_Line;
                  --  NEXT_STATE Wait (41,22) at 631, 365
                  trId := -1;
                  ctxt.state := Wait;
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
end function1;