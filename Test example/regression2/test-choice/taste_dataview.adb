-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY TASTE_Dataview with SPARK_Mode IS




function EmptySeq_Equal(val1, val2: in EmptySeq)
    return Boolean 
is
begin
	return True;

end EmptySeq_Equal;

function EmptySeq_Init return EmptySeq
is
    val: EmptySeq;
begin
    val := (null record);
    return val;
end EmptySeq_Init;



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
        ret := (val1.Data(i1) = val2.Data(i1));
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
        val.Data(i1) := FALSE;
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
        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_SEQOF_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END SeqOf_IsConstraintValid;



function AnotherEmptySeq_Equal(val1, val2: in AnotherEmptySeq)
    return Boolean 
is
begin
	return True;

end AnotherEmptySeq_Equal;

function AnotherEmptySeq_Init return AnotherEmptySeq
is
    val: AnotherEmptySeq;
begin
    val := (null record);
    return val;
end AnotherEmptySeq_Init;



function NullType_Equal(val1, val2: in NullType)
    return Boolean 
is
begin
	return True;

end NullType_Equal;

function NullType_Init return NullType
is
    val: NullType;
begin
    val := 0;
    return val;
end NullType_Init;



function ChoiceWithEmptySeq_d_Equal(val1, val2: in ChoiceWithEmptySeq_d)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := (val1.a = val2.a);

	return ret;

end ChoiceWithEmptySeq_d_Equal;

function ChoiceWithEmptySeq_Equal(val1, val2: in ChoiceWithEmptySeq)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := val1.kind = val2.kind;
    if ret then
        case val1.kind is
            when a_PRESENT =>
                ret := TRUE;
            when b_PRESENT =>
                ret := EmptySeq_Equal(val1.b, val2.b);
            when c_PRESENT =>
                ret := TRUE;
            when d_PRESENT =>
                ret := (val1.d.a = val2.d.a);

        end case;
    end if;
	return ret;

end ChoiceWithEmptySeq_Equal;

function ChoiceWithEmptySeq_d_Init return ChoiceWithEmptySeq_d
is
    val: ChoiceWithEmptySeq_d;
begin

    --set a 
    val.a := FALSE;
    return val;
end ChoiceWithEmptySeq_d_Init;
function ChoiceWithEmptySeq_Init return ChoiceWithEmptySeq
is
    val: ChoiceWithEmptySeq;
begin
    --set a 
    declare
        a_tmp:adaasn1rtl.Asn1NullType;
    begin
        a_tmp := 0;
        val := ChoiceWithEmptySeq'(kind => a_PRESENT, a => a_tmp);
    end;
    return val;
end ChoiceWithEmptySeq_Init;

FUNCTION ChoiceWithEmptySeq_IsConstraintValid(val : in ChoiceWithEmptySeq) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    case val.kind is
        WHEN a_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
        WHEN b_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
        WHEN c_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
        WHEN d_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_CHOICEWITHEMPTYSEQ_D_A);
    end case;
    RETURN ret;
END ChoiceWithEmptySeq_IsConstraintValid;


 

END TASTE_Dataview;