-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY TASTE_Dataview with SPARK_Mode IS




function T_Bool_Equal(val1, val2: in T_Bool)
    return Boolean 
is
begin
	return val1 = val2;

end T_Bool_Equal;

function T_Bool_Init return T_Bool
is
    val: T_Bool;
begin
    val := FALSE;
    return val;
end T_Bool_Init;

FUNCTION T_Bool_IsConstraintValid(val : in T_Bool) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_T_BOOL);
    RETURN ret;
END T_Bool_IsConstraintValid;



function My_OctStr_Equal(val1, val2: in My_OctStr)
    return Boolean 
is
begin
	return val1.Length = val2.Length and then val1.Data(1 .. val1.Length) = val2.Data(1 .. val2.Length);

end My_OctStr_Equal;

function My_OctStr_Init return My_OctStr
is
    val: My_OctStr;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 20 loop
        pragma Loop_Invariant (i1 >=1 and i1<=20);
        val.Data(i1) := adaasn1rtl.Asn1Byte(0);
        i1 := i1 + 1;
    end loop;
    val.Length := 20;
    return val;
end My_OctStr_Init;

FUNCTION My_OctStr_IsConstraintValid(val : in My_OctStr) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.Length) AND (val.Length <= 20)), ErrorCode => ERR_MY_OCTSTR);
    RETURN ret;
END My_OctStr_IsConstraintValid;



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
        ret := My_OctStr_Equal(val1.Data(i1), val2.Data(i1));
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
    while i1<= 100 loop
        pragma Loop_Invariant (i1 >=1 and i1<=100);
        val.Data(i1) := My_OctStr_Init;
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
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.Length) AND (val.Length <= 100)), ErrorCode => ERR_SEQOF);
    i1 := val.Data'First;
    while ret.Success and i1 <= val.Length loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= val.Length);
        ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.Data(i1).Length) AND (val.Data(i1).Length <= 20)), ErrorCode => ERR_SEQOF_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END SeqOf_IsConstraintValid;



function Toto_Equal(val1, val2: in Toto)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := My_OctStr_Equal(val1.elem_1, val2.elem_1);

    if ret then
        ret := val1.Exist.elem_2 = val2.Exist.elem_2;
        if ret and then val1.Exist.elem_2 = 1 then
            ret := SeqOf_Equal(val1.elem_2, val2.elem_2);
        end if;

    end if;
	return ret;

end Toto_Equal;

function Toto_Init return Toto
is
    val: Toto;
begin

    --set elem_1 
    val.elem_1 := My_OctStr_Init;
    --set elem_2 
    val.exist.elem_2 := 1;
    val.elem_2 := SeqOf_Init;
    return val;
end Toto_Init;

FUNCTION Toto_IsConstraintValid(val : in Toto) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.elem_1.Length) AND (val.elem_1.Length <= 20)), ErrorCode => ERR_TOTO_ELEM_1);
    if ret.Success then
        if val.Exist.elem_2 = 1 then
            ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.elem_2.Length) AND (val.elem_2.Length <= 100)), ErrorCode => ERR_TOTO_ELEM_2);
            i1 := val.elem_2.Data'First;
            while ret.Success and i1 <= val.elem_2.Length loop
                pragma Loop_Invariant (i1 >= val.elem_2.Data'First and i1 <= val.elem_2.Length);
                ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.elem_2.Data(i1).Length) AND (val.elem_2.Data(i1).Length <= 20)), ErrorCode => ERR_TOTO_ELEM_2_ELM);
                i1 := i1+1;
            end loop;

        end if;
    end if;

    RETURN ret;
END Toto_IsConstraintValid;



function AChoice_Equal(val1, val2: in AChoice)
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
                ret := (val1.a = val2.a);
            when b_PRESENT =>
                ret := SeqOf_Equal(val1.b, val2.b);
        end case;
    end if;
	return ret;

end AChoice_Equal;

function AChoice_Init return AChoice
is
    val: AChoice;
begin
    --set a 
    declare
        a_tmp:T_Bool;
    begin
        a_tmp := T_Bool_Init;
        val := AChoice'(kind => a_PRESENT, a => a_tmp);
    end;
    return val;
end AChoice_Init;

