-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
USE adaasn1rtl;
use type adaasn1rtl.OctetBuffer;
use type adaasn1rtl.BitArray;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;
WITH TASTE_BasicTypes; use TASTE_BasicTypes;
--# inherit TASTE_BasicTypes;


PACKAGE TASTE_Dataview with SPARK_Mode
IS


SUBTYPE MyInteger is TASTE_BasicTypes.T_UInt8 range 0 .. 255;


function MyInteger_Equal(val1, val2: in MyInteger) return Boolean;

function MyInteger_Init return MyInteger;

ERR_MYINTEGER:CONSTANT INTEGER := 43; -- 
FUNCTION MyInteger_IsConstraintValid(val : in MyInteger) return adaasn1rtl.ASN1_RESULT;
-- MySeq --------------------------------------------
SUBTYPE MySeq_b_index_range is integer range 0..2;
TYPE MySeq_b IS (taste, welcomes, you) with Convention => C;
for MySeq_b use
    (taste => 1, welcomes => 2, you => 3);

TYPE MySeq IS RECORD 
    a : MyInteger;
    b : MySeq_b;
END RECORD;

function MySeq_b_Equal(val1, val2: in MySeq_b) return Boolean;

function MySeq_Equal(val1, val2: in MySeq) return Boolean;

function MySeq_b_Init return MySeq_b;
function MySeq_Init return MySeq;

ERR_MYSEQ_A:CONSTANT INTEGER := 75; 
ERR_MYSEQ_B:CONSTANT INTEGER := 90; 
FUNCTION MySeq_IsConstraintValid(val : in MySeq) return adaasn1rtl.ASN1_RESULT;
-- MyChoice --------------------------------------------

SUBTYPE MyChoice_index_range is integer range 0..1;

TYPE MyChoice_selection IS (a_PRESENT, b_PRESENT);
for MyChoice_selection use
    (a_PRESENT => 1, b_PRESENT => 2);
for MyChoice_selection'Size use 32;

TYPE MyChoice(kind : MyChoice_selection:= a_PRESENT) IS 
RECORD
    case kind is
    when a_PRESENT =>
            a: adaasn1rtl.Asn1Boolean;
    when b_PRESENT =>
            b: MySeq;
    end case;
END RECORD;

FOR MyChoice USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

function MyChoice_Equal(val1, val2: in MyChoice) return Boolean;

function MyChoice_Init return MyChoice;

ERR_MYCHOICE:CONSTANT INTEGER := 142; 
ERR_MYCHOICE_A:CONSTANT INTEGER := 103; 
ERR_MYCHOICE_B_A:CONSTANT INTEGER := 110; 
ERR_MYCHOICE_B_B:CONSTANT INTEGER := 125; 
FUNCTION MyChoice_IsConstraintValid(val : in MyChoice) return adaasn1rtl.ASN1_RESULT;
-- SeqInt --------------------------------------------
SUBTYPE SeqInt_index is integer range 1..2;
TYPE SeqInt_array IS ARRAY (SeqInt_index) OF TASTE_BasicTypes.T_UInt8;
SUBTYPE SeqInt_length_index is integer range 1..2;
TYPE SeqInt IS  RECORD
    Length : SeqInt_length_index;
    Data  : SeqInt_array;
END RECORD;

function SeqInt_Equal(val1, val2: in SeqInt) return Boolean;

function SeqInt_Init return SeqInt;

ERR_SEQINT_ELM:CONSTANT INTEGER := 166; 
ERR_SEQINT:CONSTANT INTEGER := 177; 
FUNCTION SeqInt_IsConstraintValid(val : in SeqInt) return adaasn1rtl.ASN1_RESULT;
SUBTYPE MyReal is adaasn1rtl.Asn1Real;


function MyReal_Equal(val1, val2: in MyReal) return Boolean;

function MyReal_Init return MyReal;

ERR_MYREAL:CONSTANT INTEGER := 54; -- 
FUNCTION MyReal_IsConstraintValid(val : in MyReal) return adaasn1rtl.ASN1_RESULT;
SUBTYPE LargerReal is adaasn1rtl.Asn1Real;


function LargerReal_Equal(val1, val2: in LargerReal) return Boolean;

