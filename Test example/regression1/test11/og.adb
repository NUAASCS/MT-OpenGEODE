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
   type States is (toto, all_done‹bonjour, all_done‹bonjour‹dumb, all_done‹dumb);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      test : aliased asn1SccMyInteger := 3;
      all_done‹tmp : aliased asn1SccMy_OctStr;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 5;
   all_done‹START : constant := 2;
   all_done‹bonjour‹START : constant := 4;
   procedure runTransition(Id: Integer);
   procedure p‹all_done‹bonjour‹entry;
   procedure p‹all_done‹entry;
   procedure p‹all_done‹bonjour‹entry is
      begin
         --  writeln('bonjour entry') (12,33)
         Put("bonjour entry");
         New_Line;
         --  RETURN  (None,None) at 275, 213
         return;
      end p‹all_done‹bonjour‹entry;
      

   procedure p‹all_done‹entry is
      begin
         --  writeln('All done') (36,25)
         Put("All done");
         New_Line;
         --  RETURN  (None,None) at 188, 208
         return;
      end p‹all_done‹entry;
      

   procedure go(ze_param: access asn1SccMy_OctStr) is
      begin
         case ctxt.state is
            when toto =>
               runTransition(CS_Only);
            when all_done‹bonjour =>
               ctxt.all_done‹tmp := ze_param.all;
               runTransition(3);
            when all_done‹bonjour‹dumb =>
               ctxt.all_done‹tmp := ze_param.all;
               runTransition(3);
            when all_done‹dumb =>
               ctxt.all_done‹tmp := ze_param.all;
               runTransition(3);
            when others =>
               runTransition(CS_Only);
         end case;
      end go;
      

   procedure bye is
      begin
         case ctxt.state is
            when toto =>
               runTransition(1);
            when all_done‹bonjour =>
               runTransition(1);
            when all_done‹bonjour‹dumb =>
               runTransition(1);
            when all_done‹dumb =>
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end bye;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  JOIN again (None,None) at None, None
                  goto again;
               when 1 =>
                  --  writeln('Bye') (141,17)
                  Put("Bye");
                  New_Line;
                  --  NEXT_STATE - (143,22) at 954, 236
                  case ctxt.state is
                     when all_done‹bonjour|all_done‹bonjour‹dumb|all_done‹dumb =>
                        trId := all_done‹START;
                     when others =>
                        trId := -1;
                  end case;
                  goto next_transition;
               when 2 =>
                  --  entry (None,None)
                  p‹all_done‹entry;
                  --  NEXT_STATE all_done‹Bonjour (43,26) at 466, 194
                  trId := all_done¸bonjour‹START;
                  goto next_transition;
               when 3 =>
                  --  writeln('TEST') (52,25)
                  Put("TEST");
                  New_Line;
                  --  NEXT_STATE - (54,30) at 591, 348
                  case ctxt.state is
                     when all_done‹bonjour|all_done‹bonjour‹dumb =>
                        trId := all_done‹bonjour‹START;
                     when others =>
                        trId := -1;
                  end case;
                  goto next_transition;
               when 4 =>
                  --  entry (None,None)
                  p‹all_done‹bonjour‹entry;
                  --  NEXT_STATE all_done‹bonjour‹dumb (19,34) at 189, 102
                  trId := -1;
                  ctxt.state := all_done‹bonjour‹dumb;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            goto next_transition;
            --  CONNECTION and_again (83,20)
            <<and_again>>
            --  DECISION test (-1,-1)
            --  ANSWER =5 (87,29)
            if (ctxt.test) = 5 then
               --  DECISION test (-1,-1)
               --  ANSWER >=5 (91,41)
               if (ctxt.test) >= 5 then
                  --  writeln('6') (93,49)
                  Put("6");
                  New_Line;
                  --  ANSWER else (None,None)
               else
                  --  writeln('[ERROR]') (97,49)
                  Put("[ERROR]");
                  New_Line;
               end if;
               --  ANSWER /=5 (100,29)
            elsif (ctxt.test) /= 5 then
               --  writeln('5') (102,37)
               Put("5");
               New_Line;
               --  test := 5 (104,37)
               ctxt.test := 5;
               --  JOIN and_again (106,37) at 365, 601
               goto and_again;
            end if;
            --  writeln('end of test') (130,13)
            Put("end of test");
            New_Line;
            --  NEXT_STATE all_done (132,18) at 332, 739
            trId := all_done‹START;
            goto next_transition;
            --  CONNECTION again (65,8)
            <<again>>
            --  DECISION test (-1,-1)
            --  ANSWER 3 (69,17)
            if (ctxt.test) = 3 then
               --  writeln('1') (71,25)
               Put("1");
               New_Line;
               --  test := 5 (73,25)
               ctxt.test := 5;
               --  JOIN again (75,25) at 10, 343
               goto again;
               --  ANSWER >5 (77,17)
            elsif (ctxt.test) > 5 then
               --  writeln('4') (79,25)
               Put("4");
               New_Line;
               --  test := 7 (81,25)
               ctxt.test := 7;
               --  JOIN and_again (None,None) at None, None
               goto and_again;
               --  ANSWER 4:4 (109,17)
            elsif  ctxt.test >= 4 and ctxt.test <= 4 then
               --  writeln('3') (111,25)
               Put("3");
               New_Line;
               --  test := 6 (113,25)
               ctxt.test := 6;
               --  JOIN again (115,25) at 242, 343
               goto again;
               --  ANSWER =5 (117,17)
            elsif (ctxt.test) = 5 then
               --  writeln('2') (119,25)
               Put("2");
               New_Line;
               --  test := 4 (121,25)
               ctxt.test := 4;
               --  JOIN again (123,25) at 123, 343
               goto again;
               --  ANSWER else (None,None)
            else
               --  writeln('[ERROR]') (127,25)
               Put("[ERROR]");
               New_Line;
            end if;
            --  writeln('end of test') (130,13)
            Put("end of test");
            New_Line;
            --  NEXT_STATE all_done (132,18) at 332, 739
            trId := all_done‹START;
            goto next_transition;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end og;