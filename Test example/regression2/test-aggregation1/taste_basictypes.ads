-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
USE adaasn1rtl;
use type adaasn1rtl.OctetBuffer;
use type adaasn1rtl.BitArray;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;
--# inherit ;


PACKAGE TASTE_BasicTypes with SPARK_Mode
IS


SUBTYPE T_Int32 is adaasn1rtl.Asn1Int range -2147483648 .. 2147483647;


function T_Int32_Equal(val1, val2: in T_Int32) return Boolean;

function T_Int32_Init return T_Int32;

ERR_T_INT32:CONSTANT INTEGER := 1; -- 
FUNCTION T_Int32_IsConstraintValid(val : in T_Int32) return adaasn1rtl.ASN1_RESULT;
SUBTYPE T_UInt32 is adaasn1rtl.Asn1UInt range 0 .. 4294967295;


function T_UInt32_Equal(val1, val2: in T_UInt32) return Boolean;

function T_UInt32_Init return T_UInt32;

ERR_T_UINT32:CONSTANT INTEGER := 8; -- 
FUNCTION T_UInt32_IsConstraintValid(val : in T_UInt32) return adaasn1rtl.ASN1_RESULT;
SUBTYPE T_Int8 is adaasn1rtl.Asn1Int range -128 .. 127;


function T_Int8_Equal(val1, val2: in T_Int8) return Boolean;

function T_Int8_Init return T_Int8;

ERR_T_INT8:CONSTANT INTEGER := 15; -- 
FUNCTION T_Int8_IsConstraintValid(val : in T_Int8) return adaasn1rtl.ASN1_RESULT;
SUBTYPE T_UInt8 is adaasn1rtl.Asn1UInt range 0 .. 255;


function T_UInt8_Equal(val1, val2: in T_UInt8) return Boolean;

function T_UInt8_Init return T_UInt8;

ERR_T_UINT8:CONSTANT INTEGER := 22; -- 
FUNCTION T_UInt8_IsConstraintValid(val : in T_UInt8) return adaasn1rtl.ASN1_RESULT;
SUBTYPE T_Boolean is adaasn1rtl.Asn1Boolean;


function T_Boolean_Equal(val1, val2: in T_Boolean) return Boolean;

function T_Boolean_Init return T_Boolean;

ERR_T_BOOLEAN:CONSTANT INTEGER := 29; -- 
FUNCTION T_Boolean_IsConstraintValid(val : in T_Boolean) return adaasn1rtl.ASN1_RESULT;
SUBTYPE BitString_index is integer range 1..32;
SUBTYPE BitString_array IS adaasn1rtl.BitArray(BitString_index);
TYPE BitString IS  RECORD
    Data  : BitString_array;
END RECORD;

function BitString_Equal(val1, val2: in BitString) return Boolean;

function BitString_Init return BitString;
SUBTYPE OctString_index is integer range 1..4;
SUBTYPE OctString_array IS adaasn1rtl.OctetBuffer(OctString_index);
TYPE OctString IS  RECORD
    Data  : OctString_array;
END RECORD;

function OctString_Equal(val1, val2: in OctString) return Boolean;

function OctString_Init return OctString;
-- SeqBit --------------------------------------------
SUBTYPE SeqBit_index is integer range 1..32;
TYPE SeqBit_array IS ARRAY (SeqBit_index) OF adaasn1rtl.Asn1Boolean;
TYPE SeqBit IS  RECORD
    Data  : SeqBit_array;
END RECORD;

function SeqBit_Equal(val1, val2: in SeqBit) return Boolean;

function SeqBit_Init return SeqBit;

ERR_SEQBIT_ELM:CONSTANT INTEGER := 48; 
FUNCTION SeqBit_IsConstraintValid(val : in SeqBit) return adaasn1rtl.ASN1_RESULT;
-- SeqBit2 --------------------------------------------
SUBTYPE SeqBit2_index is integer range 1..32;
TYPE SeqBit2_array IS ARRAY (SeqBit2_index) OF adaasn1rtl.Asn1Boolean;
SUBTYPE SeqBit2_length_index is integer range 1..32;
TYPE SeqBit2 IS  RECORD
    Length : SeqBit2_length_index;
    Data  : SeqBit2_array;
END RECORD;

function SeqBit2_Equal(val1, val2: in SeqBit2) return Boolean;

function SeqBit2_Init return SeqBit2;

ERR_SEQBIT2_ELM:CONSTANT INTEGER := 61; 
ERR_SEQBIT2:CONSTANT INTEGER := 68; 
FUNCTION SeqBit2_IsConstraintValid(val : in SeqBit2) return adaasn1rtl.ASN1_RESULT;

 

private
   --# hide TASTE_BasicTypes;


END TASTE_BasicTypes;