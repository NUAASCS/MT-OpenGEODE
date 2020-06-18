-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
USE adaasn1rtl;
use type adaasn1rtl.OctetBuffer;
use type adaasn1rtl.BitArray;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;
--# inherit ;


PACKAGE CcsdsSoisSubnetwork with SPARK_Mode
IS


SUBTYPE OctetTypeT is adaasn1rtl.Asn1UInt range 0 .. 255;


function OctetTypeT_Equal(val1, val2: in OctetTypeT) return Boolean;

function OctetTypeT_Init return OctetTypeT;

ERR_OCTETTYPET:CONSTANT INTEGER := 1; -- 
FUNCTION OctetTypeT_IsConstraintValid(val : in OctetTypeT) return adaasn1rtl.ASN1_RESULT;
SUBTYPE MemoryIDTypeT is adaasn1rtl.Asn1UInt range 0 .. 65535;


function MemoryIDTypeT_Equal(val1, val2: in MemoryIDTypeT) return Boolean;

function MemoryIDTypeT_Init return MemoryIDTypeT;

ERR_MEMORYIDTYPET:CONSTANT INTEGER := 8; -- 
FUNCTION MemoryIDTypeT_IsConstraintValid(val : in MemoryIDTypeT) return adaasn1rtl.ASN1_RESULT;
SUBTYPE StartStopT_index_range is integer range 0..1;
TYPE StartStopT IS (start, stop) with Convention => C;
for StartStopT use
    (start => 0, stop => 1);

function StartStopT_Equal(val1, val2: in StartStopT) return Boolean;

function StartStopT_Init return StartStopT;

ERR_STARTSTOPT:CONSTANT INTEGER := 15; -- 
FUNCTION StartStopT_IsConstraintValid(val : in StartStopT) return adaasn1rtl.ASN1_RESULT;
SUBTYPE MemoryAddressTypeT is adaasn1rtl.Asn1UInt range 0 .. 4294967296;


function MemoryAddressTypeT_Equal(val1, val2: in MemoryAddressTypeT) return Boolean;

function MemoryAddressTypeT_Init return MemoryAddressTypeT;

ERR_MEMORYADDRESSTYPET:CONSTANT INTEGER := 22; -- 
FUNCTION MemoryAddressTypeT_IsConstraintValid(val : in MemoryAddressTypeT) return adaasn1rtl.ASN1_RESULT;

 

private
   --# hide CcsdsSoisSubnetwork;


END CcsdsSoisSubnetwork;