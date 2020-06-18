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
      null1 : aliased NullType;
      choice1 : aliased ChoiceWithEmptySeq := (Kind => a_PRESENT, a => n1);
      empty1 : aliased EmptySeq := c1;
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
                  --  COMMENT Using a constant (35,16)
                  --  empty1 := c1 (33,21)
                  ctxt.empty1 := c1;
                  --  COMMENT Classic notation (39,16)
                  --  empty1 := {} (37,21)
                  ctxt.empty1 := EmptySeq_Init;
                  --  choice1 := b: c1 (41,21)
                  ctxt.choice1 := (Kind => b_PRESENT, b => c1);
                  --  choice1 := b: {} (43,21)
                  ctxt.choice1 := (Kind => b_PRESENT, b => EmptySeq_Init);
                  --  null1 := n1 (45,21)
                  ctxt.null1 := n1;
                  --  NEXT_STATE wait (47,26) at 182, 526
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 1 =>
                  --  we (53,27)
                  RIÜwe;
                  --  NEXT_STATE wait (55,30) at 446, 386
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