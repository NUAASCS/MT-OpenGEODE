-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY TASTE_Dataview with SPARK_Mode IS




function T_Uint32_Equal(val1, val2: in T_Uint32)
    return Boolean 
is
begin
	return val1 = val2;

end T_Uint32_Equal;

function T_Uint32_Init return T_Uint32
is
    val: T_Uint32;
begin
    val := 0;
    return val;
end T_Uint32_Init;

FUNCTION T_Uint32_IsConstraintValid(val : in T_Uint32) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 100000000), ErrorCode => ERR_T_UINT32);
    RETURN ret;
END T_Uint32_IsConstraintValid;



function TC_Type_apid_Equal(val1, val2: in TC_Type_apid)
    return Boolean 
is
begin
	return val1 = val2;

end TC_Type_apid_Equal;

function TC_Type_content_change_mode_Equal(val1, val2: in TC_Type_content_change_mode)
    return Boolean 
is
begin
	return val1 = val2;

end TC_Type_content_change_mode_Equal;

function TC_Type_content_patch_memory_Equal(val1, val2: in TC_Type_content_patch_memory)
    return Boolean 
is
begin
	return val1 = val2;

end TC_Type_content_patch_memory_Equal;

function TC_Type_content_Equal(val1, val2: in TC_Type_content)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := val1.kind = val2.kind;
    if ret then
        case val1.kind is
            when change_mode_PRESENT =>
                ret := (val1.change_mode = val2.change_mode);
            when patch_memory_PRESENT =>
                ret := (val1.patch_memory = val2.patch_memory);
        end case;
    end if;
	return ret;

end TC_Type_content_Equal;

function TC_Type_Equal(val1, val2: in TC_Type)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := TC_Type_apid_Equal(val1.apid, val2.apid);

    if ret then
        ret := TC_Type_content_Equal(val1.content, val2.content);

    end if;
	return ret;

end TC_Type_Equal;

function TC_Type_apid_Init return TC_Type_apid
is
    val: TC_Type_apid;
begin
    val := 0;
    return val;
end TC_Type_apid_Init;
function TC_Type_content_change_mode_Init return TC_Type_content_change_mode
is
    val: TC_Type_content_change_mode;
begin
    val := safe;
    return val;
end TC_Type_content_change_mode_Init;
function TC_Type_content_patch_memory_Init return TC_Type_content_patch_memory
is
    val: TC_Type_content_patch_memory;
begin
    val := 0;
    return val;
end TC_Type_content_patch_memory_Init;
function TC_Type_content_Init return TC_Type_content
is
    val: TC_Type_content;
begin
    --set change_mode 
    declare
        change_mode_tmp:TC_Type_content_change_mode;
    begin
        val.change_mode := TC_Type_content_change_mode_Init;
        val := TC_Type_content'(kind => change_mode_PRESENT, change_mode => change_mode_tmp);
    end;
    return val;
end TC_Type_content_Init;
function TC_Type_Init return TC_Type
is
    val: TC_Type;
begin

    --set apid 
    val.apid := TC_Type_apid_Init;
    --set content 
    val.content := TC_Type_content_Init;
    return val;
end TC_Type_Init;

FUNCTION TC_Type_IsConstraintValid(val : in TC_Type) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val.apid <= 100), ErrorCode => ERR_TC_TYPE_APID);
    if ret.Success then
        case val.content.kind is
            WHEN change_mode_PRESENT =>
                ret := adaasn1rtl.ASN1_RESULT'(Success => (((val.content.change_mode = safe)) OR ((val.content.change_mode = operational))), ErrorCode => ERR_TC_TYPE_CONTENT_CHANGE_MODE);
            WHEN patch_memory_PRESENT =>
                ret := adaasn1rtl.ASN1_RESULT'(Success => (val.content.patch_memory <= 100), ErrorCode => ERR_TC_TYPE_CONTENT_PATCH_MEMORY);
        end case;
    end if;

    RETURN ret;
END TC_Type_IsConstraintValid;



function TM_Type_apid_Equal(val1, val2: in TM_Type_apid)
    return Boolean 
is
begin
	return val1 = val2;

end TM_Type_apid_Equal;

function TM_Type_Equal(val1, val2: in TM_Type)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := TM_Type_apid_Equal(val1.apid, val2.apid);

	return ret;

end TM_Type_Equal;

function TM_Type_apid_Init return TM_Type_apid
is
    val: TM_Type_apid;
begin
    val := 0;
    return val;
end TM_Type_apid_Init;
function TM_Type_Init return TM_Type
is
    val: TM_Type;
begin

    --set apid 
    val.apid := TM_Type_apid_Init;
    return val;
end TM_Type_Init;

FUNCTION TM_Type_IsConstraintValid(val : in TM_Type) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val.apid <= 100), ErrorCode => ERR_TM_TYPE_APID);
    RETURN ret;
END TM_Type_IsConstraintValid;



function Boolean_Type_Equal(val1, val2: in Boolean_Type)
    return Boolean 
is
begin
	return val1 = val2;

end Boolean_Type_Equal;

function Boolean_Type_Init return Boolean_Type
is
    val: Boolean_Type;
begin
    val := FALSE;
    return val;
end Boolean_Type_Init;

FUNCTION Boolean_Type_IsConstraintValid(val : in Boolean_Type) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_BOOLEAN_TYPE);
    RETURN ret;
END Boolean_Type_IsConstraintValid;


 

END TASTE_Dataview;