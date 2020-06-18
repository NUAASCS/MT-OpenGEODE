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
   type States is (timer_run, wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      s : aliased Signed_Int := 10;
      us : aliased Unsigned_Int := 100;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 3;
   procedure runTransition(Id: Integer);
   procedure blah is
      begin
         case ctxt.state is
            when timer_run =>
               runTransition(CS_Only);
            when wait =>
               runTransition(2);
            when others =>
               runTransition(CS_Only);
         end case;
      end blah;
      

   procedure toto is
      begin
         case ctxt.state is
            when timer_run =>
               runTransition(1);
            when wait =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end toto;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp4 : aliased T_UInt32;
      tmp13 : aliased T_UInt32;
      tmp9 : aliased T_UInt32;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE wait (27,26) at 524, 194
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE wait (33,30) at 648, 580
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 2 =>
                  --  set_timer (100, toto) (40,25)
                  tmp4 := 100;
                  SET_toto(tmp4'access);
                  --  set_timer (-100, toto) (42,25)
                  tmp9 := (-100);
                  SET_toto(tmp9'access);
                  --  set_timer(us, toto) (44,25)
                  tmp13 := ctxt.us;
                  SET_toto(tmp13'access);
                  --  NEXT_STATE timer_run (46,30) at 518, 469
                  trId := -1;
                  ctxt.state := timer_run;
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