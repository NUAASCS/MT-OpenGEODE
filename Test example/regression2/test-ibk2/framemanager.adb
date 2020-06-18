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

package body framemanager is
   type States is (wait‹framereceival‹framereceival, wait‹datareceival, wait, wait‹framereceival, wait‹datareceival‹datareceival, ‹finished);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      wait‹datareceival‹state: States;
      wait‹framereceival‹state: States;
      info : aliased MyInfo;
      control : aliased MyControl;
      fcs : aliased MyFcs;
      addr : aliased MyAddr;
      frame : aliased MyFrame;
      pid : aliased MyPid;
      invertedfcs : aliased MyFcs;
      wait‹framereceival‹calculatedfcs : aliased MyFcs;
   endflag : aliased MyFlag;
   startflag : aliased MyFlag;
end record;
ctxt: aliased ctxt_Ty;
CS_Only  : constant Integer := 5;
wait‹framereceival‹START : constant := 3;
wait‹datareceival‹START : constant := 1;
procedure wait‹START;
procedure runTransition(Id: Integer);
procedure p‹wait‹datareceival‹InvertFcs(fcs: in MyFcs;invertedFcs: in out MyFcs);
procedure p‹wait‹datareceival‹DeclareAddr(addr: in out MyAddr);
procedure p‹wait‹datareceival‹CalculateFcs(addr: in MyAddr;control: in MyControl;pid: in MyPid;info: in MyInfo;fcs: in out MyFcs);
procedure p‹wait‹datareceival‹PackData(startFlag: in MyFlag;addr: in MyAddr;control: in MyControl;pid: in MyPid;info: in MyInfo;fcs: in MyFcs;endflag: in MyFlag;frame: in out MyFrame);
procedure p‹wait‹framereceival‹UnpackFrame(frame: in MyFrame;addr: in out MyAddr;control: in out MyControl;pid: in out MyPid;info: in out MyInfo;fcs: in out MyFcs);
procedure p‹wait‹framereceival‹FrameCalculateFcs(addr: in MyAddr;control: in MyControl;pid: in MyPid;info: in MyInfo;fcs: in out MyFcs);
procedure p‹wait‹framereceival‹FrameInvertFcs(fcs: in MyFcs;invertedFcs: in out MyFcs);
procedure p‹wait‹datareceival‹InvertFcs(fcs: in MyFcs;invertedFcs: in out MyFcs) is
   i : aliased My16BitArrayInteger := 0;
   begin
      --  TASK for ii in range(0, length(fcs), 1):
      --    invertedFcs(15-ii) := fcs(i)
      --  endfor (23,33)
      for ii in 0 .. 15 loop
         --  invertedFcs(15-ii) := fcs(i) (24,2)
         invertedFcs.Data(1 + Integer((15 - ii))) := fcs.Data(1 + Integer(i));
      end loop;
      --  RETURN  (None,None) at 427, 199
      return;
   end p‹wait‹datareceival‹InvertFcs;
   

procedure p‹wait‹datareceival‹DeclareAddr(addr: in out MyAddr) is
   begin
      --  TASK for i in range(0, 7, 1):
      --    addr!destinationAddress(i) := { false, false, false, false, false, false, false, false }
      --  endfor (42,33)
      for i in 0 .. 6 loop
         --  addr!destinationAddress(i) := { false, false, false, false, false, false, false, false } (43,2)
         addr.destinationaddress.Data(1 + Integer(i)) := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => false, others => false));
      end loop;
      --  TASK for i in range(0, 7, 1):
      --    addr!sourceAddress(i) := { false, false, false, false, false, false, false, false }
      --  endfor (46,33)
      for i in 0 .. 6 loop
         --  addr!sourceAddress(i) := { false, false, false, false, false, false, false, false } (47,2)
         addr.sourceaddress.Data(1 + Integer(i)) := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => false, others => false));
      end loop;
      --  RETURN  (None,None) at 245, 209
      return;
   end p‹wait‹datareceival‹DeclareAddr;
   

