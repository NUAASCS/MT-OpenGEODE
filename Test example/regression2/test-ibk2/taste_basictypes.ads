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

ERR_T_INT32:CONSTANT INTEGER := 2606; -- 
FUNCTION T_Int32_IsConstraintValid(val : in T_Int32) return adaasn1rtl.ASN1_RESULT;
SUBTYPE T_UInt32 is adaasn1rtl.Asn1UInt range 0 .. 4294967295;


function T_UInt32_Equal(val1, val2: in T_UInt32) return Boolean;

function T_UInt32_Init return T_UInt32;

ERR_T_UINT32:CONSTANT INTEGER := 2613; -- 
FUNCTION T_UInt32_IsConstraintValid(val : in T_UInt32) return adaasn1rtl.ASN1_RESULT;
SUBTYPE T_Int8 is adaasn1rtl.Asn1Int range -128 .. 127;


function T_Int8_Equal(val1, val2: in T_Int8) return Boolean;

function T_Int8_Init return T_Int8;

ERR_T_INT8:CONSTANT INTEGER := 2620; -- 
FUNCTION T_Int8_IsConstraintValid(val : in T_Int8) return adaasn1rtl.ASN1_RESULT;
SUBTYPE T_UInt8 is adaasn1rtl.Asn1UInt range 0 .. 255;


function T_UInt8_Equal(val1, val2: in T_UInt8) return Boolean;

function T_UInt8_Init return T_UInt8;

ERR_T_UINT8:CONSTANT INTEGER := 2627; -- 
FUNCTION T_UInt8_IsConstraintValid(val : in T_UInt8) return adaasn1rtl.ASN1_RESULT;
SUBTYPE T_Boolean is adaasn1rtl.Asn1Boolean;


function T_Boolean_Equal(val1, val2: in T_Boolean) return Boolean;

function T_Boolean_Init return T_Boolean;

ERR_T_BOOLEAN:CONSTANT INTEGER := 2634; -- 
FUNCTION T_Boolean_IsConstraintValid(val : in T_Boolean) return adaasn1rtl.ASN1_RESULT;

 

private
   --# hide TASTE_BasicTypes;


END TASTE_BasicTypes;