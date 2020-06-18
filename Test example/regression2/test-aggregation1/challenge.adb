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
   type States is (off, safe‹b, safe‹a‹ha, safe, ‹finished, on‹aggregnexttohello‹c‹ceh, on‹aggregnexttohello‹d, on‹hello‹wait_in_sub_hello, on‹aggregnexttohello‹c, safe‹a, on‹aggregnexttohello, on‹hello, safe‹b‹beh, on‹aggregnexttohello‹d‹deh);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      on‹aggregnexttohello‹c‹state: States;
      on‹aggregnexttohello‹d‹state: States;
      safe‹a‹state: States;
      safe‹b‹state: States;
      on‹result : aliased T_UInt32 := 9;
      result : aliased T_UInt32 := 0;
      on‹myresult : aliased T_UInt8 := 4;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 15;
   safe‹b‹START : constant := 13;
   safe‹a‹START : constant := 11;
   on‹hello‹START : constant := 7;
   on‹aggregnexttohello‹c‹START : constant := 8;
   on‹via_toto_START : constant := 4;
   on‹aggregnexttohello‹d‹START : constant := 10;
   on‹START : constant := 5;
   procedure on‹aggregnexttohello‹START;
   procedure safe‹START;
   procedure runTransition(Id: Integer);
   procedure p‹on‹hello‹entry;
   procedure p‹on‹exit;
   procedure p‹on‹inner_proc(toto: in T_UInt8);
   procedure p‹on‹entry;
   procedure p‹on‹hello‹entry is
      begin
         --  writeln('8') (14,33)
         Put("8");
         New_Line;
         --  writeln('Hello!') (16,33)
         Put("Hello!");
         New_Line;
         --  RETURN  (None,None) at 195, 286
         return;
      end p‹on‹hello‹entry;
      

   procedure p‹on‹exit is
      begin
         --  writeln('LEAVING the nested state') (79,25)
         Put("LEAVING the nested state");
         New_Line;
         --  RETURN  (None,None) at 180, 219
         return;
      end p‹on‹exit;
      

   procedure p‹on‹inner_proc(toto: in T_UInt8) is
      result : aliased T_Boolean := true;
      begin
         --  JOIN hey_joe (None,None) at None, None
         goto hey_joe;
         --  CONNECTION leaving (100,20)
         <<leaving>>
         --  RETURN  (None,None) at 496, 347
         return;
         --  CONNECTION hey_joe (94,20)
         <<hey_joe>>
         --  writeln('10') (96,25)
         Put("10");
         New_Line;
         --  result := false (98,25)
         result := false;
         --  JOIN leaving (None,None) at None, None
         goto leaving;
      end p‹on‹inner_proc;
      

   procedure p‹on‹entry is
      begin
         --  writeln('ENTERING NESTED STATE') (115,25)
         Put("ENTERING NESTED STATE");
         New_Line;
         --  RETURN  (None,None) at 208, 178
         return;
      end p‹on‹entry;
      

   procedure on‹aggregnexttohello‹START is
      begin
         runTransition(on‹aggregnexttohello‹c‹START);
         runTransition(on‹aggregnexttohello‹d‹START);
      end on‹aggregnexttohello‹START;
      

   procedure safe‹START is
      begin
         runTransition(safe‹a‹START);
         runTransition(safe‹b‹START);
      end safe‹START;
      

   procedure run is
      begin
         case ctxt.state is
            when off =>
               runTransition(3);
            when safe‹b =>
               runTransition(CS_Only);
            when safe =>
               -- this is a state aggregation
               case ctxt.safe‹a‹state is
                  when safe‹a‹ha =>
                     runTransition(12);
                  when others =>
                     null;
               end case;
            when on‹aggregnexttohello‹d =>
               runTransition(CS_Only);
            when on‹hello‹wait_in_sub_hello =>
               runTransition(6);
            when on‹aggregnexttohello‹c =>
               runTransition(CS_Only);
            when safe‹a =>
               runTransition(CS_Only);
            when on‹aggregnexttohello =>
               -- this is a state aggregation
               null;
            when on‹hello =>
               runTransition(6);
            when others =>
               runTransition(CS_Only);
         end case;
      end run;
      

   procedure go_off is
      begin
         case ctxt.state is
            when off =>
               runTransition(CS_Only);
            when safe‹b =>
               runTransition(CS_Only);
            when safe =>
               -- this is a state aggregation
               null;
            when on‹aggregnexttohello‹d =>
               runTransition(CS_Only);
            when on‹hello‹wait_in_sub_hello =>
               runTransition(CS_Only);
            when on‹aggregnexttohello‹c =>
               runTransition(CS_Only);
            when safe‹a =>
               runTransition(CS_Only);
            when on‹aggregnexttohello =>
               -- this is a state aggregation
               null;
            when on‹hello =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end go_off;
      

   procedure any_one is
      begin
         case ctxt.state is
            when off =>
               runTransition(CS_Only);
            when safe‹b =>
               runTransition(CS_Only);
            when safe =>
               -- this is a state aggregation
               case ctxt.safe‹b‹state is
                  when safe‹b‹beh =>
                     runTransition(14);
                  when others =>
                     null;
               end case;
            when on‹aggregnexttohello‹d =>
               runTransition(CS_Only);
            when on‹hello‹wait_in_sub_hello =>
               runTransition(CS_Only);
            when on‹aggregnexttohello‹c =>
               runTransition(CS_Only);
            when safe‹a =>
               runTransition(CS_Only);
            when on‹aggregnexttohello =>
               -- this is a state aggregation
               null;
            when on‹hello =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end any_one;
      

   procedure any_two is
      begin
         case ctxt.state is
            when off =>
               runTransition(CS_Only);
            when safe‹b =>
               runTransition(CS_Only);
            when safe =>
               -- this is a state aggregation
               null;
            when on‹aggregnexttohello‹d =>
               runTransition(CS_Only);
            when on‹hello‹wait_in_sub_hello =>
               runTransition(CS_Only);
            when on‹aggregnexttohello‹c =>
               runTransition(CS_Only);
            when safe‹a =>
               runTransition(CS_Only);
            when on‹aggregnexttohello =>
               -- this is a state aggregation
               case ctxt.on‹aggregnexttohello‹c‹state is
                  when on‹aggregnexttohello‹c‹ceh =>
                     runTransition(9);
                  when others =>
                     null;
               end case;
            when on‹hello =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end any_two;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      --  !! stack: _call_external_function line 1271
      tmp17 : aliased T_UInt32;
      tmp16 : aliased T_UInt32;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  writeln('1') (225,13)
                  Put("1");
                  New_Line;
                  --  NEXT_STATE OFF (227,18) at 28, 215
                  trId := -1;
                  ctxt.state := OFF;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE Safe (236,22) at 262, 245
                  -- Entering state aggregation Safe
                  safe‹START;
                  ctxt.state := Safe;
                  trId := -1;
                  goto next_transition;
               when 2 =>
                  --  NEXT_STATE off (240,22) at 173, 245
                  trId := -1;
                  ctxt.state := off;
                  goto next_transition;
               when 3 =>
                  --  writeln('2') (247,17)
                  Put("2");
                  New_Line;
                  --  NEXT_STATE on (249,22) at 36, 371
                  --  COMMENT Enter substate via entry point (251,12)
                  trId := on‹START;
                  goto next_transition;
               when 4 =>
                  --  entry (None,None)
                  p‹on‹entry;
                  --  writeln('3') (122,21)
                  Put("3");
                  New_Line;
                  --  exit (None,None)
                  p‹on‹exit;
                  --  RETURN ret0 (None,None) at 1432, 107
                  trId := 1;
                  goto next_transition;
               when 5 =>
                  --  entry (None,None)
                  p‹on‹entry;
                  --  writeln('7') (128,21)
                  Put("7");
                  New_Line;
                  --  JOIN on‹inside_label (None,None) at None, None
                  goto on‹inside_label;
               when 6 =>
                  --  writeln('27 == ', result) (172,25)
                  Put("27 == ");
                  Put(T_UInt32'Image(ctxt.on‹result));
                  New_Line;
                  --  myresult := 88 (174,25)
                  ctxt.on‹myresult := 88;
                  --  result := 33 (175,0)
                  ctxt.on‹result := 33;
                  --  JOIN on‹to_label (177,25) at 413, 229
                  goto on‹to_label;
               when 7 =>
                  --  entry (None,None)
                  p‹on‹hello‹entry;
                  --  NEXT_STATE on‹hello‹wait_in_sub_hello (23,34) at 312, 183
                  trId := -1;
                  ctxt.state := on‹hello‹wait_in_sub_hello;
                  goto next_transition;
               when 8 =>
                  --  NEXT_STATE on‹aggregnexttohello‹c‹CEH (35,42) at 0, 50
                  trId := -1;
                  ctxt.on‹aggregnexttohello‹c‹state := on‹aggregnexttohello‹c‹CEH;
                  goto next_transition;
               when 9 =>
                  --  NEXT_STATE on‹aggregnexttohello‹c‹ceh (41,46) at 107, 105
                  trId := -1;
                  ctxt.on‹aggregnexttohello‹c‹state := on‹aggregnexttohello‹c‹ceh;
                  goto next_transition;
               when 10 =>
                  --  NEXT_STATE on‹aggregnexttohello‹d‹DEH (49,42) at 80, 50
                  trId := -1;
                  ctxt.on‹aggregnexttohello‹d‹state := on‹aggregnexttohello‹d‹DEH;
                  goto next_transition;
               when 11 =>
                  --  NEXT_STATE safe‹a‹HA (187,34) at 154, 50
                  trId := -1;
                  ctxt.safe‹a‹state := safe‹a‹HA;
                  goto next_transition;
               when 12 =>
                  --  NEXT_STATE - (193,38) at 6, 105
                  trId := -1;
                  goto next_transition;
               when 13 =>
                  --  NEXT_STATE safe‹b‹BEH (201,34) at 139, 50
                  trId := -1;
                  ctxt.safe‹b‹state := safe‹b‹BEH;
                  goto next_transition;
               when 14 =>
                  --  NEXT_STATE safe‹b‹beh (207,38) at 9, 105
                  trId := -1;
                  ctxt.safe‹b‹state := safe‹b‹beh;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            goto next_transition;
            --  CONNECTION on‹to_label (147,23)
            <<on‹to_label>>
            --  JOIN on‹another_floating (149,21) at 377, 374
            goto on‹another_floating;
            --  CONNECTION on‹another_floating (153,23)
            <<on‹another_floating>>
            --  writeln('9') (155,21)
            Put("9");
            New_Line;
            --  myresult := 1 (157,21)
            ctxt.on‹myresult := 1;
            --  inner_proc(myresult) (159,21)
            p‹on‹inner_proc(ctxt.on‹myresult);
            --  exit (None,None)
            p‹on‹exit;
            --  RETURN  (None,None) at 782, 672
            trId := 2;
            goto next_transition;
            --  CONNECTION on‹nslabel (143,16)
            <<on‹nslabel>>
            --  NEXT_STATE on‹AggregNextToHello (145,26) at 1110, 416
            -- Entering state aggregation on‹AggregNextToHello
            on¸aggregnexttohello‹START;
            ctxt.state := on‹AggregNextToHello;
            trId := -1;
            goto next_transition;
            --  CONNECTION on‹inside_label (130,16)
            <<on‹inside_label>>
            --  pow(3,3, result) (132,21)
            tmp16 := T_UInt32(3);
            tmp17 := T_UInt32(3);
            RI‹pow(tmp16'Access, tmp17'Access, ctxt.on‹result'Access);
            --  DECISION result (-1,-1)
            --  ANSWER myresult (136,25)
            if (ctxt.on‹result) = ctxt.on‹myresult then
               null;
               --  ANSWER ELSE (None,None)
            else
               --  myresult := 5 (140,33)
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