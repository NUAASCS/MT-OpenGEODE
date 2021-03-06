-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY TASTE_Dataview with SPARK_Mode IS




function MyComplexSeqOf_elem_x_Equal(val1, val2: in MyComplexSeqOf_elem_x)
    return Boolean 
is
begin
	return val1 = val2;

end MyComplexSeqOf_elem_x_Equal;

function MyComplexSeqOf_elem_Equal(val1, val2: in MyComplexSeqOf_elem)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := MyComplexSeqOf_elem_x_Equal(val1.x, val2.x);

	return ret;

end MyComplexSeqOf_elem_Equal;

function MyComplexSeqOf_Equal(val1, val2: in MyComplexSeqOf)
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
        ret := MyComplexSeqOf_elem_x_Equal(val1.Data(i1).x, val2.Data(i1).x);

        i1 := i1+1;
    end loop;
	return ret;

end MyComplexSeqOf_Equal;

function MyComplexSeqOf_elem_x_Init return MyComplexSeqOf_elem_x
is
    val: MyComplexSeqOf_elem_x;
begin
    val := 0;
    return val;
end MyComplexSeqOf_elem_x_Init;
function MyComplexSeqOf_elem_Init return MyComplexSeqOf_elem
is
    val: MyComplexSeqOf_elem;
begin

    --set x 
    val.x := MyComplexSeqOf_elem_x_Init;
    return val;
end MyComplexSeqOf_elem_Init;
function MyComplexSeqOf_Init return MyComplexSeqOf
is
    val: MyComplexSeqOf;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 2 loop
        pragma Loop_Invariant (i1 >=1 and i1<=2);
        val.Data(i1) := MyComplexSeqOf_elem_Init;
        i1 := i1 + 1;
    end loop;

    return val;
end MyComplexSeqOf_Init;

FUNCTION MyComplexSeqOf_IsConstraintValid(val : in MyComplexSeqOf) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.Data'First;
    while ret.Success and i1 <= 2 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 2);
        ret := adaasn1rtl.ASN1_RESULT'(Success => (val.Data(i1).x <= 255), ErrorCode => ERR_MYCOMPLEXSEQOF_ELM_X);
        i1 := i1+1;
    end loop;

    RETURN ret;
END MyComplexSeqOf_IsConstraintValid;



function MyComplexChoice_a_x_Equal(val1, val2: in MyComplexChoice_a_x)
    return Boolean 
is
begin
	return val1 = val2;

end MyComplexChoice_a_x_Equal;

function MyComplexChoice_a_Equal(val1, val2: in MyComplexChoice_a)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := MyComplexChoice_a_x_Equal(val1.x, val2.x);

	return ret;

end MyComplexChoice_a_Equal;

function MyComplexChoice_Equal(val1, val2: in MyComplexChoice)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := val1.kind = val2.kind;
    if ret then
        case val1.kind is
            when MyComplexChoice_a_PRESENT =>
                ret := MyComplexChoice_a_x_Equal(val1.a.x, val2.a.x);

        end case;
    end if;
	return ret;

end MyComplexChoice_Equal;

function MyComplexChoice_a_x_Init return MyComplexChoice_a_x
is
    val: MyComplexChoice_a_x;
begin
    val := 0;
    return val;
end MyComplexChoice_a_x_Init;
function MyComplexChoice_a_Init return MyComplexChoice_a
is
    val: MyComplexChoice_a;
begin

    --set x 
    val.x := MyComplexChoice_a_x_Init;
    return val;
end MyComplexChoice_a_Init;
function MyComplexChoice_Init return MyComplexChoice
is
    val: MyComplexChoice;
begin
    --set a 
    declare
        a_tmp:MyComplexChoice_a;
    begin
        val.a := MyComplexChoice_a_Init;
        val := MyComplexChoice'(kind => MyComplexChoice_a_PRESENT, a => a_tmp);
    end;
    return val;
end MyComplexChoice_Init;

FUNCTION MyComplexChoice_IsConstraintValid(val : in MyComplexChoice) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    case val.kind is
        WHEN MyComplexChoice_a_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => (val.a.x <= 255), ErrorCode => ERR_MYCOMPLEXCHOICE_A_X);
    end case;
    RETURN ret;
END MyComplexChoice_IsConstraintValid;



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



function DeepSeq_a_b_d_Equal(val1, val2: in DeepSeq_a_b_d)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := val1.kind = val2.kind;
    if ret then
        case val1.kind is
            when e_PRESENT =>
                ret := (val1.e = val2.e);
        end case;
    end if;
	return ret;

