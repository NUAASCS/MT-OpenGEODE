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

package body trafficlight is
   type States is (on�streetattention, on�streetprepare, on�pedwaiting, on�pedestriangreen, on�streetred, on�pedestrianred, on�pedwaiting�waiton�wait_counter, on�streetgreen, maintenance�yellowoff, on�pedwaiting�waiton, off, maintenance�yellowon�idle, maintenance�yellowon, maintenance�yellowoff�idle);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      on�pedwaiting�counter : aliased asn1SccT_UInt8 := 0;
      init_state : aliased asn1SccLight;
      on�pedwaiting�color : aliased asn1SccLight;
      request : aliased asn1SccT_Boolean;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 18;
   on�pedwaiting�START : constant := 10;
   maintenance�yellowon�START : constant := 17;
   maintenance�yellowoff�START : constant := 16;
   on�pedwaiting�waiton�START : constant := 12;
   maintenance�START : constant := 13;
   on�START : constant := 2;
   procedure runTransition(Id: Integer);
   procedure p�on�pedwaiting�waiton�exit;
   procedure p�on�pedwaiting�waiton�entry;
   procedure p�on�pedwaiting�entry;
   procedure p�maintenance�yellowoff�entry;
   procedure p�maintenance�yellowon�entry;
   procedure p�on�pedwaiting�waiton�exit is
      begin
         --  counter := (counter + 1) mod 255 (15,41)
         ctxt.on�pedwaiting�counter := Asn1UInt(((ctxt.on�pedwaiting�counter + 1) mod 255));
         --  RETURN  (None,None) at 297, 259
         return;
      end p�on�pedwaiting�waiton�exit;
      

   procedure p�on�pedwaiting�waiton�entry is
      tmp9 : aliased asn1SccT_UInt32;
      begin
         --  set_timer(500, timeout) (24,41)
         tmp9 := 500;
         SET_timeout(tmp9'access);
         --  RETURN  (None,None) at 202, 147
         return;
      end p�on�pedwaiting�waiton�entry;
      

   procedure p�on�pedwaiting�entry is
      begin
         --  writeln('Pedestrian request') (46,33)
         Put("Pedestrian request");
         New_Line;
         --  counter := 0 (48,33)
         ctxt.on�pedwaiting�counter := 0;
         --  RETURN  (None,None) at 400, 263
         return;
      end p�on�pedwaiting�entry;
      

   procedure p�maintenance�yellowoff�entry is
      tmp71 : aliased asn1SccLight;
      --  !! stack: _call_external_function line 1271
      tmp68 : aliased asn1SccT_UInt32;
      begin
         --  set_timer(500, timeout) (167,33)
         tmp68 := 500;
         SET_timeout(tmp68'access);
         --  SetTrafficLightColor(all_off) (169,35)
         tmp71 := asn1Sccall_off;
         RI�SetTrafficLightColor(tmp71'Access);
         --  RETURN  (None,None) at 197, 185
         return;
      end p�maintenance�yellowoff�entry;
      

   procedure p�maintenance�yellowon�entry is
      --  !! stack: _call_external_function line 1271
      tmp77 : aliased asn1SccLight;
      tmp74 : aliased asn1SccT_UInt32;
      begin
         --  set_timer(500, timeout) (188,33)
         tmp74 := 500;
         SET_timeout(tmp74'access);
         --  SetTrafficLightColor(yellow) (190,35)
         tmp77 := asn1Sccyellow;
         RI�SetTrafficLightColor(tmp77'Access);
         --  RETURN  (None,None) at 309, 274
         return;
      end p�maintenance�yellowon�entry;
      

   procedure pedestrianRequest(buttonpress: access asn1SccT_Boolean) is
      begin
         case ctxt.state is
            when on�streetattention =>
               runTransition(CS_Only);
            when on�streetprepare =>
               runTransition(CS_Only);
            when on�pedwaiting =>
               runTransition(CS_Only);
            when on�pedestriangreen =>
               runTransition(CS_Only);
            when on�streetred =>
               runTransition(CS_Only);
            when on�pedestrianred =>
               runTransition(CS_Only);
            when on�pedwaiting�waiton�wait_counter =>
               runTransition(CS_Only);
            when on�streetgreen =>
               ctxt.request := buttonpress.all;
               runTransition(9);
            when maintenance�yellowoff =>
               runTransition(CS_Only);
            when on�pedwaiting�waiton =>
               runTransition(CS_Only);
            when off =>
               runTransition(CS_Only);
            when maintenance�yellowon�idle =>
               runTransition(CS_Only);
            when maintenance�yellowon =>
               runTransition(CS_Only);
            when maintenance�yellowoff�idle =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end pedestrianRequest;
      

   procedure onOff(color: access asn1SccLight) is
      begin
         case ctxt.state is
            when on�streetattention =>
               ctxt.init_state := color.all;
               runTransition(1);
            when on�streetprepare =>
               ctxt.init_state := color.all;
               runTransition(1);
            when on�pedwaiting =>
               ctxt.init_state := color.all;
               runTransition(1);
            when on�pedestriangreen =>
               ctxt.init_state := color.all;
               runTransition(1);
            when on�streetred =>
               ctxt.init_state := color.all;
               runTransition(1);
            when on�pedestrianred =>
               ctxt.init_state := color.all;
               runTransition(1);
            when on�pedwaiting�waiton�wait_counter =>
               ctxt.init_state := color.all;
               runTransition(1);
            when on�streetgreen =>
               ctxt.init_state := color.all;
               runTransition(1);
            when maintenance�yellowoff =>
               ctxt.init_state := color.all;
               runTransition(1);
            when on�pedwaiting�waiton =>
               ctxt.init_state := color.all;
               runTransition(1);
            when off =>
               ctxt.init_state := color.all;
               runTransition(1);
            when maintenance�yellowon�idle =>
               ctxt.init_state := color.all;
               runTransition(1);
            when maintenance�yellowon =>
               ctxt.init_state := color.all;
               runTransition(1);
            when maintenance�yellowoff�idle =>
               ctxt.init_state := color.all;
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end onOff;
      

   procedure timeout is
      begin
         case ctxt.state is
            when on�streetattention =>
               runTransition(7);
            when on�streetprepare =>
               runTransition(3);
            when on�pedwaiting =>
               runTransition(CS_Only);
            when on�pedestriangreen =>
               runTransition(5);
            when on�streetred =>
               runTransition(6);
            when on�pedestrianred =>
               runTransition(4);
            when on�pedwaiting�waiton�wait_counter =>
               p�on�pedwaiting�waiton�exit;
               runTransition(11);
            when on�streetgreen =>
               runTransition(CS_Only);
            when maintenance�yellowoff =>
               runTransition(14);
            when on�pedwaiting�waiton =>
               p�on�pedwaiting�waiton�exit;
               runTransition(11);
            when off =>
               runTransition(CS_Only);
            when maintenance�yellowon�idle =>
               runTransition(15);
            when maintenance�yellowon =>
               runTransition(15);
            when maintenance�yellowoff�idle =>
               runTransition(14);
            when others =>
               runTransition(CS_Only);
         end case;
      end timeout;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp54 : aliased asn1SccT_UInt32;
      tmp22 : asn1SccLight;
      tmp36 : aliased asn1SccT_UInt32;
      tmp65 : aliased asn1SccLight;
      tmp57 : aliased asn1SccLight;
      tmp39 : aliased asn1SccLight;
      --  !! stack: _call_external_function line 1271
      tmp45 : aliased asn1SccLight;
      tmp86 : aliased asn1SccLight;
      tmp42 : aliased asn1SccT_UInt32;
      tmp48 : aliased asn1SccT_UInt32;
      tmp33 : aliased asn1SccLight;
      tmp51 : aliased asn1SccLight;
      tmp84 : aliased asn1SccLight;
      tmp62 : aliased asn1SccT_UInt32;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE Off (233,18) at 300, 100
                  trId := -1;
                  ctxt.state := Off;
                  goto next_transition;
               when 1 =>
                  --  DECISION init_state (-1,-1)
                  --  ANSWER green (242,21)
                  if (ctxt.init_state) = asn1Sccgreen then
                     --  SetPedestrianColor(red) (244,31)
                     tmp84 := asn1Sccred;
                     RI�SetPedestrianColor(tmp84'Access);
                     --  SetTrafficLightColor(green) (246,31)
                     tmp86 := asn1Sccgreen;
                     RI�SetTrafficLightColor(tmp86'Access);
                     --  NEXT_STATE on (248,34) at 381, 390
                     trId := on�START;
                     goto next_transition;
                     --  ANSWER ELSE (None,None)
                  else
                     --  NEXT_STATE Maintenance (252,34) at 529, 290
                     trId := maintenance�START;
                     goto next_transition;
                  end if;
               when 2 =>
                  --  NEXT_STATE on�StreetGreen (82,26) at 698, 200
                  trId := -1;
                  ctxt.state := on�StreetGreen;
                  goto next_transition;
               when 3 =>
                  --  SetTrafficLightColor(green) (88,27)
                  tmp33 := asn1Sccgreen;
                  RI�SetTrafficLightColor(tmp33'Access);
                  --  NEXT_STATE on�StreetGreen (90,30) at 1013, 747
                  trId := -1;
                  ctxt.state := on�StreetGreen;
                  goto next_transition;
               when 4 =>
                  --  set_timer(2000, timeout) (97,25)
                  tmp36 := 2000;
                  SET_timeout(tmp36'access);
                  --  SetTrafficLightColor(yellow) (99,27)
                  tmp39 := asn1Sccyellow;
                  RI�SetTrafficLightColor(tmp39'Access);
                  --  NEXT_STATE on�StreetPrepare (101,30) at 1013, 592
                  trId := -1;
                  ctxt.state := on�StreetPrepare;
                  goto next_transition;
               when 5 =>
                  --  set_timer(5000, timeout) (108,25)
                  tmp42 := 5000;
                  SET_timeout(tmp42'access);
                  --  SetPedestrianColor(red) (110,27)
                  tmp45 := asn1Sccred;
                  RI�SetPedestrianColor(tmp45'Access);
                  --  NEXT_STATE on�PedestrianRed (112,30) at 1013, 387
                  trId := -1;
                  ctxt.state := on�PedestrianRed;
                  goto next_transition;
               when 6 =>
                  --  set_timer(7000, timeout) (119,25)
                  tmp48 := 7000;
                  SET_timeout(tmp48'access);
                  --  SetPedestrianColor(green) (121,27)
                  tmp51 := asn1Sccgreen;
                  RI�SetPedestrianColor(tmp51'Access);
                  --  NEXT_STATE on�PedestrianGreen (123,30) at 685, 978
                  trId := -1;
                  ctxt.state := on�PedestrianGreen;
                  goto next_transition;
               when 7 =>
                  --  set_timer(2000, timeout) (130,25)
                  tmp54 := 2000;
                  SET_timeout(tmp54'access);
                  --  SetTrafficLightColor(red) (132,27)
                  tmp57 := asn1Sccred;
                  RI�SetTrafficLightColor(tmp57'Access);
                  --  NEXT_STATE on�StreetRed (134,30) at 704, 773
                  trId := -1;
                  ctxt.state := on�StreetRed;
                  goto next_transition;
               when 8 =>
                  --  writeln('counter_expired') (141,25)
                  Put("counter_expired");
                  New_Line;
                  --  set_timer(2000, timeout) (143,25)
                  tmp62 := 2000;
                  SET_timeout(tmp62'access);
                  --  SetTrafficLightColor(yellow) (145,27)
                  tmp65 := asn1Sccyellow;
                  RI�SetTrafficLightColor(tmp65'Access);
                  --  NEXT_STATE on�StreetAttention (147,30) at 679, 568
                  trId := -1;
                  ctxt.state := on�StreetAttention;
                  goto next_transition;
               when 9 =>
                  --  NEXT_STATE on�PedWaiting (155,30) at 702, 313
                  trId := on�pedwaiting�START;
                  goto next_transition;
               when 10 =>
                  --  entry (None,None)
                  p�on�pedwaiting�entry;
                  --  NEXT_STATE on�pedwaiting�waitOn (55,34) at 348, 180
                  trId := on�pedwaiting�waiton�START;
                  goto next_transition;
               when 11 =>
                  --  DECISION counter (-1,-1)
                  --  ANSWER 14 (63,37)
                  if (ctxt.on�pedwaiting�counter) = 14 then
                     --  writeln('Leaving PedWaiting') (65,45)
                     Put("Leaving PedWaiting");
                     New_Line;
                     --  RETURN counter_expired (None,None) at 178, 443
                     trId := 8;
                     goto next_transition;
                     --  ANSWER ELSE (None,None)
                  else
                     --  color := if counter mod 2 = 0 then red else all_off fi (71,45)
                     if ((ctxt.on�pedwaiting�counter mod 2) = 0) then
                        tmp22 := asn1Sccred;
                     else
                        tmp22 := asn1Sccall_off;
                     end if;
                     ctxt.on�pedwaiting�color := tmp22;
                     --  SetPedestrianColor(color) (73,47)
                     RI�SetPedestrianColor(ctxt.on�pedwaiting�color'Access);
                     --  NEXT_STATE - (75,50) at 465, 493
                     case ctxt.state is
                        when on�pedwaiting�waiton�wait_counter|on�pedwaiting�waiton =>
                           trId := on�pedwaiting�waiton�START;
                        when others =>
                           trId := -1;
                     end case;
                     goto next_transition;
                  end if;
               when 12 =>
                  --  entry (None,None)
                  p�on�pedwaiting�waiton�entry;
                  --  NEXT_STATE on�pedwaiting�waiton�wait_counter (31,42) at 347, 106
                  trId := -1;
                  ctxt.state := on�pedwaiting�waiton�wait_counter;
                  goto next_transition;
               when 13 =>
                  --  writeln('Entering Maintenance') (205,21)
                  Put("Entering Maintenance");
                  New_Line;
                  --  NEXT_STATE maintenance�YellowOn (207,26) at 740, 354
                  trId := maintenance�yellowon�START;
                  goto next_transition;
               when 14 =>
                  --  NEXT_STATE maintenance�YellowOn (213,30) at 736, 564
                  trId := maintenance�yellowon�START;
                  goto next_transition;
               when 15 =>
                  --  NEXT_STATE maintenance�YellowOff (220,30) at 738, 459
                  trId := maintenance�yellowoff�START;
                  goto next_transition;
               when 16 =>
                  --  entry (None,None)
                  p�maintenance�yellowoff�entry;
                  --  NEXT_STATE maintenance�yellowoff�idle (176,34) at 348, 487
                  trId := -1;
                  ctxt.state := maintenance�yellowoff�idle;
                  goto next_transition;
               when 17 =>
                  --  entry (None,None)
                  p�maintenance�yellowon�entry;
                  --  NEXT_STATE maintenance�yellowon�idle (197,34) at 489, 381
                  trId := -1;
                  ctxt.state := maintenance�yellowon�idle;
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
end trafficlight;