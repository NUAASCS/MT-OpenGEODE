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

package body car is
   type States is (nominal�battery, nominal�battery�discharge, backup);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      nominal�battery�charge : aliased MyInteger := 100;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 8;
   nominal�START : constant := 2;
   nominal�battery�START : constant := 4;
   procedure runTransition(Id: Integer);
   procedure dd(dd_param: access MyInteger) is
      begin
         case ctxt.state is
            when nominal�battery =>
               runTransition(CS_Only);
            when nominal�battery�discharge =>
               ctxt.nominal�battery�charge := dd_param.all;
               runTransition(5);
            when backup =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end dd;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      msgPending : aliased Asn1Boolean := True;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE nominal (77,26) at 140, 266
                  trId := nominal�START;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE backup (83,30) at 424, 585
                  trId := -1;
                  ctxt.state := backup;
                  goto next_transition;
               when 2 =>
                  --  NEXT_STATE nominal�battery (65,34) at 307, 364
                  trId := nominal�battery�START;
                  goto next_transition;
               when 3 =>
                  --  RETURN battery_discharged (None,None) at 595, 615
                  trId := 1;
                  goto next_transition;
               when 4 =>
                  --  NEXT_STATE nominal�battery�discharge (39,42) at 152, 197
                  trId := -1;
                  ctxt.state := nominal�battery�discharge;
                  goto next_transition;
               when 5 =>
                  --  charge := (charge + 1) mod 255 (45,41)
                  ctxt.nominal�battery�charge := Asn1UInt(((ctxt.nominal�battery�charge + 1) mod 255));
                  --  NEXT_STATE - (47,46) at 234, 352
                  trId := -1;
                  goto next_transition;
               when 6 =>
                  --  charge := 5 (51,41)
                  ctxt.nominal�battery�charge := 5;
                  --  RETURN battery_discharged (None,None) at 30, 352
                  trId := 3;
                  goto next_transition;
               when 7 =>
                  --  charge := 0 (57,41)
                  ctxt.nominal�battery�charge := 0;
                  --  NEXT_STATE - (59,46) at 406, 352
                  trId := -1;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            <<next_transition>>
            --  Process continuous signals
            if ctxt.initDone then
               Check_Queue(msgPending'access);
            end if;
            if not msgPending and trId = -1 and ctxt.state = nominal�battery�discharge then
               -- Priority 1
               --  DECISION charge = 0 (49,48)
               --  ANSWER true (None,None)
               if ((ctxt.nominal�battery�charge = 0)) = true then
                  trId := 6;
                  -- Priority 1
                  --  DECISION charge > 5 (55,48)
                  --  ANSWER true (None,None)
               elsif ((ctxt.nominal�battery�charge > 5)) = true then
                  trId := 7;
               end if;
            end if;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end car;