procedure p‹wait‹datareceival‹CalculateFcs(addr: in MyAddr;control: in MyControl;pid: in MyPid;info: in MyInfo;fcs: in out MyFcs) is
   fcsxorresult : aliased MyFcsPolynomial;
   fcsstack : aliased MyFcsStack;
   datastack : aliased MyDataStack;
   position : aliased My16BitArrayInteger;
   k : aliased MyFcsStackInteger := 0;
   fcsposition : aliased MyFcsPolynomialInteger;
   fcspolynomial : aliased MyFcsPolynomial;
   tmp346 : MyFcsStackInteger;
   begin
      --  TASK for i in range(0, length(addr!destinationAddress), 1):
      --    for j in range(0, length(addr!destinationAddress(i))):
      --      fcsStack((i*8)+j) := addr!destinationAddress(i)(j)
      --    endfor
      --  endfor (81,33)
      for i in 0 .. 6 loop
         --  TASK for j in range(0, length(addr!destinationAddress(i))):
         --      fcsStack((i*8)+j) := addr!destinationAddress(i)(j)
         --    endfor (82,2)
         for j in 0 .. 7 loop
            --  fcsStack((i*8)+j) := addr!destinationAddress(i)(j) (83,4)
            fcsStack.Data(1 + Integer(((i * 8) + j))) := addr.destinationaddress.Data(1 + Integer(i)).Data(1 + Integer(j));
         end loop;
      end loop;
      --  TASK for i in range(0, length(addr!sourceAddress), 1):
      --    for j in range(0, length(addr!sourceAddress(i))):
      --      fcsStack(56+(i*8)+j) := addr!sourceAddress(i)(j)
      --    endfor
      --  endfor (87,33)
      for i in 0 .. 6 loop
         --  TASK for j in range(0, length(addr!sourceAddress(i))):
         --      fcsStack(56+(i*8)+j) := addr!sourceAddress(i)(j)
         --    endfor (88,2)
         for j in 0 .. 7 loop
            --  fcsStack(56+(i*8)+j) := addr!sourceAddress(i)(j) (89,4)
            fcsStack.Data(1 + Integer(((56 + (i * 8)) + j))) := addr.sourceaddress.Data(1 + Integer(i)).Data(1 + Integer(j));
         end loop;
      end loop;
      --  TASK for i in range(112, 120, 1):
      --      fcsStack(i) := control(i - 112)
      --    endfor (93,33)
      for i in 112 .. 119 loop
         --  fcsStack(i) := control(i - 112) (94,4)
         fcsStack.Data(1 + Integer(i)) := control.Data(1 + Integer((i - 112)));
      end loop;
      --  TASK for i in range(120, 128, 1):
      --      fcsStack(i) := pid(i - 120)
      --    endfor (97,33)
      for i in 120 .. 127 loop
         --  fcsStack(i) := pid(i - 120) (98,4)
         fcsStack.Data(1 + Integer(i)) := pid.Data(1 + Integer((i - 120)));
      end loop;
      --  TASK for i in range(128, 132, 1):
      --    fcsStack(i) := info!ba!srcAddr(i - 128)
      --  endfor (101,33)
      for i in 128 .. 131 loop
         --  fcsStack(i) := info!ba!srcAddr(i - 128) (102,2)
         fcsStack.Data(1 + Integer(i)) := info.ba.srcaddr.Data(1 + Integer((i - 128)));
      end loop;
      --  TASK for i in range(132, 136, 1):
      --    fcsStack(i) := info!ba!dstAddr(i - 132)
      --  endfor (105,33)
      for i in 132 .. 135 loop
         --  fcsStack(i) := info!ba!dstAddr(i - 132) (106,2)
         fcsStack.Data(1 + Integer(i)) := info.ba.dstaddr.Data(1 + Integer((i - 132)));
      end loop;
      --  TASK for i in range(136, 144, 1):
      --    fcsStack(i) := info!cntrl(i - 136)
      --  endfor (109,33)
      for i in 136 .. 143 loop
         --  fcsStack(i) := info!cntrl(i - 136) (110,2)
         fcsStack.Data(1 + Integer(i)) := info.cntrl.Data(1 + Integer((i - 136)));
      end loop;
      --  TASK for i in range(144, 152, 1):
      --    fcsStack(i) := info!code(i - 144)
      --  endfor (113,33)
      for i in 144 .. 151 loop
         --  fcsStack(i) := info!code(i - 144) (114,2)
         fcsStack.Data(1 + Integer(i)) := info.code.Data(1 + Integer((i - 144)));
      end loop;
      --  COMMENT Array of octets to array of bits (123,28)
      --  TASK for i in range(0, length(info!operationData), 1):
      --    for j in range(0, length(info!operationData(i)), 1):
      --      dataStack((i*8)+j) := info!operationData(i)(j)
      --    endfor
      --  endfor (117,33)
      --  COMMENT Array of octets to array of bits (123,28)
      for i in 0 .. Integer (info.operationdata.Length) - 1 loop
         --  TASK for j in range(0, length(info!operationData(i)), 1):
         --      dataStack((i*8)+j) := info!operationData(i)(j)
         --    endfor (118,2)
         for j in 0 .. 7 loop
            --  dataStack((i*8)+j) := info!operationData(i)(j) (119,4)
            dataStack.Data(1 + Integer(((i * 8) + j))) := info.operationdata.Data(1 + Integer(i)).Data(1 + Integer(j));
         end loop;
      end loop;
      --  TASK for i in range(152, length(dataStack) + 152, 1):
      --    fcsStack(i) := dataStack(i - 152)
      --  endfor (125,33)
      for i in 152 .. Integer ((dataStack.Length + 152)) - 1 loop
         --  fcsStack(i) := dataStack(i - 152) (126,2)
         fcsStack.Data(1 + Integer(i)) := dataStack.Data(1 + Integer((i - 152)));
      end loop;
      --  TASK for i in range(length(dataStack) + 152, length(dataStack) + 168, 1):
      --    position := i - (length(dataStack) + 152)
      --    fcsStack(i) := info!ifcs(position)
      --  endfor (129,33)
      for i in Integer ((dataStack.Length + 152)) .. Integer ((dataStack.Length + 168)) - 1 loop
         --  position := i - (length(dataStack) + 152) (130,2)
         position := Asn1UInt((i - (dataStack.Length + 152)));
         --  fcsStack(i) := info!ifcs(position) (131,2)
         fcsStack.Data(1 + Integer(i)) := info.ifcs.Data(1 + Integer(position));
      end loop;
      --  TASK for i in range(length(dataStack) + 168, length(dataStack) + 184, 1):
      --    fcsStack(i) := false
      --  endfor (134,33)
      for i in Integer ((dataStack.Length + 168)) .. Integer ((dataStack.Length + 184)) - 1 loop
         --  fcsStack(i) := false (135,2)
         fcsStack.Data(1 + Integer(i)) := false;
      end loop;
      --  fcsPolynomial := {true, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, true} (138,33)
      fcsPolynomial := (Data => (1 => true, 2 => false, 3 => false, 4 => false, 5 => true, 6 => false, 7 => false, 8 => false, 9 => false, 10 => false, 11 => false, 12 => true, 13 => false, 14 => false, 15 => false, 16 => false, 17 => true, others => true));
      --  JOIN calculation (None,None) at None, None
      goto calculation;
      --  CONNECTION calculation (140,28)
      <<calculation>>
      --  DECISION fcsStack(k) = true (142,49)
      --  ANSWER true (144,33)
      if ((fcsStack.Data(1 + Integer(k)) = true)) = true then
         --  fcsXorResult := {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false} (146,41)
         fcsXorResult := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => false, 9 => false, 10 => false, 11 => false, 12 => false, 13 => false, 14 => false, 15 => false, 16 => false, 17 => false, others => false));
         --  COMMENT XOR operation (153,36)
         --  TASK for l in range(k, k + length(fcsPolynomial), 1):
         --    fcsPosition := l - k
         --    fcsXorResult(fcsPosition) := if fcsStack(l) = fcsPolynomial(fcsPosition) then false else true fi
         --  endfor (148,41)
         --  COMMENT XOR operation (153,36)
         for l in Integer (k) .. Integer ((k + 17)) - 1 loop
            declare
               tmp284 : Boolean;
            begin
               --  fcsPosition := l - k (149,2)
               fcsPosition := (MyFcsStackInteger(l) - k);
               --  fcsXorResult(fcsPosition) := if fcsStack(l) = fcsPolynomial(fcsPosition) then false else true fi (150,2)
               if (fcsStack.Data(1 + Integer(l)) = fcsPolynomial.Data(1 + Integer(fcsPosition))) then
                  tmp284 := false;
               else
                  tmp284 := true;
               end if;
               fcsXorResult.Data(1 + Integer(fcsPosition)) := tmp284;
            end;
         end loop;
         --  COMMENT Replace result (160,36)
         --  TASK for l in range(k, length(fcsXorResult) + k, 1):
         --    fcsPosition := l - k
         --    fcsStack(l) := fcsXorResult(fcsPosition)
         --  endfor (155,41)
         --  COMMENT Replace result (160,36)
         for l in Integer (k) .. Integer ((17 + k)) - 1 loop
            --  fcsPosition := l - k (156,2)
            fcsPosition := (MyFcsStackInteger(l) - k);
            --  fcsStack(l) := fcsXorResult(fcsPosition) (157,2)
            fcsStack.Data(1 + Integer(l)) := fcsXorResult.Data(1 + Integer(fcsPosition));
         end loop;
         --  ANSWER false (162,33)
      elsif ((fcsStack.Data(1 + Integer(k)) = true)) = false then
         null;
      end if;
      --  DECISION k = length(fcsStack) - length(fcsPolynomial) (165,39)
      --  ANSWER true (167,33)
      if ((k = Asn1UInt((fcsStack.Length - 17)))) = true then
         --  TASK for l in range (length(fcsStack) - (length(fcsPolynomial) - 2), length(fcsStack), 1):
         --    position := l - (length(fcsStack) - (length(fcsPolynomial) - 2))
         --    fcs(position) := fcsStack(l)
         --  endfor (169,41)
         for l in Integer ((fcsStack.Length - 15)) .. Integer (fcsStack.Length) - 1 loop
            --  position := l - (length(fcsStack) - (length(fcsPolynomial) - 2)) (170,2)
            position := Asn1UInt((l - (fcsStack.Length - 15)));
            --  fcs(position) := fcsStack(l) (171,2)
            fcs.Data(1 + Integer(position)) := fcsStack.Data(1 + Integer(l));
         end loop;
         --  RETURN  (None,None) at 330, 1660
         return;
         --  ANSWER false (176,33)
      elsif ((k = Asn1UInt((fcsStack.Length - 17)))) = false then
         --  COMMENT Shift right (180,36)
         --  k := if k = 2175 then k else k + 1 fi (178,41)
         if (k = 2175) then
            tmp346 := k;
         else
            tmp346 := (k + 1);
         end if;
         k := tmp346;
         --  JOIN calculation (182,41) at 813, 1627
         goto calculation;
      end if;
   end p‹wait‹datareceival‹CalculateFcs;
   

