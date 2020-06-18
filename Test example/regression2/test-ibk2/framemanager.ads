-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;



package framemanager is
   --  Provided interface "ReceiveData"
   procedure ReceiveData(info: access MyInfo);
   pragma Export(C, receivedata, "framemanager_PI_receivedata");
   --  Provided interface "ReceiveFrame"
   procedure ReceiveFrame(frame: access MyFrame);
   pragma Export(C, receiveframe, "framemanager_PI_receiveframe");
   --  Required interface "SendFrame"
   procedure RI�SendFrame(frame: access MyFrame);
   pragma import(C, RI�SendFrame, "framemanager_RI_SendFrame");
   --  Required interface "SendData"
   procedure RI�SendData(info: access MyInfo);
   pragma import(C, RI�SendData, "framemanager_RI_SendData");
end framemanager;