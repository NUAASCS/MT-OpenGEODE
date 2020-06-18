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


SUBTYPE MyInteger is adaasn1rtl.Asn1UInt range 0 .. 255;


function MyInteger_Equal(val1, val2: in MyInteger) return Boolean;

function MyInteger_Init return MyInteger;

ERR_MYINTEGER:CONSTANT INTEGER := 1; -- 
FUNCTION MyInteger_IsConstraintValid(val : in MyInteger) return adaasn1rtl.ASN1_RESULT;
-- MyTest --------------------------------------------
SUBTYPE MyTest_index is integer range 1..2;
TYPE MyTest_array IS ARRAY (MyTest_index) OF adaasn1rtl.Asn1Boolean;
TYPE MyTest IS  RECORD
    Data  : MyTest_array;
END RECORD;

function MyTest_Equal(val1, val2: in MyTest) return Boolean;

function MyTest_Init return MyTest;

ERR_MYTEST_ELM:CONSTANT INTEGER := 8; 
FUNCTION MyTest_IsConstraintValid(val : in MyTest) return adaasn1rtl.ASN1_RESULT;

 

private
   --# hide TASTE_Dataview;


END TASTE_Dataview;