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
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      s3 : aliased MySeqOf3;
      s2 : aliased MySeqOf2;
      s1 : aliased MySeqOf;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 4;
   procedure runTransition(Id: Integer);
   procedure seqof1(seqof1_param: access MySeqOf) is
      begin
         case ctxt.state is
            when wait =>
               ctxt.s1 := seqof1_param.all;
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end seqof1;
      

   procedure seqof2(seqof2_param: access MySeqOf2) is
      begin
         case ctxt.state is
            when wait =>
               ctxt.s2 := seqof2_param.all;
               runTransition(2);
            when others =>
               runTransition(CS_Only);
         end case;
      end seqof2;
      

   procedure seqof3(seqof3_param: access MySeqOf3) is
      begin
         case ctxt.state is
            when wait =>
               ctxt.s3 := seqof3_param.all;
               runTransition(3);
            when others =>
               runTransition(CS_Only);
         end case;
      end seqof3;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE wait (40,26) at 198, 106
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 1 =>
                  --  res1(s1) (46,27)
                  RIÜres1(ctxt.s1'Access);
                  --  NEXT_STATE - (48,30) at 5, 267
                  trId := -1;
                  goto next_transition;
               when 2 =>
                  --  res2(s2) (52,27)
                  RIÜres2(ctxt.s2'Access);
                  --  NEXT_STATE wait (54,30) at 171, 264
                  trId := -1;
                  ctxt.state := wait;
                  goto next_transition;
               when 3 =>
                  --  res3(s3) (58,27)
                  RIÜres3(ctxt.s3'Access);
                  --  NEXT_STATE wait (60,30) at 337, 264
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
end test;