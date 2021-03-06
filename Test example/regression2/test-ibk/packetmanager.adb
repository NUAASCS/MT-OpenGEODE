-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_Dataview;
use TASTE_Dataview;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body packetmanager is
   type States is (Üfinished, waitÜpacketreceivalÜframereceival, waitÜframereceival, waitÜpacketreceival, waitÜframereceivalÜframecountreceival, waitÜframereceivalÜframereceival, wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      waitÜpacketreceivalÜstate: States;
      waitÜframereceivalÜstate: States;
      frame : aliased MyFrame;
      waitÜpacketreceivalÜnoofsentpackets : aliased My8BitArrayValueInteger := 1;
      packet : aliased MyPacket;
      framecount : aliased My8BitArrayValueInteger;
      waitÜframereceivalÜframecounter : aliased My8BitArrayValueInteger := 0;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 6;
   waitÜframereceivalÜSTART : constant := 3;
   waitÜpacketreceivalÜSTART : constant := 1;
   procedure waitÜSTART;
   procedure runTransition(Id: Integer);
   procedure waitÜSTART is
      begin
         runTransition(waitÜpacketreceivalÜSTART);
         runTransition(waitÜframereceivalÜSTART);
      end waitÜSTART;
      

   procedure ReceiveFrame(frame: access MyFrame) is
      begin
         case ctxt.state is
            when waitÜpacketreceival =>
               runTransition(CS_Only);
            when waitÜframereceival =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.waitÜframereceivalÜstate is
                  when waitÜframereceivalÜframereceival =>
                     ctxt.frame := frame.all;
                     runTransition(5);
                  when waitÜframereceivalÜframecountreceival =>
                     runTransition(CS_Only);
                  when others =>
                     null;
               end case;
            when others =>
               runTransition(CS_Only);
         end case;
      end ReceiveFrame;
      

   procedure ReceivePacket(packet: access MyPacket) is
      begin
         case ctxt.state is
            when waitÜpacketreceival =>
               runTransition(CS_Only);
            when waitÜframereceival =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.waitÜpacketreceivalÜstate is
                  when waitÜpacketreceivalÜframereceival =>
                     ctxt.packet := packet.all;
                     runTransition(2);
                  when others =>
                     null;
               end case;
            when others =>
               runTransition(CS_Only);
         end case;
      end ReceivePacket;
      

   procedure ReceiveFrameCount(frameCount: access My8BitArrayValueInteger) is
      begin
         case ctxt.state is
            when waitÜpacketreceival =>
               runTransition(CS_Only);
            when waitÜframereceival =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.waitÜframereceivalÜstate is
                  when waitÜframereceivalÜframereceival =>
                     runTransition(CS_Only);
                  when waitÜframereceivalÜframecountreceival =>
                     ctxt.framecount := frameCount.all;
                     runTransition(4);
                  when others =>
                     null;
               end case;
            when others =>
               runTransition(CS_Only);
         end case;
      end ReceiveFrameCount;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp3 : aliased My8BitArrayValueInteger;
      tmp9 : aliased MyFrame;
      --  !! stack: _call_external_function line 1271
      tmp18 : My8BitArrayValueInteger;
      tmp28 : My8BitArrayValueInteger;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  JOIN waiting (None,None) at None, None
                  goto waiting;
               when 1 =>
                  --  NEXT_STATE waitÜpacketreceivalÜframeReceival (15,34) at 0, 58
                  trId := -1;
                  ctxt.waitÜpacketreceivalÜstate := waitÜpacketreceivalÜframeReceival;
                  goto next_transition;
               when 2 =>
                  --  SendFrameCount(length(packet)) (21,35)
                  tmp3 := My8BitArrayValueInteger(ctxt.packet.Length);
                  RIÜSendFrameCount(tmp3'Access);
                  --  JOIN waitÜpacketreceivalÜwaitÜpacketreceivalÜframeSending (None,None) at None, None
                  goto waitÜpacketreceivalÜwaitÜpacketreceivalÜframeSending;
               when 3 =>
                  --  NEXT_STATE waitÜframereceivalÜframeCountReceival (51,34) at 22, 50
                  trId := -1;
                  ctxt.waitÜframereceivalÜstate := waitÜframereceivalÜframeCountReceival;
                  goto next_transition;
               when 4 =>
                  --  NEXT_STATE waitÜframereceivalÜframeReceival (57,38) at 289, 105
                  trId := -1;
                  ctxt.waitÜframereceivalÜstate := waitÜframereceivalÜframeReceival;
                  goto next_transition;
               when 5 =>
                  --  frameCounter := if frameCounter = 255 then frameCounter else frameCounter + 1 fi (64,33)
                  if (ctxt.waitÜframereceivalÜframecounter = 255) then
                     tmp28 := ctxt.waitÜframereceivalÜframecounter;
                  else
                     tmp28 := (ctxt.waitÜframereceivalÜframecounter + 1);
                  end if;
                  ctxt.waitÜframereceivalÜframecounter := tmp28;
                  --  packet(frameCounter - 1) := frame (65,0)
                  ctxt.packet.Data(1 + Integer((ctxt.waitÜframereceivalÜframecounter - 1))) := ctxt.frame;
                  --  DECISION frameCounter = frameCount (67,50)
                  --  ANSWER true (69,33)
                  if ((ctxt.waitÜframereceivalÜframecounter = ctxt.frameCount)) = true then
                     --  SendPacket(packet) (71,43)
                     RIÜSendPacket(ctxt.packet'Access);
                     --  RETURN  (None,None) at 648, 310
                     ctxt.waitÜframereceivalÜstate := Üfinished;
                     if ctxt.waitÜpacketreceivalÜstate = Üfinished then
                        return;
                     else
                        trId := -1;
                        goto next_transition;
                     end if;
                     --  ANSWER false (75,33)
                  elsif ((ctxt.waitÜframereceivalÜframecounter = ctxt.frameCount)) = false then
                     --  NEXT_STATE waitÜframereceivalÜframeReceival (77,46) at 844, 260
                     trId := -1;
                     ctxt.waitÜframereceivalÜstate := waitÜframereceivalÜframeReceival;
                     goto next_transition;
                  end if;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            goto next_transition;
            --  CONNECTION waiting (100,8)
            <<waiting>>
            --  NEXT_STATE wait (102,18) at 49, 111
            -- Entering state aggregation wait
            waitÜSTART;
            ctxt.state := wait;
            trId := -1;
            goto next_transition;
            --  CONNECTION waitÜpacketreceivalÜwaitÜpacketreceivalÜframeSending (23,28)
            <<waitÜpacketreceivalÜwaitÜpacketreceivalÜframeSending>>
            --  SendFrame(packet(noOfSentPackets - 1)) (25,35)
            tmp9 := ctxt.packet.Data(1 + Integer((ctxt.waitÜpacketreceivalÜnoofsentpackets - 1)));
            RIÜSendFrame(tmp9'Access);
            --  DECISION length(packet) = noOfSentPackets (27,52)
            --  ANSWER true (29,33)
            if ((Asn1UInt(ctxt.packet.Length) = ctxt.waitÜpacketreceivalÜnoofsentpackets)) = true then
               --  RETURN  (None,None) at 155, 382
               ctxt.waitÜpacketreceivalÜstate := Üfinished;
               if ctxt.waitÜframereceivalÜstate = Üfinished then
                  return;
               else
                  trId := -1;
                  goto next_transition;
               end if;
               --  ANSWER false (33,33)
            elsif ((Asn1UInt(ctxt.packet.Length) = ctxt.waitÜpacketreceivalÜnoofsentpackets)) = false then
               --  noOfSentPackets := if noOfsentPackets = 255 then noOfSentPackets else noOfSentPackets + 1 fi (35,41)
               if (ctxt.waitÜpacketreceivalÜnoofsentpackets = 255) then
                  tmp18 := ctxt.waitÜpacketreceivalÜnoofsentpackets;
               else
                  tmp18 := (ctxt.waitÜpacketreceivalÜnoofsentpackets + 1);
               end if;
               ctxt.waitÜpacketreceivalÜnoofsentpackets := tmp18;
               --  JOIN waitÜpacketreceivalÜwaitÜpacketreceivalÜframeSending (37,41) at 636, 432
               goto waitÜpacketreceivalÜwaitÜpacketreceivalÜframeSending;
            end if;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end packetmanager;