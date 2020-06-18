-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
USE adaasn1rtl;
use type adaasn1rtl.OctetBuffer;
use type adaasn1rtl.BitArray;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;
--# inherit ;


PACKAGE TASTE_Dataview with SPARK_Mode
IS


SUBTYPE Boolean is adaasn1rtl.Asn1Boolean;


function Boolean_Equal(val1, val2: in Boolean) return Boolean;

function Boolean_Init return Boolean;

ERR_BOOLEAN:CONSTANT INTEGER := 1; -- 
FUNCTION Boolean_IsConstraintValid(val : in Boolean) return adaasn1rtl.ASN1_RESULT;
SUBTYPE Integer is adaasn1rtl.Asn1Int range -9223372036854775808 .. 9223372036854775807;


function Integer_Equal(val1, val2: in Integer) return Boolean;

function Integer_Init return Integer;

ERR_INTEGER:CONSTANT INTEGER := 8; -- 
FUNCTION Integer_IsConstraintValid(val : in Integer) return adaasn1rtl.ASN1_RESULT;
-- FixSeqof --------------------------------------------
SUBTYPE FixSeqof_index is integer range 1..3;
TYPE FixSeqof_array IS ARRAY (FixSeqof_index) OF Integer;
TYPE FixSeqof IS  RECORD
    Data  : FixSeqof_array;
END RECORD;

function FixSeqof_Equal(val1, val2: in FixSeqof) return Boolean;

function FixSeqof_Init return FixSeqof;

ERR_FIXSEQOF_ELM:CONSTANT INTEGER := 29; 
FUNCTION FixSeqof_IsConstraintValid(val : in FixSeqof) return adaasn1rtl.ASN1_RESULT;
-- VarSeqof --------------------------------------------
SUBTYPE VarSeqof_index is integer range 1..100;
TYPE VarSeqof_array IS ARRAY (VarSeqof_index) OF Integer;
SUBTYPE VarSeqof_length_index is integer range 0..100;
TYPE VarSeqof IS  RECORD
    Length : VarSeqof_length_index;
    Data  : VarSeqof_array;
END RECORD;

function VarSeqof_Equal(val1, val2: in VarSeqof) return Boolean;

function VarSeqof_Init return VarSeqof;

ERR_VARSEQOF_ELM:CONSTANT INTEGER := 46; 
ERR_VARSEQOF:CONSTANT INTEGER := 57; 
FUNCTION VarSeqof_IsConstraintValid(val : in VarSeqof) return adaasn1rtl.ASN1_RESULT;
SUBTYPE Real is adaasn1rtl.Asn1Real;


function Real_Equal(val1, val2: in Real) return Boolean;

function Real_Init return Real;

ERR_REAL:CONSTANT INTEGER := 15; -- 
FUNCTION Real_IsConstraintValid(val : in Real) return adaasn1rtl.ASN1_RESULT;
-- Choice --------------------------------------------

SUBTYPE Choice_index_range is integer range 0..2;

TYPE Choice_selection IS (b_PRESENT, i_PRESENT, f_PRESENT);
for Choice_selection use
    (b_PRESENT => 1, i_PRESENT => 2, f_PRESENT => 3);
for Choice_selection'Size use 32;

TYPE Choice(kind : Choice_selection:= b_PRESENT) IS 
RECORD
    case kind is
    when b_PRESENT =>
            b: adaasn1rtl.Asn1Boolean;
    when i_PRESENT =>
            i: Integer;
    when f_PRESENT =>
            f: Real;
    end case;
END RECORD;

FOR Choice USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

function Choice_Equal(val1, val2: in Choice) return Boolean;

function Choice_Init return Choice;

ERR_CHOICE:CONSTANT INTEGER := 100; 
ERR_CHOICE_B:CONSTANT INTEGER := 71; 
ERR_CHOICE_I:CONSTANT INTEGER := 78; 
ERR_CHOICE_F:CONSTANT INTEGER := 89; 
FUNCTION Choice_IsConstraintValid(val : in Choice) return adaasn1rtl.ASN1_RESULT;
SUBTYPE CharString_index is integer range 1..100;
SUBTYPE CharString_array IS adaasn1rtl.OctetBuffer(CharString_index);
SUBTYPE CharString_length_index is integer range 0..100;
TYPE CharString IS  RECORD
    Length : CharString_length_index;
    Data  : CharString_array;
END RECORD;

function CharString_Equal(val1, val2: in CharString) return Boolean;

function CharString_Init return CharString;

ERR_CHARSTRING:CONSTANT INTEGER := 22; -- 
FUNCTION CharString_IsConstraintValid(val : in CharString) return adaasn1rtl.ASN1_RESULT;
SUBTYPE Enum_T_index_range is integer range 0..2;
TYPE Enum_T IS (one, two, three) with Convention => C;
for Enum_T use
    (one => 12, two => 13, three => 111);

function Enum_T_Equal(val1, val2: in Enum_T) return Boolean;

function Enum_T_Init return Enum_T;

ERR_ENUM_T:CONSTANT INTEGER := 64; -- 
FUNCTION Enum_T_IsConstraintValid(val : in Enum_T) return adaasn1rtl.ASN1_RESULT;

pi : CONSTANT TASTE_Dataview.Real:= 3.14159265359000010000E+000; 

private
   --# hide TASTE_Dataview;


END TASTE_Dataview;