procedure p‹wait‹datareceival‹PackData(startFlag: in MyFlag;addr: in MyAddr;control: in MyControl;pid: in MyPid;info: in MyInfo;fcs: in MyFcs;endflag: in MyFlag;frame: in out MyFrame) is
   begin
      --  frame!startFlag := startFlag (205,33)
      frame.startflag := startFlag;
      --  frame!addr := addr (206,0)
      frame.addr := addr;
      --  frame!control := control (207,0)
      frame.control := control;
      --  frame!pid := pid (208,0)
      frame.pid := pid;
      --  frame!info := info (209,0)
      frame.info := info;
      --  frame!fcs := fcs (210,0)
      frame.fcs := fcs;
      --  frame!endFlag := endFlag (211,0)
      frame.endflag := endFlag;
      --  RETURN  (None,None) at 89, 179
      return;
   end p‹wait‹datareceival‹PackData;
   

procedure p‹wait‹framereceival‹UnpackFrame(frame: in MyFrame;addr: in out MyAddr;control: in out MyControl;pid: in out MyPid;info: in out MyInfo;fcs: in out MyFcs) is
   begin
      --  addr := frame!addr (273,33)
      addr := frame.addr;
      --  control := frame!control (274,0)
      control := frame.control;
      --  pid := frame!pid (275,0)
      pid := frame.pid;
      --  info := frame!info (276,0)
      info := frame.info;
      --  fcs := frame!fcs (277,0)
      fcs := frame.fcs;
      --  RETURN  (None,None) at 86, 156
      return;
   end p‹wait‹framereceival‹UnpackFrame;
   

