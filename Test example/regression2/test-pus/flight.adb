-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with PUS_Implicit_Knowledge;
use PUS_Implicit_Knowledge;
with Distribute_CPDU_Commands_Generic;
use Distribute_CPDU_Commands_Generic;
with My_Project;
use My_Project;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body flight is
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      myapid : aliased APID := flight;
      mytc : aliased Telecommand;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   procedure telecommand(tcdata: access Telecommand) is
      begin
         case ctxt.state is
            when wait =>
               ctxt.mytc := tcdata.all;
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end telecommand;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      --  !! stack: _call_external_function line 1271
      tmp9 : aliased TC_2_4;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE Wait (10,18) at 389, 62
                  trId := -1;
                  ctxt.state := Wait;
                  goto next_transition;
               when 1 =>
                  --  DECISION present(mytc!packet_data) (-1,-1)
                  --  ANSWER tc2_4 (18,17)
                  if (ctxt.mytc.packet_data.Kind) = tc2_4_PRESENT then
                     --  Distribute_CPDU_Commands(mytc!packet_data!tc2_4) (20,27)
                     tmp9 := ctxt.mytc.packet_data.tc2_4;
                     RIÜDistribute_CPDU_Commands(tmp9'Access);
                     --  ANSWER else (None,None)
                  else
                     null;
                  end if;
                  --  NEXT_STATE wait (25,22) at 388, 336
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
end flight;