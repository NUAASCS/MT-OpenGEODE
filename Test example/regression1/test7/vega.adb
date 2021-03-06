-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
WITH TASTE_BasicTypes;
use type TASTE_BasicTypes.T_UInt32;
use type TASTE_BasicTypes.T_UInt32;
use type TASTE_BasicTypes.T_UInt32;
use type TASTE_BasicTypes.T_Int8;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY VEGA with SPARK_Mode IS




function T_DOUBLE_Equal(val1, val2: in T_DOUBLE)
    return Boolean 
is
begin
	return adaasn1rtl.Asn1Real_Equal(val1, val2);

end T_DOUBLE_Equal;

function T_DOUBLE_Init return T_DOUBLE
is
    val: T_DOUBLE;
begin
    val := 0.00000000000000000000E+000;
    return val;
end T_DOUBLE_Init;

FUNCTION T_DOUBLE_IsConstraintValid(val : in T_DOUBLE) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val) AND (val <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_DOUBLE);
    RETURN ret;
END T_DOUBLE_IsConstraintValid;



function T_FLOAT32_Equal(val1, val2: in T_FLOAT32)
    return Boolean 
is
begin
	return adaasn1rtl.Asn1Real_Equal(val1, val2);

end T_FLOAT32_Equal;

function T_FLOAT32_Init return T_FLOAT32
is
    val: T_FLOAT32;
begin
    val := T_DOUBLE_Init;
    return val;
end T_FLOAT32_Init;

FUNCTION T_FLOAT32_IsConstraintValid(val : in T_FLOAT32) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val) AND (val <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_FLOAT32);
    RETURN ret;
END T_FLOAT32_IsConstraintValid;



function T_QUAT_FLOAT32_Equal(val1, val2: in T_QUAT_FLOAT32)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;

begin
    i1 := val1.Data'First;
    while ret and i1 <= 4 loop
        pragma Loop_Invariant (i1 >= val1.Data'First and i1 >= val2.Data'First);
        ret := (adaasn1rtl.Asn1Real_Equal(val1.Data(i1), val2.Data(i1)));
        i1 := i1+1;
    end loop;
	return ret;

end T_QUAT_FLOAT32_Equal;

function T_QUAT_FLOAT32_Init return T_QUAT_FLOAT32
is
    val: T_QUAT_FLOAT32;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 4 loop
        pragma Loop_Invariant (i1 >=1 and i1<=4);
        val.Data(i1) := T_FLOAT32_Init;
        i1 := i1 + 1;
    end loop;

    return val;
end T_QUAT_FLOAT32_Init;

