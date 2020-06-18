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
   procedure RIÜSendData(info: access MyInfo);
   pragma import(C, RIÜSendData, "node_RI_SendData");
   --  Required interface "WriteRawData"
   procedure RIÜWriteRawData(inputData: access MyInputData);
   pragma import(C, RIÜWriteRawData, "node_RI_WriteRawData");
   --  Required interface "SendFrameCount"
   procedure RIÜSendFrameCount(frameCount: access My8BitArrayValueInteger);
   pragma import(C, RIÜSendFrameCount, "node_RI_SendFrameCount");
   --  Required interface "SendAck"
   procedure RIÜSendAck(ackData: access MyAckData);
   pragma import(C, RIÜSendAck, "node_RI_SendAck");
   --  Required interface "ResendRawData"
   procedure RIÜResendRawData(inputData: access MyInputData);
   pragma import(C, RIÜResendRawData, "node_RI_ResendRawData");
end node;