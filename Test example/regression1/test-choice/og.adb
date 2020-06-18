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
      em : aliased asn1SccEmptySeq := asn1SccEmptySeq_Init;
      eso : aliased asn1SccSeqOf := asn1SccSeqOf_Init;
      ch : aliased asn1SccChoiceWithEmptySeq;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   procedure dd is
      begin
         case ctxt.state is
            when wait =>
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end dd;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  ch := b: {} (33,21)
                  ctxt.ch := (Kind => b_PRESENT, b => asn1SccEmptySeq_Init);
                  --  eso := {} (35,21)
                  ctxt.eso := asn1SccSeqOf_Init;
                  --  COMMENT This is ok, there should
                  --  be no warning raised (39,16)
                  --  em := ch!b (37,21)
                  ctxt.em := ctxt.ch.b;
                  --  COMMENT No error, but
                  --  ch!d!a := TRUE would fail (44,16)
                  --  ch:= d: {a  TRUE} (42,21)
                  ctxt.ch := (Kind => d_PRESENT, d => asn1SccChoiceWithEmptySeq_d'( a => true));
                  --  NEXT_STATE wait (47,26) at 174, 483
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 1 =>
                  --  we (53,27)
                  RIÜwe;
                  --  NEXT_STATE wait (55,30) at 474, 388
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
end og;