-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY TASTE_Dataview with SPARK_Mode IS




function MyInteger_Equal(val1, val2: in MyInteger)
    return Boolean 
is
begin
	return val1 = val2;

end MyInteger_Equal;

function MyInteger_Init return MyInteger
is
    val: MyInteger;
begin
    val := 0;
    return val;
end MyInteger_Init;

FUNCTION MyInteger_IsConstraintValid(val : in MyInteger) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 255), ErrorCode => ERR_MYINTEGER);
    RETURN ret;
END MyInteger_IsConstraintValid;



function MyTest_Equal(val1, val2: in MyTest)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;

begin
    i1 := val1.Data'First;
    while ret and i1 <= 2 loop
        pragma Loop_Invariant (i1 >= val1.Data'First and i1 >= val2.Data'First);
        ret := (val1.Data(i1) = val2.Data(i1));
        i1 := i1+1;
    end loop;
	return ret;

end MyTest_Equal;

function MyTest_Init return MyTest
is
    val: MyTest;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 2 loop
        pragma Loop_Invariant (i1 >=1 and i1<=2);
        val.Data(i1) := FALSE;
        i1 := i1 + 1;
    end loop;

    return val;
end MyTest_Init;

FUNCTION MyTest_IsConstraintValid(val : in MyTest) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.Data'First;
    while ret.Success and i1 <= 2 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 2);
        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_MYTEST_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END MyTest_IsConstraintValid;


 

END TASTE_Dataview;