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

package body node is
   type States is (wait‹rawdatareceival, wait‹datareceival‹datareceival, wait‹datareceival, wait‹acknowledgementreceival‹acknowledgementreceival, ‹finished, wait‹acknowledgementreceival, wait‹rawdatareceival‹rawdatareceival, wait, wait‹datareceival‹framecountreceival);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      wait‹acknowledgementreceival‹state: States;
      wait‹rawdatareceival‹state: States;
      wait‹datareceival‹state: States;
      invertedifcs : aliased MyIfcs;
      wait‹datareceival‹l3ackmissingstack : aliased MyL3AckMissingStack;
      wait‹datareceival‹ackdata : aliased MyAckData;
      code : aliased MyCode;
      ba : aliased MyBa;
      wait‹rawdatareceival‹timetoend : aliased MyRawDataInteger;
      wait‹rawdatareceival‹l3stack : aliased MyL3Stack;
      wait‹datareceival‹lastwrittenframe : aliased My8BitArrayValueInteger := 1;
      wait‹datareceival‹currentframe : aliased My8BitArrayValueInteger := 0;
      wait‹datareceival‹l3missingdataframes : aliased MyL3MissingStack;
      l3mrt : aliased MyL3Mrt;
      wait‹datareceival‹framenumber : aliased My8BitArrayValueInteger;
      l3rrq : aliased MyL3Rrq;
      wait‹datareceival‹l3lfn : aliased My8BitArray;
      wait‹rawdatareceival‹noofmissingframe : aliased My8BitArrayValueInteger;
      wait‹acknowledgementreceival‹l3rrqposition : aliased MyL3RrqInteger;
      cntrl : aliased MyCntrl;
      wait‹rawdatareceival‹sentl3stack : aliased MyL3Stack;
      l3lfn : aliased MyL3Lfn;
      wait‹rawdatareceival‹noofsentframes : aliased MyL3StackInteger := 0;
      wait‹rawdatareceival‹noofframe : aliased My8BitArrayValueInteger := 0;
      info : aliased MyInfo;
      wait‹datareceival‹framecounter : aliased My8BitArrayValueInteger := 0;
      wait‹datareceival‹receivedl3data : aliased MyL3Stack;
      l3data : aliased MyL3Data;
      l3hfn : aliased MyL3Hfn;
      l3fnum : aliased MyL3Fnum;
      wait‹datareceival‹calculatedifcs : aliased MyL3Fcs;
      wait‹datareceival‹previousframe : aliased My8BitArrayValueInteger := 0;
      operationdata : aliased MyOperationData;
      ifcs : aliased MyIfcs;
      wait‹datareceival‹timetoend : aliased My16BitArrayValueInteger;
      l3tte : aliased MyL3Tte;
      wait‹datareceival‹receivedl3dataframes : aliased MyL3StackNumbers;
      wait‹datareceival‹writableframe : aliased My8BitArrayValueInteger := 1;
      wait‹datareceival‹l3hfn : aliased My8BitArray;
      wait‹rawdatareceival‹i : aliased MyL3AckMissingStackInteger := 0;
      ackdata : aliased MyAckData;
      inputdata : aliased MyInputData;
      framecount : aliased My8BitArrayValueInteger;
      rawdata : aliased MyRawData;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 8;
   wait‹datareceival‹START : constant := 5;
   wait‹rawdatareceival‹START : constant := 3;
   wait‹acknowledgementreceival‹START : constant := 1;
   procedure wait‹START;
   procedure runTransition(Id: Integer);
   procedure p‹wait‹acknowledgementreceival‹PackAckOperationData(l3Tte: in MyL3Tte;l3Mrt: in MyL3Mrt;l3Lfn: in MyL3Lfn;l3Hfn: in MyL3Hfn;l3Data: in MyL3Rrq;operationData: in out MyOperationData);
   procedure p‹wait‹acknowledgementreceival‹CalculateAckFcs(ba: in MyBa;code: in MyCode;l3Tte: in MyL3Tte;l3Mrt: in MyL3Mrt;l3Lfn: in MyL3Lfn;l3Hfn: in MyL3Hfn;l3Rrq: in MyL3Rrq;ifcs: in out MyIfcs);
   procedure p‹wait‹acknowledgementreceival‹AckIntegerTo16BitArray(inti: in My16BitArrayValueInteger;bitArray: in out My16BitArray);
   procedure p‹wait‹acknowledgementreceival‹AckInvertFcs(ifcs: in MyIfcs;invertedIfcs: in out MyIfcs);
   procedure p‹wait‹acknowledgementreceival‹AckPackInfo(ba: in MyBa;cntrl: in MyCntrl;code: in MyCode;operationData: in MyOperationData;ifcs: in MyIfcs;info: in out MyInfo);
   procedure p‹wait‹rawdatareceival‹IntegerTo8BitArray(inti: in My8BitArrayValueInteger;bitArray: in out My8BitArray);
   procedure p‹wait‹rawdatareceival‹PackOperationData(l3Tte: in MyL3Tte;l3Mrt: in MyL3Mrt;l3Fnum: in MyL3Fnum;l3Data: in MyL3Data;operationData: in out MyOperationData);
   procedure p‹wait‹rawdatareceival‹PackInfo(ba: in MyBa;cntrl: in MyCntrl;code: in MyCode;operationData: in MyOperationData;ifcs: in MyIfcs;info: in out MyInfo);
   procedure p‹wait‹rawdatareceival‹DataToL3Frames(rawData: in MyRawData;l3Stack: in out MyL3Stack);
   procedure p‹wait‹rawdatareceival‹IntegerTo16BitArray(inti: in My16BitArrayValueInteger;bitArray: in out My16BitArray);
   procedure p‹wait‹rawdatareceival‹CalculateFcs(ba: in MyBa;code: in MyCode;l3Tte: in MyL3Tte;l3Mrt: in MyL3Mrt;l3Fnum: in MyL3Fnum;l3Data: in MyL3Data;ifcs: in out MyIfcs);
   procedure p‹wait‹rawdatareceival‹CalculateResendTte(l3AckMissingStack: in MyL3AckMissingStack;l3Stack: in MyL3Stack;timeToEnd: in out MyRawDataInteger);
   procedure p‹wait‹rawdatareceival‹InvertFcs(ifcs: in MyIfcs;invertedIfcs: in out MyIfcs);
   procedure p‹wait‹datareceival‹UnpackAckOperationData(operationData: in MyOperationData;l3Tte: in out MyL3Tte;l3Mrt: in out MyL3Mrt;l3Lfn: in out MyL3Lfn;l3Hfn: in out MyL3Hfn;l3Rrq: in out MyL3Rrq);
   procedure p‹wait‹datareceival‹InitialiseHfn(receivedL3DataFrames: in MyL3StackNumbers;l3Hfn: in out My8BitArray);
   procedure p‹wait‹datareceival‹InitialiseLfn(receivedL3DataFrames: in MyL3StackNumbers;l3Lfn: in out My8BitArray);
   procedure p‹wait‹datareceival‹CheckMissingData(receivedL3DataFrames: in MyL3StackNumbers;l3MissingData: in out MyBoolean);
   procedure p‹wait‹datareceival‹ArrayOf16BitsToInteger(bitArray: in My16BitArray;inti: in out My16BitArrayValueInteger);
   procedure p‹wait‹datareceival‹UnpackOperationData(operationData: in MyOperationData;l3Tte: in out MyL3Tte;l3Mrt: in out MyL3Mrt;l3Fnum: in out MyL3Fnum;l3Data: in out MyL3Data);
   procedure p‹wait‹datareceival‹UnpackInfo(info: in MyInfo;ba: in out MyBa;cntrl: in out MyCntrl;code: in out MyCode;operationData: in out MyOperationData;ifcs: in out MyIfcs);
   procedure p‹wait‹datareceival‹ArrayOf8BitsToInteger(bitArray: in My8BitArray;inti: in out My8BitArrayValueInteger);
   procedure p‹wait‹datareceival‹InitialiseMissingData(receivedL3Data: in MyL3Stack;receivedL3DataFrames: in MyL3StackNumbers;l3MissingDataFrames: in out MyL3MissingStack);
   procedure p‹wait‹datareceival‹InitialiseMissingDataNumbers(l3Rrq: in MyL3Rrq;l3AckMissingStack: in out MyL3AckMissingStack);
   procedure p‹wait‹datareceival‹InitialiseRawData(lastWrittenFrame: in My8BitArrayValueInteger;writableFrame: in My8BitArrayValueInteger;receivedL3Data: in MyL3Stack;rawData: in out MyRawData);
   procedure p‹wait‹datareceival‹DataIntegerTo8BitArray(inti: in My8BitArrayValueInteger;bitArray: in out My8BitArray);
   procedure p‹wait‹datareceival‹DataCalculateFcs(ba: in MyBa;code: in MyCode;l3Tte: in MyL3Tte;l3Mrt: in MyL3Mrt;l3Fnum: in MyL3Fnum;l3Data: in MyL3Data;ifcs: in out MyIfcs);
   procedure p‹wait‹datareceival‹DataInvertFcs(ifcs: in MyIfcs;invertedIfcs: in out MyIfcs);
   procedure p‹wait‹datareceival‹DataCalculateAckFcs(ba: in MyBa;code: in MyCode;l3Tte: in MyL3Tte;l3Mrt: in MyL3Mrt;l3Lfn: in MyL3Lfn;l3Hfn: in MyL3Hfn;l3Rrq: in MyL3Rrq;ifcs: in out MyIfcs);
   procedure p‹wait‹acknowledgementreceival‹PackAckOperationData(l3Tte: in MyL3Tte;l3Mrt: in MyL3Mrt;l3Lfn: in MyL3Lfn;l3Hfn: in MyL3Hfn;l3Data: in MyL3Rrq;operationData: in out MyOperationData) is
      begin
         --  TASK for i in range(0, length(operationData(0)), 1):
         --    operationData(0)(i) := l3Tte(i)
         --  endfor (30,33)
         for i in 0 .. 7 loop
            --  operationData(0)(i) := l3Tte(i) (31,2)
            operationData.Data(1).Data(1 + Integer(i)) := l3Tte.Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(0, length(operationData(1)), 1):
         --    operationData(1)(i) := l3Tte(i + 8)
         --  endfor (34,33)
         for i in 0 .. 7 loop
            --  operationData(1)(i) := l3Tte(i + 8) (35,2)
            operationData.Data(2).Data(1 + Integer(i)) := l3Tte.Data(1 + Integer((i + 8)));
         end loop;
         --  TASK for i in range(0, length(operationData(2)), 1):
         --    operationData(2)(i) := l3Mrt(i)
         --  endfor (38,33)
         for i in 0 .. 7 loop
            --  operationData(2)(i) := l3Mrt(i) (39,2)
            operationData.Data(3).Data(1 + Integer(i)) := l3Mrt.Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(0, length(operationData(3)), 1):
         --    operationData(3)(i) := l3Mrt(i + 8)
         --  endfor (42,33)
         for i in 0 .. 7 loop
            --  operationData(3)(i) := l3Mrt(i + 8) (43,2)
            operationData.Data(4).Data(1 + Integer(i)) := l3Mrt.Data(1 + Integer((i + 8)));
         end loop;
         --  TASK for i in range(0, length(operationData(4)), 1):
         --    operationData(4)(i) := l3Lfn(i)
         --  endfor (46,33)
         for i in 0 .. 7 loop
            --  operationData(4)(i) := l3Lfn(i) (47,2)
            operationData.Data(5).Data(1 + Integer(i)) := l3Lfn.Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(0, length(operationData(5)), 1):
         --    operationData(5)(i) := l3Hfn(i)
         --  endfor (50,33)
         for i in 0 .. 7 loop
            --  operationData(5)(i) := l3Hfn(i) (51,2)
            operationData.Data(6).Data(1 + Integer(i)) := l3Hfn.Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(6, length(l3Rrq) + 6, 1):
         --    operationData(i) := l3Rrq(i - 6)
         --  endfor (54,33)
         for i in 6 .. Integer ((ctxt.l3Rrq.Length + 6)) - 1 loop
            --  operationData(i) := l3Rrq(i - 6) (55,2)
            operationData.Data(1 + Integer(i)) := ctxt.l3Rrq.Data(1 + Integer((i - 6)));
         end loop;
         --  RETURN  (None,None) at 155, 543
         return;
      end p‹wait‹acknowledgementreceival‹PackAckOperationData;
      

   procedure p‹wait‹acknowledgementreceival‹CalculateAckFcs(ba: in MyBa;code: in MyCode;l3Tte: in MyL3Tte;l3Mrt: in MyL3Mrt;l3Lfn: in MyL3Lfn;l3Hfn: in MyL3Hfn;l3Rrq: in MyL3Rrq;ifcs: in out MyIfcs) is
      l3ackfcsstack : aliased MyL3AckFcsStack;
      l3fcspolynomial : aliased MyL3FcsPolynomial;
      position : aliased My16BitArrayInteger;
      l3ackdatastack : aliased MyL3AckDataStack;
      l3fcsxorresult : aliased MyL3FcsPolynomial;
      k : aliased MyL3FcsStackInteger := 0;
      fcsposition : aliased MyFcsPolynomialInteger;
      tmp354 : MyL3FcsStackInteger;
      begin
         --  TASK for i in range(0, 4, 1):
         --    l3AckFcsStack(i) := ba!srcAddr(i)
         --  endfor (92,33)
         for i in 0 .. 3 loop
            --  l3AckFcsStack(i) := ba!srcAddr(i) (93,2)
            l3AckFcsStack.Data(1 + Integer(i)) := ba.srcaddr.Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(4, 8, 1):
         --    l3AckFcsStack(i) := ba!dstAddr(i - 4)
         --  endfor (96,33)
         for i in 4 .. 7 loop
            --  l3AckFcsStack(i) := ba!dstAddr(i - 4) (97,2)
            l3AckFcsStack.Data(1 + Integer(i)) := ba.dstaddr.Data(1 + Integer((i - 4)));
         end loop;
         --  TASK for i in range(8, 16, 1):
         --    l3AckFcsStack(i) := code(i - 8)
         --  endfor (100,33)
         for i in 8 .. 15 loop
            --  l3AckFcsStack(i) := code(i - 8) (101,2)
            l3AckFcsStack.Data(1 + Integer(i)) := code.Data(1 + Integer((i - 8)));
         end loop;
         --  TASK for i in range(16, 24, 1):
         --    l3AckFcsStack(i) := l3Tte(i - 16)
         --  endfor (104,33)
         for i in 16 .. 23 loop
            --  l3AckFcsStack(i) := l3Tte(i - 16) (105,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3Tte.Data(1 + Integer((i - 16)));
         end loop;
         --  TASK for i in range(24, 32, 1):
         --    l3AckFcsStack(i) := l3Tte(i - 16)
         --  endfor (108,33)
         for i in 24 .. 31 loop
            --  l3AckFcsStack(i) := l3Tte(i - 16) (109,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3Tte.Data(1 + Integer((i - 16)));
         end loop;
         --  TASK for i in range(32, 40, 1):
         --    l3AckFcsStack(i) := l3Mrt(i - 32)
         --  endfor (112,33)
         for i in 32 .. 39 loop
            --  l3AckFcsStack(i) := l3Mrt(i - 32) (113,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3Mrt.Data(1 + Integer((i - 32)));
         end loop;
         --  TASK for i in range(40, 48, 1):
         --    l3AckFcsStack(i) := l3Mrt(i - 32)
         --  endfor (116,33)
         for i in 40 .. 47 loop
            --  l3AckFcsStack(i) := l3Mrt(i - 32) (117,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3Mrt.Data(1 + Integer((i - 32)));
         end loop;
         --  TASK for i in range(48, 56, 1):
         --    l3AckFcsStack(i) := l3Lfn(i - 48)
         --  endfor (120,33)
         for i in 48 .. 55 loop
            --  l3AckFcsStack(i) := l3Lfn(i - 48) (121,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3Lfn.Data(1 + Integer((i - 48)));
         end loop;
         --  TASK for i in range(56, 64, 1):
         --    l3AckFcsStack(i) := l3Hfn(i - 56)
         --  endfor (124,33)
         for i in 56 .. 63 loop
            --  l3AckFcsStack(i) := l3Hfn(i - 56) (125,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3Hfn.Data(1 + Integer((i - 56)));
         end loop;
         --  TASK for i in range(0, length(l3Rrq), 1):
         --    for j in range(0, length(l3Rrq(i)), 1):
         --      l3AckDataStack((i*8)+j) := l3Rrq(i)(j)
         --    endfor
         --  endfor (128,33)
         for i in 0 .. Integer (l3Rrq.Length) - 1 loop
            --  TASK for j in range(0, length(l3Rrq(i)), 1):
            --      l3AckDataStack((i*8)+j) := l3Rrq(i)(j)
            --    endfor (129,2)
            for j in 0 .. 7 loop
               --  l3AckDataStack((i*8)+j) := l3Rrq(i)(j) (130,4)
               l3AckDataStack.Data(1 + Integer(((i * 8) + j))) := l3Rrq.Data(1 + Integer(i)).Data(1 + Integer(j));
            end loop;
         end loop;
         --  TASK for i in range(64, length(l3AckDataStack) + 64, 1):
         --    l3AckFcsStack(i) := l3AckDataStack(i - 72)
         --  endfor (134,33)
         for i in 64 .. Integer ((l3AckDataStack.Length + 64)) - 1 loop
            --  l3AckFcsStack(i) := l3AckDataStack(i - 72) (135,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3AckDataStack.Data(1 + Integer((i - 72)));
         end loop;
         --  TASK for i in range(length(l3AckDataStack)+64, length(l3AckDataStack)+80, 1):
         --    l3AckFcsStack(i) := false
         --  endfor (138,33)
         for i in Integer ((l3AckDataStack.Length + 64)) .. Integer ((l3AckDataStack.Length + 80)) - 1 loop
            --  l3AckFcsStack(i) := false (139,2)
            l3AckFcsStack.Data(1 + Integer(i)) := false;
         end loop;
         --  l3FcsPolynomial := {true, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, true} (142,33)
         l3FcsPolynomial := (Data => (1 => true, 2 => false, 3 => false, 4 => false, 5 => true, 6 => false, 7 => false, 8 => false, 9 => false, 10 => false, 11 => false, 12 => true, 13 => false, 14 => false, 15 => false, 16 => false, 17 => true, others => true));
         --  JOIN calculation (None,None) at None, None
         goto calculation;
         --  CONNECTION calculation (144,28)
         <<calculation>>
         --  DECISION l3AckFcsStack(k) = true (146,54)
         --  ANSWER true (148,33)
         if ((l3AckFcsStack.Data(1 + Integer(k)) = true)) = true then
            --  l3FcsXorResult := {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false} (150,41)
            l3FcsXorResult := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => false, 9 => false, 10 => false, 11 => false, 12 => false, 13 => false, 14 => false, 15 => false, 16 => false, 17 => false, others => false));
            --  COMMENT XOR operation (157,36)
            --  TASK for l in range(k, k + length(l3FcsPolynomial), 1):
            --    fcsPosition := l - k
            --    l3FcsXorResult(fcsPosition) := if l3AckFcsStack(l) = l3FcsPolynomial(fcsPosition) then false else true fi
            --  endfor (152,41)
            --  COMMENT XOR operation (157,36)
            for l in Integer (k) .. Integer ((k + 17)) - 1 loop
               declare
                  tmp292 : Boolean;
               begin
                  --  fcsPosition := l - k (153,2)
                  fcsPosition := (MyL3FcsStackInteger(l) - k);
                  --  l3FcsXorResult(fcsPosition) := if l3AckFcsStack(l) = l3FcsPolynomial(fcsPosition) then false else true fi (154,2)
                  if (l3AckFcsStack.Data(1 + Integer(l)) = l3FcsPolynomial.Data(1 + Integer(fcsPosition))) then
                     tmp292 := false;
                  else
                     tmp292 := true;
                  end if;
                  l3FcsXorResult.Data(1 + Integer(fcsPosition)) := tmp292;
               end;
            end loop;
            --  COMMENT Replace result (164,36)
            --  TASK for l in range(k, length(l3FcsXorResult) + k, 1):
            --    fcsPosition := l - k
            --    l3AckFcsStack(l) := l3FcsXorResult(fcsPosition)
            --  endfor (159,41)
            --  COMMENT Replace result (164,36)
            for l in Integer (k) .. Integer ((17 + k)) - 1 loop
               --  fcsPosition := l - k (160,2)
               fcsPosition := (MyL3FcsStackInteger(l) - k);
               --  l3AckFcsStack(l) := l3FcsXorResult(fcsPosition) (161,2)
               l3AckFcsStack.Data(1 + Integer(l)) := l3FcsXorResult.Data(1 + Integer(fcsPosition));
            end loop;
            --  ANSWER false (166,33)
         elsif ((l3AckFcsStack.Data(1 + Integer(k)) = true)) = false then
            null;
         end if;
         --  DECISION k = length(l3AckFcsStack) - length(l3FcsPolynomial) (169,39)
         --  ANSWER true (171,33)
         if ((k = Asn1UInt((l3AckFcsStack.Length - 17)))) = true then
            --  TASK for l in range(length(l3AckFcsStack) - (length(l3FcsPolynomial) - 2), length(l3AckFcsStack), 1):
            --    position := l - (length(l3AckFcsStack) - (length(l3FcsPolynomial) - 2))
            --    ifcs(position) := l3AckFcsStack(l)
            --  endfor (173,41)
            for l in Integer ((l3AckFcsStack.Length - 15)) .. Integer (l3AckFcsStack.Length) - 1 loop
               --  position := l - (length(l3AckFcsStack) - (length(l3FcsPolynomial) - 2)) (174,2)
               position := Asn1UInt((l - (l3AckFcsStack.Length - 15)));
               --  ifcs(position) := l3AckFcsStack(l) (175,2)
               ifcs.Data(1 + Integer(position)) := l3AckFcsStack.Data(1 + Integer(l));
            end loop;
            --  RETURN  (None,None) at 303, 1710
            return;
            --  ANSWER false (180,33)
         elsif ((k = Asn1UInt((l3AckFcsStack.Length - 17)))) = false then
            --  COMMENT Shift right (184,36)
            --  k := if k = 2023 then k else k + 1 fi (182,41)
            if (k = 2023) then
               tmp354 := k;
            else
               tmp354 := (k + 1);
            end if;
            k := tmp354;
            --  JOIN calculation (186,41) at 877, 1669
            goto calculation;
         end if;
      end p‹wait‹acknowledgementreceival‹CalculateAckFcs;
      

   procedure p‹wait‹acknowledgementreceival‹AckIntegerTo16BitArray(inti: in My16BitArrayValueInteger;bitArray: in out My16BitArray) is
      i : aliased My16BitArrayInteger := 0;
      bitvalue : aliased My16BitArrayValueInteger := 65535;
      value : aliased My16BitArrayValueInteger := 0;
      tmp374 : My16BitArrayValueInteger;
      tmp395 : My16BitArrayInteger;
      tmp367 : Boolean;
      begin
         --  value := inti (208,33)
         value := inti;
         --  JOIN conversion (None,None) at None, None
         goto conversion;
         --  CONNECTION conversion (210,28)
         <<conversion>>
         --  bitArray(i) := if value>bitValue then true else false fi (212,33)
         if (value > bitValue) then
            tmp367 := true;
         else
            tmp367 := false;
         end if;
         bitArray.Data(1 + Integer(i)) := tmp367;
         --  value := if bitArray(i) = true then value-bitValue else value fi (213,0)
         if (bitArray.Data(1 + Integer(i)) = true) then
            tmp374 := (value - bitValue);
         else
            tmp374 := value;
         end if;
         value := tmp374;
         --  DECISION i = 15 (215,39)
         --  ANSWER true (217,33)
         if ((i = 15)) = true then
            --  RETURN  (None,None) at 206, 334
            return;
            --  ANSWER false (221,33)
         elsif ((i = 15)) = false then
            --  bitValue := bitValue / 2 (223,41)
            bitValue := Asn1UInt((bitValue / 2));
            --  i := if i = 15 then i else i + 1 fi (224,0)
            if (i = 15) then
               tmp395 := i;
            else
               tmp395 := (i + 1);
            end if;
            i := tmp395;
            --  JOIN conversion (226,41) at 520, 388
            goto conversion;
         end if;
      end p‹wait‹acknowledgementreceival‹AckIntegerTo16BitArray;
      

   procedure p‹wait‹acknowledgementreceival‹AckInvertFcs(ifcs: in MyIfcs;invertedIfcs: in out MyIfcs) is
      i : aliased My16BitArrayInteger := 0;
      begin
         --  TASK for ii in range(0, length(ifcs), 1):
         --    invertedIfcs(15-ii) := ifcs(i)
         --  endfor (245,33)
         for ii in 0 .. 15 loop
            --  invertedIfcs(15-ii) := ifcs(i) (246,2)
            invertedIfcs.Data(1 + Integer((15 - ii))) := ifcs.Data(1 + Integer(i));
         end loop;
         --  RETURN  (None,None) at 99, 118
         return;
      end p‹wait‹acknowledgementreceival‹AckInvertFcs;
      

   procedure p‹wait‹acknowledgementreceival‹AckPackInfo(ba: in MyBa;cntrl: in MyCntrl;code: in MyCode;operationData: in MyOperationData;ifcs: in MyIfcs;info: in out MyInfo) is
      begin
         --  info!ba := ba (269,33)
         info.ba := ba;
         --  info!cntrl := cntrl (270,0)
         info.cntrl := cntrl;
         --  info!code := code (271,0)
         info.code := code;
         --  info!operationData := operationData (272,0)
         info.operationdata := operationData;
         --  info!ifcs := ifcs (273,0)
         info.ifcs := ifcs;
         --  RETURN  (None,None) at 160, 158
         return;
      end p‹wait‹acknowledgementreceival‹AckPackInfo;
      

   procedure p‹wait‹rawdatareceival‹IntegerTo8BitArray(inti: in My8BitArrayValueInteger;bitArray: in out My8BitArray) is
      i : aliased My8BitArrayInteger := 0;
      bitvalue : aliased My8BitArrayValueInteger := 255;
      value : aliased My8BitArrayValueInteger := 0;
      tmp573 : My8BitArrayInteger;
      tmp552 : My8BitArrayValueInteger;
      tmp545 : Boolean;
      begin
         --  value := inti (361,33)
         value := inti;
         --  JOIN conversion (None,None) at None, None
         goto conversion;
         --  CONNECTION conversion (363,28)
         <<conversion>>
         --  bitArray(i) := if value>bitValue then true else false fi (365,33)
         if (value > bitValue) then
            tmp545 := true;
         else
            tmp545 := false;
         end if;
         bitArray.Data(1 + Integer(i)) := tmp545;
         --  value := if bitArray(i) = true then value-bitValue else value fi (366,0)
         if (bitArray.Data(1 + Integer(i)) = true) then
            tmp552 := (value - bitValue);
         else
            tmp552 := value;
         end if;
         value := tmp552;
         --  DECISION i = 7 (368,39)
         --  ANSWER true (370,33)
         if ((i = 7)) = true then
            --  RETURN  (None,None) at 334, 333
            return;
            --  ANSWER false (374,33)
         elsif ((i = 7)) = false then
            --  bitValue := bitValue / 2 (376,41)
            bitValue := Asn1UInt((bitValue / 2));
            --  i := if i = 7 then i else i + 1 fi (377,0)
            if (i = 7) then
               tmp573 := i;
            else
               tmp573 := (i + 1);
            end if;
            i := tmp573;
            --  JOIN conversion (379,41) at 82, 386
            goto conversion;
         end if;
      end p‹wait‹rawdatareceival‹IntegerTo8BitArray;
      

   procedure p‹wait‹rawdatareceival‹PackOperationData(l3Tte: in MyL3Tte;l3Mrt: in MyL3Mrt;l3Fnum: in MyL3Fnum;l3Data: in MyL3Data;operationData: in out MyOperationData) is
      begin
         --  TASK for ii in range(0, length(operationData(0)), 1):
         --    operationData(0)(ii) := l3Tte(ii)
         --  endfor (399,33)
         for ii in 0 .. 7 loop
            --  operationData(0)(ii) := l3Tte(ii) (400,2)
            operationData.Data(1).Data(1 + Integer(ii)) := l3Tte.Data(1 + Integer(ii));
         end loop;
         --  TASK for ii in range(0, length(operationData(1)), 1):
         --    operationData(1)(ii) := l3Tte(ii + 8)
         --  endfor (403,33)
         for ii in 0 .. 7 loop
            --  operationData(1)(ii) := l3Tte(ii + 8) (404,2)
            operationData.Data(2).Data(1 + Integer(ii)) := l3Tte.Data(1 + Integer((ii + 8)));
         end loop;
         --  TASK for ii in range(0, length(operationData(2)), 1):
         --    operationData(2)(ii) := l3Mrt(ii)
         --  endfor (407,33)
         for ii in 0 .. 7 loop
            --  operationData(2)(ii) := l3Mrt(ii) (408,2)
            operationData.Data(3).Data(1 + Integer(ii)) := l3Mrt.Data(1 + Integer(ii));
         end loop;
         --  TASK for ii in range(0, length(operationData(3)), 1):
         --    operationData(3)(ii) := l3Mrt(ii + 8)
         --  endfor (411,33)
         for ii in 0 .. 7 loop
            --  operationData(3)(ii) := l3Mrt(ii + 8) (412,2)
            operationData.Data(4).Data(1 + Integer(ii)) := l3Mrt.Data(1 + Integer((ii + 8)));
         end loop;
         --  TASK for ii in range(0, length(operationData(4)), 1):
         --    operationData(4)(ii) := l3Fnum(ii)
         --  endfor (415,33)
         for ii in 0 .. 7 loop
            --  operationData(4)(ii) := l3Fnum(ii) (416,2)
            operationData.Data(5).Data(1 + Integer(ii)) := l3Fnum.Data(1 + Integer(ii));
         end loop;
         --  TASK for ii in range(5, length(l3Data) + 5, 1):
         --    operationData(ii) := l3Data(ii - 5)
         --  endfor (419,33)
         for ii in 5 .. Integer ((l3Data.Length + 5)) - 1 loop
            --  operationData(ii) := l3Data(ii - 5) (420,2)
            operationData.Data(1 + Integer(ii)) := l3Data.Data(1 + Integer((ii - 5)));
         end loop;
         --  RETURN  (None,None) at 155, 473
         return;
      end p‹wait‹rawdatareceival‹PackOperationData;
      

   procedure p‹wait‹rawdatareceival‹PackInfo(ba: in MyBa;cntrl: in MyCntrl;code: in MyCode;operationData: in MyOperationData;ifcs: in MyIfcs;info: in out MyInfo) is
      begin
         --  info!ba := ba (443,33)
         info.ba := ba;
         --  info!cntrl := cntrl (444,0)
         info.cntrl := cntrl;
         --  info!code := code (445,0)
         info.code := code;
         --  info!operationData := operationData (446,0)
         info.operationdata := operationData;
         --  info!ifcs := ifcs (447,0)
         info.ifcs := ifcs;
         --  RETURN  (None,None) at 160, 158
         return;
      end p‹wait‹rawdatareceival‹PackInfo;
      

   procedure p‹wait‹rawdatareceival‹DataToL3Frames(rawData: in MyRawData;l3Stack: in out MyL3Stack) is
      lastoctet : aliased MyRawDataInteger;
      l3data : aliased MyL3Data;
      l3dataposition : aliased MyL3DataInteger;
      currentoctet : aliased MyRawDataInteger := 0;
      framecounter : aliased MyL3StackInteger := 0;
      tmp722 : MyRawDataInteger;
      tmp687 : MyRawDataInteger;
      tmp713 : MyL3StackInteger;
      begin
         --  JOIN converting (None,None) at None, None
         goto converting;
         --  CONNECTION converting (473,28)
         <<converting>>
         --  DECISION length(rawData) - currentOctet > 244 (475,68)
         --  ANSWER true (477,33)
         if (((MyRawDataInteger(rawData.Length) - currentOctet) > 244)) = true then
            --  lastOctet := if currentOctet = 62475 then lastOctet else currentOctet + 245 fi (479,41)
            if (currentOctet = 62475) then
               tmp687 := lastOctet;
            else
               tmp687 := (currentOctet + 245);
            end if;
            lastOctet := tmp687;
            --  COMMENT Part of array of octets to array of L3 data (486,36)
            --  TASK for ii in range(currentOctet, lastOctet, 1):
            --    l3DataPosition := ii - currentOctet
            --    l3Data(l3DataPosition) := inputData!rawData(ii)
            --  endfor (481,41)
            --  COMMENT Part of array of octets to array of L3 data (486,36)
            for ii in Integer (currentOctet) .. Integer (lastOctet) - 1 loop
               --  l3DataPosition := ii - currentOctet (482,2)
               l3DataPosition := (MyRawDataInteger(ii) - currentOctet);
               --  l3Data(l3DataPosition) := inputData!rawData(ii) (483,2)
               ctxt.inputData.Exist.rawdata := 1;
               l3Data.Data(1 + Integer(l3DataPosition)) := ctxt.inputData.rawdata.Data(1 + Integer(ii));
            end loop;
            --  l3Stack(frameCounter) := l3Data (488,41)
            l3Stack.Data(1 + Integer(frameCounter)) := l3Data;
            --  frameCounter := if frameCounter = 254 then frameCounter else frameCounter + 1 fi (489,0)
            if (frameCounter = 254) then
               tmp713 := frameCounter;
            else
               tmp713 := (frameCounter + 1);
            end if;
            frameCounter := tmp713;
            --  currentOctet := if currentOctet = 62475 then currentOctet else currentOctet + 245 fi (490,0)
            if (currentOctet = 62475) then
               tmp722 := currentOctet;
            else
               tmp722 := (currentOctet + 245);
            end if;
            currentOctet := tmp722;
            --  ANSWER false (492,33)
         elsif (((MyRawDataInteger(rawData.Length) - currentOctet) > 244)) = false then
            --  TASK for ii in range(currentOctet, length(rawData), 1):
            --    l3DataPosition := ii - currentOctet
            --    l3Data(l3DataPosition) := inputData!rawData(ii)
            --  endfor (494,41)
            for ii in Integer (currentOctet) .. Integer (rawData.Length) - 1 loop
               --  l3DataPosition := ii - currentOctet (495,2)
               l3DataPosition := (MyRawDataInteger(ii) - currentOctet);
               --  l3Data(l3DataPosition) := inputData!rawData(ii) (496,2)
               ctxt.inputData.Exist.rawdata := 1;
               l3Data.Data(1 + Integer(l3DataPosition)) := ctxt.inputData.rawdata.Data(1 + Integer(ii));
            end loop;
            --  l3Stack(frameCounter) := l3Data (499,41)
            l3Stack.Data(1 + Integer(frameCounter)) := l3Data;
            --  RETURN  (None,None) at 990, 372
            return;
         end if;
         --  JOIN converting (504,33) at 669, 436
         goto converting;
      end p‹wait‹rawdatareceival‹DataToL3Frames;
      

   procedure p‹wait‹rawdatareceival‹IntegerTo16BitArray(inti: in My16BitArrayValueInteger;bitArray: in out My16BitArray) is
      i : aliased My16BitArrayInteger := 0;
      bitvalue : aliased My16BitArrayValueInteger := 65535;
      value : aliased My16BitArrayValueInteger := 0;
      tmp782 : My16BitArrayInteger;
      tmp754 : Boolean;
      tmp761 : My16BitArrayValueInteger;
      begin
         --  value := inti (525,33)
         value := inti;
         --  JOIN conversion (None,None) at None, None
         goto conversion;
         --  CONNECTION conversion (527,28)
         <<conversion>>
         --  bitArray(i) := if value>bitValue then true else false fi (529,33)
         if (value > bitValue) then
            tmp754 := true;
         else
            tmp754 := false;
         end if;
         bitArray.Data(1 + Integer(i)) := tmp754;
         --  value := if bitArray(i) = true then value-bitValue else value fi (530,0)
         if (bitArray.Data(1 + Integer(i)) = true) then
            tmp761 := (value - bitValue);
         else
            tmp761 := value;
         end if;
         value := tmp761;
         --  DECISION i = 15 (532,39)
         --  ANSWER true (534,33)
         if ((i = 15)) = true then
            --  RETURN  (None,None) at 206, 334
            return;
            --  ANSWER false (538,33)
         elsif ((i = 15)) = false then
            --  bitValue := bitValue / 2 (540,41)
            bitValue := Asn1UInt((bitValue / 2));
            --  i := if i = 15 then i else i + 1 fi (541,0)
            if (i = 15) then
               tmp782 := i;
            else
               tmp782 := (i + 1);
            end if;
            i := tmp782;
            --  JOIN conversion (543,41) at 520, 388
            goto conversion;
         end if;
      end p‹wait‹rawdatareceival‹IntegerTo16BitArray;
      

   procedure p‹wait‹rawdatareceival‹CalculateFcs(ba: in MyBa;code: in MyCode;l3Tte: in MyL3Tte;l3Mrt: in MyL3Mrt;l3Fnum: in MyL3Fnum;l3Data: in MyL3Data;ifcs: in out MyIfcs) is
      l3fcspolynomial : aliased MyL3FcsPolynomial;
      position : aliased My16BitArrayInteger;
      l3fcsstack : aliased MyL3FcsStack;
      k : aliased MyL3FcsStackInteger := 0;
      l3fcsxorresult : aliased MyL3FcsPolynomial;
      fcsposition : aliased MyFcsPolynomialInteger;
      l3datastack : aliased MyL3DataStack;
      tmp1034 : MyL3FcsStackInteger;
      begin
         --  COMMENT ERROR HERE (581,28)
         --  TASK for ii in range(0, 4, 1):
         --    l3FcsStack(ii) := ba!srcAddr(ii)
         --  endfor (577,33)
         --  COMMENT ERROR HERE (581,28)
         for ii in 0 .. 3 loop
            --  l3FcsStack(ii) := ba!srcAddr(ii) (578,2)
            l3FcsStack.Data(1 + Integer(ii)) := ba.srcaddr.Data(1 + Integer(ii));
         end loop;
         --  TASK for ii in range(4, 8, 1):
         --    l3FcsStack(ii) := ba!dstAddr(ii - 4)
         --  endfor (583,33)
         for ii in 4 .. 7 loop
            --  l3FcsStack(ii) := ba!dstAddr(ii - 4) (584,2)
            l3FcsStack.Data(1 + Integer(ii)) := ba.dstaddr.Data(1 + Integer((ii - 4)));
         end loop;
         --  TASK for ii in range(8, 16, 1):
         --    l3FcsStack(ii) := code(ii - 8)
         --  endfor (587,33)
         for ii in 8 .. 15 loop
            --  l3FcsStack(ii) := code(ii - 8) (588,2)
            l3FcsStack.Data(1 + Integer(ii)) := code.Data(1 + Integer((ii - 8)));
         end loop;
         --  TASK for ii in range(16, 24, 1):
         --    l3FcsStack(ii) := l3Tte(ii - 16)
         --  endfor (591,33)
         for ii in 16 .. 23 loop
            --  l3FcsStack(ii) := l3Tte(ii - 16) (592,2)
            l3FcsStack.Data(1 + Integer(ii)) := l3Tte.Data(1 + Integer((ii - 16)));
         end loop;
         --  TASK for ii in range(24, 32, 1):
         --    l3FcsStack(ii) := l3Tte(ii - 16)
         --  endfor (595,33)
         for ii in 24 .. 31 loop
            --  l3FcsStack(ii) := l3Tte(ii - 16) (596,2)
            l3FcsStack.Data(1 + Integer(ii)) := l3Tte.Data(1 + Integer((ii - 16)));
         end loop;
         --  TASK for ii in range(32, 40, 1):
         --    l3FcsStack(ii) := l3Mrt(ii - 32)
         --  endfor (599,33)
         for ii in 32 .. 39 loop
            --  l3FcsStack(ii) := l3Mrt(ii - 32) (600,2)
            l3FcsStack.Data(1 + Integer(ii)) := l3Mrt.Data(1 + Integer((ii - 32)));
         end loop;
         --  TASK for ii in range(40, 48, 1):
         --    l3FcsStack(ii) := l3Mrt(ii - 32)
         --  endfor (603,33)
         for ii in 40 .. 47 loop
            --  l3FcsStack(ii) := l3Mrt(ii - 32) (604,2)
            l3FcsStack.Data(1 + Integer(ii)) := l3Mrt.Data(1 + Integer((ii - 32)));
         end loop;
         --  TASK for ii in range(48, 56, 1):
         --    l3FcsStack(ii) := l3Fnum(ii - 48)
         --  endfor (607,33)
         for ii in 48 .. 55 loop
            --  l3FcsStack(ii) := l3Fnum(ii - 48) (608,2)
            l3FcsStack.Data(1 + Integer(ii)) := l3Fnum.Data(1 + Integer((ii - 48)));
         end loop;
         --  COMMENT Array of octets to array of bits (617,28)
         --  TASK for ii in range(0, length(l3Data), 1):
         --    for j in range(0, length(l3Data(ii)), 1):
         --      l3DataStack((ii*8)+j) := l3Data(ii)(j)
         --    endfor
         --  endfor (611,33)
         --  COMMENT Array of octets to array of bits (617,28)
         for ii in 0 .. Integer (l3Data.Length) - 1 loop
            --  TASK for j in range(0, length(l3Data(ii)), 1):
            --      l3DataStack((ii*8)+j) := l3Data(ii)(j)
            --    endfor (612,2)
            for j in 0 .. 7 loop
               --  l3DataStack((ii*8)+j) := l3Data(ii)(j) (613,4)
               l3DataStack.Data(1 + Integer(((ii * 8) + j))) := l3Data.Data(1 + Integer(ii)).Data(1 + Integer(j));
            end loop;
         end loop;
         --  TASK for ii in range(56, length(l3DataStack) + 56, 1):
         --    l3FcsStack(ii) := l3DataStack(ii - 56)
         --  endfor (619,33)
         for ii in 56 .. Integer ((l3DataStack.Length + 56)) - 1 loop
            --  l3FcsStack(ii) := l3DataStack(ii - 56) (620,2)
            l3FcsStack.Data(1 + Integer(ii)) := l3DataStack.Data(1 + Integer((ii - 56)));
         end loop;
         --  TASK for ii in range(length(l3DataStack)+56, length(l3DataStack)+72, 1):
         --    l3FcsStack(ii) := false
         --  endfor (623,33)
         for ii in Integer ((l3DataStack.Length + 56)) .. Integer ((l3DataStack.Length + 72)) - 1 loop
            --  l3FcsStack(ii) := false (624,2)
            l3FcsStack.Data(1 + Integer(ii)) := false;
         end loop;
         --  l3FcsPolynomial := {true, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, true} (627,33)
         l3FcsPolynomial := (Data => (1 => true, 2 => false, 3 => false, 4 => false, 5 => true, 6 => false, 7 => false, 8 => false, 9 => false, 10 => false, 11 => false, 12 => true, 13 => false, 14 => false, 15 => false, 16 => false, 17 => true, others => true));
         --  JOIN calculation (None,None) at None, None
         goto calculation;
         --  CONNECTION calculation (629,28)
         <<calculation>>
         --  DECISION l3FcsStack(k) = true (631,51)
         --  ANSWER true (633,33)
         if ((l3FcsStack.Data(1 + Integer(k)) = true)) = true then
            --  l3FcsXorResult := {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false} (635,41)
            l3FcsXorResult := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => false, 9 => false, 10 => false, 11 => false, 12 => false, 13 => false, 14 => false, 15 => false, 16 => false, 17 => false, others => false));
            --  COMMENT XOR operation (642,36)
            --  TASK for l in range(k, k + length(l3FcsPolynomial), 1):
            --    fcsPosition := l - k
            --    l3FcsXorResult(fcsPosition) := if l3FcsStack(l) = l3FcsPolynomial(fcsPosition) then false else true fi
            --  endfor (637,41)
            --  COMMENT XOR operation (642,36)
            for l in Integer (k) .. Integer ((k + 17)) - 1 loop
               declare
                  tmp972 : Boolean;
               begin
                  --  fcsPosition := l - k (638,2)
                  fcsPosition := (MyL3FcsStackInteger(l) - k);
                  --  l3FcsXorResult(fcsPosition) := if l3FcsStack(l) = l3FcsPolynomial(fcsPosition) then false else true fi (639,2)
                  if (l3FcsStack.Data(1 + Integer(l)) = l3FcsPolynomial.Data(1 + Integer(fcsPosition))) then
                     tmp972 := false;
                  else
                     tmp972 := true;
                  end if;
                  l3FcsXorResult.Data(1 + Integer(fcsPosition)) := tmp972;
               end;
            end loop;
            --  COMMENT Replace result (649,36)
            --  TASK for l in range(k, length(l3FcsXorResult) + k, 1):
            --    fcsPosition := l - k
            --    l3FcsStack(l) := l3FcsXorResult(fcsPosition)
            --  endfor (644,41)
            --  COMMENT Replace result (649,36)
            for l in Integer (k) .. Integer ((17 + k)) - 1 loop
               --  fcsPosition := l - k (645,2)
               fcsPosition := (MyL3FcsStackInteger(l) - k);
               --  l3FcsStack(l) := l3FcsXorResult(fcsPosition) (646,2)
               l3FcsStack.Data(1 + Integer(l)) := l3FcsXorResult.Data(1 + Integer(fcsPosition));
            end loop;
            --  ANSWER false (651,33)
         elsif ((l3FcsStack.Data(1 + Integer(k)) = true)) = false then
            null;
         end if;
         --  DECISION k = length(l3FcsStack) - length(l3FcsPolynomial) (654,39)
         --  ANSWER true (656,33)
         if ((k = Asn1UInt((l3FcsStack.Length - 17)))) = true then
            --  TASK for l in range(length(l3FcsStack) - (length(l3FcsPolynomial) - 2), length(l3FcsStack), 1):
            --    position := l - (length(l3FcsStack) - (length(l3FcsPolynomial) - 2))
            --    ifcs(position) := l3FcsStack(l)
            --  endfor (658,41)
            for l in Integer ((l3FcsStack.Length - 15)) .. Integer (l3FcsStack.Length) - 1 loop
               --  position := l - (length(l3FcsStack) - (length(l3FcsPolynomial) - 2)) (659,2)
               position := Asn1UInt((l - (l3FcsStack.Length - 15)));
               --  ifcs(position) := l3FcsStack(l) (660,2)
               ifcs.Data(1 + Integer(position)) := l3FcsStack.Data(1 + Integer(l));
            end loop;
            --  RETURN  (None,None) at 285, 1642
            return;
            --  ANSWER false (665,33)
         elsif ((k = Asn1UInt((l3FcsStack.Length - 17)))) = false then
            --  COMMENT Shift right (669,36)
            --  k := if k = 2023 then k else k + 1 fi (667,41)
            if (k = 2023) then
               tmp1034 := k;
            else
               tmp1034 := (k + 1);
            end if;
            k := tmp1034;
            --  JOIN calculation (671,41) at 849, 1609
            goto calculation;
         end if;
      end p‹wait‹rawdatareceival‹CalculateFcs;
      

   procedure p‹wait‹rawdatareceival‹CalculateResendTte(l3AckMissingStack: in MyL3AckMissingStack;l3Stack: in MyL3Stack;timeToEnd: in out MyRawDataInteger) is
      begin
         --  TASK for ii in range(0, length(l3AckMissingStack), 1):
         --    timeToEnd := if timeToEnd = 62475 then timeToEnd else timeToEnd + length(l3Stack(l3AckMissingStack(ii) - 1)) fi
         --  endfor (689,33)
         for ii in 0 .. Integer (l3AckMissingStack.Length) - 1 loop
            declare
               tmp1046 : MyRawDataInteger;
            begin
               --  timeToEnd := if timeToEnd = 62475 then timeToEnd else timeToEnd + length(l3Stack(l3AckMissingStack(ii) - 1)) fi (690,2)
               if (timeToEnd = 62475) then
                  tmp1046 := timeToEnd;
               else
                  tmp1046 := (timeToEnd + MyRawDataInteger(l3Stack.Data(1 + Integer((l3AckMissingStack.Data(1 + Integer(ii)) - 1))).Length));
               end if;
               timeToEnd := tmp1046;
            end;
         end loop;
         --  RETURN  (None,None) at 339, 138
         return;
      end p‹wait‹rawdatareceival‹CalculateResendTte;
      

   procedure p‹wait‹rawdatareceival‹InvertFcs(ifcs: in MyIfcs;invertedIfcs: in out MyIfcs) is
      i : aliased My16BitArrayInteger := 0;
      begin
         --  TASK for ii in range(0, length(ifcs), 1):
         --    invertedIfcs(15-ii) := ifcs(ii)
         --  endfor (711,33)
         for ii in 0 .. 15 loop
            --  invertedIfcs(15-ii) := ifcs(ii) (712,2)
            invertedIfcs.Data(1 + Integer((15 - ii))) := ifcs.Data(1 + Integer(ii));
         end loop;
         --  RETURN  (None,None) at 99, 118
         return;
      end p‹wait‹rawdatareceival‹InvertFcs;
      

   procedure p‹wait‹datareceival‹UnpackAckOperationData(operationData: in MyOperationData;l3Tte: in out MyL3Tte;l3Mrt: in out MyL3Mrt;l3Lfn: in out MyL3Lfn;l3Hfn: in out MyL3Hfn;l3Rrq: in out MyL3Rrq) is
      begin
         --  TASK for i in range(0, length(operationData(0)), 1):
         --    l3Tte(i) := operationData(0)(i)
         --  endfor (870,33)
         for i in 0 .. 7 loop
            --  l3Tte(i) := operationData(0)(i) (871,2)
            l3Tte.Data(1 + Integer(i)) := operationData.Data(1).Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(0, length(operationData(1)), 1):
         --    l3Tte(i+8) := operationData(1)(i)
         --  endfor (874,33)
         for i in 0 .. 7 loop
            --  l3Tte(i+8) := operationData(1)(i) (875,2)
            l3Tte.Data(1 + Integer((i + 8))) := operationData.Data(2).Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(0, length(operationData(2)), 1):
         --    l3Mrt(i) := operationData(2)(i)
         --  endfor (878,33)
         for i in 0 .. 7 loop
            --  l3Mrt(i) := operationData(2)(i) (879,2)
            l3Mrt.Data(1 + Integer(i)) := operationData.Data(3).Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(0, length(operationData(3)), 1):
         --    l3Mrt(i+8) := operationData(3)(i)
         --  endfor (882,33)
         for i in 0 .. 7 loop
            --  l3Mrt(i+8) := operationData(3)(i) (883,2)
            l3Mrt.Data(1 + Integer((i + 8))) := operationData.Data(4).Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(0, length(operationData(4)), 1):
         --    l3Lfn(i) := operationData(4)(i)
         --  endfor (886,33)
         for i in 0 .. 7 loop
            --  l3Lfn(i) := operationData(4)(i) (887,2)
            l3Lfn.Data(1 + Integer(i)) := operationData.Data(5).Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(0, length(operationData(5)), 1):
         --    l3Hfn(i) := operationData(5)(i)
         --  endfor (890,33)
         for i in 0 .. 7 loop
            --  l3Hfn(i) := operationData(5)(i) (891,2)
            l3Hfn.Data(1 + Integer(i)) := operationData.Data(6).Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(6, length(operationData), 1):
         --    l3Rrq(i - 6) := operationData(i)
         --  endfor (894,33)
         for i in 6 .. Integer (operationData.Length) - 1 loop
            --  l3Rrq(i - 6) := operationData(i) (895,2)
            l3Rrq.Data(1 + Integer((i - 6))) := operationData.Data(1 + Integer(i));
         end loop;
         --  RETURN  (None,None) at 259, 543
         return;
      end p‹wait‹datareceival‹UnpackAckOperationData;
      

   procedure p‹wait‹datareceival‹InitialiseHfn(receivedL3DataFrames: in MyL3StackNumbers;l3Hfn: in out My8BitArray) is
      i : aliased My8BitArrayValueInteger := 1;
      framenumber : aliased My8BitArray;
      highestframe : aliased My8BitArrayValueInteger := 1;
      tmp1460 : My8BitArrayValueInteger;
      begin
         --  JOIN initialising (None,None) at None, None
         goto initialising;
         --  CONNECTION initialising (920,28)
         <<initialising>>
         --  DECISION receivedL3DataFrames(i - 1) = true (922,65)
         --  ANSWER true (924,33)
         if ((receivedL3DataFrames.Data(1 + Integer((i - 1))) = true)) = true then
            --  highestFrame := i (926,41)
            highestFrame := i;
            --  ANSWER false (928,33)
         elsif ((receivedL3DataFrames.Data(1 + Integer((i - 1))) = true)) = false then
            null;
         end if;
         --  DECISION i < length(receivedL3DataFrames) (931,39)
         --  ANSWER true (933,33)
         if ((i < My8BitArrayValueInteger(receivedL3DataFrames.Length))) = true then
            --  i := if i = 255 then i else i + 1 fi (935,41)
            if (i = 255) then
               tmp1460 := i;
            else
               tmp1460 := (i + 1);
            end if;
            i := tmp1460;
            --  JOIN initialising (937,41) at 111, 432
            goto initialising;
            --  ANSWER false (939,33)
         elsif ((i < My8BitArrayValueInteger(receivedL3DataFrames.Length))) = false then
            --  DataIntegerTo8BitArray(highestFrame, frameNumber) (941,41)
            p‹wait‹datareceival‹DataIntegerTo8BitArray(highestFrame, frameNumber);
            --  l3Hfn := frameNumber (943,41)
            l3Hfn := frameNumber;
            --  RETURN  (None,None) at 519, 482
            return;
         end if;
      end p‹wait‹datareceival‹InitialiseHfn;
      

   procedure p‹wait‹datareceival‹InitialiseLfn(receivedL3DataFrames: in MyL3StackNumbers;l3Lfn: in out My8BitArray) is
      i : aliased MyL3StackInteger := 0;
      framenumber : aliased My8BitArray;
      tmp1489 : MyL3StackInteger;
      begin
         --  JOIN initialising (None,None) at None, None
         goto initialising;
         --  CONNECTION initialising (966,28)
         <<initialising>>
         --  DECISION i < length(receivedL3DataFrames) (968,39)
         --  ANSWER true (970,33)
         if ((i < MyL3StackInteger(receivedL3DataFrames.Length))) = true then
            --  DECISION receivedL3DataFrames(i) = true (972,69)
            --  ANSWER true (974,41)
            if ((receivedL3DataFrames.Data(1 + Integer(i)) = true)) = true then
               --  i := if i = 255 then i else i + 1 fi (976,49)
               if (i = 255) then
                  tmp1489 := i;
               else
                  tmp1489 := (i + 1);
               end if;
               i := tmp1489;
               --  ANSWER false (978,41)
            elsif ((receivedL3DataFrames.Data(1 + Integer(i)) = true)) = false then
               --  DataIntegerTo8BitArray(i + 1, frameNumber) (980,49)
               p‹wait‹datareceival‹DataIntegerTo8BitArray((i + 1), frameNumber);
               --  l3Lfn := frameNumber (982,49)
               l3Lfn := frameNumber;
               --  RETURN  (None,None) at 356, 432
               return;
            end if;
            --  JOIN initialising (987,41) at 220, 482
            goto initialising;
            --  ANSWER false (989,33)
         elsif ((i < MyL3StackInteger(receivedL3DataFrames.Length))) = false then
            --  RETURN  (None,None) at 566, 224
            return;
         end if;
      end p‹wait‹datareceival‹InitialiseLfn;
      

   procedure p‹wait‹datareceival‹CheckMissingData(receivedL3DataFrames: in MyL3StackNumbers;l3MissingData: in out MyBoolean) is
      i : aliased My8BitArrayValueInteger := 1;
      tmp1523 : My8BitArrayValueInteger;
      begin
         --  JOIN checking (None,None) at None, None
         goto checking;
         --  CONNECTION checking (1012,28)
         <<checking>>
         --  DECISION receivedL3DataFrames(i - 1) = true (1014,65)
         --  ANSWER true (1016,33)
         if ((receivedL3DataFrames.Data(1 + Integer((i - 1))) = true)) = true then
            --  DECISION i = 255 (1018,47)
            --  ANSWER true (1020,41)
            if ((i = 255)) = true then
               --  RETURN  (None,None) at 17, 327
               return;
               --  ANSWER false (1024,41)
            elsif ((i = 255)) = false then
               --  i := if i = 255 then i else i + 1 fi (1026,49)
               if (i = 255) then
                  tmp1523 := i;
               else
                  tmp1523 := (i + 1);
               end if;
               i := tmp1523;
               --  JOIN checking (1028,49) at 181, 377
               goto checking;
            end if;
            --  ANSWER false (1031,33)
         elsif ((receivedL3DataFrames.Data(1 + Integer((i - 1))) = true)) = false then
            --  l3MissingData := true (1033,41)
            l3MissingData := true;
            --  RETURN  (None,None) at 381, 269
            return;
         end if;
      end p‹wait‹datareceival‹CheckMissingData;
      

   procedure p‹wait‹datareceival‹ArrayOf16BitsToInteger(bitArray: in My16BitArray;inti: in out My16BitArrayValueInteger) is
      i : aliased My16BitArrayInteger := 15;
      bitvalue : aliased My16BitArrayValueInteger := 1;
      tmp1535 : My16BitArrayValueInteger;
      tmp1556 : My16BitArrayInteger;
      begin
         --  JOIN conversion (None,None) at None, None
         goto conversion;
         --  CONNECTION conversion (1056,28)
         <<conversion>>
         --  inti := if bitArray(i) = true then inti+bitValue else inti fi (1058,33)
         if (bitArray.Data(1 + Integer(i)) = true) then
            tmp1535 := (inti + bitValue);
         else
            tmp1535 := inti;
         end if;
         inti := tmp1535;
         --  DECISION i = 0 (1060,39)
         --  ANSWER true (1062,33)
         if ((i = 0)) = true then
            --  RETURN  (None,None) at 100, 267
            return;
            --  ANSWER false (1066,33)
         elsif ((i = 0)) = false then
            --  bitValue := bitValue * 2 (1068,41)
            bitValue := Asn1UInt((bitValue * 2));
            --  i := if i = 0 then i else i - 1 fi (1069,0)
            if (i = 0) then
               tmp1556 := i;
            else
               tmp1556 := (i - 1);
            end if;
            i := tmp1556;
            --  JOIN conversion (1071,41) at 307, 320
            goto conversion;
         end if;
      end p‹wait‹datareceival‹ArrayOf16BitsToInteger;
      

   procedure p‹wait‹datareceival‹UnpackOperationData(operationData: in MyOperationData;l3Tte: in out MyL3Tte;l3Mrt: in out MyL3Mrt;l3Fnum: in out MyL3Fnum;l3Data: in out MyL3Data) is
      begin
         --  TASK for i in range(0, length(operationData(0)), 1):
         --    l3Tte(i) := operationData(0)(i)
         --  endfor (1091,33)
         for i in 0 .. 7 loop
            --  l3Tte(i) := operationData(0)(i) (1092,2)
            l3Tte.Data(1 + Integer(i)) := operationData.Data(1).Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(0, length(operationData(1)), 1):
         --    l3Tte(i+8) := operationData(1)(i)
         --  endfor (1095,33)
         for i in 0 .. 7 loop
            --  l3Tte(i+8) := operationData(1)(i) (1096,2)
            l3Tte.Data(1 + Integer((i + 8))) := operationData.Data(2).Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(0, length(operationData(2)), 1):
         --    l3Mrt(i) := operationData(2)(i)
         --  endfor (1099,33)
         for i in 0 .. 7 loop
            --  l3Mrt(i) := operationData(2)(i) (1100,2)
            l3Mrt.Data(1 + Integer(i)) := operationData.Data(3).Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(0, length(operationData(3)), 1):
         --    l3Mrt(i+8) := operationData(3)(i)
         --  endfor (1103,33)
         for i in 0 .. 7 loop
            --  l3Mrt(i+8) := operationData(3)(i) (1104,2)
            l3Mrt.Data(1 + Integer((i + 8))) := operationData.Data(4).Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(0, length(operationData(4)), 1):
         --    l3Fnum(i) := operationData(4)(i)
         --  endfor (1107,33)
         for i in 0 .. 7 loop
            --  l3Fnum(i) := operationData(4)(i) (1108,2)
            l3Fnum.Data(1 + Integer(i)) := operationData.Data(5).Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(5, length(operationData), 1):
         --    l3Data(i - 5) := operationData(i)
         --  endfor (1111,33)
         for i in 5 .. Integer (operationData.Length) - 1 loop
            --  l3Data(i - 5) := operationData(i) (1112,2)
            l3Data.Data(1 + Integer((i - 5))) := operationData.Data(1 + Integer(i));
         end loop;
         --  RETURN  (None,None) at 259, 473
         return;
      end p‹wait‹datareceival‹UnpackOperationData;
      

   procedure p‹wait‹datareceival‹UnpackInfo(info: in MyInfo;ba: in out MyBa;cntrl: in out MyCntrl;code: in out MyCode;operationData: in out MyOperationData;ifcs: in out MyIfcs) is
      begin
         --  ba := info!ba (1135,33)
         ba := info.ba;
         --  cntrl := info!cntrl (1136,0)
         cntrl := info.cntrl;
         --  code := info!code (1137,0)
         code := info.code;
         --  operationData := info!operationData (1138,0)
         operationData := info.operationdata;
         --  ifcs := info!ifcs (1139,0)
         ifcs := info.ifcs;
         --  RETURN  (None,None) at 212, 158
         return;
      end p‹wait‹datareceival‹UnpackInfo;
      

   procedure p‹wait‹datareceival‹ArrayOf8BitsToInteger(bitArray: in My8BitArray;inti: in out My8BitArrayValueInteger) is
      i : aliased My8BitArrayInteger := 7;
      bitvalue : aliased My8BitArrayValueInteger := 1;
      tmp1681 : My8BitArrayInteger;
      tmp1660 : My8BitArrayValueInteger;
      begin
         --  JOIN conversion (None,None) at None, None
         goto conversion;
         --  CONNECTION conversion (1161,28)
         <<conversion>>
         --  inti := if bitArray(i) = true then inti+bitValue else inti fi (1163,33)
         if (bitArray.Data(1 + Integer(i)) = true) then
            tmp1660 := (inti + bitValue);
         else
            tmp1660 := inti;
         end if;
         inti := tmp1660;
         --  DECISION i = 0 (1165,39)
         --  ANSWER true (1167,33)
         if ((i = 0)) = true then
            --  RETURN  (None,None) at 105, 267
            return;
            --  ANSWER false (1171,33)
         elsif ((i = 0)) = false then
            --  bitValue := bitValue * 2 (1173,41)
            bitValue := Asn1UInt((bitValue * 2));
            --  i := if i = 0 then i else i - 1 fi (1174,0)
            if (i = 0) then
               tmp1681 := i;
            else
               tmp1681 := (i - 1);
            end if;
            i := tmp1681;
            --  JOIN conversion (1176,41) at 295, 320
            goto conversion;
         end if;
      end p‹wait‹datareceival‹ArrayOf8BitsToInteger;
      

   procedure p‹wait‹datareceival‹InitialiseMissingData(receivedL3Data: in MyL3Stack;receivedL3DataFrames: in MyL3StackNumbers;l3MissingDataFrames: in out MyL3MissingStack) is
      i : aliased MyL3StackInteger := 0;
      framenumber : aliased My8BitArray;
      framecount : aliased My8BitArrayValueInteger := 1;
      tmp1713 : My8BitArrayValueInteger;
      tmp1724 : MyL3StackInteger;
      begin
         --  JOIN initialising (None,None) at None, None
         goto initialising;
         --  CONNECTION initialising (1200,28)
         <<initialising>>
         --  DECISION i < length(receivedL3DataFrames) (1202,39)
         --  ANSWER true (1204,33)
         if ((i < MyL3StackInteger(receivedL3DataFrames.Length))) = true then
            --  DECISION receivedL3DataFrames(i) = false (1206,69)
            --  ANSWER true (1208,41)
            if ((receivedL3DataFrames.Data(1 + Integer(i)) = false)) = true then
               --  DataIntegerTo8BitArray(i, frameNumber) (1210,49)
               p‹wait‹datareceival‹DataIntegerTo8BitArray(i, frameNumber);
               --  l3MissingDataFrames(frameCount - 1) := frameNumber (1212,49)
               l3MissingDataFrames.Data(1 + Integer((frameCount - 1))) := frameNumber;
               --  frameCount := if frameCount = 255 then frameCount else frameCount + 1 fi (1213,0)
               if (frameCount = 255) then
                  tmp1713 := frameCount;
               else
                  tmp1713 := (frameCount + 1);
               end if;
               frameCount := tmp1713;
               --  ANSWER false (1215,41)
            elsif ((receivedL3DataFrames.Data(1 + Integer(i)) = false)) = false then
               null;
            end if;
            --  ANSWER false (1218,33)
         elsif ((i < MyL3StackInteger(receivedL3DataFrames.Length))) = false then
            --  RETURN  (None,None) at 894, 219
            return;
         end if;
         --  i := if i = 255 then i else i + 1 fi (1223,33)
         if (i = 255) then
            tmp1724 := i;
         else
            tmp1724 := (i + 1);
         end if;
         i := tmp1724;
         --  JOIN initialising (1225,33) at 654, 495
         goto initialising;
      end p‹wait‹datareceival‹InitialiseMissingData;
      

   procedure p‹wait‹datareceival‹InitialiseMissingDataNumbers(l3Rrq: in MyL3Rrq;l3AckMissingStack: in out MyL3AckMissingStack) is
      i : aliased MyL3AckMissingStackInteger := 0;
      framenumber : aliased My8BitArrayValueInteger;
      tmp1752 : MyL3AckMissingStackInteger;
      begin
         --  JOIN initialising (None,None) at None, None
         goto initialising;
         --  CONNECTION initialising (1245,28)
         <<initialising>>
         --  ArrayOf8BitsToInteger(l3Rrq(i), frameNumber) (1247,33)
         p‹wait‹datareceival‹ArrayOf8BitsToInteger(l3Rrq.Data(1 + Integer(i)), frameNumber);
         --  l3AckMissingStack(i) := frameNumber (1249,33)
         l3AckMissingStack.Data(1 + Integer(i)) := frameNumber;
         --  DECISION i = length(l3Rrq) - 1 (1251,39)
         --  ANSWER true (1253,33)
         if ((i = Asn1UInt((l3Rrq.Length - 1)))) = true then
            --  RETURN  (None,None) at 25, 318
            return;
            --  ANSWER false (1257,33)
         elsif ((i = Asn1UInt((l3Rrq.Length - 1)))) = false then
            --  i := if i = length(l3Rrq) - 1 then i else i + 1 fi (1259,41)
            if (i = Asn1UInt((l3Rrq.Length - 1))) then
               tmp1752 := i;
            else
               tmp1752 := (i + 1);
            end if;
            i := tmp1752;
            --  JOIN initialising (1261,41) at 330, 368
            goto initialising;
         end if;
      end p‹wait‹datareceival‹InitialiseMissingDataNumbers;
      

   procedure p‹wait‹datareceival‹InitialiseRawData(lastWrittenFrame: in My8BitArrayValueInteger;writableFrame: in My8BitArrayValueInteger;receivedL3Data: in MyL3Stack;rawData: in out MyRawData) is
      octetnumber : aliased MyRawDataInteger := 1;
      begin
         --  TASK for i in range(lastWrittenFrame - 1, length(l3Lfn), 1):
         --    for j in range(0, length(receivedL3Data(i)), 1):
         --      rawData(octetNumber - 1) := receivedL3Data(i)(j)
         --      octetNumber := if octetNumber = 62475 then octetNumber else octetNumber + 1 fi
         --     endfor
         --  endfor (1282,33)
         for i in Integer ((lastWrittenFrame - 1)) .. 7 loop
            --  TASK for j in range(0, length(receivedL3Data(i)), 1):
            --      rawData(octetNumber - 1) := receivedL3Data(i)(j)
            --      octetNumber := if octetNumber = 62475 then octetNumber else octetNumber + 1 fi
            --     endfor (1283,2)
            for j in 0 .. Integer (receivedL3Data.Data(1 + Integer(i)).Length) - 1 loop
               declare
                  tmp1784 : MyRawDataInteger;
               begin
                  --  rawData(octetNumber - 1) := receivedL3Data(i)(j) (1284,4)
                  rawData.Data(1 + Integer((octetNumber - 1))) := receivedL3Data.Data(1 + Integer(i)).Data(1 + Integer(j));
                  --  octetNumber := if octetNumber = 62475 then octetNumber else octetNumber + 1 fi (1285,4)
                  if (octetNumber = 62475) then
                     tmp1784 := octetNumber;
                  else
                     tmp1784 := (octetNumber + 1);
                  end if;
                  octetNumber := tmp1784;
               end;
            end loop;
         end loop;
         --  RETURN  (None,None) at 262, 163
         return;
      end p‹wait‹datareceival‹InitialiseRawData;
      

   procedure p‹wait‹datareceival‹DataIntegerTo8BitArray(inti: in My8BitArrayValueInteger;bitArray: in out My8BitArray) is
      i : aliased My8BitArrayInteger := 0;
      bitvalue : aliased My8BitArrayValueInteger := 255;
      value : aliased My8BitArrayValueInteger := 0;
      tmp1825 : My8BitArrayInteger;
      tmp1797 : Boolean;
      tmp1804 : My8BitArrayValueInteger;
      begin
         --  value := inti (1310,33)
         value := inti;
         --  JOIN conversion (None,None) at None, None
         goto conversion;
         --  CONNECTION conversion (1312,28)
         <<conversion>>
         --  bitArray(i) := if value>bitValue then true else false fi (1314,33)
         if (value > bitValue) then
            tmp1797 := true;
         else
            tmp1797 := false;
         end if;
         bitArray.Data(1 + Integer(i)) := tmp1797;
         --  value := if bitArray(i) = true then value-bitValue else value fi (1315,0)
         if (bitArray.Data(1 + Integer(i)) = true) then
            tmp1804 := (value - bitValue);
         else
            tmp1804 := value;
         end if;
         value := tmp1804;
         --  DECISION i = 7 (1317,39)
         --  ANSWER true (1319,33)
         if ((i = 7)) = true then
            --  RETURN  (None,None) at 334, 333
            return;
            --  ANSWER false (1323,33)
         elsif ((i = 7)) = false then
            --  bitValue := bitValue / 2 (1325,41)
            bitValue := Asn1UInt((bitValue / 2));
            --  i := if i = 7 then i else i + 1 fi (1326,0)
            if (i = 7) then
               tmp1825 := i;
            else
               tmp1825 := (i + 1);
            end if;
            i := tmp1825;
            --  JOIN conversion (1328,41) at 82, 386
            goto conversion;
         end if;
      end p‹wait‹datareceival‹DataIntegerTo8BitArray;
      

   procedure p‹wait‹datareceival‹DataCalculateFcs(ba: in MyBa;code: in MyCode;l3Tte: in MyL3Tte;l3Mrt: in MyL3Mrt;l3Fnum: in MyL3Fnum;l3Data: in MyL3Data;ifcs: in out MyIfcs) is
      l3fcspolynomial : aliased MyL3FcsPolynomial;
      position : aliased My16BitArrayInteger;
      l3fcsstack : aliased MyL3FcsStack;
      k : aliased MyL3FcsStackInteger := 0;
      l3fcsxorresult : aliased MyL3FcsPolynomial;
      fcsposition : aliased MyFcsPolynomialInteger;
      l3datastack : aliased MyL3DataStack;
      tmp2077 : MyL3FcsStackInteger;
      begin
         --  TASK for i in range(0, 4, 1):
         --    l3FcsStack(i) := ba!srcAddr(i)
         --  endfor (1362,33)
         for i in 0 .. 3 loop
            --  l3FcsStack(i) := ba!srcAddr(i) (1363,2)
            l3FcsStack.Data(1 + Integer(i)) := ba.srcaddr.Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(4, 8, 1):
         --    l3FcsStack(i) := ba!dstAddr(i - 4)
         --  endfor (1366,33)
         for i in 4 .. 7 loop
            --  l3FcsStack(i) := ba!dstAddr(i - 4) (1367,2)
            l3FcsStack.Data(1 + Integer(i)) := ba.dstaddr.Data(1 + Integer((i - 4)));
         end loop;
         --  TASK for i in range(8, 16, 1):
         --    l3FcsStack(i) := code(i - 8)
         --  endfor (1370,33)
         for i in 8 .. 15 loop
            --  l3FcsStack(i) := code(i - 8) (1371,2)
            l3FcsStack.Data(1 + Integer(i)) := code.Data(1 + Integer((i - 8)));
         end loop;
         --  TASK for i in range(16, 24, 1):
         --    l3FcsStack(i) := l3Tte(i - 16)
         --  endfor (1374,33)
         for i in 16 .. 23 loop
            --  l3FcsStack(i) := l3Tte(i - 16) (1375,2)
            l3FcsStack.Data(1 + Integer(i)) := l3Tte.Data(1 + Integer((i - 16)));
         end loop;
         --  TASK for i in range(24, 32, 1):
         --    l3FcsStack(i) := l3Tte(i - 16)
         --  endfor (1378,33)
         for i in 24 .. 31 loop
            --  l3FcsStack(i) := l3Tte(i - 16) (1379,2)
            l3FcsStack.Data(1 + Integer(i)) := l3Tte.Data(1 + Integer((i - 16)));
         end loop;
         --  TASK for i in range(32, 40, 1):
         --    l3FcsStack(i) := l3Mrt(i - 32)
         --  endfor (1382,33)
         for i in 32 .. 39 loop
            --  l3FcsStack(i) := l3Mrt(i - 32) (1383,2)
            l3FcsStack.Data(1 + Integer(i)) := l3Mrt.Data(1 + Integer((i - 32)));
         end loop;
         --  TASK for i in range(40, 48, 1):
         --    l3FcsStack(i) := l3Mrt(i - 32)
         --  endfor (1386,33)
         for i in 40 .. 47 loop
            --  l3FcsStack(i) := l3Mrt(i - 32) (1387,2)
            l3FcsStack.Data(1 + Integer(i)) := l3Mrt.Data(1 + Integer((i - 32)));
         end loop;
         --  TASK for i in range(48, 56, 1):
         --    l3FcsStack(i) := l3Fnum(i - 48)
         --  endfor (1390,33)
         for i in 48 .. 55 loop
            --  l3FcsStack(i) := l3Fnum(i - 48) (1391,2)
            l3FcsStack.Data(1 + Integer(i)) := l3Fnum.Data(1 + Integer((i - 48)));
         end loop;
         --  COMMENT Array of octets to array of bits (1400,28)
         --  TASK for i in range(0, length(l3Data), 1):
         --    for j in range(0, length(l3Data(i)), 1):
         --      l3DataStack((i*8)+j) := l3Data(i)(j)
         --    endfor
         --  endfor (1394,33)
         --  COMMENT Array of octets to array of bits (1400,28)
         for i in 0 .. Integer (l3Data.Length) - 1 loop
            --  TASK for j in range(0, length(l3Data(i)), 1):
            --      l3DataStack((i*8)+j) := l3Data(i)(j)
            --    endfor (1395,2)
            for j in 0 .. 7 loop
               --  l3DataStack((i*8)+j) := l3Data(i)(j) (1396,4)
               l3DataStack.Data(1 + Integer(((i * 8) + j))) := l3Data.Data(1 + Integer(i)).Data(1 + Integer(j));
            end loop;
         end loop;
         --  TASK for i in range(56, length(l3DataStack) + 56, 1):
         --    l3FcsStack(i) := l3DataStack(i - 56)
         --  endfor (1402,33)
         for i in 56 .. Integer ((l3DataStack.Length + 56)) - 1 loop
            --  l3FcsStack(i) := l3DataStack(i - 56) (1403,2)
            l3FcsStack.Data(1 + Integer(i)) := l3DataStack.Data(1 + Integer((i - 56)));
         end loop;
         --  TASK for i in range(length(l3DataStack)+56, length(l3DataStack)+72, 1):
         --    l3FcsStack(i) := false
         --  endfor (1406,33)
         for i in Integer ((l3DataStack.Length + 56)) .. Integer ((l3DataStack.Length + 72)) - 1 loop
            --  l3FcsStack(i) := false (1407,2)
            l3FcsStack.Data(1 + Integer(i)) := false;
         end loop;
         --  l3FcsPolynomial := {true, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, true} (1410,33)
         l3FcsPolynomial := (Data => (1 => true, 2 => false, 3 => false, 4 => false, 5 => true, 6 => false, 7 => false, 8 => false, 9 => false, 10 => false, 11 => false, 12 => true, 13 => false, 14 => false, 15 => false, 16 => false, 17 => true, others => true));
         --  JOIN calculation (None,None) at None, None
         goto calculation;
         --  CONNECTION calculation (1412,28)
         <<calculation>>
         --  DECISION l3FcsStack(k) = true (1414,51)
         --  ANSWER true (1416,33)
         if ((l3FcsStack.Data(1 + Integer(k)) = true)) = true then
            --  l3FcsXorResult := {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false} (1418,41)
            l3FcsXorResult := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => false, 9 => false, 10 => false, 11 => false, 12 => false, 13 => false, 14 => false, 15 => false, 16 => false, 17 => false, others => false));
            --  COMMENT XOR operation (1425,36)
            --  TASK for l in range(k, k + length(l3FcsPolynomial), 1):
            --    fcsPosition := l - k
            --    l3FcsXorResult(fcsPosition) := if l3FcsStack(l) = l3FcsPolynomial(fcsPosition) then false else true fi
            --  endfor (1420,41)
            --  COMMENT XOR operation (1425,36)
            for l in Integer (k) .. Integer ((k + 17)) - 1 loop
               declare
                  tmp2015 : Boolean;
               begin
                  --  fcsPosition := l - k (1421,2)
                  fcsPosition := (MyL3FcsStackInteger(l) - k);
                  --  l3FcsXorResult(fcsPosition) := if l3FcsStack(l) = l3FcsPolynomial(fcsPosition) then false else true fi (1422,2)
                  if (l3FcsStack.Data(1 + Integer(l)) = l3FcsPolynomial.Data(1 + Integer(fcsPosition))) then
                     tmp2015 := false;
                  else
                     tmp2015 := true;
                  end if;
                  l3FcsXorResult.Data(1 + Integer(fcsPosition)) := tmp2015;
               end;
            end loop;
            --  COMMENT Replace result (1432,36)
            --  TASK for l in range(k, length(l3FcsXorResult) + k, 1):
            --    fcsPosition := l - k
            --    l3FcsStack(l) := l3FcsXorResult(fcsPosition)
            --  endfor (1427,41)
            --  COMMENT Replace result (1432,36)
            for l in Integer (k) .. Integer ((17 + k)) - 1 loop
               --  fcsPosition := l - k (1428,2)
               fcsPosition := (MyL3FcsStackInteger(l) - k);
               --  l3FcsStack(l) := l3FcsXorResult(fcsPosition) (1429,2)
               l3FcsStack.Data(1 + Integer(l)) := l3FcsXorResult.Data(1 + Integer(fcsPosition));
            end loop;
            --  ANSWER false (1434,33)
         elsif ((l3FcsStack.Data(1 + Integer(k)) = true)) = false then
            null;
         end if;
         --  DECISION k = length(l3FcsStack) - length(l3FcsPolynomial) (1437,39)
         --  ANSWER true (1439,33)
         if ((k = Asn1UInt((l3FcsStack.Length - 17)))) = true then
            --  TASK for l in range(length(l3FcsStack) - (length(l3FcsPolynomial) - 2), length(l3FcsStack), 1):
            --    position := l - (length(l3FcsStack) - (length(l3FcsPolynomial) - 2))
            --    ifcs(position) := l3FcsStack(l)
            --  endfor (1441,41)
            for l in Integer ((l3FcsStack.Length - 15)) .. Integer (l3FcsStack.Length) - 1 loop
               --  position := l - (length(l3FcsStack) - (length(l3FcsPolynomial) - 2)) (1442,2)
               position := Asn1UInt((l - (l3FcsStack.Length - 15)));
               --  ifcs(position) := l3FcsStack(l) (1443,2)
               ifcs.Data(1 + Integer(position)) := l3FcsStack.Data(1 + Integer(l));
            end loop;
            --  RETURN  (None,None) at 285, 1642
            return;
            --  ANSWER false (1448,33)
         elsif ((k = Asn1UInt((l3FcsStack.Length - 17)))) = false then
            --  COMMENT Shift right (1452,36)
            --  k := if k = 2023 then k else k + 1 fi (1450,41)
            if (k = 2023) then
               tmp2077 := k;
            else
               tmp2077 := (k + 1);
            end if;
            k := tmp2077;
            --  JOIN calculation (1454,41) at 849, 1609
            goto calculation;
         end if;
      end p‹wait‹datareceival‹DataCalculateFcs;
      

   procedure p‹wait‹datareceival‹DataInvertFcs(ifcs: in MyIfcs;invertedIfcs: in out MyIfcs) is
      i : aliased My16BitArrayInteger := 0;
      begin
         --  TASK for ii in range(0, length(ifcs), 1):
         --    invertedIfcs(15-ii) := ifcs(ii)
         --  endfor (1473,33)
         for ii in 0 .. 15 loop
            --  invertedIfcs(15-ii) := ifcs(ii) (1474,2)
            invertedIfcs.Data(1 + Integer((15 - ii))) := ifcs.Data(1 + Integer(ii));
         end loop;
         --  RETURN  (None,None) at 99, 118
         return;
      end p‹wait‹datareceival‹DataInvertFcs;
      

   procedure p‹wait‹datareceival‹DataCalculateAckFcs(ba: in MyBa;code: in MyCode;l3Tte: in MyL3Tte;l3Mrt: in MyL3Mrt;l3Lfn: in MyL3Lfn;l3Hfn: in MyL3Hfn;l3Rrq: in MyL3Rrq;ifcs: in out MyIfcs) is
      l3ackfcsstack : aliased MyL3AckFcsStack;
      l3fcspolynomial : aliased MyL3FcsPolynomial;
      position : aliased My16BitArrayInteger;
      l3ackdatastack : aliased MyL3AckDataStack;
      l3fcsxorresult : aliased MyL3FcsPolynomial;
      k : aliased MyL3FcsStackInteger := 0;
      fcsposition : aliased MyFcsPolynomialInteger;
      tmp2350 : MyL3FcsStackInteger;
      begin
         --  TASK for i in range(0, 4, 1):
         --    l3AckFcsStack(i) := ba!srcAddr(i)
         --  endfor (1511,33)
         for i in 0 .. 3 loop
            --  l3AckFcsStack(i) := ba!srcAddr(i) (1512,2)
            l3AckFcsStack.Data(1 + Integer(i)) := ba.srcaddr.Data(1 + Integer(i));
         end loop;
         --  TASK for i in range(4, 8, 1):
         --    l3AckFcsStack(i) := ba!dstAddr(i - 4)
         --  endfor (1515,33)
         for i in 4 .. 7 loop
            --  l3AckFcsStack(i) := ba!dstAddr(i - 4) (1516,2)
            l3AckFcsStack.Data(1 + Integer(i)) := ba.dstaddr.Data(1 + Integer((i - 4)));
         end loop;
         --  TASK for i in range(8, 16, 1):
         --    l3AckFcsStack(i) := code(i - 8)
         --  endfor (1519,33)
         for i in 8 .. 15 loop
            --  l3AckFcsStack(i) := code(i - 8) (1520,2)
            l3AckFcsStack.Data(1 + Integer(i)) := code.Data(1 + Integer((i - 8)));
         end loop;
         --  TASK for i in range(16, 24, 1):
         --    l3AckFcsStack(i) := l3Tte(i - 16)
         --  endfor (1523,33)
         for i in 16 .. 23 loop
            --  l3AckFcsStack(i) := l3Tte(i - 16) (1524,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3Tte.Data(1 + Integer((i - 16)));
         end loop;
         --  TASK for i in range(24, 32, 1):
         --    l3AckFcsStack(i) := l3Tte(i - 16)
         --  endfor (1527,33)
         for i in 24 .. 31 loop
            --  l3AckFcsStack(i) := l3Tte(i - 16) (1528,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3Tte.Data(1 + Integer((i - 16)));
         end loop;
         --  TASK for i in range(32, 40, 1):
         --    l3AckFcsStack(i) := l3Mrt(i - 32)
         --  endfor (1531,33)
         for i in 32 .. 39 loop
            --  l3AckFcsStack(i) := l3Mrt(i - 32) (1532,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3Mrt.Data(1 + Integer((i - 32)));
         end loop;
         --  TASK for i in range(40, 48, 1):
         --    l3AckFcsStack(i) := l3Mrt(i - 32)
         --  endfor (1535,33)
         for i in 40 .. 47 loop
            --  l3AckFcsStack(i) := l3Mrt(i - 32) (1536,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3Mrt.Data(1 + Integer((i - 32)));
         end loop;
         --  TASK for i in range(48, 56, 1):
         --    l3AckFcsStack(i) := l3Lfn(i - 48)
         --  endfor (1539,33)
         for i in 48 .. 55 loop
            --  l3AckFcsStack(i) := l3Lfn(i - 48) (1540,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3Lfn.Data(1 + Integer((i - 48)));
         end loop;
         --  TASK for i in range(56, 64, 1):
         --    l3AckFcsStack(i) := l3Hfn(i - 56)
         --  endfor (1543,33)
         for i in 56 .. 63 loop
            --  l3AckFcsStack(i) := l3Hfn(i - 56) (1544,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3Hfn.Data(1 + Integer((i - 56)));
         end loop;
         --  TASK for i in range(0, length(l3Rrq), 1):
         --    for j in range(0, length(l3Rrq(i)), 1):
         --      l3AckDataStack((i*8)+j) := l3Rrq(i)(j)
         --    endfor
         --  endfor (1547,33)
         for i in 0 .. Integer (l3Rrq.Length) - 1 loop
            --  TASK for j in range(0, length(l3Rrq(i)), 1):
            --      l3AckDataStack((i*8)+j) := l3Rrq(i)(j)
            --    endfor (1548,2)
            for j in 0 .. 7 loop
               --  l3AckDataStack((i*8)+j) := l3Rrq(i)(j) (1549,4)
               l3AckDataStack.Data(1 + Integer(((i * 8) + j))) := l3Rrq.Data(1 + Integer(i)).Data(1 + Integer(j));
            end loop;
         end loop;
         --  TASK for i in range(64, length(l3AckDataStack) + 64, 1):
         --    l3AckFcsStack(i) := l3AckDataStack(i - 72)
         --  endfor (1553,33)
         for i in 64 .. Integer ((l3AckDataStack.Length + 64)) - 1 loop
            --  l3AckFcsStack(i) := l3AckDataStack(i - 72) (1554,2)
            l3AckFcsStack.Data(1 + Integer(i)) := l3AckDataStack.Data(1 + Integer((i - 72)));
         end loop;
         --  TASK for i in range(length(l3AckDataStack)+64, length(l3AckDataStack)+80, 1):
         --    l3AckFcsStack(i) := false
         --  endfor (1557,33)
         for i in Integer ((l3AckDataStack.Length + 64)) .. Integer ((l3AckDataStack.Length + 80)) - 1 loop
            --  l3AckFcsStack(i) := false (1558,2)
            l3AckFcsStack.Data(1 + Integer(i)) := false;
         end loop;
         --  l3FcsPolynomial := {true, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, true} (1561,33)
         l3FcsPolynomial := (Data => (1 => true, 2 => false, 3 => false, 4 => false, 5 => true, 6 => false, 7 => false, 8 => false, 9 => false, 10 => false, 11 => false, 12 => true, 13 => false, 14 => false, 15 => false, 16 => false, 17 => true, others => true));
         --  JOIN calculation (None,None) at None, None
         goto calculation;
         --  CONNECTION calculation (1563,28)
         <<calculation>>
         --  DECISION l3AckFcsStack(k) = true (1565,54)
         --  ANSWER true (1567,33)
         if ((l3AckFcsStack.Data(1 + Integer(k)) = true)) = true then
            --  l3FcsXorResult := {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false} (1569,41)
            l3FcsXorResult := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => false, 9 => false, 10 => false, 11 => false, 12 => false, 13 => false, 14 => false, 15 => false, 16 => false, 17 => false, others => false));
            --  COMMENT XOR operation (1576,36)
            --  TASK for l in range(k, k + length(l3FcsPolynomial), 1):
            --    fcsPosition := l - k
            --    l3FcsXorResult(fcsPosition) := if l3AckFcsStack(l) = l3FcsPolynomial(fcsPosition) then false else true fi
            --  endfor (1571,41)
            --  COMMENT XOR operation (1576,36)
            for l in Integer (k) .. Integer ((k + 17)) - 1 loop
               declare
                  tmp2288 : Boolean;
               begin
                  --  fcsPosition := l - k (1572,2)
                  fcsPosition := (MyL3FcsStackInteger(l) - k);
                  --  l3FcsXorResult(fcsPosition) := if l3AckFcsStack(l) = l3FcsPolynomial(fcsPosition) then false else true fi (1573,2)
                  if (l3AckFcsStack.Data(1 + Integer(l)) = l3FcsPolynomial.Data(1 + Integer(fcsPosition))) then
                     tmp2288 := false;
                  else
                     tmp2288 := true;
                  end if;
                  l3FcsXorResult.Data(1 + Integer(fcsPosition)) := tmp2288;
               end;
            end loop;
            --  COMMENT Replace result (1583,36)
            --  TASK for l in range(k, length(l3FcsXorResult) + k, 1):
            --    fcsPosition := l - k
            --    l3AckFcsStack(l) := l3FcsXorResult(fcsPosition)
            --  endfor (1578,41)
            --  COMMENT Replace result (1583,36)
            for l in Integer (k) .. Integer ((17 + k)) - 1 loop
               --  fcsPosition := l - k (1579,2)
               fcsPosition := (MyL3FcsStackInteger(l) - k);
               --  l3AckFcsStack(l) := l3FcsXorResult(fcsPosition) (1580,2)
               l3AckFcsStack.Data(1 + Integer(l)) := l3FcsXorResult.Data(1 + Integer(fcsPosition));
            end loop;
            --  ANSWER false (1585,33)
         elsif ((l3AckFcsStack.Data(1 + Integer(k)) = true)) = false then
            null;
         end if;
         --  DECISION k = length(l3AckFcsStack) - length(l3FcsPolynomial) (1588,39)
         --  ANSWER true (1590,33)
         if ((k = Asn1UInt((l3AckFcsStack.Length - 17)))) = true then
            --  TASK for l in range(length(l3AckFcsStack) - (length(l3FcsPolynomial) - 2), length(l3AckFcsStack), 1):
            --    position := l - (length(l3AckFcsStack) - (length(l3FcsPolynomial) - 2))
            --    ifcs(position) := l3AckFcsStack(l)
            --  endfor (1592,41)
            for l in Integer ((l3AckFcsStack.Length - 15)) .. Integer (l3AckFcsStack.Length) - 1 loop
               --  position := l - (length(l3AckFcsStack) - (length(l3FcsPolynomial) - 2)) (1593,2)
               position := Asn1UInt((l - (l3AckFcsStack.Length - 15)));
               --  ifcs(position) := l3AckFcsStack(l) (1594,2)
               ifcs.Data(1 + Integer(position)) := l3AckFcsStack.Data(1 + Integer(l));
            end loop;
            --  RETURN  (None,None) at 303, 1710
            return;
            --  ANSWER false (1599,33)
         elsif ((k = Asn1UInt((l3AckFcsStack.Length - 17)))) = false then
            --  COMMENT Shift right (1603,36)
            --  k := if k = 2023 then k else k + 1 fi (1601,41)
            if (k = 2023) then
               tmp2350 := k;
            else
               tmp2350 := (k + 1);
            end if;
            k := tmp2350;
            --  JOIN calculation (1605,41) at 877, 1669
            goto calculation;
         end if;
      end p‹wait‹datareceival‹DataCalculateAckFcs;
      

   procedure wait‹START is
      begin
         runTransition(wait‹acknowledgementreceival‹START);
         runTransition(wait‹rawdatareceival‹START);
         runTransition(wait‹datareceival‹START);
      end wait‹START;
      

   procedure ReceiveData(info: access MyInfo) is
      begin
         case ctxt.state is
            when wait‹rawdatareceival =>
               runTransition(CS_Only);
            when wait‹acknowledgementreceival =>
               runTransition(CS_Only);
            when wait‹datareceival =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.wait‹datareceival‹state is
                  when wait‹datareceival‹datareceival =>
                     ctxt.info := info.all;
                     runTransition(7);
                  when wait‹datareceival‹framecountreceival =>
                     runTransition(CS_Only);
                  when others =>
                     null;
               end case;
            when others =>
               runTransition(CS_Only);
         end case;
      end ReceiveData;
      

   procedure ReadRawData(inputData: access MyInputData) is
      begin
         case ctxt.state is
            when wait‹rawdatareceival =>
               runTransition(CS_Only);
            when wait‹acknowledgementreceival =>
               runTransition(CS_Only);
            when wait‹datareceival =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.wait‹rawdatareceival‹state is
                  when wait‹rawdatareceival‹rawdatareceival =>
                     ctxt.inputdata := inputData.all;
                     runTransition(4);
                  when others =>
                     null;
               end case;
            when others =>
               runTransition(CS_Only);
         end case;
      end ReadRawData;
      

   procedure ReceiveFrameCount(frameCount: access My8BitArrayValueInteger) is
      begin
         case ctxt.state is
            when wait‹rawdatareceival =>
               runTransition(CS_Only);
            when wait‹acknowledgementreceival =>
               runTransition(CS_Only);
            when wait‹datareceival =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.wait‹datareceival‹state is
                  when wait‹datareceival‹datareceival =>
                     runTransition(CS_Only);
                  when wait‹datareceival‹framecountreceival =>
                     ctxt.framecount := frameCount.all;
                     runTransition(6);
                  when others =>
                     null;
               end case;
            when others =>
               runTransition(CS_Only);
         end case;
      end ReceiveFrameCount;
      

   procedure ReceiveAck(ackData: access MyAckData) is
      begin
         case ctxt.state is
            when wait‹rawdatareceival =>
               runTransition(CS_Only);
            when wait‹acknowledgementreceival =>
               runTransition(CS_Only);
            when wait‹datareceival =>
               runTransition(CS_Only);
            when wait =>
               -- this is a state aggregation
               case ctxt.wait‹acknowledgementreceival‹state is
                  when wait‹acknowledgementreceival‹acknowledgementreceival =>
                     ctxt.ackdata := ackData.all;
                     runTransition(2);
                  when others =>
                     null;
               end case;
            when others =>
               runTransition(CS_Only);
         end case;
      end ReceiveAck;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp2379 : aliased MyCode;
      tmp1121 : aliased My8BitArrayValueInteger;
      tmp1123 : My8BitArrayValueInteger;
      --  !! stack: _call_external_function line 1271
      tmp2359 : My8BitArrayValueInteger;
      tmp1197 : MyL3StackInteger;
      tmp1313 : MyL3AckMissingStackInteger;
      tmp475 : aliased My8BitArrayValueInteger;
      tmp1235 : aliased My8BitArrayValueInteger;
      tmp1088 : aliased MyCode;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  JOIN waiting (None,None) at None, None
                  goto waiting;
               when 1 =>
                  --  NEXT_STATE wait‹acknowledgementreceival‹acknowledgementReceival (280,34) at 44, 51
                  trId := -1;
                  ctxt.wait‹acknowledgementreceival‹state := wait‹acknowledgementreceival‹acknowledgementReceival;
                  goto next_transition;
               when 2 =>
                  --  ba := ackData!ba (286,33)
                  ctxt.ba := ctxt.ackData.ba;
                  --  cntrl := { false, false, false, false, false, false, true, true } (287,0)
                  ctxt.cntrl := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => true, 8 => true, others => false));
                  --  code := ackData!code (288,0)
                  ctxt.code := ctxt.ackData.code;
                  --  l3Mrt := ackData!l3Mrt (290,33)
                  ctxt.l3Mrt := ctxt.ackData.l3mrt;
                  --  l3Lfn := ackData!l3Lfn (291,0)
                  ctxt.l3Lfn := ctxt.ackData.l3lfn;
                  --  l3Hfn := ackData!l3Hfn (292,0)
                  ctxt.l3Hfn := ctxt.ackData.l3hfn;
                  --  DECISION length(ackData!l3MissingData) < 244 (294,67)
                  --  ANSWER true (296,33)
                  if ((ctxt.ackData.l3missingdata.Length < 244)) = true then
                     --  TASK for i in range(0, length(ackData!l3MissingData), 1):
                     --    l3RrqPosition := i
                     --    l3Rrq(l3RrqPosition) := ackData!l3MissingData(i)
                     --  endfor (298,41)
                     for i in 0 .. Integer (ctxt.ackData.l3missingdata.Length) - 1 loop
                        --  l3RrqPosition := i (299,2)
                        ctxt.wait‹acknowledgementreceival‹l3rrqposition := Asn1UInt(i);
                        --  l3Rrq(l3RrqPosition) := ackData!l3MissingData(i) (300,2)
                        ctxt.l3Rrq.Data(1 + Integer(ctxt.wait‹acknowledgementreceival‹l3rrqposition)) := ctxt.ackData.l3missingdata.Data(1 + Integer(i));
                     end loop;
                     --  SendFrameCount(1) (303,43)
                     tmp475 := My8BitArrayValueInteger(1);
                     RI‹SendFrameCount(tmp475'Access);
                     --  AckIntegerTo16BitArray(0, l3Tte) (305,41)
                     p‹wait‹acknowledgementreceival‹AckIntegerTo16BitArray(0, ctxt.l3Tte);
                     --  CalculateAckFcs(ba, code, l3Tte, l3Mrt, l3Lfn, l3Hfn, l3Rrq, ifcs) (307,41)
                     p‹wait‹acknowledgementreceival‹CalculateAckFcs(ctxt.ba, ctxt.code, ctxt.l3Tte, ctxt.l3Mrt, ctxt.l3Lfn, ctxt.l3Hfn, ctxt.l3Rrq, ctxt.ifcs);
                     --  AckInvertFcs(ifcs, invertedIfcs) (309,41)
                     p‹wait‹acknowledgementreceival‹AckInvertFcs(ctxt.ifcs, ctxt.invertedIfcs);
                     --  PackAckOperationData(l3Tte, l3Mrt, l3Lfn, l3Hfn, l3Rrq, operationData) (311,41)
                     p‹wait‹acknowledgementreceival‹PackAckOperationData(ctxt.l3Tte, ctxt.l3Mrt, ctxt.l3Lfn, ctxt.l3Hfn, ctxt.l3Rrq, ctxt.operationData);
                     --  AckPackInfo(ba, cntrl, code, operationData, invertedIfcs, info) (313,41)
                     p‹wait‹acknowledgementreceival‹AckPackInfo(ctxt.ba, ctxt.cntrl, ctxt.code, ctxt.operationData, ctxt.invertedIfcs, ctxt.info);
                     --  SendData(info) (315,43)
                     RI‹SendData(ctxt.info'Access);
                     --  RETURN  (None,None) at 355, 825
                     ctxt.wait‹acknowledgementreceival‹state := ‹finished;
                     if ctxt.wait‹rawdatareceival‹state = ‹finished and ctxt.wait‹datareceival‹state = ‹finished then
                        return;
                     else
                        trId := -1;
                        goto next_transition;
                     end if;
                     --  ANSWER false (319,33)
                  elsif ((ctxt.ackData.l3missingdata.Length < 244)) = false then
                     --  RETURN  (None,None) at 870, 379
                     ctxt.wait‹acknowledgementreceival‹state := ‹finished;
                     if ctxt.wait‹rawdatareceival‹state = ‹finished and ctxt.wait‹datareceival‹state = ‹finished then
                        return;
                     else
                        trId := -1;
                        goto next_transition;
                     end if;
                  end if;
               when 3 =>
                  --  NEXT_STATE wait‹rawdatareceival‹rawDataReceival (720,34) at 472, 51
                  trId := -1;
                  ctxt.wait‹rawdatareceival‹state := wait‹rawdatareceival‹rawDataReceival;
                  goto next_transition;
               when 4 =>
                  --  ba := inputData!ba (726,33)
                  ctxt.ba := ctxt.inputData.ba;
                  --  cntrl := { false, false, false, false, false, false, true, true } (727,0)
                  ctxt.cntrl := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => true, 8 => true, others => false));
                  --  code := inputData!code (728,0)
                  ctxt.code := ctxt.inputData.code;
                  --  DECISION code (-1,-1)
                  tmp1088 := ctxt.code;
                  --  ANSWER {false, false, false, false, false, false, false, false} (732,34)
                  if MyCode_Equal(tmp1088, (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => false, others => false))) then
                     --  RETURN  (None,None) at 756, 300
                     ctxt.wait‹rawdatareceival‹state := ‹finished;
                     if ctxt.wait‹acknowledgementreceival‹state = ‹finished and ctxt.wait‹datareceival‹state = ‹finished then
                        return;
                     else
                        trId := -1;
                        goto next_transition;
                     end if;
                     --  ANSWER {false, false, false, false, false, false, false, true} (736,34)
                  elsif MyCode_Equal(tmp1088, (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => true, others => false))) then
                     --  l3Mrt := inputData!l3Mrt (738,41)
                     ctxt.inputData.Exist.l3mrt := 1;
                     ctxt.l3Mrt := ctxt.inputData.l3mrt;
                     --  timeToEnd := length(rawData) (739,0)
                     ctxt.wait‹rawdatareceival‹timetoend := Asn1UInt(ctxt.rawData.Length);
                     --  DataToL3Frames(inputData!rawData, l3Stack) (741,41)
                     ctxt.inputData.Exist.rawdata := 1;
                     p‹wait‹rawdatareceival‹DataToL3Frames(ctxt.inputData.rawdata, ctxt.wait‹rawdatareceival‹l3stack);
                     --  SendFrameCount(length(l3Stack)) (743,43)
                     tmp1121 := My8BitArrayValueInteger(ctxt.wait‹rawdatareceival‹l3stack.Length);
                     RI‹SendFrameCount(tmp1121'Access);
                     --  JOIN wait‹rawdatareceival‹wait‹rawdatareceival‹dataSending (None,None) at None, None
                     goto wait‹rawdatareceival‹wait‹rawdatareceival‹dataSending;
                     --  ANSWER {false, false, false, false, false, false, true, false} (779,34)
                  elsif MyCode_Equal(tmp1088, (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => true, 8 => false, others => false))) then
                     --  l3Mrt := inputData!l3Mrt (781,41)
                     ctxt.inputData.Exist.l3mrt := 1;
                     ctxt.l3Mrt := ctxt.inputData.l3mrt;
                     --  CalculateResendTte(inputData!l3AckMissingStack, sentL3Stack, timeToEnd) (783,41)
                     ctxt.inputData.Exist.l3ackmissingstack := 1;
                     p‹wait‹rawdatareceival‹CalculateResendTte(ctxt.inputData.l3ackmissingstack, ctxt.wait‹rawdatareceival‹sentl3stack, ctxt.wait‹rawdatareceival‹timetoend);
                     --  SendFrameCount(length(inputData!l3AckMissingStack)) (785,43)
                     ctxt.inputData.Exist.l3ackmissingstack := 1;
                     tmp1235 := My8BitArrayValueInteger(ctxt.inputData.l3ackmissingstack.Length);
                     RI‹SendFrameCount(tmp1235'Access);
                     --  JOIN wait‹rawdatareceival‹wait‹rawdatareceival‹dataResending (None,None) at None, None
                     goto wait‹rawdatareceival‹wait‹rawdatareceival‹dataResending;
                  end if;
               when 5 =>
                  --  NEXT_STATE wait‹datareceival‹frameCountReceival (1611,34) at 71, 50
                  trId := -1;
                  ctxt.wait‹datareceival‹state := wait‹datareceival‹frameCountReceival;
                  goto next_transition;
               when 6 =>
                  --  NEXT_STATE wait‹datareceival‹dataReceival (1617,38) at 348, 110
                  trId := -1;
                  ctxt.wait‹datareceival‹state := wait‹datareceival‹dataReceival;
                  goto next_transition;
               when 7 =>
                  --  frameCounter := if frameCounter = 255 then frameCounter else frameCounter + 1 fi (1624,33)
                  if (ctxt.wait‹datareceival‹framecounter = 255) then
                     tmp2359 := ctxt.wait‹datareceival‹framecounter;
                  else
                     tmp2359 := (ctxt.wait‹datareceival‹framecounter + 1);
                  end if;
                  ctxt.wait‹datareceival‹framecounter := tmp2359;
                  --  UnpackInfo(info, ba, cntrl, code, operationData, ifcs) (1626,33)
                  p‹wait‹datareceival‹UnpackInfo(ctxt.info, ctxt.ba, ctxt.cntrl, ctxt.code, ctxt.operationData, ctxt.ifcs);
                  --  DECISION code (-1,-1)
                  tmp2379 := ctxt.code;
                  --  ANSWER {false, false, false, false, false, false, false, false} (1630,34)
                  if MyCode_Equal(tmp2379, (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => false, others => false))) then
                     --  RETURN  (None,None) at 556, 314
                     ctxt.wait‹datareceival‹state := ‹finished;
                     if ctxt.wait‹acknowledgementreceival‹state = ‹finished and ctxt.wait‹rawdatareceival‹state = ‹finished then
                        return;
                     else
                        trId := -1;
                        goto next_transition;
                     end if;
                     --  ANSWER {false, false, false, false, false, false, false, true} (1634,34)
                  elsif MyCode_Equal(tmp2379, (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false, 8 => true, others => false))) then
                     --  UnpackOperationData(operationData, l3Tte, l3Mrt, l3Fnum, l3Data) (1636,41)
                     p‹wait‹datareceival‹UnpackOperationData(ctxt.operationData, ctxt.l3Tte, ctxt.l3Mrt, ctxt.l3Fnum, ctxt.l3Data);
                     --  ArrayOf8BitsToInteger(l3Fnum, frameNumber) (1638,41)
                     p‹wait‹datareceival‹ArrayOf8BitsToInteger(ctxt.l3Fnum, ctxt.wait‹datareceival‹framenumber);
                     --  currentFrame := frameNumber (1640,41)
                     ctxt.wait‹datareceival‹currentframe := ctxt.wait‹datareceival‹framenumber;
                     --  DataCalculateFcs(ba, code, l3Tte, l3Mrt, l3Fnum, l3Data, calculatedIfcs) (1642,41)
                     p‹wait‹datareceival‹DataCalculateFcs(ctxt.ba, ctxt.code, ctxt.l3Tte, ctxt.l3Mrt, ctxt.l3Fnum, ctxt.l3Data, ctxt.wait‹datareceival‹calculatedifcs);
                     --  DataInvertFcs(calculatedIfcs, invertedIfcs) (1644,41)
                     p‹wait‹datareceival‹DataInvertFcs(ctxt.wait‹datareceival‹calculatedifcs, ctxt.invertedIfcs);
                     --  DECISION invertedIfcs = ifcs (1646,58)
                     --  ANSWER true (1648,41)
                     if (MyIfcs_Equal(ctxt.invertedIfcs, ctxt.ifcs)) = true then
                        --  DECISION currentFrame = previousFrame + 1 (1650,66)
                        --  ANSWER true (1652,49)
                        if ((ctxt.wait‹datareceival‹currentframe = (ctxt.wait‹datareceival‹previousframe + 1))) = true then
                           null;
                           --  ANSWER false (1654,49)
                        elsif ((ctxt.wait‹datareceival‹currentframe = (ctxt.wait‹datareceival‹previousframe + 1))) = false then
                           --  COMMENT Frames between current and previous frame went missing (1660,52)
                           --  TASK for i in range(previousFrame, currentFrame, 1):
                           --    receivedL3DataFrames(i - 1) := if receivedL3DataFrames(i - 1) = true then receivedL3DataFrames(i - 1) else false fi
                           --  endfor (1656,57)
                           --  COMMENT Frames between current and previous frame went missing (1660,52)
                           for i in Integer (ctxt.wait‹datareceival‹previousframe) .. Integer (ctxt.wait‹datareceival‹currentframe) - 1 loop
                              declare
                                 tmp2453 : Boolean;
                              begin
                                 --  receivedL3DataFrames(i - 1) := if receivedL3DataFrames(i - 1) = true then receivedL3DataFrames(i - 1) else false fi (1657,2)
                                 if (ctxt.wait‹datareceival‹receivedl3dataframes.Data(1 + Integer((i - 1))) = true) then
                                    tmp2453 := ctxt.wait‹datareceival‹receivedl3dataframes.Data(1 + Integer((i - 1)));
                                 else
                                    tmp2453 := false;
                                 end if;
                                 ctxt.wait‹datareceival‹receivedl3dataframes.Data(1 + Integer((i - 1))) := tmp2453;
                              end;
                           end loop;
                        end if;
                        --  COMMENT Current frame is stored (1667,44)
                        --  receivedL3Data(currentFrame - 1) := l3Data (1663,49)
                        ctxt.wait‹datareceival‹receivedl3data.Data(1 + Integer((ctxt.wait‹datareceival‹currentframe - 1))) := ctxt.l3Data;
                        --  receivedL3DataFrames(currentFrame - 1) := true (1664,0)
                        ctxt.wait‹datareceival‹receivedl3dataframes.Data(1 + Integer((ctxt.wait‹datareceival‹currentframe - 1))) := true;
                        --  previousFrame := currentFrame (1665,0)
                        ctxt.wait‹datareceival‹previousframe := ctxt.wait‹datareceival‹currentframe;
                        --  DECISION frameCounter = frameCount (1669,66)
                        --  ANSWER true (1671,49)
                        if ((ctxt.wait‹datareceival‹framecounter = ctxt.frameCount)) = true then
                           --  InitialiseMissingData(receivedL3Data, receivedL3DataFrames, l3MissingDataFrames) (1673,57)
                           p‹wait‹datareceival‹InitialiseMissingData(ctxt.wait‹datareceival‹receivedl3data, ctxt.wait‹datareceival‹receivedl3dataframes, ctxt.wait‹datareceival‹l3missingdataframes);
                           --  InitialiseLfn(receivedL3DataFrames, l3Lfn) (1675,57)
                           p‹wait‹datareceival‹InitialiseLfn(ctxt.wait‹datareceival‹receivedl3dataframes, ctxt.wait‹datareceival‹l3lfn);
                           --  InitialiseHfn(receivedL3DataFrames, l3Hfn) (1677,57)
                           p‹wait‹datareceival‹InitialiseHfn(ctxt.wait‹datareceival‹receivedl3dataframes, ctxt.wait‹datareceival‹l3hfn);
                           --  ArrayOf8BitsToInteger(l3Lfn, writableFrame) (1679,57)
                           p‹wait‹datareceival‹ArrayOf8BitsToInteger(ctxt.wait‹datareceival‹l3lfn, ctxt.wait‹datareceival‹writableframe);
                           --  InitialiseRawData(lastWrittenFrame, writableFrame, receivedL3Data, rawData) (1681,57)
                           p‹wait‹datareceival‹InitialiseRawData(ctxt.wait‹datareceival‹lastwrittenframe, ctxt.wait‹datareceival‹writableframe, ctxt.wait‹datareceival‹receivedl3data, ctxt.rawData);
                           --  inputData!ba!srcAddr := ba!srcAddr (1683,57)
                           ctxt.inputData.ba.srcaddr := ctxt.ba.srcaddr;
                           --  inputData!ba!dstAddr := ba!dstAddr (1684,0)
                           ctxt.inputData.ba.dstaddr := ctxt.ba.dstaddr;
                           --  inputData!rawData := rawData (1685,0)
                           ctxt.inputData.Exist.rawdata := 1;
                           ctxt.inputData.rawdata := ctxt.rawData;
                           --  WriteRawData(inputData) (1687,59)
                           RI‹WriteRawData(ctxt.inputData'Access);
                           --  lastWrittenFrame := writableFrame (1689,57)
                           ctxt.wait‹datareceival‹lastwrittenframe := ctxt.wait‹datareceival‹writableframe;
                           --  ackData!ba!srcAddr := ba!dstAddr (1691,57)
                           ctxt.wait‹datareceival‹ackdata.ba.srcaddr := ctxt.ba.dstaddr;
                           --  ackData!ba!dstAddr := ba!srcAddr (1692,0)
                           ctxt.wait‹datareceival‹ackdata.ba.dstaddr := ctxt.ba.srcaddr;
                           --  ackData!code := {false, false, false, false, false, false, true, false} (1693,0)
                           ctxt.wait‹datareceival‹ackdata.code := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => true, 8 => false, others => false));
                           --  ackData!l3Mrt := l3Mrt (1694,0)
                           ctxt.wait‹datareceival‹ackdata.l3mrt := ctxt.l3Mrt;
                           --  ackData!l3Lfn := l3Lfn (1695,0)
                           ctxt.wait‹datareceival‹ackdata.l3lfn := ctxt.wait‹datareceival‹l3lfn;
                           --  ackData!l3Hfn := l3Hfn (1696,0)
                           ctxt.wait‹datareceival‹ackdata.l3hfn := ctxt.wait‹datareceival‹l3hfn;
                           --  ackData!l3MissingData := l3MissingDataFrames (1697,0)
                           ctxt.wait‹datareceival‹ackdata.l3missingdata := ctxt.wait‹datareceival‹l3missingdataframes;
                           --  SendAck(ackData) (1699,59)
                           RI‹SendAck(ctxt.wait‹datareceival‹ackdata'Access);
                           --  RETURN  (None,None) at 1009, 1620
                           ctxt.wait‹datareceival‹state := ‹finished;
                           if ctxt.wait‹acknowledgementreceival‹state = ‹finished and ctxt.wait‹rawdatareceival‹state = ‹finished then
                              return;
                           else
                              trId := -1;
                              goto next_transition;
                           end if;
                           --  ANSWER false (1703,49)
                        elsif ((ctxt.wait‹datareceival‹framecounter = ctxt.frameCount)) = false then
                           null;
                        end if;
                        --  ANSWER false (1706,41)
                     elsif (MyIfcs_Equal(ctxt.invertedIfcs, ctxt.ifcs)) = false then
                        --  COMMENT Frame is corrupt (1711,44)
                        --  receivedL3DataFrames(currentFrame - 1) := false (1708,49)
                        ctxt.wait‹datareceival‹receivedl3dataframes.Data(1 + Integer((ctxt.wait‹datareceival‹currentframe - 1))) := false;
                        --  previousFrame := currentFrame (1709,0)
                        ctxt.wait‹datareceival‹previousframe := ctxt.wait‹datareceival‹currentframe;
                     end if;
                     --  ArrayOf16BitsToInteger(l3Tte, timeToEnd) (1714,41)
                     p‹wait‹datareceival‹ArrayOf16BitsToInteger(ctxt.l3Tte, ctxt.wait‹datareceival‹timetoend);
                     --  DECISION timeToEnd > 0 (1716,55)
                     --  COMMENT What if last frame has TTE bigger than 0? (1718,36)
                     --  ANSWER true (1720,41)
                     if ((ctxt.wait‹datareceival‹timetoend > 0)) = true then
                        null;
                        --  ANSWER false (1722,41)
                     elsif ((ctxt.wait‹datareceival‹timetoend > 0)) = false then
                        --  InitialiseMissingData(receivedL3Data, receivedL3DataFrames, l3MissingDataFrames) (1724,49)
                        p‹wait‹datareceival‹InitialiseMissingData(ctxt.wait‹datareceival‹receivedl3data, ctxt.wait‹datareceival‹receivedl3dataframes, ctxt.wait‹datareceival‹l3missingdataframes);
                        --  InitialiseLfn(receivedL3DataFrames, l3Lfn) (1726,49)
                        p‹wait‹datareceival‹InitialiseLfn(ctxt.wait‹datareceival‹receivedl3dataframes, ctxt.wait‹datareceival‹l3lfn);
                        --  InitialiseHfn(receivedL3DataFrames, l3Hfn) (1728,49)
                        p‹wait‹datareceival‹InitialiseHfn(ctxt.wait‹datareceival‹receivedl3dataframes, ctxt.wait‹datareceival‹l3hfn);
                        --  ArrayOf8BitsToInteger(l3Lfn, writableFrame) (1730,49)
                        p‹wait‹datareceival‹ArrayOf8BitsToInteger(ctxt.wait‹datareceival‹l3lfn, ctxt.wait‹datareceival‹writableframe);
                        --  InitialiseRawData(lastWrittenFrame, writableFrame, receivedL3Data, rawData) (1732,49)
                        p‹wait‹datareceival‹InitialiseRawData(ctxt.wait‹datareceival‹lastwrittenframe, ctxt.wait‹datareceival‹writableframe, ctxt.wait‹datareceival‹receivedl3data, ctxt.rawData);
                        --  inputData!ba!srcAddr := ba!srcAddr (1734,49)
                        ctxt.inputData.ba.srcaddr := ctxt.ba.srcaddr;
                        --  inputData!ba!dstAddr := ba!dstAddr (1735,0)
                        ctxt.inputData.ba.dstaddr := ctxt.ba.dstaddr;
                        --  inputData!rawData := rawData (1736,0)
                        ctxt.inputData.Exist.rawdata := 1;
                        ctxt.inputData.rawdata := ctxt.rawData;
                        --  WriteRawData(inputData) (1738,51)
                        RI‹WriteRawData(ctxt.inputData'Access);
                        --  lastWrittenFrame := writableFrame (1740,49)
                        ctxt.wait‹datareceival‹lastwrittenframe := ctxt.wait‹datareceival‹writableframe;
                        --  ackData!ba!srcAddr := ba!dstAddr (1742,49)
                        ctxt.wait‹datareceival‹ackdata.ba.srcaddr := ctxt.ba.dstaddr;
                        --  ackData!ba!dstAddr := ba!srcAddr (1743,0)
                        ctxt.wait‹datareceival‹ackdata.ba.dstaddr := ctxt.ba.srcaddr;
                        --  ackData!code := {false, false, false, false, false, false, true, false} (1744,0)
                        ctxt.wait‹datareceival‹ackdata.code := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => true, 8 => false, others => false));
                        --  ackData!l3Mrt := l3Mrt (1745,0)
                        ctxt.wait‹datareceival‹ackdata.l3mrt := ctxt.l3Mrt;
                        --  ackData!l3Lfn := l3Lfn (1746,0)
                        ctxt.wait‹datareceival‹ackdata.l3lfn := ctxt.wait‹datareceival‹l3lfn;
                        --  ackData!l3Hfn := l3Hfn (1747,0)
                        ctxt.wait‹datareceival‹ackdata.l3hfn := ctxt.wait‹datareceival‹l3hfn;
                        --  ackData!l3MissingData := l3MissingDataFrames (1748,0)
                        ctxt.wait‹datareceival‹ackdata.l3missingdata := ctxt.wait‹datareceival‹l3missingdataframes;
                        --  SendAck(ackData) (1750,51)
                        RI‹SendAck(ctxt.wait‹datareceival‹ackdata'Access);
                        --  RETURN  (None,None) at 1932, 2432
                        ctxt.wait‹datareceival‹state := ‹finished;
                        if ctxt.wait‹acknowledgementreceival‹state = ‹finished and ctxt.wait‹rawdatareceival‹state = ‹finished then
                           return;
                        else
                           trId := -1;
                           goto next_transition;
                        end if;
                     end if;
                     --  ANSWER {false, false, false, false, false, false, true, false} (1755,34)
                  elsif MyCode_Equal(tmp2379, (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => true, 8 => false, others => false))) then
                     --  UnpackAckOperationData(operationData, l3Tte, l3Mrt, l3Lfn, l3Hfn, l3Rrq) (1757,41)
                     p‹wait‹datareceival‹UnpackAckOperationData(ctxt.operationData, ctxt.l3Tte, ctxt.l3Mrt, ctxt.wait‹datareceival‹l3lfn, ctxt.wait‹datareceival‹l3hfn, ctxt.l3Rrq);
                     --  DataCalculateAckFcs(ba, code, l3Tte, l3Mrt, l3Lfn, l3Hfn, l3Rrq, calculatedIfcs) (1759,41)
                     p‹wait‹datareceival‹DataCalculateAckFcs(ctxt.ba, ctxt.code, ctxt.l3Tte, ctxt.l3Mrt, ctxt.wait‹datareceival‹l3lfn, ctxt.wait‹datareceival‹l3hfn, ctxt.l3Rrq, ctxt.wait‹datareceival‹calculatedifcs);
                     --  DataInvertFcs(calculatedIfcs, invertedIfcs) (1761,41)
                     p‹wait‹datareceival‹DataInvertFcs(ctxt.wait‹datareceival‹calculatedifcs, ctxt.invertedIfcs);
                     --  DECISION invertedIfcs = ifcs (1763,58)
                     --  ANSWER true (1765,41)
                     if (MyIfcs_Equal(ctxt.invertedIfcs, ctxt.ifcs)) = true then
                        --  DECISION length(l3Rrq) > 0 (1767,67)
                        --  ANSWER true (1769,49)
                        if ((ctxt.l3Rrq.Length > 0)) = true then
                           --  InitialiseMissingDataNumbers(l3Rrq, l3AckMissingStack) (1771,57)
                           p‹wait‹datareceival‹InitialiseMissingDataNumbers(ctxt.l3Rrq, ctxt.wait‹datareceival‹l3ackmissingstack);
                           --  inputData!ba!srcAddr := ba!dstAddr (1773,57)
                           ctxt.inputData.ba.srcaddr := ctxt.ba.dstaddr;
                           --  inputData!ba!dstAddr := ba!srcAddr (1774,0)
                           ctxt.inputData.ba.dstaddr := ctxt.ba.srcaddr;
                           --  inputData!code := {false, false, false, false, false, false, true, false} (1775,0)
                           ctxt.inputData.code := (Data => (1 => false, 2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => true, 8 => false, others => false));
                           --  inputData!l3Mrt := l3Mrt (1776,0)
                           ctxt.inputData.Exist.l3mrt := 1;
                           ctxt.inputData.l3mrt := ctxt.l3Mrt;
                           --  inputData!l3AckMissingStack := l3AckMissingStack (1777,0)
                           ctxt.inputData.Exist.l3ackmissingstack := 1;
                           ctxt.inputData.l3ackmissingstack := ctxt.wait‹datareceival‹l3ackmissingstack;
                           --  ResendRawData(inputData) (1779,59)
                           RI‹ResendRawData(ctxt.inputData'Access);
                           --  RETURN  (None,None) at 2898, 882
                           ctxt.wait‹datareceival‹state := ‹finished;
                           if ctxt.wait‹acknowledgementreceival‹state = ‹finished and ctxt.wait‹rawdatareceival‹state = ‹finished then
                              return;
                           else
                              trId := -1;
                              goto next_transition;
                           end if;
                           --  ANSWER false (1783,49)
                        elsif ((ctxt.l3Rrq.Length > 0)) = false then
                           --  RETURN  (None,None) at 3298, 680
                           ctxt.wait‹datareceival‹state := ‹finished;
                           if ctxt.wait‹acknowledgementreceival‹state = ‹finished and ctxt.wait‹rawdatareceival‹state = ‹finished then
                              return;
                           else
                              trId := -1;
                              goto next_transition;
                           end if;
                        end if;
                        --  ANSWER false (1788,41)
                     elsif (MyIfcs_Equal(ctxt.invertedIfcs, ctxt.ifcs)) = false then
                        --  RETURN  (None,None) at 3396, 572
                        ctxt.wait‹datareceival‹state := ‹finished;
                        if ctxt.wait‹acknowledgementreceival‹state = ‹finished and ctxt.wait‹rawdatareceival‹state = ‹finished then
                           return;
                        else
                           trId := -1;
                           goto next_transition;
                        end if;
                     end if;
                  end if;
                  --  NEXT_STATE wait‹datareceival‹dataReceival (1794,38) at 1702, 2497
                  trId := -1;
                  ctxt.wait‹datareceival‹state := wait‹datareceival‹dataReceival;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            goto next_transition;
            --  CONNECTION waiting (1840,8)
            <<waiting>>
            --  NEXT_STATE Wait (1842,18) at 320, 116
            -- Entering state aggregation Wait
            wait‹START;
            ctxt.state := Wait;
            trId := -1;
            goto next_transition;
            --  CONNECTION wait‹rawdatareceival‹wait‹rawdatareceival‹dataSending (745,36)
            <<wait‹rawdatareceival‹wait‹rawdatareceival‹dataSending>>
            --  noOfFrame := if noOfFrame = 255 then noOfFrame else noOfFrame+1 fi (747,41)
            if (ctxt.wait‹rawdatareceival‹noofframe = 255) then
               tmp1123 := ctxt.wait‹rawdatareceival‹noofframe;
            else
               tmp1123 := (ctxt.wait‹rawdatareceival‹noofframe + 1);
            end if;
            ctxt.wait‹rawdatareceival‹noofframe := tmp1123;
            --  l3Data := l3Stack(noOfFrame - 1) (748,0)
            ctxt.l3Data := ctxt.wait‹rawdatareceival‹l3stack.Data(1 + Integer((ctxt.wait‹rawdatareceival‹noofframe - 1)));
            --  timeToEnd := timeToEnd - length(l3Data) (749,0)
            ctxt.wait‹rawdatareceival‹timetoend := Asn1UInt((ctxt.wait‹rawdatareceival‹timetoend - MyRawDataInteger(ctxt.l3Data.Length)));
            --  IntegerTo8BitArray(noOfFrame, l3Fnum) (751,41)
            p‹wait‹rawdatareceival‹IntegerTo8BitArray(ctxt.wait‹rawdatareceival‹noofframe, ctxt.l3Fnum);
            --  IntegerTo16BitArray(timeToEnd, l3Tte) (753,41)
            p‹wait‹rawdatareceival‹IntegerTo16BitArray(ctxt.wait‹rawdatareceival‹timetoend, ctxt.l3Tte);
            --  CalculateFcs(ba, code, l3Tte, l3Mrt, l3Fnum, l3Data, ifcs) (755,41)
            p‹wait‹rawdatareceival‹CalculateFcs(ctxt.ba, ctxt.code, ctxt.l3Tte, ctxt.l3Mrt, ctxt.l3Fnum, ctxt.l3Data, ctxt.ifcs);
            --  InvertFcs(ifcs, invertedIfcs) (757,41)
            p‹wait‹rawdatareceival‹InvertFcs(ctxt.ifcs, ctxt.invertedIfcs);
            --  PackOperationData(l3Tte, l3Mrt, l3Fnum, l3Data, operationData) (759,41)
            p‹wait‹rawdatareceival‹PackOperationData(ctxt.l3Tte, ctxt.l3Mrt, ctxt.l3Fnum, ctxt.l3Data, ctxt.operationData);
            --  PackInfo(ba, cntrl, code, operationData, invertedIfcs, info) (761,41)
            p‹wait‹rawdatareceival‹PackInfo(ctxt.ba, ctxt.cntrl, ctxt.code, ctxt.operationData, ctxt.invertedIfcs, ctxt.info);
            --  SendData(info) (763,43)
            RI‹SendData(ctxt.info'Access);
            --  sentL3Stack(noOfSentFrames) := l3Data (765,41)
            ctxt.wait‹rawdatareceival‹sentl3stack.Data(1 + Integer(ctxt.wait‹rawdatareceival‹noofsentframes)) := ctxt.l3Data;
            --  noOfSentFrames := if noOfSentFrames = 254 then noOfSentFrames else noOfSentFrames + 1 fi (766,0)
            if (ctxt.wait‹rawdatareceival‹noofsentframes = 254) then
               tmp1197 := ctxt.wait‹rawdatareceival‹noofsentframes;
            else
               tmp1197 := (ctxt.wait‹rawdatareceival‹noofsentframes + 1);
            end if;
            ctxt.wait‹rawdatareceival‹noofsentframes := tmp1197;
            --  DECISION length(sentL3Stack) = length(l3Stack) (768,65)
            --  ANSWER true (770,41)
            if ((ctxt.wait‹rawdatareceival‹sentl3stack.Length = ctxt.wait‹rawdatareceival‹l3stack.Length)) = true then
               --  RETURN  (None,None) at 1138, 1118
               ctxt.wait‹rawdatareceival‹state := ‹finished;
               if ctxt.wait‹acknowledgementreceival‹state = ‹finished and ctxt.wait‹datareceival‹state = ‹finished then
                  return;
               else
                  trId := -1;
                  goto next_transition;
               end if;
               --  ANSWER false (774,41)
            elsif ((ctxt.wait‹rawdatareceival‹sentl3stack.Length = ctxt.wait‹rawdatareceival‹l3stack.Length)) = false then
               --  JOIN wait‹rawdatareceival‹wait‹rawdatareceival‹dataSending (776,49) at 1334, 1118
               goto wait‹rawdatareceival‹wait‹rawdatareceival‹dataSending;
            end if;
            --  CONNECTION wait‹rawdatareceival‹wait‹rawdatareceival‹dataResending (787,36)
            <<wait‹rawdatareceival‹wait‹rawdatareceival‹dataResending>>
            --  noOfMissingFrame := inputData!l3AckMissingStack(i) (789,41)
            ctxt.inputData.Exist.l3ackmissingstack := 1;
            ctxt.wait‹rawdatareceival‹noofmissingframe := ctxt.inputData.l3ackmissingstack.Data(1 + Integer(ctxt.wait‹rawdatareceival‹i));
            --  l3Data := sentL3Stack(noOfMissingFrame - 1) (790,0)
            ctxt.l3Data := ctxt.wait‹rawdatareceival‹sentl3stack.Data(1 + Integer((ctxt.wait‹rawdatareceival‹noofmissingframe - 1)));
            --  timeToEnd := timeToEnd - length(l3Data) (791,0)
            ctxt.wait‹rawdatareceival‹timetoend := Asn1UInt((ctxt.wait‹rawdatareceival‹timetoend - MyRawDataInteger(ctxt.l3Data.Length)));
            --  IntegerTo8BitArray(noOfMissingFrame, l3Fnum) (793,41)
            p‹wait‹rawdatareceival‹IntegerTo8BitArray(ctxt.wait‹rawdatareceival‹noofmissingframe, ctxt.l3Fnum);
            --  IntegerTo16BitArray(timeToEnd, l3Tte) (795,41)
            p‹wait‹rawdatareceival‹IntegerTo16BitArray(ctxt.wait‹rawdatareceival‹timetoend, ctxt.l3Tte);
            --  CalculateFcs(ba, code, l3Tte, l3Mrt, l3Fnum, l3Data, ifcs) (797,41)
            p‹wait‹rawdatareceival‹CalculateFcs(ctxt.ba, ctxt.code, ctxt.l3Tte, ctxt.l3Mrt, ctxt.l3Fnum, ctxt.l3Data, ctxt.ifcs);
            --  InvertFcs(ifcs, invertedIfcs) (799,41)
            p‹wait‹rawdatareceival‹InvertFcs(ctxt.ifcs, ctxt.invertedIfcs);
            --  PackOperationData(l3Tte, l3Mrt, l3Fnum, l3Data, operationData) (801,41)
            p‹wait‹rawdatareceival‹PackOperationData(ctxt.l3Tte, ctxt.l3Mrt, ctxt.l3Fnum, ctxt.l3Data, ctxt.operationData);
            --  PackInfo(ba, cntrl, code, operationData, invertedIfcs, info) (803,41)
            p‹wait‹rawdatareceival‹PackInfo(ctxt.ba, ctxt.cntrl, ctxt.code, ctxt.operationData, ctxt.invertedIfcs, ctxt.info);
            --  SendData(info) (805,43)
            RI‹SendData(ctxt.info'Access);
            --  DECISION i = length(inputData!l3AckMissingStack) - 1 (807,47)
            ctxt.inputData.Exist.l3ackmissingstack := 1;
            --  ANSWER true (809,41)
            if ((ctxt.wait‹rawdatareceival‹i = Asn1UInt((ctxt.inputData.l3ackmissingstack.Length - 1)))) = true then
               --  RETURN  (None,None) at 1764, 1046
               ctxt.wait‹rawdatareceival‹state := ‹finished;
               if ctxt.wait‹acknowledgementreceival‹state = ‹finished and ctxt.wait‹datareceival‹state = ‹finished then
                  return;
               else
                  trId := -1;
                  goto next_transition;
               end if;
               --  ANSWER false (813,41)
            elsif ((ctxt.wait‹rawdatareceival‹i = Asn1UInt((ctxt.inputData.l3ackmissingstack.Length - 1)))) = false then
               --  i := if i = (length(inputData!l3AckMissingStack) - 1) then i else i + 1 fi (815,49)
               ctxt.inputData.Exist.l3ackmissingstack := 1;
               if (ctxt.wait‹rawdatareceival‹i = Asn1UInt((ctxt.inputData.l3ackmissingstack.Length - 1))) then
                  tmp1313 := ctxt.wait‹rawdatareceival‹i;
               else
                  tmp1313 := (ctxt.wait‹rawdatareceival‹i + 1);
               end if;
               ctxt.wait‹rawdatareceival‹i := tmp1313;
               --  JOIN wait‹rawdatareceival‹wait‹rawdatareceival‹dataResending (817,49) at 2031, 1099
               goto wait‹rawdatareceival‹wait‹rawdatareceival‹dataResending;
            end if;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end node;