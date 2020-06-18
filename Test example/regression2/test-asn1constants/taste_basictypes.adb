-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY TASTE_BasicTypes with SPARK_Mode IS




function MyBoolean_Equal(val1, val2: in MyBoolean)
    return Boolean 
is
begin
	return val1 = val2;

end MyBoolean_Equal;

function MyBoolean_Init return MyBoolean
is
    val: MyBoolean;
begin
    val := FALSE;
    return val;
end MyBoolean_Init;

FUNCTION MyBoolean_IsConstraintValid(val : in MyBoolean) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_MYBOOLEAN);
    RETURN ret;
END MyBoolean_IsConstraintValid;



function TASTE_Peek_id_Equal(val1, val2: in TASTE_Peek_id)
    return Boolean 
is
begin
	return val1 = val2;

end TASTE_Peek_id_Equal;

function TASTE_Peek_id_Init return TASTE_Peek_id
is
    val: TASTE_Peek_id;
begin
    val := 0;
    return val;
end TASTE_Peek_id_Init;

FUNCTION TASTE_Peek_id_IsConstraintValid(val : in TASTE_Peek_id) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 4294967295), ErrorCode => ERR_TASTE_PEEK_ID);
    RETURN ret;
END TASTE_Peek_id_IsConstraintValid;



function TASTE_Peek_id_list_Equal(val1, val2: in TASTE_Peek_id_list)
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

end TASTE_Peek_id_list_Equal;

function TASTE_Peek_id_list_Init return TASTE_Peek_id_list
is
    val: TASTE_Peek_id_list;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 10 loop
        pragma Loop_Invariant (i1 >=1 and i1<=10);
        val.Data(i1) := TASTE_Peek_id_Init;
        i1 := i1 + 1;
    end loop;
    val.Length := 1;
    return val;
end TASTE_Peek_id_list_Init;

FUNCTION TASTE_Peek_id_list_IsConstraintValid(val : in TASTE_Peek_id_list) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.Length) AND (val.Length <= 10)), ErrorCode => ERR_TASTE_PEEK_ID_LIST);
    i1 := val.Data'First;
    while ret.Success and i1 <= val.Length loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= val.Length);
        ret := adaasn1rtl.ASN1_RESULT'(Success => (val.Data(i1) <= 4294967295), ErrorCode => ERR_TASTE_PEEK_ID_LIST_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END TASTE_Peek_id_list_IsConstraintValid;



function VariableString_Equal(val1, val2: in VariableString)
    return Boolean 
is
begin
	return val1.Length = val2.Length and then val1.Data(1 .. val1.Length) = val2.Data(1 .. val2.Length);

end VariableString_Equal;

function VariableString_Init return VariableString
is
    val: VariableString;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 10 loop
        pragma Loop_Invariant (i1 >=1 and i1<=10);
        val.Data(i1) := adaasn1rtl.Asn1Byte(0);
        i1 := i1 + 1;
    end loop;
    val.Length := 10;
    return val;
end VariableString_Init;

FUNCTION VariableString_IsConstraintValid(val : in VariableString) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.Length) AND (val.Length <= 10)), ErrorCode => ERR_VARIABLESTRING);
    RETURN ret;
END VariableString_IsConstraintValid;



function FixedString_Equal(val1, val2: in FixedString)
    return Boolean 
is
begin
	return val1.Data = val2.Data;

end FixedString_Equal;

function FixedString_Init return FixedString
is
    val: FixedString;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 5 loop
        pragma Loop_Invariant (i1 >=1 and i1<=5);
        val.Data(i1) := adaasn1rtl.Asn1Byte(0);
        i1 := i1 + 1;
    end loop;

    return val;
end FixedString_Init;



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



function SeqBoolFix_Equal(val1, val2: in SeqBoolFix)
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

end SeqBoolFix_Equal;

function SeqBoolFix_Init return SeqBoolFix
is
    val: SeqBoolFix;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 2 loop
        pragma Loop_Invariant (i1 >=1 and i1<=2);
        val.Data(i1) := FALSE;
        i1 := i1 + 1;
    end loop;

    return val;
end SeqBoolFix_Init;

FUNCTION SeqBoolFix_IsConstraintValid(val : in SeqBoolFix) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.Data'First;
    while ret.Success and i1 <= 2 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 2);
        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_SEQBOOLFIX_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END SeqBoolFix_IsConstraintValid;



function SeqEnum_elem_Equal(val1, val2: in SeqEnum_elem)
    return Boolean 