FUNCTION T_QUAT_FLOAT32_IsConstraintValid(val : in T_QUAT_FLOAT32) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.Data'First;
    while ret.Success and i1 <= 4 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 4);
        ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.Data(i1)) AND (val.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_QUAT_FLOAT32_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END T_QUAT_FLOAT32_IsConstraintValid;



function T_VECT3_FLOAT32_Equal(val1, val2: in T_VECT3_FLOAT32)
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
        ret := (adaasn1rtl.Asn1Real_Equal(val1.Data(i1), val2.Data(i1)));
        i1 := i1+1;
    end loop;
	return ret;

end T_VECT3_FLOAT32_Equal;

function T_VECT3_FLOAT32_Init return T_VECT3_FLOAT32
is
    val: T_VECT3_FLOAT32;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 3 loop
        pragma Loop_Invariant (i1 >=1 and i1<=3);
        val.Data(i1) := T_FLOAT32_Init;
        i1 := i1 + 1;
    end loop;

    return val;
end T_VECT3_FLOAT32_Init;

FUNCTION T_VECT3_FLOAT32_IsConstraintValid(val : in T_VECT3_FLOAT32) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.Data'First;
    while ret.Success and i1 <= 3 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 3);
        ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.Data(i1)) AND (val.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_VECT3_FLOAT32_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END T_VECT3_FLOAT32_IsConstraintValid;



function T_GNC_LV_SIM_CONTEXT_Equal(val1, val2: in T_GNC_LV_SIM_CONTEXT)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := T_QUAT_FLOAT32_Equal(val1.attitude_quaternion, val2.attitude_quaternion);

    if ret then
        ret := T_VECT3_FLOAT32_Equal(val1.ng_vel_incr_irs, val2.ng_vel_incr_irs);

        if ret then
            ret := T_VECT3_FLOAT32_Equal(val1.ng_vel_incr_accelero, val2.ng_vel_incr_accelero);

            if ret then
                ret := T_VECT3_FLOAT32_Equal(val1.filtered_angles_sample_1, val2.filtered_angles_sample_1);

                if ret then
                    ret := T_VECT3_FLOAT32_Equal(val1.filtered_angles_sample_2, val2.filtered_angles_sample_2);

                end if;
            end if;
        end if;
    end if;
	return ret;

end T_GNC_LV_SIM_CONTEXT_Equal;

function T_GNC_LV_SIM_CONTEXT_Init return T_GNC_LV_SIM_CONTEXT
is
    val: T_GNC_LV_SIM_CONTEXT;
begin

    --set attitude_quaternion 
    val.attitude_quaternion := T_QUAT_FLOAT32_Init;
    --set ng_vel_incr_irs 
    val.ng_vel_incr_irs := T_VECT3_FLOAT32_Init;
    --set ng_vel_incr_accelero 
    val.ng_vel_incr_accelero := T_VECT3_FLOAT32_Init;
    --set filtered_angles_sample_1 
    val.filtered_angles_sample_1 := T_VECT3_FLOAT32_Init;
    --set filtered_angles_sample_2 
    val.filtered_angles_sample_2 := T_VECT3_FLOAT32_Init;
    return val;
end T_GNC_LV_SIM_CONTEXT_Init;

FUNCTION T_GNC_LV_SIM_CONTEXT_IsConstraintValid(val : in T_GNC_LV_SIM_CONTEXT) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.attitude_quaternion.Data'First;
    while ret.Success and i1 <= 4 loop
        pragma Loop_Invariant (i1 >= val.attitude_quaternion.Data'First and i1 <= 4);
        ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.attitude_quaternion.Data(i1)) AND (val.attitude_quaternion.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_GNC_LV_SIM_CONTEXT_ATTITUDE_QUATERNION_ELM);
        i1 := i1+1;
    end loop;

    if ret.Success then
        i1 := val.ng_vel_incr_irs.Data'First;
        while ret.Success and i1 <= 3 loop
            pragma Loop_Invariant (i1 >= val.ng_vel_incr_irs.Data'First and i1 <= 3);
            ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.ng_vel_incr_irs.Data(i1)) AND (val.ng_vel_incr_irs.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_GNC_LV_SIM_CONTEXT_NG_VEL_INCR_IRS_ELM);
            i1 := i1+1;
        end loop;

        if ret.Success then
            i1 := val.ng_vel_incr_accelero.Data'First;
            while ret.Success and i1 <= 3 loop
                pragma Loop_Invariant (i1 >= val.ng_vel_incr_accelero.Data'First and i1 <= 3);
                ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.ng_vel_incr_accelero.Data(i1)) AND (val.ng_vel_incr_accelero.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_GNC_LV_SIM_CONTEXT_NG_VEL_INCR_ACCELERO_ELM);
                i1 := i1+1;
            end loop;

            if ret.Success then
                i1 := val.filtered_angles_sample_1.Data'First;
                while ret.Success and i1 <= 3 loop
                    pragma Loop_Invariant (i1 >= val.filtered_angles_sample_1.Data'First and i1 <= 3);
                    ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.filtered_angles_sample_1.Data(i1)) AND (val.filtered_angles_sample_1.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_GNC_LV_SIM_CONTEXT_FILTERED_ANGLES_SAMPLE_1_ELM);
                    i1 := i1+1;
                end loop;

                if ret.Success then
                    i1 := val.filtered_angles_sample_2.Data'First;
                    while ret.Success and i1 <= 3 loop
                        pragma Loop_Invariant (i1 >= val.filtered_angles_sample_2.Data'First and i1 <= 3);
                        ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.filtered_angles_sample_2.Data(i1)) AND (val.filtered_angles_sample_2.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_GNC_LV_SIM_CONTEXT_FILTERED_ANGLES_SAMPLE_2_ELM);
                        i1 := i1+1;
                    end loop;

                end if;

            end if;

        end if;

    end if;

    RETURN ret;
END T_GNC_LV_SIM_CONTEXT_IsConstraintValid;



function Simulation_Param_command_Equal(val1, val2: in Simulation_Param_command)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := val1.kind = val2.kind;
    if ret then
        case val1.kind is
            when run_n_steps_PRESENT =>
                ret := (val1.run_n_steps = val2.run_n_steps);
            when run_n_seconds_PRESENT =>
                ret := (val1.run_n_seconds = val2.run_n_seconds);
            when run_forever_PRESENT =>
                ret := (val1.run_forever = val2.run_forever);
            when pause_PRESENT =>
                ret := (val1.pause = val2.pause);
            when test_gnc_PRESENT =>
                ret := (val1.test_gnc = val2.test_gnc);
        end case;
    end if;
	return ret;

end Simulation_Param_command_Equal;

function Simulation_Param_Equal(val1, val2: in Simulation_Param)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := Simulation_Param_command_Equal(val1.command, val2.command);

    if ret then
        ret := T_GNC_LV_SIM_CONTEXT_Equal(val1.gnc_inputs, val2.gnc_inputs);

    end if;
	return ret;

end Simulation_Param_Equal;

function Simulation_Param_command_Init return Simulation_Param_command
is
    val: Simulation_Param_command;
begin
    --set run_n_steps 
    declare
        run_n_steps_tmp:TASTE_BasicTypes.T_UInt32;
    begin
        run_n_steps_tmp := TASTE_BasicTypes.T_UInt32_Init;
        val := Simulation_Param_command'(kind => run_n_steps_PRESENT, run_n_steps => run_n_steps_tmp);
    end;
    return val;
end Simulation_Param_command_Init;
function Simulation_Param_Init return Simulation_Param
is
    val: Simulation_Param;
begin

    --set command 
    val.command := Simulation_Param_command_Init;
    --set gnc_inputs 
    val.gnc_inputs := T_GNC_LV_SIM_CONTEXT_Init;
    return val;
end Simulation_Param_Init;

FUNCTION Simulation_Param_IsConstraintValid(val : in Simulation_Param) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    case val.command.kind is
        WHEN run_n_steps_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => (val.command.run_n_steps <= 4294967295), ErrorCode => ERR_SIMULATION_PARAM_COMMAND_RUN_N_STEPS);
        WHEN run_n_seconds_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => (val.command.run_n_seconds <= 4294967295), ErrorCode => ERR_SIMULATION_PARAM_COMMAND_RUN_N_SECONDS);
        WHEN run_forever_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_SIMULATION_PARAM_COMMAND_RUN_FOREVER);
        WHEN pause_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_SIMULATION_PARAM_COMMAND_PAUSE);
        WHEN test_gnc_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_SIMULATION_PARAM_COMMAND_TEST_GNC);
    end case;
    if ret.Success then
        i1 := val.gnc_inputs.attitude_quaternion.Data'First;
        while ret.Success and i1 <= 4 loop
            pragma Loop_Invariant (i1 >= val.gnc_inputs.attitude_quaternion.Data'First and i1 <= 4);
            ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_inputs.attitude_quaternion.Data(i1)) AND (val.gnc_inputs.attitude_quaternion.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_SIMULATION_PARAM_GNC_INPUTS_ATTITUDE_QUATERNION_ELM);
            i1 := i1+1;
        end loop;

        if ret.Success then
            i1 := val.gnc_inputs.ng_vel_incr_irs.Data'First;
            while ret.Success and i1 <= 3 loop
                pragma Loop_Invariant (i1 >= val.gnc_inputs.ng_vel_incr_irs.Data'First and i1 <= 3);
                ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_inputs.ng_vel_incr_irs.Data(i1)) AND (val.gnc_inputs.ng_vel_incr_irs.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_SIMULATION_PARAM_GNC_INPUTS_NG_VEL_INCR_IRS_ELM);
                i1 := i1+1;
            end loop;

            if ret.Success then
                i1 := val.gnc_inputs.ng_vel_incr_accelero.Data'First;
                while ret.Success and i1 <= 3 loop
                    pragma Loop_Invariant (i1 >= val.gnc_inputs.ng_vel_incr_accelero.Data'First and i1 <= 3);
                    ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_inputs.ng_vel_incr_accelero.Data(i1)) AND (val.gnc_inputs.ng_vel_incr_accelero.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_SIMULATION_PARAM_GNC_INPUTS_NG_VEL_INCR_ACCELERO_ELM);
                    i1 := i1+1;
                end loop;

                if ret.Success then
                    i1 := val.gnc_inputs.filtered_angles_sample_1.Data'First;
                    while ret.Success and i1 <= 3 loop
                        pragma Loop_Invariant (i1 >= val.gnc_inputs.filtered_angles_sample_1.Data'First and i1 <= 3);
                        ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_inputs.filtered_angles_sample_1.Data(i1)) AND (val.gnc_inputs.filtered_angles_sample_1.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_SIMULATION_PARAM_GNC_INPUTS_FILTERED_ANGLES_SAMPLE_1_ELM);
                        i1 := i1+1;
                    end loop;

                    if ret.Success then
                        i1 := val.gnc_inputs.filtered_angles_sample_2.Data'First;
                        while ret.Success and i1 <= 3 loop
                            pragma Loop_Invariant (i1 >= val.gnc_inputs.filtered_angles_sample_2.Data'First and i1 <= 3);
                            ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_inputs.filtered_angles_sample_2.Data(i1)) AND (val.gnc_inputs.filtered_angles_sample_2.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_SIMULATION_PARAM_GNC_INPUTS_FILTERED_ANGLES_SAMPLE_2_ELM);
                            i1 := i1+1;
                        end loop;

                    end if;

                end if;

            end if;

        end if;

    end if;

    RETURN ret;
