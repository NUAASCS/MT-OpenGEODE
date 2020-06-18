-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY TASTE_BasicTypes with SPARK_Mode IS




function T_Int_Equal(val1, val2: in T_Int)
    return Boolean 
is
begin
	return val1 = val2;

end T_Int_Equal;

function T_Int_Init return T_Int
is
    val: T_Int;
begin
    val := 0;
    return val;
end T_Int_Init;

FUNCTION T_Int_IsConstraintValid(val : in T_Int) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 4), ErrorCode => ERR_T_INT);
    RETURN ret;
END T_Int_IsConstraintValid;



function T_SeqOf_Equal(val1, val2: in T_SeqOf)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;

begin
    ret := (val1.Length = val2.Length);
    i1 := val1.Data'First;
    while ret and i1 <= val1.Length loop
        pragma Loop_Invariant (i1 >= val1.Data'First and i1 >= val2.Data'First and i1 <= val1.Length  and val1.Length = val2.Length);
        ret := (val1.Data(i1) = val2.Data(i1));
        i1 := i1+1;
    end loop;

	return ret;

end T_SeqOf_Equal;

function T_SeqOf_Init return T_SeqOf
is
    val: T_SeqOf;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 4 loop
        pragma Loop_Invariant (i1 >=1 and i1<=4);
        val.Data(i1) := T_Int_Init;
        i1 := i1 + 1;
    end loop;
    val.Length := 1;
    return val;
end T_SeqOf_Init;

FUNCTION T_SeqOf_IsConstraintValid(val : in T_SeqOf) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.Length) AND (val.Length <= 4)), ErrorCode => ERR_T_SEQOF);
    i1 := val.Data'First;
    while ret.Success and i1 <= val.Length loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= val.Length);
        ret := adaasn1rtl.ASN1_RESULT'(Success => (val.Data(i1) <= 4), ErrorCode => ERR_T_SEQOF_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END T_SeqOf_IsConstraintValid;


 

END TASTE_BasicTypes;