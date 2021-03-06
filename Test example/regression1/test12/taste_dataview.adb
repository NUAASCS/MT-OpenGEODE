-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY TASTE_Dataview with SPARK_Mode IS




function Light_Equal(val1, val2: in Light)
    return Boolean 
is
begin
	return val1 = val2;

end Light_Equal;

function Light_Init return Light
is
    val: Light;
begin
    val := red;
    return val;
end Light_Init;

FUNCTION Light_IsConstraintValid(val : in Light) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (((((((val = red)) OR ((val = yellow)))) OR ((val = green)))) OR ((val = all_off))), ErrorCode => ERR_LIGHT);
    RETURN ret;
END Light_IsConstraintValid;


 

END TASTE_Dataview;