end DeepSeq_a_b_d_Equal;

function DeepSeq_a_b_Equal(val1, val2: in DeepSeq_a_b)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := (val1.c = val2.c);

    if ret then
        ret := DeepSeq_a_b_d_Equal(val1.d, val2.d);

    end if;
	return ret;

end DeepSeq_a_b_Equal;

function DeepSeq_a_Equal(val1, val2: in DeepSeq_a)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := DeepSeq_a_b_Equal(val1.b, val2.b);

	return ret;

end DeepSeq_a_Equal;

function DeepSeq_Equal(val1, val2: in DeepSeq)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := DeepSeq_a_Equal(val1.a, val2.a);

	return ret;

end DeepSeq_Equal;

function DeepSeq_a_b_d_Init return DeepSeq_a_b_d
is
    val: DeepSeq_a_b_d;
begin
    --set e 
    declare
        e_tmp:adaasn1rtl.Asn1Boolean;
    begin
        e_tmp := FALSE;
        val := DeepSeq_a_b_d'(kind => e_PRESENT, e => e_tmp);
    end;
    return val;
end DeepSeq_a_b_d_Init;
function DeepSeq_a_b_Init return DeepSeq_a_b
is
    val: DeepSeq_a_b;
begin

    --set c 
    val.c := MyInteger_Init;
    --set d 
    val.d := DeepSeq_a_b_d_Init;
    return val;
end DeepSeq_a_b_Init;
function DeepSeq_a_Init return DeepSeq_a
is
    val: DeepSeq_a;
begin

    --set b 
    val.b := DeepSeq_a_b_Init;
    return val;
end DeepSeq_a_Init;
function DeepSeq_Init return DeepSeq
is
    val: DeepSeq;
begin

    --set a 
    val.a := DeepSeq_a_Init;
    return val;
end DeepSeq_Init;

FUNCTION DeepSeq_IsConstraintValid(val : in DeepSeq) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val.a.b.c <= 255), ErrorCode => ERR_DEEPSEQ_A_B_C);
    if ret.Success then
        case val.a.b.d.kind is
            WHEN e_PRESENT =>
                ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_DEEPSEQ_A_B_D_E);
        end case;
    end if;

    RETURN ret;
END DeepSeq_IsConstraintValid;



function MyComplexType_a_x_Equal(val1, val2: in MyComplexType_a_x)
    return Boolean 
is
begin
	return val1 = val2;

end MyComplexType_a_x_Equal;

function MyComplexType_a_Equal(val1, val2: in MyComplexType_a)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := MyComplexType_a_x_Equal(val1.x, val2.x);

    if ret then
        ret := (val1.y = val2.y);

    end if;
	return ret;

end MyComplexType_a_Equal;

function MyComplexType_Equal(val1, val2: in MyComplexType)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := MyComplexType_a_Equal(val1.a, val2.a);

	return ret;

end MyComplexType_Equal;

function MyComplexType_a_x_Init return MyComplexType_a_x
is
    val: MyComplexType_a_x;
begin
    val := 0;
    return val;
end MyComplexType_a_x_Init;
function MyComplexType_a_Init return MyComplexType_a
is
    val: MyComplexType_a;
begin

    --set x 
    val.x := MyComplexType_a_x_Init;
    --set y 
    val.y := MyInteger_Init;
    return val;
end MyComplexType_a_Init;
function MyComplexType_Init return MyComplexType
is
    val: MyComplexType;
begin

    --set a 
    val.a := MyComplexType_a_Init;
    return val;
end MyComplexType_Init;

FUNCTION MyComplexType_IsConstraintValid(val : in MyComplexType) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val.a.x <= 255), ErrorCode => ERR_MYCOMPLEXTYPE_A_X);
    if ret.Success then
        ret := adaasn1rtl.ASN1_RESULT'(Success => (val.a.y <= 255), ErrorCode => ERR_MYCOMPLEXTYPE_A_Y);
    end if;

    RETURN ret;
END MyComplexType_IsConstraintValid;



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
    val := taste;
    return val;
end MySeq_b_Init;
function MySeq_Init return MySeq
is
    val: MySeq;