is
begin
	return val1 = val2;

end SeqEnum_elem_Equal;

function SeqEnum_Equal(val1, val2: in SeqEnum)
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

end SeqEnum_Equal;

function SeqEnum_elem_Init return SeqEnum_elem
is
    val: SeqEnum_elem;
begin
    val := hello2;
    return val;
end SeqEnum_elem_Init;
function SeqEnum_Init return SeqEnum
is
    val: SeqEnum;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 5 loop
        pragma Loop_Invariant (i1 >=1 and i1<=5);
        val.Data(i1) := SeqEnum_elem_Init;
        i1 := i1 + 1;
    end loop;
    val.Length := 1;
    return val;
end SeqEnum_Init;

FUNCTION SeqEnum_IsConstraintValid(val : in SeqEnum) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.Length) AND (val.Length <= 5)), ErrorCode => ERR_SEQENUM);
    i1 := val.Data'First;
    while ret.Success and i1 <= val.Length loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= val.Length);
        ret := adaasn1rtl.ASN1_RESULT'(Success => (((val.Data(i1) = hello2)) OR ((val.Data(i1) = world2))), ErrorCode => ERR_SEQENUM_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END SeqEnum_IsConstraintValid;



function SeqEnumFix_elem_Equal(val1, val2: in SeqEnumFix_elem)
    return Boolean 
is
begin
	return val1 = val2;

end SeqEnumFix_elem_Equal;

function SeqEnumFix_Equal(val1, val2: in SeqEnumFix)
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

end SeqEnumFix_Equal;

function SeqEnumFix_elem_Init return SeqEnumFix_elem
is
    val: SeqEnumFix_elem;
begin
    val := hello;
    return val;
end SeqEnumFix_elem_Init;
function SeqEnumFix_Init return SeqEnumFix
is
    val: SeqEnumFix;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 2 loop
        pragma Loop_Invariant (i1 >=1 and i1<=2);
        val.Data(i1) := SeqEnumFix_elem_Init;
        i1 := i1 + 1;
    end loop;

    return val;
end SeqEnumFix_Init;

FUNCTION SeqEnumFix_IsConstraintValid(val : in SeqEnumFix) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.Data'First;
    while ret.Success and i1 <= 2 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 2);
        ret := adaasn1rtl.ASN1_RESULT'(Success => (((val.Data(i1) = hello)) OR ((val.Data(i1) = world))), ErrorCode => ERR_SEQENUMFIX_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END SeqEnumFix_IsConstraintValid;



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
    val := a;
    return val;
end MyEnum_Init;

FUNCTION MyEnum_IsConstraintValid(val : in MyEnum) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (((((((((val = a)) OR ((val = b)))) OR ((val = c)))) OR ((val = d)))) OR ((val = eE))), ErrorCode => ERR_MYENUM);
    RETURN ret;
END MyEnum_IsConstraintValid;



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
            when c1_PRESENT =>
                ret := (val1.c1 = val2.c1);
            when cDe2_PRESENT =>
                ret := (val1.cDe2 = val2.cDe2);
        end case;
    end if;
	return ret;

end MyChoice_Equal;

function MyChoice_Init return MyChoice
is
    val: MyChoice;
begin
    --set c1 
    declare
        c1_tmp:adaasn1rtl.Asn1Boolean;
    begin
        c1_tmp := FALSE;
        val := MyChoice'(kind => c1_PRESENT, c1 => c1_tmp);
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
        WHEN c1_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_MYCHOICE_C1);
        WHEN cDe2_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_MYCHOICE_CDE2);
    end case;
    RETURN ret;
END MyChoice_IsConstraintValid;



function SeqOpt_c_Equal(val1, val2: in SeqOpt_c)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := (val1.a = val2.a);

	return ret;

end SeqOpt_c_Equal;

function SeqOpt_d_Equal(val1, val2: in SeqOpt_d)
    return Boolean 
is
begin
	return val1.Length = val2.Length and then val1.Data(1 .. val1.Length) = val2.Data(1 .. val2.Length);

end SeqOpt_d_Equal;

function SeqOpt_Equal(val1, val2: in SeqOpt)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := val1.Exist.a = val2.Exist.a;
    if ret and then val1.Exist.a = 1 then
        ret := (val1.a = val2.a);
    end if;

    if ret then
        ret := (val1.b = val2.b);

        if ret then
            ret := val1.Exist.c = val2.Exist.c;
            if ret and then val1.Exist.c = 1 then
                ret := SeqOpt_c_Equal(val1.c, val2.c);
            end if;

            if ret then
                ret := val1.Exist.d = val2.Exist.d;
                if ret and then val1.Exist.d = 1 then
                    ret := SeqOpt_d_Equal(val1.d, val2.d);
                end if;

            end if;
        end if;
    end if;
	return ret;