FUNCTION AChoice_IsConstraintValid(val : in AChoice) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    case val.kind is
        WHEN a_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_ACHOICE_A);
        WHEN b_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.b.Length) AND (val.b.Length <= 100)), ErrorCode => ERR_ACHOICE_B);
            i1 := val.b.Data'First;
            while ret.Success and i1 <= val.b.Length loop
                pragma Loop_Invariant (i1 >= val.b.Data'First and i1 <= val.b.Length);
                ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.b.Data(i1).Length) AND (val.b.Data(i1).Length <= 20)), ErrorCode => ERR_ACHOICE_B_ELM);
                i1 := i1+1;
            end loop;

    end case;
    RETURN ret;
END AChoice_IsConstraintValid;



function SeqBool_Equal(val1, val2: in SeqBool)
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

end SeqBool_Equal;

function SeqBool_Init return SeqBool
is
    val: SeqBool;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 5 loop
        pragma Loop_Invariant (i1 >=1 and i1<=5);
        val.Data(i1) := FALSE;
        i1 := i1 + 1;
    end loop;
    val.Length := 1;
    return val;
end SeqBool_Init;

FUNCTION SeqBool_IsConstraintValid(val : in SeqBool) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.Length) AND (val.Length <= 5)), ErrorCode => ERR_SEQBOOL);
    i1 := val.Data'First;
    while ret.Success and i1 <= val.Length loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= val.Length);
        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_SEQBOOL_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END SeqBool_IsConstraintValid;



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
    val := 1.00000000000000000000E+000;
    return val;
end MyReal_Init;

FUNCTION MyReal_IsConstraintValid(val : in MyReal) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((1.00000000000000000000E+000 <= val) AND (val <= 5.00000000000000000000E+000)), ErrorCode => ERR_MYREAL);
    RETURN ret;
END MyReal_IsConstraintValid;



function MyOtherReal_Equal(val1, val2: in MyOtherReal)
    return Boolean 
is
begin
	return adaasn1rtl.Asn1Real_Equal(val1, val2);

end MyOtherReal_Equal;

function MyOtherReal_Init return MyOtherReal
is
    val: MyOtherReal;
begin
    val := 1.00000000000000000000E+000;
    return val;
end MyOtherReal_Init;

FUNCTION MyOtherReal_IsConstraintValid(val : in MyOtherReal) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((1.00000000000000000000E+000 <= val) AND (val <= 6.00000000000000000000E+000)), ErrorCode => ERR_MYOTHERREAL);
    RETURN ret;
END MyOtherReal_IsConstraintValid;



function Nested_a_Equal(val1, val2: in Nested_a)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := (val1.b = val2.b);

	return ret;

end Nested_a_Equal;

function Nested_Equal(val1, val2: in Nested)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := Nested_a_Equal(val1.a, val2.a);

	return ret;

end Nested_Equal;

function Nested_a_Init return Nested_a
is
    val: Nested_a;
begin

    --set b 
    val.b := FALSE;
    return val;
end Nested_a_Init;
function Nested_Init return Nested
is
    val: Nested;
begin

    --set a 
    val.a := Nested_a_Init;
    return val;
end Nested_Init;

FUNCTION Nested_IsConstraintValid(val : in Nested) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_NESTED_A_B);
    RETURN ret;
END Nested_IsConstraintValid;



function NestedArray_elem_Equal(val1, val2: in NestedArray_elem)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := (val1.a = val2.a);

	return ret;

end NestedArray_elem_Equal;

function NestedArray_Equal(val1, val2: in NestedArray)
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
        ret := (val1.Data(i1).a = val2.Data(i1).a);

        i1 := i1+1;
    end loop;

	return ret;

end NestedArray_Equal;

function NestedArray_elem_Init return NestedArray_elem
is
    val: NestedArray_elem;
begin

    --set a 
    val.a := FALSE;
    return val;
end NestedArray_elem_Init;
function NestedArray_Init return NestedArray
is
    val: NestedArray;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 2 loop
        pragma Loop_Invariant (i1 >=1 and i1<=2);
        val.Data(i1) := NestedArray_elem_Init;
        i1 := i1 + 1;
    end loop;
    val.Length := 1;
    return val;
end NestedArray_Init;

FUNCTION NestedArray_IsConstraintValid(val : in NestedArray) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.Length) AND (val.Length <= 2)), ErrorCode => ERR_NESTEDARRAY);
    i1 := val.Data'First;
    while ret.Success and i1 <= val.Length loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= val.Length);
        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_NESTEDARRAY_ELM_A);
        i1 := i1+1;
    end loop;

    RETURN ret;
END NestedArray_IsConstraintValid;


 

END TASTE_Dataview;