procedure p‹wait‹framereceival‹FrameCalculateFcs(addr: in MyAddr;control: in MyControl;pid: in MyPid;info: in MyInfo;fcs: in out MyFcs) is
   fcsxorresult : aliased MyFcsPolynomial;
   fcsstack : aliased MyFcsStack;
   datastack : aliased MyDataStack;
   position : aliased My16BitArrayInteger;
   k : aliased MyFcsStackInteger := 0;
   fcsposition : aliased MyFcsPolynomialInteger;
   fcspolynomial : aliased MyFcsPolynomial;
   tmp797 : MyFcsStackInteger;
   begin
      --  TASK for i in range(0, length(addr!destinationAddress), 1):
      --    for j in range(0, length(addr!destinationAddress(i))):
      --      fcsStack((i*8)+j) := addr!destinationAddress(i)(j)
      --    endfor
      --  endfor (310,33)
      for i in 0 .. 6 loop
         --  TASK for j in range(0, length(addr!destinationAddress(i))):
         --      fcsStack((i*8)+j) := addr!destinationAddress(i)(j)
         --    endfor (311,2)
         for j in 0 .. 7 loop
            --  fcsStack((i*8)+j) := addr!destinationAddress(i)(j) (312,4)
            fcsStack.Data(1 + Integer(((i * 8) + j))) := addr.destinationaddress.Data(1 + Integer(i)).Data(1 + Integer(j));
         end loop;
      end loop;
      --  TASK for i in range(0, length(addr!sourceAddress), 1):
      --    for j in range(0, length(addr!sourceAddress(i))):
      --      fcsStack(56+(i*8)+j) := addr!sourceAddress(i)(j)
      --    endfor
      --  endfor (316,33)
      for i in 0 .. 6 loop
         --  TASK for j in range(0, length(addr!sourceAddress(i))):
         --      fcsStack(56+(i*8)+j) := addr!sourceAddress(i)(j)
         --    endfor (317,2)
         for j in 0 .. 7 loop
            --  fcsStack(56+(i*8)+j) := addr!sourceAddress(i)(j) (318,4)
            fcsStack.Data(1 + Integer(((56 + (i * 8)) + j))) := addr.sourceaddress.Data(1 + Integer(i)).Data(1 + Integer(j));
         end loop;
      end loop;
      --  TASK for i in range(112, 120, 1):
      --      fcsStack(i) := control(i - 112)
      --    endfor (322,33)
      for i in 112 .. 119 loop
         --  fcsStack(i) := control(i - 112) (323,4)
         fcsStack.Data(1 + Integer(i)) := control.Data(1 + Integer((i - 112)));
      end loop;
      --  TASK for i in range(120, 128, 1):
      --      fcsStack(i) := pid(i - 120)
      --    endfor (326,33)
      for i in 120 .. 127 loop
         --  fcsStack(i) := pid(i - 120) (327,4)
         fcsStack.Data(1 + Integer(i)) := pid.Data(1 + Integer((i - 120)));
      end loop;
      --  TASK for i in range(128, 132, 1):
      --    fcsStack(i) := info!ba!srcAddr(i - 128)
      --  endfor (330,33)
      for i in 128 .. 131 loop
         --  fcsStack(i) := info!ba!srcAddr(i - 128) (331,2)
         fcsStack.Data(1 + Integer(i)) := info.ba.srcaddr.Data(1 + Integer((i - 128)));
      end loop;
      --  TASK for i in range(132, 136, 1):
      --    fcsStack(i) := info!ba!dstAddr(i - 132)
      --  endfor (334,33)
      for i in 132 .. 135 loop
         --  fcsStack(i) := info!ba!dstAddr(i - 132) (335,2)
         fcsStack.Data(1 + Integer(i)) := info.ba.dstaddr.Data(1 + Integer((i - 132)));
      end loop;
      --  TASK for i in range(136, 144, 1):
      --    fcsStack(i) := info!cntrl(i - 136)
      --  endfor (338,33)
      for i in 136 .. 143 loop
         --  fcsStack(i) := info!cntrl(i - 136) (339,2)
         fcsStack.Data(1 + Integer(i)) := info.cntrl.Data(1 + Integer((i - 136)));
      end loop;
      --  TASK for i in range(144, 152, 1):
      --    fcsStack(i) := info!code(i - 144)
      --  endfor (342,33)
      for i in 144 .. 151 loop
         --  fcsStack(i) := info!code(i - 144) (343,2)
         fcsStack.Data(1 + Integer(i)) := info.code.Data(1 + Integer((i - 144)));
      end loop;
      --  COMMENT Array of octets to array of bits (352,28)
      --  TASK for i in range(0, length(info!operationData), 1):
      --    for j in range(0, length(info!operationData(i)), 1):
      --      dataStack((i*8)+j) := info!operationData(i)(j)
      --    endfor
      --  endfor (346,33)
      --  COMMENT Array of octets to array of bits (352,28)
      for i in 0 .. Integer (info.operationdata.Length) - 1 loop
         --  TASK for j in range(0, length(info!operationData(i)), 1):
         --      dataStack((i*8)+j) := info!operationData(i)(j)
         --    endfor (347,2)
         for j in 0 .. 7 loop
            --  dataStack((i*8)+j) := info!operationData(i)(j) (348,4)
            dataStack.Data(1 + Integer(((i * 8) + j))) := info.operationdata.Data(1 + Integer(i)).Data(1 + Integer(j));
         end loop;
      end loop;
      --  TASK for i in range(152, length(dataStack) + 152, 1):
      --    fcsStack(i) := dataStack(i - 152)
      --  endfor (354,33)
      for i in 152 .. Integer ((dataStack.Length + 152)) - 1 loop
         --  fcsStack(i) := dataStack(i - 152) (355,2)
         fcsStack.Data(1 + Integer(i)) := dataStack.Data(1 + Integer((i - 152)));
      end loop;
      --  TASK for i in range(length(dataStack) + 152, length(dataStack) + 168, 1):
      --    position := i - (length(dataStack) + 152)
      --    fcsStack(i) := info!ifcs(position)
      --  endfor (358,33)
      for i in Integer ((dataStack.Length + 152)) .. Integer ((dataStack.Length + 168)) - 1 loop
         --  position := i - (length(dataStack) + 152) (359,2)
         position := Asn1UInt((i - (dataStack.Length + 152)));
         --  fcsStack(i) := info!ifcs(position) (360,2)
         fcsStack.Data(1 + Integer(i)) := info.ifcs.Data(1 + Integer(position));
      end loop;
      --  TASK for i in range(length(dataStack) + 168, length(dataStack) + 184, 1):
      --    fcsStack(i) := false
      --  endfor (363,33)
      for i in Integer ((dataStack.Length + 168)) .. Integer ((dataStack.Length + 184)) - 1 loop
         --  fcsStack(i) := false (364,2)
         fcsStack.Data(1 + Integer(i)) := false;
      end loop;
      --  fcsPolynomial := {true, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, true} (367,33)
      fcsPolynomial := (Data => (1 => true, 2 => false, 3 => false, 4 => false, 5 => true, 6 => false, 7 => false, 8 => false, 9 => false, 10 => false, 11 => false, 12 => true, 13 => false, 14 => false, 15 => false, 16 => false, 17 => true, others => true));
      --  JOIN calculation (None,None) at None, None
      goto calculation;
      --  CONNECTION calculation (369,28)
      <<calculation>>
      --  DECISION fcsStack(k) = true (371,49)
      --  ANSWER true (373,33)
      if ((fcsStack.Data(1 + Integer(k)) = true)) = true then
         --  fcsXorResult := {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false} (375,41)
         fcsXorResult := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => false, 9 => false, 10 => false, 11 => false, 12 => false, 13 => false, 14 => false, 15 => false, 16 => false, 17 => false, others => false));
         --  COMMENT XOR operation (382,36)
         --  TASK for l in range(k, k + length(fcsPolynomial), 1):
         --    fcsPosition := l - k
         --    fcsXorResult(fcsPosition) := if fcsStack(l) = fcsPolynomial(fcsPosition) then false else true fi
         --  endfor (377,41)
         --  COMMENT XOR operation (382,36)
         for l in Integer (k) .. Integer ((k + 17)) - 1 loop
            declare
               tmp735 : Boolean;
            begin
               --  fcsPosition := l - k (378,2)
               fcsPosition := (MyFcsStackInteger(l) - k);
               --  fcsXorResult(fcsPosition) := if fcsStack(l) = fcsPolynomial(fcsPosition) then false else true fi (379,2)
               if (fcsStack.Data(1 + Integer(l)) = fcsPolynomial.Data(1 + Integer(fcsPosition))) then
                  tmp735 := false;
               else
                  tmp735 := true;
               end if;
               fcsXorResult.Data(1 + Integer(fcsPosition)) := tmp735;
            end;
         end loop;
         --  COMMENT Replace result (389,36)
         --  TASK for l in range(k, length(fcsXorResult) + k, 1):
         --    fcsPosition := l - k
         --    fcsStack(l) := fcsXorResult(fcsPosition)
         --  endfor (384,41)
         --  COMMENT Replace result (389,36)
         for l in Integer (k) .. Integer ((17 + k)) - 1 loop
            --  fcsPosition := l - k (385,2)
            fcsPosition := (MyFcsStackInteger(l) - k);
            --  fcsStack(l) := fcsXorResult(fcsPosition) (386,2)
            fcsStack.Data(1 + Integer(l)) := fcsXorResult.Data(1 + Integer(fcsPosition));
         end loop;
         --  ANSWER false (391,33)
      elsif ((fcsStack.Data(1 + Integer(k)) = true)) = false then
         null;
      end if;
      --  DECISION k = length(fcsStack) - length(fcsPolynomial) (394,39)
      --  ANSWER true (396,33)
      if ((k = Asn1UInt((fcsStack.Length - 17)))) = true then
         --  TASK for l in range (length(fcsStack) - (length(fcsPolynomial) - 2), length(fcsStack), 1):
         --    position := l - (length(fcsStack) - (length(fcsPolynomial) - 2))
         --    fcs(position) := fcsStack(l)
         --  endfor (398,41)
         for l in Integer ((fcsStack.Length - 15)) .. Integer (fcsStack.Length) - 1 loop
            --  position := l - (length(fcsStack) - (length(fcsPolynomial) - 2)) (399,2)
            position := Asn1UInt((l - (fcsStack.Length - 15)));
            --  fcs(position) := fcsStack(l) (400,2)
            fcs.Data(1 + Integer(position)) := fcsStack.Data(1 + Integer(l));
         end loop;
         --  RETURN  (None,None) at 330, 1660
         return;
         --  ANSWER false (405,33)
      elsif ((k = Asn1UInt((fcsStack.Length - 17)))) = false then
         --  COMMENT Shift right (409,36)
         --  k := if k = 2175 then k else k + 1 fi (407,41)
         if (k = 2175) then
            tmp797 := k;
         else
            tmp797 := (k + 1);
         end if;
         k := tmp797;
         --  JOIN calculation (411,41) at 813, 1627
         goto calculation;
      end if;
   end p‹wait‹framereceival‹FrameCalculateFcs;
   

