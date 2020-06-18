-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;



package node is
   --  Provided interface "ReceiveData"
   procedure ReceiveData(info: access MyInfo);
   pragma Export(C, receivedata, "node_PI_receivedata");
   --  Provided interface "ReadRawData"
   procedure ReadRawData(inputData: access MyInputData);
   pragma Export(C, readrawdata, "node_PI_readrawdata");
   --  Provided interface "ReceiveFrameCount"
   procedure ReceiveFrameCount(frameCount: access My8BitArrayValueInteger);
   pragma Export(C, receiveframecount, "node_PI_receiveframecount");
   --  Provided interface "ReceiveAck"
   procedure ReceiveAck(ackData: access MyAckData);
   pragma Export(C, receiveack, "node_PI_receiveack");
   --  Required interface "SendData"
   procedure RI�SendData(info: access MyInfo);
   pragma import(C, RI�SendData, "node_RI_SendData");
   --  Required interface "WriteRawData"
   procedure RI�WriteRawData(inputData: access MyInputData);
   pragma import(C, RI�WriteRawData, "node_RI_WriteRawData");
   --  Required interface "SendFrameCount"
   procedure RI�SendFrameCount(frameCount: access My8BitArrayValueInteger);
   pragma import(C, RI�SendFrameCount, "node_RI_SendFrameCount");
   --  Required interface "SendAck"
   procedure RI�SendAck(ackData: access MyAckData);
   pragma import(C, RI�SendAck, "node_RI_SendAck");
   --  Required interface "ResendRawData"
   procedure RI�ResendRawData(inputData: access MyInputData);
   pragma import(C, RI�ResendRawData, "node_RI_ResendRawData");
end node;