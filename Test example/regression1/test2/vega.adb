-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY VEGA with SPARK_Mode IS




function T_QUAT_COMPONENTS_Equal(val1, val2: in T_QUAT_COMPONENTS)
    return Boolean 
is
begin
	return val1 = val2;

end T_QUAT_COMPONENTS_Equal;

function T_QUAT_COMPONENTS_Init return T_QUAT_COMPONENTS
is
    val: T_QUAT_COMPONENTS;
begin
    val := 0;
    return val;
end T_QUAT_COMPONENTS_Init;

FUNCTION T_QUAT_COMPONENTS_IsConstraintValid(val : in T_QUAT_COMPONENTS) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 3), ErrorCode => ERR_T_QUAT_COMPONENTS);
    RETURN ret;
END T_QUAT_COMPONENTS_IsConstraintValid;



function T_RANGE_3_Equal(val1, val2: in T_RANGE_3)
    return Boolean 
is
begin
	return val1 = val2;

end T_RANGE_3_Equal;

function T_RANGE_3_Init return T_RANGE_3
is
    val: T_RANGE_3;
begin
    val := 0;
    return val;
end T_RANGE_3_Init;

FUNCTION T_RANGE_3_IsConstraintValid(val : in T_RANGE_3) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 2), ErrorCode => ERR_T_RANGE_3);
    RETURN ret;
END T_RANGE_3_IsConstraintValid;



function T_AXIS_3_ID_Equal(val1, val2: in T_AXIS_3_ID)
    return Boolean 
is
begin
	return val1 = val2;

end T_AXIS_3_ID_Equal;

function T_AXIS_3_ID_Init return T_AXIS_3_ID
is
    val: T_AXIS_3_ID;
begin
    val := T_RANGE_3_Init;
    return val;
end T_AXIS_3_ID_Init;

FUNCTION T_AXIS_3_ID_IsConstraintValid(val : in T_AXIS_3_ID) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 2), ErrorCode => ERR_T_AXIS_3_ID);
    RETURN ret;
END T_AXIS_3_ID_IsConstraintValid;



function T_SEQUENCE_ID_Equal(val1, val2: in T_SEQUENCE_ID)
    return Boolean 
is
begin
	return val1 = val2;

end T_SEQUENCE_ID_Equal;

function T_SEQUENCE_ID_Init return T_SEQUENCE_ID
is
    val: T_SEQUENCE_ID;
begin
    val := sequence_id_none;
    return val;
end T_SEQUENCE_ID_Init;