begin

    --set a 
    val.a := MyInteger_Init;
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
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val.a <= 255), ErrorCode => ERR_MYSEQ_A);
    if ret.Success then
        ret := adaasn1rtl.ASN1_RESULT'(Success => (((((val.b = taste)) OR ((val.b = welcomes)))) OR ((val.b = you))), ErrorCode => ERR_MYSEQ_B);
    end if;

    RETURN ret;
END MySeq_IsConstraintValid;



function MyChoice_Equal(val1, val2: in MyChoice)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := val1.kind = val2.kind;
    if ret then
        case val1.kind is
            when MyChoice_a_PRESENT =>
                ret := (val1.a = val2.a);
            when b_PRESENT =>
                ret := MySeq_Equal(val1.b, val2.b);
        end case;
    end if;
	return ret;

end MyChoice_Equal;

function MyChoice_Init return MyChoice
is
    val: MyChoice;
begin
    --set a 
    declare
        a_tmp:adaasn1rtl.Asn1Boolean;
    begin
        a_tmp := FALSE;
        val := MyChoice'(kind => MyChoice_a_PRESENT, a => a_tmp);
    end;
    return val;
end MyChoice_Init;

FUNCTION MyChoice_IsConstraintValid(val : in MyChoice) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    case val.kind is
        WHEN MyChoice_a_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_MYCHOICE_A);
        WHEN b_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => (val.b.a <= 255), ErrorCode => ERR_MYCHOICE_B_A);
            if ret.Success then
                ret := adaasn1rtl.ASN1_RESULT'(Success => (((((val.b.b = taste)) OR ((val.b.b = welcomes)))) OR ((val.b.b = you))), ErrorCode => ERR_MYCHOICE_B_B);
            end if;

    end case;
    RETURN ret;
END MyChoice_IsConstraintValid;



function MyReal_Equal(val1, val2: in MyReal)
    return Boolean 
is
begin
	return adaasn1rtl.Asn1Real_Equal(val1, val2);

end MyReal_Equal;

function MyReal_Init return MyReal
is
    val: MyReal;
begin
    val := 0.00000000000000000000E+000;
    return val;
end MyReal_Init;

FUNCTION MyReal_IsConstraintValid(val : in MyReal) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((0.00000000000000000000E+000 <= val) AND (val <= 1.00000000000000000000E+003)), ErrorCode => ERR_MYREAL);
    RETURN ret;
END MyReal_IsConstraintValid;



function MyEnum_Equal(val1, val2: in MyEnum)
    return Boolean 
is
begin
	return val1 = val2;

end MyEnum_Equal;

function MyEnum_Init return MyEnum
is
    val: MyEnum;
begin
    val := hello;
    return val;
end MyEnum_Init;

FUNCTION MyEnum_IsConstraintValid(val : in MyEnum) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (((((val = hello)) OR ((val = world)))) OR ((val = howareyou))), ErrorCode => ERR_MYENUM);
    RETURN ret;
END MyEnum_IsConstraintValid;



function MySeqOf_Equal(val1, val2: in MySeqOf)
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

end MySeqOf_Equal;

function MySeqOf_Init return MySeqOf
is
    val: MySeqOf;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 2 loop
        pragma Loop_Invariant (i1 >=1 and i1<=2);
        val.Data(i1) := MyEnum_Init;
        i1 := i1 + 1;
    end loop;

    return val;
end MySeqOf_Init;

FUNCTION MySeqOf_IsConstraintValid(val : in MySeqOf) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.Data'First;
    while ret.Success and i1 <= 2 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 2);
        ret := adaasn1rtl.ASN1_RESULT'(Success => (((((val.Data(i1) = hello)) OR ((val.Data(i1) = world)))) OR ((val.Data(i1) = howareyou))), ErrorCode => ERR_MYSEQOF_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END MySeqOf_IsConstraintValid;



function MyRefSeqOf_Equal(val1, val2: in MyRefSeqOf)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := MySeqOf_Equal(val1.seqof, val2.seqof);

	return ret;

end MyRefSeqOf_Equal;

function MyRefSeqOf_Init return MyRefSeqOf
is
    val: MyRefSeqOf;
begin

    --set seqof 
    val.seqof := MySeqOf_Init;
    return val;
end MyRefSeqOf_Init;

