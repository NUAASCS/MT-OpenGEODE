-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package trafficlight is
   --  Provided interface "pedestrianRequest"
   procedure pedestrianRequest(buttonpress: access T_Boolean);
   pragma Export(C, pedestrianrequest, "trafficlight_PI_pedestrianrequest");
   --  Provided interface "onOff"
   procedure onOff(color: access Light);
   pragma Export(C, onoff, "trafficlight_PI_onoff");
   --  Provided interface "timeout"
   procedure timeout;
   pragma Export(C, timeout, "trafficlight_PI_timeout");
   --  Required interface "SetTrafficLightColor"
   procedure RIÜSetTrafficLightColor(trafficlight_state: access Light);
   pragma import(C, RIÜSetTrafficLightColor, "trafficlight_RI_SetTrafficLightColor");
   --  Required interface "SetPedestrianColor"
   procedure RIÜSetPedestrianColor(pedlight: access Light);
   pragma import(C, RIÜSetPedestrianColor, "trafficlight_RI_SetPedestrianColor");
   --  Timer timeout SET and RESET functions
   procedure SET_timeout(val: access T_UInt32);
   pragma import(C, SET_timeout, "trafficlight_RI_set_timeout");
   procedure RESET_timeout;
   pragma import(C, RESET_timeout, "trafficlight_RI_reset_timeout");
end trafficlight;