FUNCTION T_SEQUENCE_ID_IsConstraintValid(val : in T_SEQUENCE_ID) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((val = sequence_id_none)) OR ((val = command_irs_in_flight_mode)))) OR ((val = select_uctm_telemetry_format_2)))) OR ((val = inhibit_bus_repeater_egse_line)))) OR ((val = ignite_p80_motor)))) OR ((val = select_uctm_telemetry_format_3)))) OR ((val = select_uctm_telemetry_format_4)))) OR ((val = open_mea_valves)))) OR ((val = close_mea_valves)))) OR ((val = select_uctm_telemetry_format_5)))) OR ((val = open_sas_dry_loops)))) OR ((val = select_uctm_telemetry_format_6)))) OR ((val = select_uctm_telemetry_format_7)))) OR ((val = passivate_lps_1_2)))) OR ((val = pressurize_lps_1_2)))) OR ((val = pressurize_lps_4_6)))) OR ((val = pressurize_lps_3_5)))) OR ((val = pressurize_lps_hppy)))) OR ((val = passivate_lps_3)))) OR ((val = passivate_lps_4)))) OR ((val = passivate_racs)))) OR ((val = initiate_racs_system_priming)))) OR ((val = set_racs_to_full_operational_mode)))) OR ((val = open_lps_evacuation_valves)))) OR ((val = close_lps_evacuation_valves)))) OR ((val = separate_multipayload_adapter)))) OR ((val = select_uctm_telemetry_format_8)))) OR ((val = select_uctm_telemetry_format_9)))) OR ((val = select_uctm_telemetry_format_10)))) OR ((val = select_uctm_telemetry_format_11)))) OR ((val = select_uctm_telemetry_format_12)))) OR ((val = select_uctm_telemetry_format_13)))) OR ((val = select_uctm_telemetry_format_14)))) OR ((val = select_uctm_telemetry_format_15)))) OR ((val = separate_func_mc)))) OR ((val = separate_func_1)))) OR ((val = separate_func_2)))) OR ((val = separate_func_3)))) OR ((val = inhibit_bus_repeater_pl_line)))) OR ((val = activate_electrical_order_1)))) OR ((val = activate_electrical_order_2)))) OR ((val = activate_electrical_order_3)))) OR ((val = activate_electrical_order_4)))) OR ((val = activate_electrical_order_5)))) OR ((val = deactivate_electrical_order_1)))) OR ((val = deactivate_electrical_order_2)))) OR ((val = deactivate_electrical_order_3)))) OR ((val = deactivate_electrical_order_4)))) OR ((val = deactivate_electrical_order_5)))) OR ((val = close_pl_dry_loop_1)))) OR ((val = close_pl_dry_loop_2)))) OR ((val = close_pl_dry_loop_3)))) OR ((val = close_pl_dry_loop_4)))) OR ((val = close_pl_dry_loop_5)))) OR ((val = close_pl_dry_loop_6)))) OR ((val = close_pl_dry_loop_7)))) OR ((val = close_pl_dry_loop_8)))) OR ((val = open_pl_dry_loop_1)))) OR ((val = open_pl_dry_loop_2)))) OR ((val = open_pl_dry_loop_3)))) OR ((val = open_pl_dry_loop_4)))) OR ((val = open_pl_dry_loop_5)))) OR ((val = open_pl_dry_loop_6)))) OR ((val = open_pl_dry_loop_7)))) OR ((val = open_pl_dry_loop_8)))) OR ((val = reactivate_payload_supply_breaker)))) OR ((val = rearm_eo_breaker)))) OR ((val = close_spare_dry_loop_14)))) OR ((val = close_spare_dry_loop_15)))) OR ((val = close_spare_dry_loop_16)))) OR ((val = open_spare_dry_loop_14)))) OR ((val = open_spare_dry_loop_15)))) OR ((val = open_spare_dry_loop_16)))) OR ((val = open_spare_dry_loop_17)))) OR ((val = close_spare_dry_loop_17)))) OR ((val = open_spare_dry_loop_18)))) OR ((val = close_spare_dry_loop_18)))) OR ((val = p80_separation)))) OR ((val = z23_ignition)))) OR ((val = z23_separation)))) OR ((val = z9_ignition)))) OR ((val = z9_separation)))) OR ((val = fairing_separation)))) OR ((val = sequence_unused_83)))) OR ((val = sequence_unused_84)))) OR ((val = sequence_unused_85)))) OR ((val = sequence_unused_86)))) OR ((val = sequence_unused_87)))) OR ((val = sequence_unused_88)))) OR ((val = sequence_unused_89)))) OR ((val = sequence_unused_90)))) OR ((val = sequence_unused_91)))) OR ((val = sequence_unused_92)))) OR ((val = sequence_unused_93)))) OR ((val = sequence_unused_94)))) OR ((val = sequence_unused_95)))) OR ((val = sequence_unused_96)))) OR ((val = sequence_unused_97)))) OR ((val = sequence_unused_98)))) OR ((val = sequence_unused_99)))) OR ((val = sequence_unused_100))), ErrorCode => ERR_T_SEQUENCE_ID);
    RETURN ret;
END T_SEQUENCE_ID_IsConstraintValid;



function T_TVC_SET_POINT_ENG_VECT_IDX_Equal(val1, val2: in T_TVC_SET_POINT_ENG_VECT_IDX)
    return Boolean 
is
begin
	return val1 = val2;

end T_TVC_SET_POINT_ENG_VECT_IDX_Equal;

function T_TVC_SET_POINT_ENG_VECT_IDX_Init return T_TVC_SET_POINT_ENG_VECT_IDX
is
    val: T_TVC_SET_POINT_ENG_VECT_IDX;
begin
    val := p80_x;
    return val;
end T_TVC_SET_POINT_ENG_VECT_IDX_Init;

FUNCTION T_TVC_SET_POINT_ENG_VECT_IDX_IsConstraintValid(val : in T_TVC_SET_POINT_ENG_VECT_IDX) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (((((((((((((((val = p80_x)) OR ((val = p80_y)))) OR ((val = z23_x)))) OR ((val = z23_y)))) OR ((val = z09_x)))) OR ((val = z09_y)))) OR ((val = avum_x)))) OR ((val = avum_y))), ErrorCode => ERR_T_TVC_SET_POINT_ENG_VECT_IDX);
    RETURN ret;
END T_TVC_SET_POINT_ENG_VECT_IDX_IsConstraintValid;



function T_ACS_EQPT_ID_Equal(val1, val2: in T_ACS_EQPT_ID)
    return Boolean 
is
begin
	return val1 = val2;

end T_ACS_EQPT_ID_Equal;

