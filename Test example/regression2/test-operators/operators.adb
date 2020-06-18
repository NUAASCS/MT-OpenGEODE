-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body operators is
   type States is (wait);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      c : aliased Choice := (Kind => i_PRESENT, i => 2);
      b : aliased Boolean := true;
      e : aliased Enum_T := one;
      f : aliased Real := 2.0;
      i : aliased Integer := 2;
      s : aliased CharString := (Data => (72, 69, 76, 76, 79, others => 0), Length => 5);
      fixseqof : aliased FixSeqof := (Data => (1 => 1, 2 => 2, 3 => 3, others => 1));
      varseqof : aliased VarSeqof := (Data => (1 => 1, 2 => 2, 3 => 3, others => 1), Length => 3);
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 2;
   procedure runTransition(Id: Integer);
   procedure run is
      begin
         case ctxt.state is
            when wait =>
               runTransition(1);
            when others =>
               runTransition(CS_Only);
         end case;
      end run;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      tmp29 : aliased Boolean;
      tmp108 : aliased CharString;
      tmp71 : aliased CharString;
      tmp62 : aliased CharString;
      tmp124 : aliased CharString;
      tmp55 : aliased CharString;
      tmp114 : aliased Boolean;
      tmp30 : aliased CharString;
      tmp84 : aliased Boolean;
      --  !! stack: _call_external_function line 1271
      tmp78 : aliased CharString;
      package Math is new Ada.Numerics.Generic_Elementary_Functions(Asn1Real);
      tmp123 : aliased Boolean;
      tmp61 : aliased Boolean;
      tmp22 : aliased CharString;
      tmp54 : aliased Boolean;
      tmp77 : aliased Boolean;
      tmp100 : aliased CharString;
      tmp38 : aliased Boolean;
      tmp115 : aliased CharString;
      tmp39 : aliased CharString;
      tmp92 : aliased CharString;
      tmp70 : aliased Boolean;
      function num_Enum_T is new Ada.Unchecked_Conversion(Enum_T, Asn1UInt);
      tmp107 : aliased Boolean;
      tmp21 : aliased Boolean;
      tmp91 : aliased Boolean;
      tmp85 : aliased CharString;
      tmp99 : aliased Boolean;
      tmp48 : aliased CharString;
      tmp47 : aliased Boolean;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  NEXT_STATE Wait (16,18) at 163, 113
                  trId := -1;
                  ctxt.state := Wait;
                  goto next_transition;
               when 1 =>
                  --  assert(abs(-i) = i, 'abs(-i) = i') (22,17)
                  tmp21 := (abs((-AsN1INT(ctxt.i))) = ctxt.i);
                  tmp22 := (Data => (97, 98, 115, 40, 45, 105, 41, 32, 61, 32, 105, others => 0), Length => 11);
                  RIÜassert(tmp21'Access, tmp22'Access);
                  --  assert(abs(-f) = f, 'abs(-f) = f') (24,17)
                  tmp29 := (abs((-Asn1Real(ctxt.f)))) = (ctxt.f);
                  tmp30 := (Data => (97, 98, 115, 40, 45, 102, 41, 32, 61, 32, 102, others => 0), Length => 11);
                  RIÜassert(tmp29'Access, tmp30'Access);
                  --  assert(ceil(f + 0.5) = 3.0, 'ceil(f + 0.5) = 3.0') (26,17)
                  tmp38 := (Real'Ceiling((ctxt.f + 0.5))) = (3.0);
                  tmp39 := (Data => (99, 101, 105, 108, 40, 102, 32, 43, 32, 48, 46, 53, 41, 32, 61, 32, 51, 46, 48, others => 0), Length => 19);
                  RIÜassert(tmp38'Access, tmp39'Access);
                  --  assert(round(cos(pi)) = -1.0, 'round(cos(pi)) = -1.0') (28,17)
                  tmp47 := (Asn1Real'Rounding(Math.Cos(pi))) = ((-1.0));
                  tmp48 := (Data => (114, 111, 117, 110, 100, 40, 99, 111, 115, 40, 112, 105, 41, 41, 32, 61, 32, 45, 49, 46, 48, others => 0), Length => 21);
                  RIÜassert(tmp47'Access, tmp48'Access);
                  --  assert(fix(f) = i, 'fix(f) = i') (30,17)
                  tmp54 := (Asn1Int(ctxt.f) = ctxt.i);
                  tmp55 := (Data => (102, 105, 120, 40, 102, 41, 32, 61, 32, 105, others => 0), Length => 10);
                  RIÜassert(tmp54'Access, tmp55'Access);
                  --  assert(float(i) = f, 'float(i) = f') (32,17)
                  tmp61 := (Asn1Real(ctxt.i)) = (ctxt.f);
                  tmp62 := (Data => (102, 108, 111, 97, 116, 40, 105, 41, 32, 61, 32, 102, others => 0), Length => 12);
                  RIÜassert(tmp61'Access, tmp62'Access);
                  --  assert(floor(f + 0.5) = f, 'floor(f + 0.5) = f') (34,17)
                  tmp70 := (Real'Floor((ctxt.f + 0.5))) = (ctxt.f);
                  tmp71 := (Data => (102, 108, 111, 111, 114, 40, 102, 32, 43, 32, 48, 46, 53, 41, 32, 61, 32, 102, others => 0), Length => 18);
                  RIÜassert(tmp70'Access, tmp71'Access);
                  --  assert(length(fixSeqOf) = 3, 'length(fixSeqOf) = 3') (36,17)
                  tmp77 := (Asn1UInt(3) = 3);
                  tmp78 := (Data => (108, 101, 110, 103, 116, 104, 40, 102, 105, 120, 83, 101, 113, 79, 102, 41, 32, 61, 32, 51, others => 0), Length => 20);
                  RIÜassert(tmp77'Access, tmp78'Access);
                  --  assert(length(varSeqOf) = 3, 'length(varSeqOf) = 3') (38,17)
                  tmp84 := (Asn1UInt(ctxt.varSeqOf.Length) = 3);
                  tmp85 := (Data => (108, 101, 110, 103, 116, 104, 40, 118, 97, 114, 83, 101, 113, 79, 102, 41, 32, 61, 32, 51, others => 0), Length => 20);
                  RIÜassert(tmp84'Access, tmp85'Access);
                  --  assert(num(e) = 12, 'num(e) = 12') (40,17)
                  tmp91 := (num_Enum_T(ctxt.e) = 12);
                  tmp92 := (Data => (110, 117, 109, 40, 101, 41, 32, 61, 32, 49, 50, others => 0), Length => 11);
                  RIÜassert(tmp91'Access, tmp92'Access);
                  --  assert(power(i, 3) = 8, 'power(i, 3) = 8') (42,17)
                  tmp99 := (ctxt.i ** Natural(3) = 8);
                  tmp100 := (Data => (112, 111, 119, 101, 114, 40, 105, 44, 32, 51, 41, 32, 61, 32, 56, others => 0), Length => 15);
                  RIÜassert(tmp99'Access, tmp100'Access);
                  --  assert(round(sin(pi)) = 0.0, 'round(sin(pi)) = 0.0') (44,17)
                  tmp107 := (Asn1Real'Rounding(Math.Sin(pi))) = (0.0);
                  tmp108 := (Data => (114, 111, 117, 110, 100, 40, 115, 105, 110, 40, 112, 105, 41, 41, 32, 61, 32, 48, 46, 48, others => 0), Length => 20);
                  RIÜassert(tmp107'Access, tmp108'Access);
                  --  assert(sqrt(16.0) = 4.0, 'sqrt(16.0) = 4.0') (46,17)
                  tmp114 := (Math.Sqrt(16.0)) = (4.0);
                  tmp115 := (Data => (115, 113, 114, 116, 40, 49, 54, 46, 48, 41, 32, 61, 32, 52, 46, 48, others => 0), Length => 16);
                  RIÜassert(tmp114'Access, tmp115'Access);
                  --  assert(trunc(f + 0.1) = f, 'trunc(f + 0.1) = f') (48,17)
                  tmp123 := (Real'Truncation((ctxt.f + 0.1))) = (ctxt.f);
                  tmp124 := (Data => (116, 114, 117, 110, 99, 40, 102, 32, 43, 32, 48, 46, 49, 41, 32, 61, 32, 102, others => 0), Length => 18);
                  RIÜassert(tmp123'Access, tmp124'Access);
                  --  writeln(i, f, b, s) (50,17)
                  Put(Integer'Image(ctxt.i));
                  Put(Real'Image(ctxt.f));
                  Put(Boolean'Image(ctxt.b));
                  for i in 1 .. ctxt.s.Length loop
                     Put(Character'Val(ctxt.s.Data(i)));
                  end loop;
                  New_Line;
                  --  write(i, f, b, s) (52,17)
                  Put(Integer'Image(ctxt.i));
                  Put(Real'Image(ctxt.f));
                  Put(Boolean'Image(ctxt.b));
                  for i in 1 .. ctxt.s.Length loop
                     Put(Character'Val(ctxt.s.Data(i)));
                  end loop;
                  --  NEXT_STATE Wait (54,22) at 164, 1048
                  trId := -1;
                  ctxt.state := Wait;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end operators;