END Simulation_Param_IsConstraintValid;



function T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT_Equal(val1, val2: in T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;

begin
    i1 := val1.Data'First;
    while ret and i1 <= 20 loop
        pragma Loop_Invariant (i1 >= val1.Data'First and i1 >= val2.Data'First);
        ret := (adaasn1rtl.Asn1Real_Equal(val1.Data(i1), val2.Data(i1)));
        i1 := i1+1;
    end loop;
	return ret;

end T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT_Equal;

function T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT_Init return T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT
is
    val: T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 20 loop
        pragma Loop_Invariant (i1 >=1 and i1<=20);
        val.Data(i1) := T_FLOAT32_Init;
        i1 := i1 + 1;
    end loop;

    return val;
end T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT_Init;

FUNCTION T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT_IsConstraintValid(val : in T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.Data'First;
    while ret.Success and i1 <= 20 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 20);
        ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.Data(i1)) AND (val.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT_IsConstraintValid;



function T_TVC_SET_POINT_ENG_VECT_Equal(val1, val2: in T_TVC_SET_POINT_ENG_VECT)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;

begin
    i1 := val1.Data'First;
    while ret and i1 <= 8 loop
        pragma Loop_Invariant (i1 >= val1.Data'First and i1 >= val2.Data'First);
        ret := (adaasn1rtl.Asn1Real_Equal(val1.Data(i1), val2.Data(i1)));
        i1 := i1+1;
    end loop;
	return ret;

end T_TVC_SET_POINT_ENG_VECT_Equal;

function T_TVC_SET_POINT_ENG_VECT_Init return T_TVC_SET_POINT_ENG_VECT
is
    val: T_TVC_SET_POINT_ENG_VECT;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 8 loop
        pragma Loop_Invariant (i1 >=1 and i1<=8);
        val.Data(i1) := T_FLOAT32_Init;
        i1 := i1 + 1;
    end loop;

    return val;
end T_TVC_SET_POINT_ENG_VECT_Init;

FUNCTION T_TVC_SET_POINT_ENG_VECT_IsConstraintValid(val : in T_TVC_SET_POINT_ENG_VECT) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.Data'First;
    while ret.Success and i1 <= 8 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 8);
        ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.Data(i1)) AND (val.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_TVC_SET_POINT_ENG_VECT_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END T_TVC_SET_POINT_ENG_VECT_IsConstraintValid;



function T_RACS_EV_CMD_VECT_Equal(val1, val2: in T_RACS_EV_CMD_VECT)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;

begin
    i1 := val1.Data'First;
    while ret and i1 <= 6 loop
        pragma Loop_Invariant (i1 >= val1.Data'First and i1 >= val2.Data'First);
        ret := (adaasn1rtl.Asn1Real_Equal(val1.Data(i1), val2.Data(i1)));
        i1 := i1+1;
    end loop;
	return ret;

end T_RACS_EV_CMD_VECT_Equal;

function T_RACS_EV_CMD_VECT_Init return T_RACS_EV_CMD_VECT
is
    val: T_RACS_EV_CMD_VECT;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 6 loop
        pragma Loop_Invariant (i1 >=1 and i1<=6);
        val.Data(i1) := T_FLOAT32_Init;
        i1 := i1 + 1;
    end loop;

    return val;
end T_RACS_EV_CMD_VECT_Init;

FUNCTION T_RACS_EV_CMD_VECT_IsConstraintValid(val : in T_RACS_EV_CMD_VECT) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.Data'First;
    while ret.Success and i1 <= 6 loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= 6);
        ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.Data(i1)) AND (val.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_RACS_EV_CMD_VECT_ELM);
        i1 := i1+1;
    end loop;

    RETURN ret;