procedure p‹wait‹framereceival‹FrameInvertFcs(fcs: in MyFcs;invertedFcs: in out MyFcs) is
   i : aliased My16BitArrayInteger := 0;
   begin
      --  TASK for ii in range(0, length(fcs), 1):
      --    invertedFcs(15-ii) := fcs(i)
      --  endfor (430,33)
      for ii in 0 .. 15 loop
         --  invertedFcs(15-ii) := fcs(i) (431,2)
         invertedFcs.Data(1 + Integer((15 - ii))) := fcs.Data(1 + Integer(i));
      end loop;
      --  RETURN  (None,None) at 427, 199
      return;
   end p‹wait‹framereceival‹FrameInvertFcs;
   

procedure wait‹START is
   begin
      runTransition(wait‹datareceival‹START);
      runTransition(wait‹framereceival‹START);
   end wait‹START;
   

procedure ReceiveData(info: access MyInfo) is
   begin
      case ctxt.state is
         when wait‹framereceival =>
            runTransition(CS_Only);
         when wait‹datareceival =>
            runTransition(CS_Only);
         when wait =>
            -- this is a state aggregation
            case ctxt.wait‹datareceival‹state is
               when wait‹datareceival‹datareceival =>
                  ctxt.info := info.all;
                  runTransition(2);
               when others =>
                  null;
            end case;
         when others =>
            runTransition(CS_Only);
      end case;
   end ReceiveData;
   

