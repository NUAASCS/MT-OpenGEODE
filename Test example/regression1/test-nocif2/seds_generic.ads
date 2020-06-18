-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
USE adaasn1rtl;
use type adaasn1rtl.OctetBuffer;
use type adaasn1rtl.BitArray;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;
WITH Seds; use Seds;
--# inherit Seds;


PACKAGE SEDS_Generic with SPARK_Mode
IS


-- GenericArray --------------------------------------------
SUBTYPE GenericArray_index is integer range 1..1;
TYPE GenericArray_array IS ARRAY (GenericArray_index) OF Seds.SedsUint8;
TYPE GenericArray IS  RECORD
    Data  : GenericArray_array;
END RECORD;

function GenericArray_Equal(val1, val2: in GenericArray) return Boolean;

function GenericArray_Init return GenericArray;

ERR_GENERICARRAY_ELM:CONSTANT INTEGER := 1190; 
FUNCTION GenericArray_IsConstraintValid(val : in GenericArray) return adaasn1rtl.ASN1_RESULT;

 

private
   --# hide SEDS_Generic;


END SEDS_Generic;