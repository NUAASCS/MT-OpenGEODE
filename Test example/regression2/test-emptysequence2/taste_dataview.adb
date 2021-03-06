-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY TASTE_Dataview with SPARK_Mode IS




function MyChoice_a_Equal(val1, val2: in MyChoice_a)
    return Boolean 
is
begin
	return True;

end MyChoice_a_Equal;

function MyChoice_b_elem_Equal(val1, val2: in MyChoice_b_elem)
    return Boolean 
is
begin
	return True;

end MyChoice_b_elem_Equal;

function MyChoice_b_Equal(val1, val2: in MyChoice_b)
    return Boolean 
is
begin
	return True;

end MyChoice_b_Equal;

function MyChoice_c_c0_Equal(val1, val2: in MyChoice_c_c0)
    return Boolean 
is
begin
	return True;

end MyChoice_c_c0_Equal;

function MyChoice_c_c1_Equal(val1, val2: in MyChoice_c_c1)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := val1.kind = val2.kind;
    if ret then
        case val1.kind is
            when c10_PRESENT =>
                ret := (val1.c10 = val2.c10);
        end case;
    end if;
	return ret;

end MyChoice_c_c1_Equal;

function MyChoice_c_Equal(val1, val2: in MyChoice_c)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := MyChoice_c_c0_Equal(val1.c0, val2.c0);

    if ret then
        ret := MyChoice_c_c1_Equal(val1.c1, val2.c1);

    end if;
	return ret;

end MyChoice_c_Equal;

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
            when a_PRESENT =>
                ret := TRUE;
            when b_PRESENT =>
                ret := TRUE;
            when c_PRESENT =>
                ret := MyChoice_c_c0_Equal(val1.c.c0, val2.c.c0);

                if ret then
                    ret := MyChoice_c_c1_Equal(val1.c.c1, val2.c.c1);

                end if;
        end case;
    end if;
	return ret;

end MyChoice_Equal;

function MyChoice_a_Init return MyChoice_a
is
    val: MyChoice_a;
begin
    val := (null record);
    return val;
end MyChoice_a_Init;
function MyChoice_b_elem_Init return MyChoice_b_elem
is
    val: MyChoice_b_elem;
begin
    val := (null record);
    return val;
end MyChoice_b_elem_Init;
function MyChoice_b_Init return MyChoice_b
is
    val: MyChoice_b;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 2 loop
        pragma Loop_Invariant (i1 >=1 and i1<=2);
        val.Data(i1) := MyChoice_b_elem_Init;
        i1 := i1 + 1;
    end loop;

    return val;
end MyChoice_b_Init;
function MyChoice_c_c0_Init return MyChoice_c_c0
is
    val: MyChoice_c_c0;
begin
    val := (null record);
    return val;
end MyChoice_c_c0_Init;
function MyChoice_c_c1_Init return MyChoice_c_c1
is
    val: MyChoice_c_c1;
begin
    --set c10 
    declare
        c10_tmp:adaasn1rtl.Asn1Boolean;
    begin
        c10_tmp := FALSE;
        val := MyChoice_c_c1'(kind => c10_PRESENT, c10 => c10_tmp);
    end;
    return val;
end MyChoice_c_c1_Init;
function MyChoice_c_Init return MyChoice_c
is
    val: MyChoice_c;
begin

    --set c0 
    val.c0 := MyChoice_c_c0_Init;
    --set c1 
    val.c1 := MyChoice_c_c1_Init;
    return val;
end MyChoice_c_Init;
function MyChoice_Init return MyChoice
is
    val: MyChoice;
begin
    --set a 
    declare
        a_tmp:MyChoice_a;
    begin
        val.a := MyChoice_a_Init;
        val := MyChoice'(kind => a_PRESENT, a => a_tmp);
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
        WHEN a_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
        WHEN b_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
        WHEN c_PRESENT =>
            case val.c.c1.kind is
                WHEN c10_PRESENT =>
                    ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_MYCHOICE_C_C1_C10);
            end case;
    end case;
    RETURN ret;
END MyChoice_IsConstraintValid;


 

END TASTE_Dataview;