END T_RACS_EV_CMD_VECT_IsConstraintValid;



function T_GNC_LV_SIM_INPUTS_Equal(val1, val2: in T_GNC_LV_SIM_INPUTS)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT_Equal(val1.sequ_exec_request_vect, val2.sequ_exec_request_vect);

    if ret then
        ret := T_TVC_SET_POINT_ENG_VECT_Equal(val1.tvc_set_point_eng_vect, val2.tvc_set_point_eng_vect);

        if ret then
            ret := T_RACS_EV_CMD_VECT_Equal(val1.racs_ev_cmd_vect, val2.racs_ev_cmd_vect);

        end if;
    end if;
	return ret;

end T_GNC_LV_SIM_INPUTS_Equal;

function T_GNC_LV_SIM_INPUTS_Init return T_GNC_LV_SIM_INPUTS
is
    val: T_GNC_LV_SIM_INPUTS;
begin

    --set sequ_exec_request_vect 
    val.sequ_exec_request_vect := T_HAS_SEQUENCE_EXEC_BEEN_REQUESTED_VECT_Init;
    --set tvc_set_point_eng_vect 
    val.tvc_set_point_eng_vect := T_TVC_SET_POINT_ENG_VECT_Init;
    --set racs_ev_cmd_vect 
    val.racs_ev_cmd_vect := T_RACS_EV_CMD_VECT_Init;
    return val;
