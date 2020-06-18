-- This file was generated automatically: DO NOT MODIFY IT !

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



package flight is
   --  Provided interface "telecommand"
   procedure telecommand(tcdata: access Telecommand);
   pragma Export(C, telecommand, "flight_PI_telecommand");
   --  Required interface "Distribute_CPDU_Commands"
   procedure RIÜDistribute_CPDU_Commands(instr: access TC_2_4);
   pragma import(C, RIÜDistribute_CPDU_Commands, "flight_RI_Distribute_CPDU_Commands");
end flight;