function T_ACS_EQPT_ID_Init return T_ACS_EQPT_ID
is
    val: T_ACS_EQPT_ID;
begin
    val := acs_eqpt_1;
    return val;
end T_ACS_EQPT_ID_Init;

FUNCTION T_ACS_EQPT_ID_IsConstraintValid(val : in T_ACS_EQPT_ID) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (((((((((((val = acs_eqpt_1)) OR ((val = acs_eqpt_2)))) OR ((val = acs_eqpt_3)))) OR ((val = acs_eqpt_4)))) OR ((val = acs_eqpt_5)))) OR ((val = acs_eqpt_6))), ErrorCode => ERR_T_ACS_EQPT_ID);
    RETURN ret;
END T_ACS_EQPT_ID_IsConstraintValid;



function T_INTR_Equal(val1, val2: in T_INTR)
    return Boolean 
is
begin
	return val1 = val2;

end T_INTR_Equal;

function T_INTR_Init return T_INTR
is
    val: T_INTR;
begin
    val := hwe;
    return val;
end T_INTR_Init;

FUNCTION T_INTR_IsConstraintValid(val : in T_INTR) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((val = hwe)) OR ((val = asg_al3)))) OR ((val = asg_al1)))) OR ((val = ic_obtpulse4)))) OR ((val = ic_rtc)))) OR ((val = ic_utca)))) OR ((val = m5_recerr)))) OR ((val = m5_lberr)))) OR ((val = m5_dnc)))) OR ((val = m5_slend)))) OR ((val = m5_slimed)))) OR ((val = m5_slloop)))) OR ((val = m5_slchok)))) OR ((val = m5_rtrec)))) OR ((val = m5_rttrn)))) OR ((val = m5_rtbct)))) OR ((val = m5_rtmode)))) OR ((val = m5_rtsync)))) OR ((val = m5_rtrst)))) OR ((val = obt_1hz)))) OR ((val = obt_syncsw)))) OR ((val = obt_sample1)))) OR ((val = pim_et)))) OR ((val = wd_wde)))) OR ((val = obt_pulse1)))) OR ((val = uart_a)))) OR ((val = uart_b)))) OR ((val = memerr)))) OR ((val = uart_err)))) OR ((val = dma_err)))) OR ((val = dma_tmo)))) OR ((val = obt_pulse2)))) OR ((val = obt_pulse3)))) OR ((val = gpt)))) OR ((val = rtc)))) OR ((val = obt_pulse4)))) OR ((val = wdtmo))), ErrorCode => ERR_T_INTR);
    RETURN ret;
END T_INTR_IsConstraintValid;



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



function T_Plot_major_cycle_Equal(val1, val2: in T_Plot_major_cycle)
    return Boolean 
is
begin
	return val1 = val2;

end T_Plot_major_cycle_Equal;

function T_Plot_subcycle_Equal(val1, val2: in T_Plot_subcycle)
    return Boolean 
is
begin
	return val1 = val2;

end T_Plot_subcycle_Equal;

function T_Plot_Equal(val1, val2: in T_Plot)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := T_Plot_major_cycle_Equal(val1.major_cycle, val2.major_cycle);

    if ret then
        ret := T_Plot_subcycle_Equal(val1.subcycle, val2.subcycle);

        if ret then
            ret := T_GNC_LV_SIM_CONTEXT_Equal(val1.gnc_inputs, val2.gnc_inputs);

            if ret then
                ret := T_GNC_LV_SIM_INPUTS_Equal(val1.gnc_outputs, val2.gnc_outputs);

            end if;
        end if;
    end if;
	return ret;

end T_Plot_Equal;

function T_Plot_major_cycle_Init return T_Plot_major_cycle
is
    val: T_Plot_major_cycle;
begin
    val := 0;
    return val;
end T_Plot_major_cycle_Init;
function T_Plot_subcycle_Init return T_Plot_subcycle
is
    val: T_Plot_subcycle;
begin
    val := 0;
    return val;
end T_Plot_subcycle_Init;
function T_Plot_Init return T_Plot
is
    val: T_Plot;
begin

    --set major_cycle 
    val.major_cycle := T_Plot_major_cycle_Init;
    --set subcycle 
    val.subcycle := T_Plot_subcycle_Init;
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
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val.major_cycle <= 9999999999), ErrorCode => ERR_T_PLOT_MAJOR_CYCLE);
    if ret.Success then
        ret := adaasn1rtl.ASN1_RESULT'(Success => (val.subcycle <= 7), ErrorCode => ERR_T_PLOT_SUBCYCLE);
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