end T_GNC_LV_SIM_INPUTS_Init;

FUNCTION T_GNC_LV_SIM_INPUTS_IsConstraintValid(val : in T_GNC_LV_SIM_INPUTS) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    i1 := val.sequ_exec_request_vect.Data'First;
    while ret.Success and i1 <= 20 loop
        pragma Loop_Invariant (i1 >= val.sequ_exec_request_vect.Data'First and i1 <= 20);
        ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.sequ_exec_request_vect.Data(i1)) AND (val.sequ_exec_request_vect.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_GNC_LV_SIM_INPUTS_SEQU_EXEC_REQUEST_VECT_ELM);
        i1 := i1+1;
    end loop;

    if ret.Success then
        i1 := val.tvc_set_point_eng_vect.Data'First;
        while ret.Success and i1 <= 8 loop
            pragma Loop_Invariant (i1 >= val.tvc_set_point_eng_vect.Data'First and i1 <= 8);
            ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.tvc_set_point_eng_vect.Data(i1)) AND (val.tvc_set_point_eng_vect.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_GNC_LV_SIM_INPUTS_TVC_SET_POINT_ENG_VECT_ELM);
            i1 := i1+1;
        end loop;

        if ret.Success then
            i1 := val.racs_ev_cmd_vect.Data'First;
            while ret.Success and i1 <= 6 loop
                pragma Loop_Invariant (i1 >= val.racs_ev_cmd_vect.Data'First and i1 <= 6);
                ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.racs_ev_cmd_vect.Data(i1)) AND (val.racs_ev_cmd_vect.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_GNC_LV_SIM_INPUTS_RACS_EV_CMD_VECT_ELM);
                i1 := i1+1;
            end loop;

        end if;

    end if;

    RETURN ret;
