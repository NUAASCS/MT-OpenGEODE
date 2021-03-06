-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY StarTracker with SPARK_Mode IS




function StarTrackerName2_Equal(val1, val2: in StarTrackerName2)
    return Boolean 
is
begin
	return val1 = val2;

end StarTrackerName2_Equal;

function StarTrackerName2_Init return StarTrackerName2
is
    val: StarTrackerName2;
begin
    val := 0;
    return val;
end StarTrackerName2_Init;

FUNCTION StarTrackerName2_IsConstraintValid(val : in StarTrackerName2) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 4294967295), ErrorCode => ERR_STARTRACKERNAME2);
    RETURN ret;
END StarTrackerName2_IsConstraintValid;



function StarTrackerCommandType_Equal(val1, val2: in StarTrackerCommandType)
    return Boolean 
is
begin
	return val1 = val2;

end StarTrackerCommandType_Equal;

function StarTrackerCommandType_Init return StarTrackerCommandType
is
    val: StarTrackerCommandType;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 21 loop
        pragma Loop_Invariant (i1 >=1 and i1<=21);
        val(i1) := adaasn1rtl.NUL;

        i1 := i1 + 1;
    end loop;
    return val;
end StarTrackerCommandType_Init;

FUNCTION StarTrackerCommandType_IsConstraintValid(val : in StarTrackerCommandType) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (adaasn1rtl.getStringSize(val) = 20), ErrorCode => ERR_STARTRACKERCOMMANDTYPE);
    RETURN ret;
END StarTrackerCommandType_IsConstraintValid;



function StarTrackerLisCommandType_Equal(val1, val2: in StarTrackerLisCommandType)
    return Boolean 
is
begin
	return val1 = val2;

end StarTrackerLisCommandType_Equal;

function StarTrackerLisCommandType_Init return StarTrackerLisCommandType
is
    val: StarTrackerLisCommandType;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 2 loop
        pragma Loop_Invariant (i1 >=1 and i1<=2);
        val(i1) := adaasn1rtl.NUL;

        i1 := i1 + 1;
    end loop;
    return val;
end StarTrackerLisCommandType_Init;

FUNCTION StarTrackerLisCommandType_IsConstraintValid(val : in StarTrackerLisCommandType) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (adaasn1rtl.getStringSize(val) = 1), ErrorCode => ERR_STARTRACKERLISCOMMANDTYPE);
    RETURN ret;
END StarTrackerLisCommandType_IsConstraintValid;



function StarTrackerSolutionType_Equal(val1, val2: in StarTrackerSolutionType)
    return Boolean 
is
begin
	return val1 = val2;

end StarTrackerSolutionType_Equal;

function StarTrackerSolutionType_Init return StarTrackerSolutionType
is
    val: StarTrackerSolutionType;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 170 loop
        pragma Loop_Invariant (i1 >=1 and i1<=170);
        val(i1) := adaasn1rtl.NUL;

        i1 := i1 + 1;
    end loop;
    return val;
end StarTrackerSolutionType_Init;

FUNCTION StarTrackerSolutionType_IsConstraintValid(val : in StarTrackerSolutionType) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (adaasn1rtl.getStringSize(val) = 169), ErrorCode => ERR_STARTRACKERSOLUTIONTYPE);
    RETURN ret;
END StarTrackerSolutionType_IsConstraintValid;



function StarTrackerCommandResultType_Equal(val1, val2: in StarTrackerCommandResultType)
    return Boolean 
is
begin
	return val1 = val2;

end StarTrackerCommandResultType_Equal;

function StarTrackerCommandResultType_Init return StarTrackerCommandResultType
is
    val: StarTrackerCommandResultType;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 8 loop
        pragma Loop_Invariant (i1 >=1 and i1<=8);
        val(i1) := adaasn1rtl.NUL;

        i1 := i1 + 1;
    end loop;
    return val;
end StarTrackerCommandResultType_Init;

FUNCTION StarTrackerCommandResultType_IsConstraintValid(val : in StarTrackerCommandResultType) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (adaasn1rtl.getStringSize(val) = 7), ErrorCode => ERR_STARTRACKERCOMMANDRESULTTYPE);
    RETURN ret;
END StarTrackerCommandResultType_IsConstraintValid;



function StarTrackerName_Equal(val1, val2: in StarTrackerName)
    return Boolean 
is
begin
	return val1 = val2;

end StarTrackerName_Equal;

function StarTrackerName_Init return StarTrackerName
is
    val: StarTrackerName;
begin
    val := 0;
    return val;
end StarTrackerName_Init;

FUNCTION StarTrackerName_IsConstraintValid(val : in StarTrackerName) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 3), ErrorCode => ERR_STARTRACKERNAME);
    RETURN ret;
END StarTrackerName_IsConstraintValid;


 

END StarTracker;