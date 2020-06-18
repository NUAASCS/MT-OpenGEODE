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
      test : aliased Some_Thing := 4;
      hihi : aliased Type2;
      haha : aliased SeqOf;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   procedure p�aProc;
   procedure p�haha;
   procedure p�default_seqof;
   procedure p�enum1;
   procedure p�aProc is
      tmp : aliased Some_Thing := 1;
      tmp9 : aliased Some_Thing;
      --  !! stack: _call_external_function line 1271
      begin
         --  we(test) (44,27)
         RI�we(ctxt.test'Access);
         --  we(tmp) (46,27)
         --  COMMENT check that local variables can be sent (48,20)
         tmp9 := Some_Thing(tmp);
         RI�we(tmp9'Access);
         --  RETURN  (None,None) at 181, 263
         return;
      end p�aProc;
      

   procedure p�haha is
      begin
         null;  --  Empty procedure
      end p�haha;
      

   procedure p�default_seqof is
      begin
         null;  --  Empty procedure
      end p�default_seqof;
      

   procedure p�enum1 is
      begin
         null;  --  Empty procedure
      end p�enum1;
      

   procedure dd(dd_param: access Type2) is
      begin
         case ctxt.state is
            when wait =>
               ctxt.hihi := dd_param.all;
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
                  --  NEXT_STATE wait (70,26) at 155, 266
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 1 =>
                  --  hehe(hihi) (76,25)
                  RI�hehe(ctxt.hihi'Access);
                  --  we(test) (78,27)
                  RI�we(ctxt.test'Access);
                  --  haha (80,25)
                  p�haha;
                  --  default_seqof (82,25)
                  p�default_seqof;
                  --  enum1 (84,25)
                  p�enum1;
                  --  NEXT_STATE wait (86,30) at 296, 586
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