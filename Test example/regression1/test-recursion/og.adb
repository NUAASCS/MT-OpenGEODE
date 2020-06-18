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
      res : aliased asn1SccPath;
      my_tree : aliased asn1SccTree;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 1;
   procedure runTransition(Id: Integer);
   function pÜfindpath(startnode: in asn1SccLetter;endnode: in asn1SccLetter) return asn1SccPath;
   function pÜfindpath(startnode: in asn1SccLetter;endnode: in asn1SccLetter) return asn1SccPath is
      best_path : aliased asn1SccPath := asn1SccPath'( cost => 0,  elem => asn1SccPath_elem_Init);
      elem : aliased asn1SccPath_elem := asn1SccPath_elem_Init;
      result : aliased asn1SccPath := asn1SccPath'( cost => 0,  elem => asn1SccPath_elem_Init);
      function num_asn1SccLetter is new Ada.Unchecked_Conversion(asn1SccLetter, Asn1UInt);
      begin
         --  best_path.cost := 100 (44,25)
         best_path.cost := 100;
         --  DECISION startnode = endnode (46,39)
         --  ANSWER true (48,25)
         if ((startnode = endnode)) = true then
            --  best_path.cost :=0 (50,33)
            best_path.cost := 0;
            --  ANSWER false (52,25)
         elsif ((startnode = endnode)) = false then
            --  DECISION length(my_tree(num(startnode)))
            --  = 0 (55,0)
            --  ANSWER true (57,33)
            if ((Asn1UInt(ctxt.my_tree.Data(1 + Integer(num_asn1SccLetter(startnode))).Length) = 0)) = true then
               null;
               --  ANSWER false (59,33)
            elsif ((Asn1UInt(ctxt.my_tree.Data(1 + Integer(num_asn1SccLetter(startnode))).Length) = 0)) = false then
               --  TASK for each in my_tree(num(startnode)):
               --      result := findpath(each.son, endnode)
               --      elem := result.elem
               --      result.cost := result.cost + each.cost
               --      elem := { each.son } // elem
               --      result.elem := elem
               --      best_path := if result.cost < best_path.cost then result else best_path fi
               --  endfor (61,41)
               declare
                  each : asn1SccTree_Elem;
               begin
                  for each_idx in 1 .. ctxt.my_tree.Data(1 + Integer(num_asn1SccLetter(startnode))).Length loop
                     each := ctxt.my_tree.Data(1 + Integer(num_asn1SccLetter(startnode))).Data(1..ctxt.my_tree.Data(1 + Integer(num_asn1SccLetter(startnode))).Length)(each_idx);
                     declare
                        tmp136 : asn1SccPath;
                     begin
                        --  result := findpath(each.son, endnode) (62,4)
                        result := pÜfindpath(each.son, endnode);
                        --  elem := result.elem (63,4)
                        elem := result.elem;
                        --  result.cost := result.cost + each.cost (64,4)
                        result.cost := (result.cost + each.cost);
                        --  elem := { each.son } // elem (65,4)
                        elem.Data(1..1 + elem.Length) := ((1 => each.son) & elem.Data(1..elem.Length));
                        elem.Length := 1 + elem.Length;
                        --  result.elem := elem (66,4)
                        result.elem := elem;
                        --  best_path := if result.cost < best_path.cost then result else best_path fi (67,4)
                        if (result.cost < best_path.cost) then
                           tmp136 := result;
                        else
                           tmp136 := best_path;
                        end if;
                        best_path := tmp136;
                     end;
                  end loop;
               end;
            end if;
         end if;
         --  RETURN best_path (None,None) at 643, 546
         return best_path;
      end pÜfindpath;
      

   procedure dd(dd_param: access asn1SccTree) is
      begin
         case ctxt.state is
            when wait =>
               runTransition(CS_Only);
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
                  --  my_tree(Letter_a) := {{ cost 3, son b}, {cost 4, son c}} (77,21)
                  ctxt.my_tree.Data(1 + Integer(LetterInt_letter_a)) := (Data => (1 => asn1SccTree_Elem'( cost => 3,  son => asn1Sccb), 2 => asn1SccTree_Elem'( cost => 4,  son => asn1Sccc), others => asn1SccTree_Elem'( cost => 3,  son => asn1Sccb)), Length => 2);
                  --  my_tree(Letter_b) := {{cost 2, son d}} (78,0)
                  ctxt.my_tree.Data(1 + Integer(LetterInt_letter_b)) := (Data => (1 => asn1SccTree_Elem'( cost => 2,  son => asn1Sccd), others => asn1SccTree_Elem'( cost => 2,  son => asn1Sccd)), Length => 1);
                  --  my_tree(Letter_c) := {{ cost 1, son d}, {cost 1, son e}, {cost 6, son f}} (79,0)
                  ctxt.my_tree.Data(1 + Integer(LetterInt_letter_c)) := (Data => (1 => asn1SccTree_Elem'( cost => 1,  son => asn1Sccd), 2 => asn1SccTree_Elem'( cost => 1,  son => asn1Scce), 3 => asn1SccTree_Elem'( cost => 6,  son => asn1Sccf), others => asn1SccTree_Elem'( cost => 1,  son => asn1Sccd)), Length => 3);
                  --  my_tree(Letter_d) := {{cost 1, son h}} (80,0)
                  ctxt.my_tree.Data(1 + Integer(LetterInt_letter_d)) := (Data => (1 => asn1SccTree_Elem'( cost => 1,  son => asn1Scch), others => asn1SccTree_Elem'( cost => 1,  son => asn1Scch)), Length => 1);
                  --  my_tree(Letter_e) := {{cost 7, son h}} (81,0)
                  ctxt.my_tree.Data(1 + Integer(LetterInt_letter_e)) := (Data => (1 => asn1SccTree_Elem'( cost => 7,  son => asn1Scch), others => asn1SccTree_Elem'( cost => 7,  son => asn1Scch)), Length => 1);
                  --  my_tree(Letter_f) := {{cost 1, son g}} (82,0)
                  ctxt.my_tree.Data(1 + Integer(LetterInt_letter_f)) := (Data => (1 => asn1SccTree_Elem'( cost => 1,  son => asn1Sccg), others => asn1SccTree_Elem'( cost => 1,  son => asn1Sccg)), Length => 1);
                  --  my_tree(Letter_g) := {} (83,0)
                  ctxt.my_tree.Data(1 + Integer(LetterInt_letter_g)) := asn1SccSons_Init;
                  --  my_tree(Letter_h) := {{cost 5, son g}} (84,0)
                  ctxt.my_tree.Data(1 + Integer(LetterInt_letter_h)) := (Data => (1 => asn1SccTree_Elem'( cost => 5,  son => asn1Sccg), others => asn1SccTree_Elem'( cost => 5,  son => asn1Sccg)), Length => 1);
                  --  res := findpath(a, g) (86,21)
                  ctxt.res := pÜfindpath(asn1Scca, asn1Sccg);
                  --  writeln('best cost:', res.cost) (88,21)
                  Put("best cost:");
                  Put(asn1SccCost_ty'Image(ctxt.res.cost));
                  New_Line;
                  --  write('best path: [ ') (90,21)
                  Put("best path: [ ");
                  --  TASK for each in res.elem:
                  --      call write(each, ' ');
                  --  endfor (92,21)
                  declare
                     each : asn1SccLetter;
                  begin
                     for each_idx in 1 .. ctxt.res.elem.Length loop
                        each := ctxt.res.elem.Data(1..ctxt.res.elem.Length)(each_idx);
                        --  write(each, ' ') (93,9)
                        Put(asn1SccLetter'Image(each));
                        Put(" ");
                     end loop;
                  end;
                  --  writeln(']') (96,21)
                  Put("]");
                  New_Line;
                  --  NEXT_STATE wait (98,26) at 237, 713
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