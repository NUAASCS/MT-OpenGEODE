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
   type States is (‹finished, wait‹packetreceival‹framereceival, wait‹framereceival, wait‹packetreceival, wait‹framereceival‹framecountreceival, wait‹framereceival‹framereceival, wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      wait‹packetreceival‹state: States;
      wait‹framereceival‹state: States;
      frame : aliased MyFrame;
      wait‹packetreceival‹noofsentpackets : aliased My8BitArrayValueInteger := 1;
      packet : aliased MyPacket;
      framecount : aliased My8BitArrayValueInteger;
      wait‹framereceival‹framecounter : aliased My8BitArrayValueInteger := 0;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 6;
   wait‹framereceival‹START : constant := 3;
   wait‹packetreceival‹START : constant := 1;
   procedure wait‹START;
   procedure runTransition(Id: Integer);
   procedure wait‹START is
      begin
         runTransition(wait‹packetreceival‹START);
         runTransition(wait‹framereceival‹START);
      end wait‹START;
      

   procedure ReceiveFrame(frame: access MyFrame) is
      begin
         case ctxt.state is
            when wait‹packetreceival =>
               runTransition(CS_Only);
            when wait‹framereceival =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.wait‹framereceival‹state is
                  when wait‹framereceival‹framereceival =>
                     ctxt.frame := frame.all;
                     runTransition(5);
                  when wait‹framereceival‹framecountreceival =>
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
            when wait‹packetreceival =>
               runTransition(CS_Only);
            when wait‹framereceival =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.wait‹packetreceival‹state is
                  when wait‹packetreceival‹framereceival =>
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
            when wait‹packetreceival =>
               runTransition(CS_Only);
            when wait‹framereceival =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.wait‹framereceival‹state is
                  when wait‹framereceival‹framereceival =>
                     runTransition(CS_Only);
                  when wait‹framereceival‹framecountreceival =>
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
                  --  NEXT_STATE wait‹packetreceival‹frameReceival (15,34) at 0, 58
                  trId := -1;
                  ctxt.wait‹packetreceival‹state := wait‹packetreceival‹frameReceival;
                  goto next_transition;
               when 2 =>
                  --  SendFrameCount(length(packet)) (21,35)
                  tmp3 := My8BitArrayValueInteger(ctxt.packet.Length);
                  RI‹SendFrameCount(tmp3'Access);
                  --  JOIN wait‹packetreceival‹wait‹packetreceival‹frameSending (None,None) at None, None
                  goto wait‹packetreceival‹wait‹packetreceival‹frameSending;
               when 3 =>
                  --  NEXT_STATE wait‹framereceival‹frameCountReceival (51,34) at 22, 50
                  trId := -1;
                  ctxt.wait‹framereceival‹state := wait‹framereceival‹frameCountReceival;
                  goto next_transition;
               when 4 =>
                  --  NEXT_STATE wait‹framereceival‹frameReceival (57,38) at 289, 105
                  trId := -1;
                  ctxt.wait‹framereceival‹state := wait‹framereceival‹frameReceival;
                  goto next_transition;
               when 5 =>
                  --  frameCounter := if frameCounter = 255 then frameCounter else frameCounter + 1 fi (64,33)
                  if (ctxt.wait‹framereceival‹framecounter = 255) then
                     tmp28 := ctxt.wait‹framereceival‹framecounter;
                  else
                     tmp28 := (ctxt.wait‹framereceival‹framecounter + 1);
                  end if;
                  ctxt.wait‹framereceival‹framecounter := tmp28;
                  --  packet(frameCounter - 1) := frame (65,0)
                  ctxt.packet.Data(1 + Integer((ctxt.wait‹framereceival‹framecounter - 1))) := ctxt.frame;
                  --  DECISION frameCounter = frameCount (67,50)
                  --  ANSWER true (69,33)
                  if ((ctxt.wait‹framereceival‹framecounter = ctxt.frameCount)) = true then
                     --  SendPacket(packet) (71,43)
                     RI‹SendPacket(ctxt.packet'Access);
                     --  RETURN  (None,None) at 648, 310
                     ctxt.wait‹framereceival‹state := ‹finished;
                     if ctxt.wait‹packetreceival‹state = ‹finished then
                        return;
                     else
                        trId := -1;
                        goto next_transition;
                     end if;
                     --  ANSWER false (75,33)
                  elsif ((ctxt.wait‹framereceival‹framecounter = ctxt.frameCount)) = false then
                     --  NEXT_STATE wait‹framereceival‹frameReceival (77,46) at 844, 260
                     trId := -1;
                     ctxt.wait‹framereceival‹state := wait‹framereceival‹frameReceival;
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
            wait‹START;
            ctxt.state := wait;
            trId := -1;
            goto next_transition;
            --  CONNECTION wait‹packetreceival‹wait‹packetreceival‹frameSending (23,28)
            <<wait‹packetreceival‹wait‹packetreceival‹frameSending>>
            --  SendFrame(packet(noOfSentPackets - 1)) (25,35)
            tmp9 := ctxt.packet.Data(1 + Integer((ctxt.wait‹packetreceival‹noofsentpackets - 1)));
            RI‹SendFrame(tmp9'Access);
            --  DECISION length(packet) = noOfSentPackets (27,52)
            --  ANSWER true (29,33)
            if ((Asn1UInt(ctxt.packet.Length) = ctxt.wait‹packetreceival‹noofsentpackets)) = true then
               --  RETURN  (None,None) at 155, 382
               ctxt.wait‹packetreceival‹state := ‹finished;
               if ctxt.wait‹framereceival‹state = ‹finished then
                  return;
               else
                  trId := -1;
                  goto next_transition;
               end if;
               --  ANSWER false (33,33)
            elsif ((Asn1UInt(ctxt.packet.Length) = ctxt.wait‹packetreceival‹noofsentpackets)) = false then
               --  noOfSentPackets := if noOfsentPackets = 255 then noOfSentPackets else noOfSentPackets + 1 fi (35,41)
               if (ctxt.wait‹packetreceival‹noofsentpackets = 255) then
                  tmp18 := ctxt.wait‹packetreceival‹noofsentpackets;
               else
                  tmp18 := (ctxt.wait‹packetreceival‹noofsentpackets + 1);
               end if;
               ctxt.wait‹packetreceival‹noofsentpackets := tmp18;
               --  JOIN wait‹packetreceival‹wait‹packetreceival‹frameSending (37,41) at 636, 432
               goto wait‹packetreceival‹wait‹packetreceival‹frameSending;
            end if;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end packetmanager;