-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY TASTE_Dataview with SPARK_Mode IS




function MySeqOf_Equal(val1, val2: in MySeqOf)
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

end MySeqOf_Equal;

function MySeqOf_Init return MySeqOf
is
    val: MySeqOf;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 5 loop
        pragma Loop_Invariant (i1 >=1 and i1<=5);
        val.Data(i1) := FALSE;
        i1 := i1 + 1;
    end loop;
    val.Length := 0;
    return val;
end MySeqOf_Init;

FUNCTION MySeqOf_IsConstraintValid(val : in MySeqOf) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.Length) AND (val.Length <= 5)), ErrorCode => ERR_MYSEQOF);
    i1 := val.Data'First;
    while ret.Success and i1 <= val.Length loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= val.Length);
        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_MYSEQOF_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END MySeqOf_IsConstraintValid;



function MySeqOf2_Equal(val1, val2: in MySeqOf2)
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
        ret := MySeqOf_Equal(val1.Data(i1), val2.Data(i1));
        i1 := i1+1;
    end loop;

	return ret;

end MySeqOf2_Equal;

function MySeqOf2_Init return MySeqOf2
is
    val: MySeqOf2;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 2 loop
        pragma Loop_Invariant (i1 >=1 and i1<=2);
        val.Data(i1) := MySeqOf_Init;
        i1 := i1 + 1;
    end loop;
    val.Length := 0;
    return val;
end MySeqOf2_Init;

FUNCTION MySeqOf2_IsConstraintValid(val : in MySeqOf2) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
    i2:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.Length) AND (val.Length <= 2)), ErrorCode => ERR_MYSEQOF2);
    i1 := val.Data'First;
    while ret.Success and i1 <= val.Length loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= val.Length);
        ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.Data(i1).Length) AND (val.Data(i1).Length <= 5)), ErrorCode => ERR_MYSEQOF2_ELM);
        i2 := val.Data(i1).Data'First;
        while ret.Success and i2 <= val.Data(i1).Length loop
            pragma Loop_Invariant (i2 >= val.Data(i1).Data'First and i2 <= val.Data(i1).Length);
            ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_MYSEQOF2_ELM_ELM);
            i2 := i2+1;
        end loop;

        i1 := i1+1;
    end loop;

    RETURN ret;
END MySeqOf2_IsConstraintValid;



function MySeq_b_Equal(val1, val2: in MySeq_b)
    return Boolean 
is
begin
	return val1 = val2;

end MySeq_b_Equal;

function MySeq_Equal(val1, val2: in MySeq)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := (val1.a = val2.a);

    if ret then
        ret := MySeq_b_Equal(val1.b, val2.b);

    end if;
	return ret;

end MySeq_Equal;

function MySeq_b_Init return MySeq_b
is
    val: MySeq_b;
begin
    val := 0;
    return val;
end MySeq_b_Init;
function MySeq_Init return MySeq
is
    val: MySeq;
begin

    --set a 
    val.a := FALSE;
    --set b 
    val.b := MySeq_b_Init;
    return val;
end MySeq_Init;

FUNCTION MySeq_IsConstraintValid(val : in MySeq) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_MYSEQ_A);
    if ret.Success then
        ret := adaasn1rtl.ASN1_RESULT'(Success => (val.b <= 255), ErrorCode => ERR_MYSEQ_B);
    end if;

    RETURN ret;
END MySeq_IsConstraintValid;



function MySeqOf3_Equal(val1, val2: in MySeqOf3)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;

begin
    i1 := val1.Data'First;
    while ret and i1 <= 3 loop
        pragma Loop_Invariant (i1 >= val1.Data'First and i1 >= val2.Data'First);
        ret := MySeq_Equal(val1.Data(i1), val2.Data(i1));
        i1 := i1+1;
    end loop;
	return ret;

end MySeqOf3_Equal;

function MySeqOf3_Init return MySeqOf3
is
    val: MySeqOf3;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 3 loop
        pragma Loop_Invariant (i1 >=1 and i1<=3);
        val.Data(i1) := MySeq_Init;
        i1 := i1 + 1;
    end loop;

    return val;
end MySeqOf3_Init;

FUNCTION MySeqOf3_IsConstraintValid(val : in MySeqOf3) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.Data'First;
    while ret.Success and i1 <= 3 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 3);
        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_MYSEQOF3_ELM_A);
        if ret.Success then
            ret := adaasn1rtl.ASN1_RESULT'(Success => (val.Data(i1).b <= 255), ErrorCode => ERR_MYSEQOF3_ELM_B);
        end if;

        i1 := i1+1;
    end loop;

    RETURN ret;
END MySeqOf3_IsConstraintValid;


 

END TASTE_Dataview;