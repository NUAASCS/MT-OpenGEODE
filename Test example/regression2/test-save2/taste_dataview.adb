-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY TASTE_Dataview with SPARK_Mode IS




function BoolType_Equal(val1, val2: in BoolType)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := (val1.a = val2.a);

    if ret then
        ret := (val1.b = val2.b);

    end if;
	return ret;

end BoolType_Equal;

function BoolType_Init return BoolType
is
    val: BoolType;
begin

    --set a 
    val.a := FALSE;
    --set b 
    val.b := FALSE;
    return val;
end BoolType_Init;

FUNCTION BoolType_IsConstraintValid(val : in BoolType) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_BOOLTYPE_A);
    if ret.Success then
        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_BOOLTYPE_B);
    end if;

    RETURN ret;
END BoolType_IsConstraintValid;



function SeqOf_Equal(val1, val2: in SeqOf)
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
        ret := BoolType_Equal(val1.Data(i1), val2.Data(i1));
        i1 := i1+1;
    end loop;

	return ret;

end SeqOf_Equal;

function SeqOf_Init return SeqOf
is
    val: SeqOf;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 10 loop
        pragma Loop_Invariant (i1 >=1 and i1<=10);
        val.Data(i1) := BoolType_Init;
        i1 := i1 + 1;
    end loop;
    val.Length := 0;
    return val;
end SeqOf_Init;

FUNCTION SeqOf_IsConstraintValid(val : in SeqOf) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.Length) AND (val.Length <= 10)), ErrorCode => ERR_SEQOF);
    i1 := val.Data'First;
    while ret.Success and i1 <= val.Length loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= val.Length);
        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_SEQOF_ELM_A);
        if ret.Success then
            ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_SEQOF_ELM_B);
        end if;

        i1 := i1+1;
    end loop;

    RETURN ret;
END SeqOf_IsConstraintValid;



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
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 10), ErrorCode => ERR_MYINTEGER);
    RETURN ret;
END MyInteger_IsConstraintValid;


 

END TASTE_Dataview;