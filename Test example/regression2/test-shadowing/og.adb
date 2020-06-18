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
      ghost : aliased MySeq;
      nestedstateÜtoto : aliased MySeq := MySeq'( a => false,  b => 2);
      nestedstateÜghost : aliased MyInt := 3;
      nestedstateÜtutu : aliased MySeq := MySeq'( a => true,  b => 8);
      toto : aliased MySeq;
      titi : aliased MySeq;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 4;
   nestedstateÜSTART : constant := 3;
   procedure runTransition(Id: Integer);
   procedure pÜnestedstateÜabc(toto: in MySeq;tutu: in out MyInt);
   procedure pÜnestedstateÜabc(toto: in MySeq;tutu: in out MyInt) is
      ghost : aliased MyBool := false;
      begin
         --  tutu := toto.b (44,33)
         tutu := toto.b;
         --  ghost := true (46,33)
         ghost := true;
         --  RETURN  (None,None) at 734, 332
         return;
      end pÜnestedstateÜabc;
      

   procedure doSomething is
      begin
         case ctxt.state is
            when wait =>
               runTransition(2);
            when others =>
               runTransition(CS_Only);
         end case;
      end doSomething;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE wait (88,26) at 475, 227
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE Wait (94,30) at 475, 502
                  trId := -1;
                  ctxt.state := Wait;
                  goto next_transition;
               when 2 =>
                  --  toto := { a TRUE, b 1 } (101,25)
                  ctxt.toto := MySeq'( a => true,  b => 1);
                  --  NEXT_STATE NestedState (103,30) at 455, 392
                  trId := nestedstateÜSTART;
                  goto next_transition;
               when 3 =>
                  --  writeln ('Entering state with ', toto.a, toto.b, ' (should be FALSE 2)' ) (53,29)
                  Put("Entering state with ");
                  Put(MyBool'Image(ctxt.nestedstateÜtoto.a));
                  Put(MyInt'Image(ctxt.nestedstateÜtoto.b));
                  Put(" (should be FALSE 2)");
                  New_Line;
                  --  toto := toto (55,29)
                  ctxt.nestedstateÜtoto := ctxt.nestedstateÜtoto;
                  --  tutu := tutu (56,0)
                  ctxt.nestedstateÜtutu := ctxt.nestedstateÜtutu;
                  --  ghost := 4 (57,0)
                  ctxt.nestedstateÜghost := 4;
                  --  writeln ('Value should be the same:  ', toto.a, toto.b) (59,29)
                  Put("Value should be the same:  ");
                  Put(MyBool'Image(ctxt.nestedstateÜtoto.a));
                  Put(MyInt'Image(ctxt.nestedstateÜtoto.b));
                  New_Line;
                  --  toto.a := TRUE (61,29)
                  ctxt.nestedstateÜtoto.a := true;
                  --  toto.b := 3 (62,0)
                  ctxt.nestedstateÜtoto.b := 3;
                  --  toto := { a FALSE, b 4 } (63,0)
                  ctxt.nestedstateÜtoto := MySeq'( a => false,  b => 4);
                  --  tutu.a := TRUE (65,29)
                  ctxt.nestedstateÜtutu.a := true;
                  --  abc (toto, ghost) (67,29)
                  pÜnestedstateÜabc(ctxt.nestedstateÜtoto, ctxt.nestedstateÜghost);
                  --  writeln ('Value should be (FALSE 4) :  ', toto.a, toto.b) (69,29)
                  Put("Value should be (FALSE 4) :  ");
                  Put(MyBool'Image(ctxt.nestedstateÜtoto.a));
                  Put(MyInt'Image(ctxt.nestedstateÜtoto.b));
                  New_Line;
                  --  toto := titi (71,29)
                  ctxt.nestedstateÜtoto := ctxt.titi;
                  --  titi := { a TRUE, b 42 } (72,0)
                  ctxt.titi := MySeq'( a => true,  b => 42);
                  --  titi.a := FALSE (73,0)
                  ctxt.titi.a := false;
                  --  titi.b := 41 (74,0)
                  ctxt.titi.b := 41;
                  --  RETURN getOut (None,None) at 764, 809
                  trId := 1;
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