procedure ReceiveFrame(frame: access MyFrame) is
   begin
      case ctxt.state is
         when wait‹framereceival =>
            runTransition(CS_Only);
         when wait‹datareceival =>
            runTransition(CS_Only);
         when wait =>
            -- this is a state aggregation
            case ctxt.wait‹framereceival‹state is
               when wait‹framereceival‹framereceival =>
                  ctxt.frame := frame.all;
                  runTransition(4);
               when others =>
                  null;
            end case;
         when others =>
            runTransition(CS_Only);
      end case;
   end ReceiveFrame;
   

procedure runTransition(Id: Integer) is
   trId : Integer := Id;
   begin
      while (trId /= -1) loop
         case trId is
            when 0 =>
               --  JOIN waiting (None,None) at None, None
               goto waiting;
            when 1 =>
               --  NEXT_STATE wait‹datareceival‹dataReceival (218,34) at 0, 50
               trId := -1;
               ctxt.wait‹datareceival‹state := wait‹datareceival‹dataReceival;
               goto next_transition;
            when 2 =>
               --  TASK for i in range(0, 7, 1):
               --    addr!destinationAddress(i) := { false, false, false, false, false, false, false, false }
               --  endfor (224,33)
               for i in 0 .. 6 loop
                  --  addr!destinationAddress(i) := { false, false, false, false, false, false, false, false } (225,2)
                  ctxt.addr.destinationaddress.Data(1 + Integer(i)) := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => false, others => false));
               end loop;
               --  TASK for i in range(0, 7, 1):
               --    addr!sourceAddress(i) := { false, false, false, false, false, false, false, false }
               --  endfor (228,33)
               for i in 0 .. 6 loop
                  --  addr!sourceAddress(i) := { false, false, false, false, false, false, false, false } (229,2)
                  ctxt.addr.sourceaddress.Data(1 + Integer(i)) := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => false, others => false));
               end loop;
               --  startFlag := { false, true, true, true, true, true, true, false } (232,33)
               ctxt.startFlag := (Data => (1 => false, 2 => true, 3 => true, 4 => true, 5 => true, 6 => true, 7 => true, 8 => false, others => false));
               --  control := { false, false, false, false, false, false, true, true } (233,0)
               ctxt.control := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => true, 8 => true, others => false));
               --  pid := { true, true, true, true, false, false, false, false } (234,0)
               ctxt.pid := (Data => (1 => true, 2 => true, 3 => true, 4 => true, 5 => false, 6 => false, 7 => false, 8 => false, others => true));
               --  endFlag := { false, true, true, true, true, true, true, false } (235,0)
               ctxt.endFlag := (Data => (1 => false, 2 => true, 3 => true, 4 => true, 5 => true, 6 => true, 7 => true, 8 => false, others => false));
               --  CalculateFcs(addr, control, pid, info, fcs) (237,33)
               p‹wait‹datareceival‹CalculateFcs(ctxt.addr, ctxt.control, ctxt.pid, ctxt.info, ctxt.fcs);
               --  InvertFcs(fcs, invertedFcs) (239,33)
               p‹wait‹datareceival‹InvertFcs(ctxt.fcs, ctxt.invertedFcs);
               --  PackData(startFlag, addr, control, pid, info, invertedFcs, endFlag, frame) (241,33)
               p‹wait‹datareceival‹PackData(ctxt.startFlag, ctxt.addr, ctxt.control, ctxt.pid, ctxt.info, ctxt.invertedFcs, ctxt.endFlag, ctxt.frame);
               --  SendFrame(frame) (243,35)
               RI‹SendFrame(ctxt.frame'Access);
               --  RETURN  (None,None) at 398, 549
               ctxt.wait‹datareceival‹state := ‹finished;
               if ctxt.wait‹framereceival‹state = ‹finished then
                  return;
               else
                  trId := -1;
                  goto next_transition;
               end if;
            when 3 =>
               --  NEXT_STATE wait‹framereceival‹frameReceival (439,34) at 6, 51
               trId := -1;
               ctxt.wait‹framereceival‹state := wait‹framereceival‹frameReceival;
               goto next_transition;
            when 4 =>
               --  UnpackFrame(frame, addr, control, pid, info, fcs) (445,33)
               p‹wait‹framereceival‹UnpackFrame(ctxt.frame, ctxt.addr, ctxt.control, ctxt.pid, ctxt.info, ctxt.fcs);
               --  FrameCalculateFcs(addr, control, pid, info, calculatedFcs) (447,33)
               p‹wait‹framereceival‹FrameCalculateFcs(ctxt.addr, ctxt.control, ctxt.pid, ctxt.info, ctxt.wait‹framereceival‹calculatedfcs);
               --  FrameInvertFcs(calculatedFcs, invertedFcs) (449,33)
               p‹wait‹framereceival‹FrameInvertFcs(ctxt.wait‹framereceival‹calculatedfcs, ctxt.invertedFcs);
               --  DECISION invertedFcs = fcs (451,49)
               --  ANSWER true (453,33)
               if (MyFcs_Equal(ctxt.invertedFcs, ctxt.fcs)) = true then
                  --  SendData(info) (455,43)
                  RI‹SendData(ctxt.info'Access);
                  --  ANSWER false (457,33)
               elsif (MyFcs_Equal(ctxt.invertedFcs, ctxt.fcs)) = false then
                  null;
               end if;
               --  RETURN  (None,None) at 367, 414
               ctxt.wait‹framereceival‹state := ‹finished;
               if ctxt.wait‹datareceival‹state = ‹finished then
                  return;
               else
                  trId := -1;
                  goto next_transition;
               end if;
            when CS_Only =>
               trId := -1;
               goto next_transition;
            when others =>
               null;
         end case;
         goto next_transition;
         --  CONNECTION waiting (489,8)
         <<waiting>>
         --  NEXT_STATE Wait (491,18) at 309, 110
         -- Entering state aggregation Wait
         wait‹START;
         ctxt.state := Wait;
         trId := -1;
         goto next_transition;
         <<next_transition>>
         null;
      end loop;
   end runTransition;
   

begin
   runTransition(0);
   ctxt.initDone := True;
end framemanager;