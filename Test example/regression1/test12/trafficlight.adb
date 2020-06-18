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
   type States is (onÜstreetattention, onÜstreetprepare, onÜpedwaiting, onÜpedestriangreen, onÜstreetred, onÜpedestrianred, onÜpedwaitingÜwaitonÜwait_counter, onÜstreetgreen, maintenanceÜyellowoff, onÜpedwaitingÜwaiton, off, maintenanceÜyellowonÜidle, maintenanceÜyellowon, maintenanceÜyellowoffÜidle);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      onÜpedwaitingÜcounter : aliased asn1SccT_UInt8 := 0;
      init_state : aliased asn1SccLight;
      onÜpedwaitingÜcolor : aliased asn1SccLight;
      request : aliased asn1SccT_Boolean;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 18;
   onÜpedwaitingÜSTART : constant := 10;
   maintenanceÜyellowonÜSTART : constant := 17;
   maintenanceÜyellowoffÜSTART : constant := 16;
   onÜpedwaitingÜwaitonÜSTART : constant := 12;
   maintenanceÜSTART : constant := 13;
   onÜSTART : constant := 2;
   procedure runTransition(Id: Integer);
   procedure pÜonÜpedwaitingÜwaitonÜexit;
   procedure pÜonÜpedwaitingÜwaitonÜentry;
   procedure pÜonÜpedwaitingÜentry;
   procedure pÜmaintenanceÜyellowoffÜentry;
   procedure pÜmaintenanceÜyellowonÜentry;
   procedure pÜonÜpedwaitingÜwaitonÜexit is
      begin
         --  counter := (counter + 1) mod 255 (15,41)
         ctxt.onÜpedwaitingÜcounter := Asn1UInt(((ctxt.onÜpedwaitingÜcounter + 1) mod 255));
         --  RETURN  (None,None) at 297, 259
         return;
      end pÜonÜpedwaitingÜwaitonÜexit;
      

   procedure pÜonÜpedwaitingÜwaitonÜentry is
      tmp9 : aliased asn1SccT_UInt32;
      begin
         --  set_timer(500, timeout) (24,41)
         tmp9 := 500;
         SET_timeout(tmp9'access);
         --  RETURN  (None,None) at 202, 147
         return;
      end pÜonÜpedwaitingÜwaitonÜentry;
      

   procedure pÜonÜpedwaitingÜentry is
      begin
         --  writeln('Pedestrian request') (46,33)
         Put("Pedestrian request");
         New_Line;
         --  counter := 0 (48,33)
         ctxt.onÜpedwaitingÜcounter := 0;
         --  RETURN  (None,None) at 400, 263
         return;
      end pÜonÜpedwaitingÜentry;
      

   procedure pÜmaintenanceÜyellowoffÜentry is
      tmp71 : aliased asn1SccLight;
      --  !! stack: _call_external_function line 1271
      tmp68 : aliased asn1SccT_UInt32;
      begin
         --  set_timer(500, timeout) (167,33)
         tmp68 := 500;
         SET_timeout(tmp68'access);
         --  SetTrafficLightColor(all_off) (169,35)
         tmp71 := asn1Sccall_off;
         RIÜSetTrafficLightColor(tmp71'Access);
         --  RETURN  (None,None) at 197, 185
         return;
      end pÜmaintenanceÜyellowoffÜentry;
      

   procedure pÜmaintenanceÜyellowonÜentry is
      --  !! stack: _call_external_function line 1271
      tmp77 : aliased asn1SccLight;
      tmp74 : aliased asn1SccT_UInt32;
      begin
         --  set_timer(500, timeout) (188,33)
         tmp74 := 500;
         SET_timeout(tmp74'access);
         --  SetTrafficLightColor(yellow) (190,35)
         tmp77 := asn1Sccyellow;
         RIÜSetTrafficLightColor(tmp77'Access);
         --  RETURN  (None,None) at 309, 274
         return;
      end pÜmaintenanceÜyellowonÜentry;
      

   procedure pedestrianRequest(buttonpress: access asn1SccT_Boolean) is
      begin
         case ctxt.state is
            when onÜstreetattention =>
               runTransition(CS_Only);
            when onÜstreetprepare =>
               runTransition(CS_Only);
            when onÜpedwaiting =>
               runTransition(CS_Only);
            when onÜpedestriangreen =>
               runTransition(CS_Only);
            when onÜstreetred =>
               runTransition(CS_Only);
            when onÜpedestrianred =>
               runTransition(CS_Only);
            when onÜpedwaitingÜwaitonÜwait_counter =>
               runTransition(CS_Only);
            when onÜstreetgreen =>
               ctxt.request := buttonpress.all;
               runTransition(9);
            when maintenanceÜyellowoff =>
               runTransition(CS_Only);
            when onÜpedwaitingÜwaiton =>
               runTransition(CS_Only);
            when off =>
               runTransition(CS_Only);
            when maintenanceÜyellowonÜidle =>
               runTransition(CS_Only);
            when maintenanceÜyellowon =>
               runTransition(CS_Only);
            when maintenanceÜyellowoffÜidle =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end pedestrianRequest;
      

   procedure onOff(color: access asn1SccLight) is
      begin
         case ctxt.state is
            when onÜstreetattention =>
               ctxt.init_state := color.all;
               runTransition(1);
            when onÜstreetprepare =>
               ctxt.init_state := color.all;
               runTransition(1);
            when onÜpedwaiting =>
               ctxt.init_state := color.all;
               runTransition(1);
            when onÜpedestriangreen =>
               ctxt.init_state := color.all;
               runTransition(1);
            when onÜstreetred =>
               ctxt.init_state := color.all;
               runTransition(1);
            when onÜpedestrianred =>
               ctxt.init_state := color.all;
               runTransition(1);
            when onÜpedwaitingÜwaitonÜwait_counter =>
               ctxt.init_state := color.all;
               runTransition(1);
            when onÜstreetgreen =>
               ctxt.init_state := color.all;
               runTransition(1);
            when maintenanceÜyellowoff =>
               ctxt.init_state := color.all;
               runTransition(1);
            when onÜpedwaitingÜwaiton =>
               ctxt.init_state := color.all;
               runTransition(1);
            when off =>
               ctxt.init_state := color.all;
               runTransition(1);
            when maintenanceÜyellowonÜidle =>
               ctxt.init_state := color.all;
               runTransition(1);
            when maintenanceÜyellowon =>
               ctxt.init_state := color.all;
               runTransition(1);
            when maintenanceÜyellowoffÜidle =>
               ctxt.init_state := color.all;
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end onOff;
      

   procedure timeout is
      begin
         case ctxt.state is
            when onÜstreetattention =>
               runTransition(7);
            when onÜstreetprepare =>
               runTransition(3);
            when onÜpedwaiting =>
               runTransition(CS_Only);
            when onÜpedestriangreen =>
               runTransition(5);
            when onÜstreetred =>
               runTransition(6);
            when onÜpedestrianred =>
               runTransition(4);
            when onÜpedwaitingÜwaitonÜwait_counter =>
               pÜonÜpedwaitingÜwaitonÜexit;
               runTransition(11);
            when onÜstreetgreen =>
               runTransition(CS_Only);
            when maintenanceÜyellowoff =>
               runTransition(14);
            when onÜpedwaitingÜwaiton =>
               pÜonÜpedwaitingÜwaitonÜexit;
               runTransition(11);
            when off =>
               runTransition(CS_Only);
            when maintenanceÜyellowonÜidle =>
               runTransition(15);
            when maintenanceÜyellowon =>
               runTransition(15);
            when maintenanceÜyellowoffÜidle =>
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
                     RIÜSetPedestrianColor(tmp84'Access);
                     --  SetTrafficLightColor(green) (246,31)
                     tmp86 := asn1Sccgreen;
                     RIÜSetTrafficLightColor(tmp86'Access);
                     --  NEXT_STATE on (248,34) at 381, 390
                     trId := onÜSTART;
                     goto next_transition;
                     --  ANSWER ELSE (None,None)
                  else
                     --  NEXT_STATE Maintenance (252,34) at 529, 290
                     trId := maintenanceÜSTART;
                     goto next_transition;
                  end if;
               when 2 =>
                  --  NEXT_STATE onÜStreetGreen (82,26) at 698, 200
                  trId := -1;
                  ctxt.state := onÜStreetGreen;
                  goto next_transition;
               when 3 =>
                  --  SetTrafficLightColor(green) (88,27)
                  tmp33 := asn1Sccgreen;
                  RIÜSetTrafficLightColor(tmp33'Access);
                  --  NEXT_STATE onÜStreetGreen (90,30) at 1013, 747
                  trId := -1;
                  ctxt.state := onÜStreetGreen;
                  goto next_transition;
               when 4 =>
                  --  set_timer(2000, timeout) (97,25)
                  tmp36 := 2000;
                  SET_timeout(tmp36'access);
                  --  SetTrafficLightColor(yellow) (99,27)
                  tmp39 := asn1Sccyellow;
                  RIÜSetTrafficLightColor(tmp39'Access);
                  --  NEXT_STATE onÜStreetPrepare (101,30) at 1013, 592
                  trId := -1;
                  ctxt.state := onÜStreetPrepare;
                  goto next_transition;
               when 5 =>
                  --  set_timer(5000, timeout) (108,25)
                  tmp42 := 5000;
                  SET_timeout(tmp42'access);
                  --  SetPedestrianColor(red) (110,27)
                  tmp45 := asn1Sccred;
                  RIÜSetPedestrianColor(tmp45'Access);
                  --  NEXT_STATE onÜPedestrianRed (112,30) at 1013, 387
                  trId := -1;
                  ctxt.state := onÜPedestrianRed;
                  goto next_transition;
               when 6 =>
                  --  set_timer(7000, timeout) (119,25)
                  tmp48 := 7000;
                  SET_timeout(tmp48'access);
                  --  SetPedestrianColor(green) (121,27)
                  tmp51 := asn1Sccgreen;
                  RIÜSetPedestrianColor(tmp51'Access);
                  --  NEXT_STATE onÜPedestrianGreen (123,30) at 685, 978
                  trId := -1;
                  ctxt.state := onÜPedestrianGreen;
                  goto next_transition;
               when 7 =>
                  --  set_timer(2000, timeout) (130,25)
                  tmp54 := 2000;
                  SET_timeout(tmp54'access);
                  --  SetTrafficLightColor(red) (132,27)
                  tmp57 := asn1Sccred;
                  RIÜSetTrafficLightColor(tmp57'Access);
                  --  NEXT_STATE onÜStreetRed (134,30) at 704, 773
                  trId := -1;
                  ctxt.state := onÜStreetRed;
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
                  RIÜSetTrafficLightColor(tmp65'Access);
                  --  NEXT_STATE onÜStreetAttention (147,30) at 679, 568
                  trId := -1;
                  ctxt.state := onÜStreetAttention;
                  goto next_transition;
               when 9 =>
                  --  NEXT_STATE onÜPedWaiting (155,30) at 702, 313
                  trId := onüpedwaitingÜSTART;
                  goto next_transition;
               when 10 =>
                  --  entry (None,None)
                  pÜonÜpedwaitingÜentry;
                  --  NEXT_STATE onÜpedwaitingÜwaitOn (55,34) at 348, 180
                  trId := onüpedwaitingüwaitonÜSTART;
                  goto next_transition;
               when 11 =>
                  --  DECISION counter (-1,-1)
                  --  ANSWER 14 (63,37)
                  if (ctxt.onÜpedwaitingÜcounter) = 14 then
                     --  writeln('Leaving PedWaiting') (65,45)
                     Put("Leaving PedWaiting");
                     New_Line;
                     --  RETURN counter_expired (None,None) at 178, 443
                     trId := 8;
                     goto next_transition;
                     --  ANSWER ELSE (None,None)
                  else
                     --  color := if counter mod 2 = 0 then red else all_off fi (71,45)
                     if ((ctxt.onÜpedwaitingÜcounter mod 2) = 0) then
                        tmp22 := asn1Sccred;
                     else
                        tmp22 := asn1Sccall_off;
                     end if;
                     ctxt.onÜpedwaitingÜcolor := tmp22;
                     --  SetPedestrianColor(color) (73,47)
                     RIÜSetPedestrianColor(ctxt.onÜpedwaitingÜcolor'Access);
                     --  NEXT_STATE - (75,50) at 465, 493
                     case ctxt.state is
                        when onÜpedwaitingÜwaitonÜwait_counter|onÜpedwaitingÜwaiton =>
                           trId := onÜpedwaitingÜwaitonÜSTART;
                        when others =>
                           trId := -1;
                     end case;
                     goto next_transition;
                  end if;
               when 12 =>
                  --  entry (None,None)
                  pÜonÜpedwaitingÜwaitonÜentry;
                  --  NEXT_STATE onÜpedwaitingÜwaitonÜwait_counter (31,42) at 347, 106
                  trId := -1;
                  ctxt.state := onÜpedwaitingÜwaitonÜwait_counter;
                  goto next_transition;
               when 13 =>
                  --  writeln('Entering Maintenance') (205,21)
                  Put("Entering Maintenance");
                  New_Line;
                  --  NEXT_STATE maintenanceÜYellowOn (207,26) at 740, 354
                  trId := maintenanceüyellowonÜSTART;
                  goto next_transition;
               when 14 =>
                  --  NEXT_STATE maintenanceÜYellowOn (213,30) at 736, 564
                  trId := maintenanceüyellowonÜSTART;
                  goto next_transition;
               when 15 =>
                  --  NEXT_STATE maintenanceÜYellowOff (220,30) at 738, 459
                  trId := maintenanceüyellowoffÜSTART;
                  goto next_transition;
               when 16 =>
                  --  entry (None,None)
                  pÜmaintenanceÜyellowoffÜentry;
                  --  NEXT_STATE maintenanceÜyellowoffÜidle (176,34) at 348, 487
                  trId := -1;
                  ctxt.state := maintenanceÜyellowoffÜidle;
                  goto next_transition;
               when 17 =>
                  --  entry (None,None)
                  pÜmaintenanceÜyellowonÜentry;
                  --  NEXT_STATE maintenanceÜyellowonÜidle (197,34) at 489, 381
                  trId := -1;
                  ctxt.state := maintenanceÜyellowonÜidle;
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