-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;



package packetmanager is
   --  Provided interface "ReceiveFrame"
   procedure ReceiveFrame(frame: access MyFrame);
   pragma Export(C, receiveframe, "packetmanager_PI_receiveframe");
   --  Provided interface "ReceivePacket"
   procedure ReceivePacket(packet: access MyPacket);
   pragma Export(C, receivepacket, "packetmanager_PI_receivepacket");
   --  Provided interface "ReceiveFrameCount"
   procedure ReceiveFrameCount(frameCount: access My8BitArrayValueInteger);
   pragma Export(C, receiveframecount, "packetmanager_PI_receiveframecount");
   --  Required interface "SendFrame"
   procedure RIÜSendFrame(frame: access MyFrame);
   pragma import(C, RIÜSendFrame, "packetmanager_RI_SendFrame");
   --  Required interface "SendPacket"
   procedure RIÜSendPacket(packet: access MyPacket);
   pragma import(C, RIÜSendPacket, "packetmanager_RI_SendPacket");
   --  Required interface "SendFrameCount"
   procedure RIÜSendFrameCount(frameCount: access My8BitArrayValueInteger);
   pragma import(C, RIÜSendFrameCount, "packetmanager_RI_SendFrameCount");
end packetmanager;