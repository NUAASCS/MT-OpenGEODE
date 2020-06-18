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
   type States is (nominalÜbattery, nominalÜbatteryÜdischarge, backup);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      nominalÜbatteryÜcharge : aliased MyInteger := 100;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 8;
   nominalÜSTART : constant := 2;
   nominalÜbatteryÜSTART : constant := 4;
   procedure runTransition(Id: Integer);
   procedure dd(dd_param: access MyInteger) is
      begin
         case ctxt.state is
            when nominalÜbattery =>
               runTransition(CS_Only);
            when nominalÜbatteryÜdischarge =>
               ctxt.nominalÜbatteryÜcharge := dd_param.all;
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
                  trId := nominalÜSTART;
                  goto next_transition;
               when 1 =>
                  --  NEXT_STATE backup (83,30) at 424, 585
                  trId := -1;
                  ctxt.state := backup;
                  goto next_transition;
               when 2 =>
                  --  NEXT_STATE nominalÜbattery (65,34) at 307, 364
                  trId := nominalübatteryÜSTART;
                  goto next_transition;
               when 3 =>
                  --  RETURN battery_discharged (None,None) at 595, 615
                  trId := 1;
                  goto next_transition;
               when 4 =>
                  --  NEXT_STATE nominalÜbatteryÜdischarge (39,42) at 152, 197
                  trId := -1;
                  ctxt.state := nominalÜbatteryÜdischarge;
                  goto next_transition;
               when 5 =>
                  --  charge := (charge + 1) mod 255 (45,41)
                  ctxt.nominalÜbatteryÜcharge := Asn1UInt(((ctxt.nominalÜbatteryÜcharge + 1) mod 255));
                  --  NEXT_STATE - (47,46) at 234, 352
                  trId := -1;
                  goto next_transition;
               when 6 =>
                  --  charge := 5 (51,41)
                  ctxt.nominalÜbatteryÜcharge := 5;
                  --  RETURN battery_discharged (None,None) at 30, 352
                  trId := 3;
                  goto next_transition;
               when 7 =>
                  --  charge := 0 (57,41)
                  ctxt.nominalÜbatteryÜcharge := 0;
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
            if not msgPending and trId = -1 and ctxt.state = nominalÜbatteryÜdischarge then
               -- Priority 1
               --  DECISION charge = 0 (49,48)
               --  ANSWER true (None,None)
               if ((ctxt.nominalÜbatteryÜcharge = 0)) = true then
                  trId := 6;
                  -- Priority 1
                  --  DECISION charge > 5 (55,48)
                  --  ANSWER true (None,None)
               elsif ((ctxt.nominalÜbatteryÜcharge > 5)) = true then
                  trId := 7;
               end if;
            end if;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end car;