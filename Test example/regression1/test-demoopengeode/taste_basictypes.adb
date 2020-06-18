-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY TASTE_BasicTypes with SPARK_Mode IS




function T_Int32_Equal(val1, val2: in T_Int32)
    return Boolean 
is
begin
	return val1 = val2;

end T_Int32_Equal;

function T_Int32_Init return T_Int32
is
    val: T_Int32;
begin
    val := 0;
    return val;
end T_Int32_Init;

FUNCTION T_Int32_IsConstraintValid(val : in T_Int32) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((-2147483648 <= val) AND (val <= 2147483647)), ErrorCode => ERR_T_INT32);
    RETURN ret;
END T_Int32_IsConstraintValid;



function T_UInt32_Equal(val1, val2: in T_UInt32)
    return Boolean 
is
begin
	return val1 = val2;

end T_UInt32_Equal;

function T_UInt32_Init return T_UInt32
is
    val: T_UInt32;
begin
    val := 0;
    return val;
end T_UInt32_Init;

FUNCTION T_UInt32_IsConstraintValid(val : in T_UInt32) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 4294967295), ErrorCode => ERR_T_UINT32);
    RETURN ret;
END T_UInt32_IsConstraintValid;



function T_Int8_Equal(val1, val2: in T_Int8)
    return Boolean 
is
begin
	return val1 = val2;

end T_Int8_Equal;

function T_Int8_Init return T_Int8
is
    val: T_Int8;
begin
    val := 0;
    return val;
end T_Int8_Init;

FUNCTION T_Int8_IsConstraintValid(val : in T_Int8) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((-128 <= val) AND (val <= 127)), ErrorCode => ERR_T_INT8);
    RETURN ret;
END T_Int8_IsConstraintValid;



function T_UInt8_Equal(val1, val2: in T_UInt8)
    return Boolean 
is
begin
	return val1 = val2;

end T_UInt8_Equal;

function T_UInt8_Init return T_UInt8
is
    val: T_UInt8;
begin
    val := 0;
    return val;
end T_UInt8_Init;

FUNCTION T_UInt8_IsConstraintValid(val : in T_UInt8) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 255), ErrorCode => ERR_T_UINT8);
    RETURN ret;
END T_UInt8_IsConstraintValid;



function T_Boolean_Equal(val1, val2: in T_Boolean)
    return Boolean 
is
begin
	return val1 = val2;

end T_Boolean_Equal;

function T_Boolean_Init return T_Boolean
is
    val: T_Boolean;
begin
    val := FALSE;
    return val;
end T_Boolean_Init;

FUNCTION T_Boolean_IsConstraintValid(val : in T_Boolean) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_T_BOOLEAN);
    RETURN ret;
END T_Boolean_IsConstraintValid;


 

END TASTE_BasicTypes;