END T_GNC_LV_SIM_INPUTS_IsConstraintValid;



function T_Plot_Equal(val1, val2: in T_Plot)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := (val1.major_cycle = val2.major_cycle);

    if ret then
        ret := (val1.subcycle = val2.subcycle);

        if ret then
            ret := T_GNC_LV_SIM_CONTEXT_Equal(val1.gnc_inputs, val2.gnc_inputs);

            if ret then
                ret := T_GNC_LV_SIM_INPUTS_Equal(val1.gnc_outputs, val2.gnc_outputs);

            end if;
        end if;
    end if;
	return ret;

end T_Plot_Equal;

function T_Plot_Init return T_Plot
is
    val: T_Plot;
begin

    --set major_cycle 
    val.major_cycle := TASTE_BasicTypes.T_UInt32_Init;
    --set subcycle 
    val.subcycle := TASTE_BasicTypes.T_Int8_Init;
    --set gnc_inputs 
    val.gnc_inputs := T_GNC_LV_SIM_CONTEXT_Init;
    --set gnc_outputs 
    val.gnc_outputs := T_GNC_LV_SIM_INPUTS_Init;
    return val;
end T_Plot_Init;

FUNCTION T_Plot_IsConstraintValid(val : in T_Plot) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val.major_cycle <= 4294967295), ErrorCode => ERR_T_PLOT_MAJOR_CYCLE);
    if ret.Success then
        ret := adaasn1rtl.ASN1_RESULT'(Success => ((-128 <= val.subcycle) AND (val.subcycle <= 127)), ErrorCode => ERR_T_PLOT_SUBCYCLE);
        if ret.Success then
            i1 := val.gnc_inputs.attitude_quaternion.Data'First;
            while ret.Success and i1 <= 4 loop
                pragma Loop_Invariant (i1 >= val.gnc_inputs.attitude_quaternion.Data'First and i1 <= 4);
                ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_inputs.attitude_quaternion.Data(i1)) AND (val.gnc_inputs.attitude_quaternion.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_PLOT_GNC_INPUTS_ATTITUDE_QUATERNION_ELM);
                i1 := i1+1;
            end loop;

            if ret.Success then
                i1 := val.gnc_inputs.ng_vel_incr_irs.Data'First;
                while ret.Success and i1 <= 3 loop
                    pragma Loop_Invariant (i1 >= val.gnc_inputs.ng_vel_incr_irs.Data'First and i1 <= 3);
                    ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_inputs.ng_vel_incr_irs.Data(i1)) AND (val.gnc_inputs.ng_vel_incr_irs.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_PLOT_GNC_INPUTS_NG_VEL_INCR_IRS_ELM);
                    i1 := i1+1;
                end loop;

                if ret.Success then
                    i1 := val.gnc_inputs.ng_vel_incr_accelero.Data'First;
                    while ret.Success and i1 <= 3 loop
                        pragma Loop_Invariant (i1 >= val.gnc_inputs.ng_vel_incr_accelero.Data'First and i1 <= 3);
                        ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_inputs.ng_vel_incr_accelero.Data(i1)) AND (val.gnc_inputs.ng_vel_incr_accelero.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_PLOT_GNC_INPUTS_NG_VEL_INCR_ACCELERO_ELM);
                        i1 := i1+1;
                    end loop;

                    if ret.Success then
                        i1 := val.gnc_inputs.filtered_angles_sample_1.Data'First;
                        while ret.Success and i1 <= 3 loop
                            pragma Loop_Invariant (i1 >= val.gnc_inputs.filtered_angles_sample_1.Data'First and i1 <= 3);
                            ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_inputs.filtered_angles_sample_1.Data(i1)) AND (val.gnc_inputs.filtered_angles_sample_1.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_PLOT_GNC_INPUTS_FILTERED_ANGLES_SAMPLE_1_ELM);
                            i1 := i1+1;
                        end loop;

                        if ret.Success then
                            i1 := val.gnc_inputs.filtered_angles_sample_2.Data'First;
                            while ret.Success and i1 <= 3 loop
                                pragma Loop_Invariant (i1 >= val.gnc_inputs.filtered_angles_sample_2.Data'First and i1 <= 3);
                                ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_inputs.filtered_angles_sample_2.Data(i1)) AND (val.gnc_inputs.filtered_angles_sample_2.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_PLOT_GNC_INPUTS_FILTERED_ANGLES_SAMPLE_2_ELM);
                                i1 := i1+1;
                            end loop;

                        end if;

                    end if;

                end if;

            end if;

            if ret.Success then
                i1 := val.gnc_outputs.sequ_exec_request_vect.Data'First;
                while ret.Success and i1 <= 20 loop
                    pragma Loop_Invariant (i1 >= val.gnc_outputs.sequ_exec_request_vect.Data'First and i1 <= 20);
                    ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_outputs.sequ_exec_request_vect.Data(i1)) AND (val.gnc_outputs.sequ_exec_request_vect.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_PLOT_GNC_OUTPUTS_SEQU_EXEC_REQUEST_VECT_ELM);
                    i1 := i1+1;
                end loop;

                if ret.Success then
                    i1 := val.gnc_outputs.tvc_set_point_eng_vect.Data'First;
                    while ret.Success and i1 <= 8 loop
                        pragma Loop_Invariant (i1 >= val.gnc_outputs.tvc_set_point_eng_vect.Data'First and i1 <= 8);
                        ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_outputs.tvc_set_point_eng_vect.Data(i1)) AND (val.gnc_outputs.tvc_set_point_eng_vect.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_PLOT_GNC_OUTPUTS_TVC_SET_POINT_ENG_VECT_ELM);
                        i1 := i1+1;
                    end loop;

                    if ret.Success then
                        i1 := val.gnc_outputs.racs_ev_cmd_vect.Data'First;
                        while ret.Success and i1 <= 6 loop
                            pragma Loop_Invariant (i1 >= val.gnc_outputs.racs_ev_cmd_vect.Data'First and i1 <= 6);
                            ret := adaasn1rtl.ASN1_RESULT'(Success => ((-1.00000000000000000000E+308 <= val.gnc_outputs.racs_ev_cmd_vect.Data(i1)) AND (val.gnc_outputs.racs_ev_cmd_vect.Data(i1) <= 1.00000000000000000000E+308)), ErrorCode => ERR_T_PLOT_GNC_OUTPUTS_RACS_EV_CMD_VECT_ELM);
                            i1 := i1+1;
                        end loop;

                    end if;

                end if;

            end if;

        end if;

    end if;

    RETURN ret;
END T_Plot_IsConstraintValid;


 

END VEGA;