end SeqOpt_Equal;

function SeqOpt_c_Init return SeqOpt_c
is
    val: SeqOpt_c;
begin

    --set a 
    val.a := FALSE;
    return val;
end SeqOpt_c_Init;
function SeqOpt_d_Init return SeqOpt_d
is
    val: SeqOpt_d;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 10 loop
        pragma Loop_Invariant (i1 >=1 and i1<=10);
        val.Data(i1) := adaasn1rtl.Asn1Byte(0);
        i1 := i1 + 1;
    end loop;
    val.Length := 10;
    return val;
end SeqOpt_d_Init;
function SeqOpt_Init return SeqOpt
is
    val: SeqOpt;
begin

    --set a 
    val.exist.a := 1;
    val.a := FALSE;
    --set b 
    val.b := FALSE;
    --set c 
    val.exist.c := 1;
    val.c := SeqOpt_c_Init;
    --set d 
    val.exist.d := 1;
    val.d := SeqOpt_d_Init;
    return val;
end SeqOpt_Init;

FUNCTION SeqOpt_IsConstraintValid(val : in SeqOpt) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    if val.Exist.a = 1 then
        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_SEQOPT_A);
    end if;
    if ret.Success then
        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_SEQOPT_B);
        if ret.Success then
            if val.Exist.c = 1 then
                ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_SEQOPT_C_A);
            end if;
            if ret.Success then
                if val.Exist.d = 1 then
                    ret := adaasn1rtl.ASN1_RESULT'(Success => ((0 <= val.d.Length) AND (val.d.Length <= 10)), ErrorCode => ERR_SEQOPT_D);
                end if;
            end if;

        end if;

    end if;

    RETURN ret;
END SeqOpt_IsConstraintValid;



function SeqNonOpt_Equal(val1, val2: in SeqNonOpt)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := (val1.a = val2.a);

	return ret;

end SeqNonOpt_Equal;

function SeqNonOpt_Init return SeqNonOpt
is
    val: SeqNonOpt;
begin

    --set a 
    val.a := FALSE;
    return val;
end SeqNonOpt_Init;

FUNCTION SeqNonOpt_IsConstraintValid(val : in SeqNonOpt) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_SEQNONOPT_A);
    RETURN ret;
END SeqNonOpt_IsConstraintValid;



function NamedInt_Equal(val1, val2: in NamedInt)
    return Boolean 
is
begin
	return val1 = val2;

end NamedInt_Equal;

function NamedInt_Init return NamedInt
is
    val: NamedInt;
begin
    val := 1;
    return val;
end NamedInt_Init;

FUNCTION NamedInt_IsConstraintValid(val : in NamedInt) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val) AND (val <= 2)), ErrorCode => ERR_NAMEDINT);
    RETURN ret;
END NamedInt_IsConstraintValid;



function Enum_with_dash_Equal(val1, val2: in Enum_with_dash)
    return Boolean 
is
begin
	return val1 = val2;

end Enum_with_dash_Equal;

function Enum_with_dash_Init return Enum_with_dash
is
    val: Enum_with_dash;
begin
    val := first_one;
    return val;
end Enum_with_dash_Init;

FUNCTION Enum_with_dash_IsConstraintValid(val : in Enum_with_dash) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (((val = first_one)) OR ((val = second_one))), ErrorCode => ERR_ENUM_WITH_DASH);
    RETURN ret;
END Enum_with_dash_IsConstraintValid;



function NamedInt_with_dash_Equal(val1, val2: in NamedInt_with_dash)
    return Boolean 
is
begin
	return val1 = val2;

end NamedInt_with_dash_Equal;

function NamedInt_with_dash_Init return NamedInt_with_dash
is
    val: NamedInt_with_dash;
begin
    val := 0;
    return val;
end NamedInt_with_dash_Init;

FUNCTION NamedInt_with_dash_IsConstraintValid(val : in NamedInt_with_dash) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (((val = 0)) OR ((val = 3))), ErrorCode => ERR_NAMEDINT_WITH_DASH);
    RETURN ret;
END NamedInt_with_dash_IsConstraintValid;


 

END TASTE_BasicTypes;