FUNCTION MyRefSeqOf_IsConstraintValid(val : in MyRefSeqOf) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.seqof.Data'First;
    while ret.Success and i1 <= 2 loop
        pragma Loop_Invariant (i1 >= val.seqof.Data'First and i1 <= 2);
        ret := adaasn1rtl.ASN1_RESULT'(Success => (((((val.seqof.Data(i1) = hello)) OR ((val.seqof.Data(i1) = world)))) OR ((val.seqof.Data(i1) = howareyou))), ErrorCode => ERR_MYREFSEQOF_SEQOF_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END MyRefSeqOf_IsConstraintValid;



function MyPossiblyEmptySeqOf_elem_Equal(val1, val2: in MyPossiblyEmptySeqOf_elem)
    return Boolean 
is
begin
	return val1 = val2;

end MyPossiblyEmptySeqOf_elem_Equal;

function MyPossiblyEmptySeqOf_Equal(val1, val2: in MyPossiblyEmptySeqOf)
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

end MyPossiblyEmptySeqOf_Equal;

function MyPossiblyEmptySeqOf_elem_Init return MyPossiblyEmptySeqOf_elem
is
    val: MyPossiblyEmptySeqOf_elem;
begin
    val := 1;
    return val;
end MyPossiblyEmptySeqOf_elem_Init;
function MyPossiblyEmptySeqOf_Init return MyPossiblyEmptySeqOf
is
    val: MyPossiblyEmptySeqOf;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 2 loop
        pragma Loop_Invariant (i1 >=1 and i1<=2);
        val.Data(i1) := MyPossiblyEmptySeqOf_elem_Init;
        i1 := i1 + 1;
    end loop;
    val.Length := 0;
    return val;
end MyPossiblyEmptySeqOf_Init;

FUNCTION MyPossiblyEmptySeqOf_IsConstraintValid(val : in MyPossiblyEmptySeqOf) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.Length) AND (val.Length <= 2)), ErrorCode => ERR_MYPOSSIBLYEMPTYSEQOF);
    i1 := val.Data'First;
    while ret.Success and i1 <= val.Length loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= val.Length);
        ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.Data(i1)) AND (val.Data(i1) <= 2)), ErrorCode => ERR_MYPOSSIBLYEMPTYSEQOF_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END MyPossiblyEmptySeqOf_IsConstraintValid;



function MySeqWithEmbeddedSeqOf_a_Equal(val1, val2: in MySeqWithEmbeddedSeqOf_a)
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

end MySeqWithEmbeddedSeqOf_a_Equal;

function MySeqWithEmbeddedSeqOf_Equal(val1, val2: in MySeqWithEmbeddedSeqOf)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := MySeqWithEmbeddedSeqOf_a_Equal(val1.a, val2.a);

	return ret;

end MySeqWithEmbeddedSeqOf_Equal;

function MySeqWithEmbeddedSeqOf_a_Init return MySeqWithEmbeddedSeqOf_a
is
    val: MySeqWithEmbeddedSeqOf_a;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 2 loop
        pragma Loop_Invariant (i1 >=1 and i1<=2);
        val.Data(i1) := FALSE;
        i1 := i1 + 1;
    end loop;
    val.Length := 0;
    return val;
end MySeqWithEmbeddedSeqOf_a_Init;
function MySeqWithEmbeddedSeqOf_Init return MySeqWithEmbeddedSeqOf
is
    val: MySeqWithEmbeddedSeqOf;
begin

    --set a 
    val.a := MySeqWithEmbeddedSeqOf_a_Init;
    return val;
end MySeqWithEmbeddedSeqOf_Init;

FUNCTION MySeqWithEmbeddedSeqOf_IsConstraintValid(val : in MySeqWithEmbeddedSeqOf) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.a.Length) AND (val.a.Length <= 2)), ErrorCode => ERR_MYSEQWITHEMBEDDEDSEQOF_A);
    i1 := val.a.Data'First;
    while ret.Success and i1 <= val.a.Length loop
        pragma Loop_Invariant (i1 >= val.a.Data'First and i1 <= val.a.Length);
        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_MYSEQWITHEMBEDDEDSEQOF_A_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END MySeqWithEmbeddedSeqOf_IsConstraintValid;



function MyOctStr_Equal(val1, val2: in MyOctStr)
    return Boolean 
is
begin
	return val1.Data = val2.Data;

end MyOctStr_Equal;

function MyOctStr_Init return MyOctStr
is
    val: MyOctStr;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 3 loop
        pragma Loop_Invariant (i1 >=1 and i1<=3);
        val.Data(i1) := adaasn1rtl.Asn1Byte(0);
        i1 := i1 + 1;
    end loop;

    return val;
end MyOctStr_Init;


 

END TASTE_Dataview;