function LargerReal_Init return LargerReal;

ERR_LARGERREAL:CONSTANT INTEGER := 61; -- 
FUNCTION LargerReal_IsConstraintValid(val : in LargerReal) return adaasn1rtl.ASN1_RESULT;
SUBTYPE MyEnum_index_range is integer range 0..2;
TYPE MyEnum IS (hello, world, howareyou) with Convention => C;
for MyEnum use
    (hello => 12, world => 13, howareyou => 111);

function MyEnum_Equal(val1, val2: in MyEnum) return Boolean;

function MyEnum_Init return MyEnum;

ERR_MYENUM:CONSTANT INTEGER := 68; -- 
FUNCTION MyEnum_IsConstraintValid(val : in MyEnum) return adaasn1rtl.ASN1_RESULT;
-- MySeqOf --------------------------------------------
SUBTYPE MySeqOf_index is integer range 1..2;
TYPE MySeqOf_array IS ARRAY (MySeqOf_index) OF MyEnum;
TYPE MySeqOf IS  RECORD
    Data  : MySeqOf_array;
END RECORD;

function MySeqOf_Equal(val1, val2: in MySeqOf) return Boolean;

function MySeqOf_Init return MySeqOf;

ERR_MYSEQOF_ELM:CONSTANT INTEGER := 149; 
FUNCTION MySeqOf_IsConstraintValid(val : in MySeqOf) return adaasn1rtl.ASN1_RESULT;
-- SeqBool --------------------------------------------
SUBTYPE SeqBool_index is integer range 1..2;
TYPE SeqBool_array IS ARRAY (SeqBool_index) OF adaasn1rtl.Asn1Boolean;
TYPE SeqBool IS  RECORD
    Data  : SeqBool_array;
END RECORD;

function SeqBool_Equal(val1, val2: in SeqBool) return Boolean;

function SeqBool_Init return SeqBool;

ERR_SEQBOOL_ELM:CONSTANT INTEGER := 184; 
FUNCTION SeqBool_IsConstraintValid(val : in SeqBool) return adaasn1rtl.ASN1_RESULT;
-- SeqBool2 --------------------------------------------
SUBTYPE SeqBool2_index is integer range 1..2;
TYPE SeqBool2_array IS ARRAY (SeqBool2_index) OF adaasn1rtl.Asn1Boolean;
SUBTYPE SeqBool2_length_index is integer range 1..2;
TYPE SeqBool2 IS  RECORD
    Length : SeqBool2_length_index;
    Data  : SeqBool2_array;
END RECORD;

function SeqBool2_Equal(val1, val2: in SeqBool2) return Boolean;

function SeqBool2_Init return SeqBool2;

ERR_SEQBOOL2_ELM:CONSTANT INTEGER := 197; 
ERR_SEQBOOL2:CONSTANT INTEGER := 204; 
FUNCTION SeqBool2_IsConstraintValid(val : in SeqBool2) return adaasn1rtl.ASN1_RESULT;
SUBTYPE MyOctStr_index is integer range 1..3;
SUBTYPE MyOctStr_array IS adaasn1rtl.OctetBuffer(MyOctStr_index);
TYPE MyOctStr IS  RECORD
    Data  : MyOctStr_array;
END RECORD;

function MyOctStr_Equal(val1, val2: in MyOctStr) return Boolean;

function MyOctStr_Init return MyOctStr;
SUBTYPE String_index is integer range 1..100;
SUBTYPE String_array IS adaasn1rtl.OctetBuffer(String_index);
SUBTYPE String_length_index is integer range 0..100;
TYPE String IS  RECORD
    Length : String_length_index;
    Data  : String_array;
END RECORD;

function String_Equal(val1, val2: in String) return Boolean;

function String_Init return String;

ERR_STRING:CONSTANT INTEGER := 217; -- 
FUNCTION String_IsConstraintValid(val : in String) return adaasn1rtl.ASN1_RESULT;

myVar : CONSTANT TASTE_Dataview.MySeqOf:= MySeqOf'(Data => MySeqOf_array'(1=>hello, 2=>world, others => hello)); 

private
   --# hide TASTE_Dataview;


END TASTE_Dataview;