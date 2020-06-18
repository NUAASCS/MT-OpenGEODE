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
   type States is (on‹hello‹wait_in_sub_hello, safe, off, on‹hello);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      on‹result : aliased asn1SccT_UInt32 := 9;
      result : aliased asn1SccT_UInt32 := 0;
      on‹myresult : aliased asn1SccT_UInt8 := 4;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 12;
   on‹via_toto_START : constant := 8;
   on‹hello‹START : constant := 11;
   on‹START : constant := 9;
   procedure runTransition(Id: Integer);
   procedure p‹foo;
   procedure p‹toto;
   procedure p‹on‹hello‹entry;
   procedure p‹on‹exit;
   procedure p‹on‹inner_proc(toto: in asn1SccT_UInt8);
   procedure p‹on‹entry;
   procedure p‹foo is
      begin
         --  RETURN  (None,None) at 207, 103
         return;
      end p‹foo;
      

   procedure p‹toto is
      i : aliased asn1SccT_Int8 := 1;
      begin
         --  DECISION i (-1,-1)
         --  ANSWER 1 (174,1)
         if (i) = 1 then
            --  i := (i + 1) mod 127 (176,5)
            i := AsN1INT(((i + 1) mod 127));
            --  RETURN  (None,None) at 150, 294
            return;
            --  ANSWER ELSE (None,None)
         else
            --  foo (182,5)
            p‹foo;
            --  RETURN  (None,None) at 266, 294
            return;
         end if;
      end p‹toto;
      

   procedure p‹on‹hello‹entry is
      begin
         --  writeln('8') (14,5)
         Put("8");
         New_Line;
         --  writeln('Hello!') (16,5)
         Put("Hello!");
         New_Line;
         --  RETURN  (None,None) at 195, 286
         return;
      end p‹on‹hello‹entry;
      

   procedure p‹on‹exit is
      begin
         --  writeln('LEAVING the nested state') (47,5)
         Put("LEAVING the nested state");
         New_Line;
         --  RETURN  (None,None) at 180, 219
         return;
      end p‹on‹exit;
      

   procedure p‹on‹inner_proc(toto: in asn1SccT_UInt8) is
      result : aliased asn1SccT_Boolean := true;
      begin
         --  JOIN hey_joe (None,None) at None, None
         goto hey_joe;
         --  CONNECTION leaving (68,0)
         <<leaving>>
         --  RETURN  (None,None) at 496, 347
         return;
         --  CONNECTION hey_joe (62,0)
         <<hey_joe>>
         --  writeln('10') (64,5)
         Put("10");
         New_Line;
         --  result := false (66,5)
         result := false;
         --  JOIN leaving (None,None) at None, None
         goto leaving;
      end p‹on‹inner_proc;
      

   procedure p‹on‹entry is
      begin
         --  writeln('ENTERING NESTED STATE') (83,5)
         Put("ENTERING NESTED STATE");
         New_Line;
         --  RETURN  (None,None) at 208, 178
         return;
      end p‹on‹entry;
      

   procedure run is
      begin
         case ctxt.state is
            when off =>
               runTransition(7);
            when safe =>
               runTransition(1);
            when on‹hello‹wait_in_sub_hello =>
               runTransition(10);
            when on‹hello =>
               runTransition(10);
            when others =>
               runTransition(CS_Only);
         end case;
      end run;
      

   procedure go_off is
      begin
         case ctxt.state is
            when off =>
               runTransition(CS_Only);
            when safe =>
               runTransition(1);
            when on‹hello‹wait_in_sub_hello =>
               p‹on‹exit;
               runTransition(4);
            when on‹hello =>
               p‹on‹exit;
               runTransition(4);
            when others =>
               runTransition(CS_Only);
         end case;
      end go_off;
      

   procedure any_one is
      begin
         case ctxt.state is
            when off =>
               runTransition(CS_Only);
            when safe =>
               runTransition(2);
            when on‹hello‹wait_in_sub_hello =>
               p‹on‹exit;
               runTransition(3);
            when on‹hello =>
               p‹on‹exit;
               runTransition(3);
            when others =>
               runTransition(CS_Only);
         end case;
      end any_one;
      

   procedure any_two is
      begin
         case ctxt.state is
            when off =>
               runTransition(CS_Only);
            when safe =>
               runTransition(1);
            when on‹hello‹wait_in_sub_hello =>
               runTransition(CS_Only);
            when on‹hello =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end any_two;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp54 : aliased asn1SccT_UInt32;
      tmp55 : aliased asn1SccT_UInt32;
      --  !! stack: _call_external_function line 1271
      tmp17 : aliased asn1SccT_UInt32;
      tmp18 : aliased asn1SccT_UInt32;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  writeln('1') (190,5)
                  Put("1");
                  New_Line;
                  --  NEXT_STATE OFF (192,10) at 342, 201
                  trId := -1;
                  ctxt.state := OFF;
                  goto next_transition;
               when 1 =>
                  --  writeln('5') (200,5)
                  Put("5");
                  New_Line;
                  --  pow(2,2, result) (202,5)
                  tmp54 := asn1SccT_UInt32(2);
                  tmp55 := asn1SccT_UInt32(2);
                  RI‹pow(tmp54'Access, tmp55'Access, ctxt.result'Access);
                  --  writeln('4 == ', result) (204,5)
                  Put("4 == ");
                  Put(asn1SccT_UInt32'Image(ctxt.result));
                  New_Line;
                  --  NEXT_STATE - (206,10) at 102, 533
                  trId := -1;
                  goto next_transition;
               when 2 =>
                  --  writeln('6') (210,5)
                  Put("6");
                  New_Line;
                  --  NEXT_STATE on (212,10) at 306, 433
                  trId := on‹START;
                  goto next_transition;
               when 3 =>
                  --  NEXT_STATE - (223,10) at 1030, 177
                  case ctxt.state is
                     when on‹hello‹wait_in_sub_hello|on‹hello =>
                        trId := on‹START;
                     when others =>
                        trId := -1;
                  end case;
                  goto next_transition;
               when 4 =>
                  --  NEXT_STATE OFF (227,10) at 1161, 177
                  trId := -1;
                  ctxt.state := OFF;
                  goto next_transition;
               when 5 =>
                  --  writeln('4') (231,5)
                  Put("4");
                  New_Line;
                  --  NEXT_STATE Safe (233,10) at 850, 227
                  trId := -1;
                  ctxt.state := Safe;
                  goto next_transition;
               when 6 =>
                  --  writeln('11 (end)') (237,5)
                  Put("11 (end)");
                  New_Line;
                  --  toto (239,5)
                  p‹toto;
                  --  NEXT_STATE off (241,10) at 533, 277
                  trId := -1;
                  ctxt.state := off;
                  goto next_transition;
               when 7 =>
                  --  writeln('2') (249,5)
                  Put("2");
                  New_Line;
                  --  NEXT_STATE on (251,10) at 374, 357
                  --  COMMENT Enter substate via entry point (253,0)
                  trId := on‹via_toto_START;
                  goto next_transition;
               when 8 =>
                  --  entry (None,None)
                  p‹on‹entry;
                  --  writeln('3') (90,5)
                  Put("3");
                  New_Line;
                  --  exit (None,None)
                  p‹on‹exit;
                  --  RETURN ret0 (None,None) at 1215, 107
                  trId := 5;
                  goto next_transition;
               when 9 =>
                  --  entry (None,None)
                  p‹on‹entry;
                  --  writeln('7') (96,5)
                  Put("7");
                  New_Line;
                  --  JOIN on‹inside_label (None,None) at None, None
                  goto on‹inside_label;
               when 10 =>
                  --  writeln('27 == ', result) (137,5)
                  Put("27 == ");
                  Put(asn1SccT_UInt32'Image(ctxt.on‹result));
                  New_Line;
                  --  toto (139,5)
                  p‹toto;
                  --  myresult := 88 (141,5)
                  ctxt.on‹myresult := 88;
                  --  result := 33 (142,0)
                  ctxt.on‹result := 33;
                  --  JOIN on‹to_label (144,5) at 17, 279
                  goto on‹to_label;
               when 11 =>
                  --  entry (None,None)
                  p‹on‹hello‹entry;
                  --  NEXT_STATE on‹hello‹wait_in_sub_hello (23,10) at 312, 183
                  trId := -1;
                  ctxt.state := on‹hello‹wait_in_sub_hello;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            goto next_transition;
            --  CONNECTION on‹to_label (115,11)
            <<on‹to_label>>
            --  JOIN on‹another_floating (117,5) at 159, 374
            goto on‹another_floating;
            --  CONNECTION on‹another_floating (121,11)
            <<on‹another_floating>>
            --  writeln('9') (123,5)
            Put("9");
            New_Line;
            --  myresult := 1 (125,5)
            ctxt.on‹myresult := 1;
            --  inner_proc(myresult) (127,5)
            p‹on‹inner_proc(ctxt.on‹myresult);
            --  exit (None,None)
            p‹on‹exit;
            --  RETURN  (None,None) at 565, 672
            trId := 6;
            goto next_transition;
            --  CONNECTION on‹nslabel (111,0)
            <<on‹nslabel>>
            --  NEXT_STATE on‹hello (113,10) at 938, 416
            trId := on¸hello‹START;
            goto next_transition;
            --  CONNECTION on‹inside_label (98,0)
            <<on‹inside_label>>
            --  pow(3,3, result) (100,5)
            tmp17 := asn1SccT_UInt32(3);
            tmp18 := asn1SccT_UInt32(3);
            RI‹pow(tmp17'Access, tmp18'Access, ctxt.on‹result'Access);
            --  DECISION result (-1,-1)
            --  ANSWER myresult (104,1)
            if (ctxt.on‹result) = ctxt.on‹myresult then
               null;
               --  ANSWER ELSE (None,None)
            else
               --  myresult := 5 (108,5)
               ctxt.on‹myresult := 5;
            end if;
            --  JOIN on‹nslabel (None,None) at None, None
            goto on‹nslabel;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end challenge;