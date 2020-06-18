-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;


PACKAGE BODY My_Project with SPARK_Mode IS




function TYPE_ID_Equal(val1, val2: in TYPE_ID)
    return Boolean 
is
begin
	return val1 = val2;

end TYPE_ID_Equal;

function TYPE_ID_Init return TYPE_ID
is
    val: TYPE_ID;
begin
    val := 0;
    return val;
end TYPE_ID_Init;

FUNCTION TYPE_ID_IsConstraintValid(val : in TYPE_ID) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 255), ErrorCode => ERR_TYPE_ID);
    RETURN ret;
END TYPE_ID_IsConstraintValid;



function SEQ_COUNT_OR_NAME_Equal(val1, val2: in SEQ_COUNT_OR_NAME)
    return Boolean 
is
begin
	return val1 = val2;

end SEQ_COUNT_OR_NAME_Equal;

function SEQ_COUNT_OR_NAME_Init return SEQ_COUNT_OR_NAME
is
    val: SEQ_COUNT_OR_NAME;
begin
    val := 0;
    return val;
end SEQ_COUNT_OR_NAME_Init;

FUNCTION SEQ_COUNT_OR_NAME_IsConstraintValid(val : in SEQ_COUNT_OR_NAME) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 16383), ErrorCode => ERR_SEQ_COUNT_OR_NAME);
    RETURN ret;
END SEQ_COUNT_OR_NAME_IsConstraintValid;



function APID_Equal(val1, val2: in APID)
    return Boolean 
is
begin
	return val1 = val2;

end APID_Equal;

function APID_Init return APID
is
    val: APID;
begin
    val := ground;
    return val;
end APID_Init;

FUNCTION APID_IsConstraintValid(val : in APID) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (((val = ground)) OR ((val = flight))), ErrorCode => ERR_APID);
    RETURN ret;
END APID_IsConstraintValid;



function CPDU_OUTPUT_ID_Equal(val1, val2: in CPDU_OUTPUT_ID)
    return Boolean 
is
begin
	return val1 = val2;

end CPDU_OUTPUT_ID_Equal;

function CPDU_OUTPUT_ID_Init return CPDU_OUTPUT_ID
is
    val: CPDU_OUTPUT_ID;
begin
    val := 0;
    return val;
end CPDU_OUTPUT_ID_Init;

FUNCTION CPDU_OUTPUT_ID_IsConstraintValid(val : in CPDU_OUTPUT_ID) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 4095), ErrorCode => ERR_CPDU_OUTPUT_ID);
    RETURN ret;
END CPDU_OUTPUT_ID_IsConstraintValid;



function PULSE_INST_duration_value_Equal(val1, val2: in PULSE_INST_duration_value)
    return Boolean 
is
begin
	return val1 = val2;

end PULSE_INST_duration_value_Equal;

function PULSE_INST_Equal(val1, val2: in PULSE_INST)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := (val1.output_line_id = val2.output_line_id);

    if ret then
        ret := PULSE_INST_duration_value_Equal(val1.duration_value, val2.duration_value);

    end if;
	return ret;

end PULSE_INST_Equal;

function PULSE_INST_duration_value_Init return PULSE_INST_duration_value
is
    val: PULSE_INST_duration_value;
begin
    val := 0;
    return val;
end PULSE_INST_duration_value_Init;
function PULSE_INST_Init return PULSE_INST
is
    val: PULSE_INST;
begin

    --set output_line_id 
    val.output_line_id := CPDU_OUTPUT_ID_Init;
    --set duration_value 
    val.duration_value := PULSE_INST_duration_value_Init;
    return val;
end PULSE_INST_Init;

FUNCTION PULSE_INST_IsConstraintValid(val : in PULSE_INST) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val.output_line_id <= 4095), ErrorCode => ERR_PULSE_INST_OUTPUT_LINE_ID);
    if ret.Success then
        ret := adaasn1rtl.ASN1_RESULT'(Success => (val.duration_value <= 7), ErrorCode => ERR_PULSE_INST_DURATION_VALUE);
    end if;

    RETURN ret;
END PULSE_INST_IsConstraintValid;



function Seq_Pulse_Inst_Equal(val1, val2: in Seq_Pulse_Inst)
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
        ret := PULSE_INST_Equal(val1.Data(i1), val2.Data(i1));
        i1 := i1+1;
    end loop;

	return ret;

end Seq_Pulse_Inst_Equal;

function Seq_Pulse_Inst_Init return Seq_Pulse_Inst
is
    val: Seq_Pulse_Inst;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 12 loop
        pragma Loop_Invariant (i1 >=1 and i1<=12);
        val.Data(i1) := PULSE_INST_Init;
        i1 := i1 + 1;
    end loop;
    val.Length := 1;
    return val;
end Seq_Pulse_Inst_Init;

FUNCTION Seq_Pulse_Inst_IsConstraintValid(val : in Seq_Pulse_Inst) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.Length) AND (val.Length <= 12)), ErrorCode => ERR_SEQ_PULSE_INST);
    i1 := val.Data'First;
    while ret.Success and i1 <= val.Length loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= val.Length);
        ret := adaasn1rtl.ASN1_RESULT'(Success => (val.Data(i1).output_line_id <= 4095), ErrorCode => ERR_SEQ_PULSE_INST_ELM_OUTPUT_LINE_ID);
        if ret.Success then
            ret := adaasn1rtl.ASN1_RESULT'(Success => (val.Data(i1).duration_value <= 7), ErrorCode => ERR_SEQ_PULSE_INST_ELM_DURATION_VALUE);
        end if;

        i1 := i1+1;
    end loop;

    RETURN ret;
END Seq_Pulse_Inst_IsConstraintValid;



function CPDU_Identifiers_Equal(val1, val2: in CPDU_Identifiers)
    return Boolean 
is
begin
	return val1 = val2;

end CPDU_Identifiers_Equal;

function CPDU_Identifiers_Init return CPDU_Identifiers
is
    val: CPDU_Identifiers;
begin
    val := cpdu_id_1;
    return val;
end CPDU_Identifiers_Init;

FUNCTION CPDU_Identifiers_IsConstraintValid(val : in CPDU_Identifiers) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (((val = cpdu_id_1)) OR ((val = cpdu_id_2))), ErrorCode => ERR_CPDU_IDENTIFIERS);
    RETURN ret;
END CPDU_Identifiers_IsConstraintValid;



function CPDU_Cmd_Equal(val1, val2: in CPDU_Cmd)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := val1.Exist.cpdu_id = val2.Exist.cpdu_id;
    if ret and then val1.Exist.cpdu_id = 1 then
        ret := (val1.cpdu_id = val2.cpdu_id);
    end if;

    if ret then
        ret := Seq_Pulse_Inst_Equal(val1.cmd_pulse_instr, val2.cmd_pulse_instr);

    end if;
	return ret;

end CPDU_Cmd_Equal;

function CPDU_Cmd_Init return CPDU_Cmd
is
    val: CPDU_Cmd;
begin

    --set cpdu_id 
    val.exist.cpdu_id := 1;
    val.cpdu_id := CPDU_Identifiers_Init;
    --set cmd_pulse_instr 
    val.cmd_pulse_instr := Seq_Pulse_Inst_Init;
    return val;
end CPDU_Cmd_Init;

FUNCTION CPDU_Cmd_IsConstraintValid(val : in CPDU_Cmd) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
BEGIN
    ret:= adaasn1rtl.ASN1_RESULT'(Success => val.Exist.cpdu_id=1, ErrorCode => ERR_CPDU_CMD_CPDU_ID_IS_ABSENT);
    if val.Exist.cpdu_id = 1 then
        ret := adaasn1rtl.ASN1_RESULT'(Success => (((val.cpdu_id = cpdu_id_1)) OR ((val.cpdu_id = cpdu_id_2))), ErrorCode => ERR_CPDU_CMD_CPDU_ID);
    end if;
    if ret.Success then
        ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.cmd_pulse_instr.Length) AND (val.cmd_pulse_instr.Length <= 12)), ErrorCode => ERR_CPDU_CMD_CMD_PULSE_INSTR);
        i1 := val.cmd_pulse_instr.Data'First;
        while ret.Success and i1 <= val.cmd_pulse_instr.Length loop
            pragma Loop_Invariant (i1 >= val.cmd_pulse_instr.Data'First and i1 <= val.cmd_pulse_instr.Length);
            ret := adaasn1rtl.ASN1_RESULT'(Success => (val.cmd_pulse_instr.Data(i1).output_line_id <= 4095), ErrorCode => ERR_CPDU_CMD_CMD_PULSE_INSTR_ELM_OUTPUT_LINE_ID);
            if ret.Success then
                ret := adaasn1rtl.ASN1_RESULT'(Success => (val.cmd_pulse_instr.Data(i1).duration_value <= 7), ErrorCode => ERR_CPDU_CMD_CMD_PULSE_INSTR_ELM_DURATION_VALUE);
            end if;

            i1 := i1+1;
        end loop;

    end if;

    RETURN ret;
END CPDU_Cmd_IsConstraintValid;



function TC_2_4_Equal(val1, val2: in TC_2_4)
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
        ret := CPDU_Cmd_Equal(val1.Data(i1), val2.Data(i1));
        i1 := i1+1;
    end loop;

	return ret;

end TC_2_4_Equal;

function TC_2_4_Init return TC_2_4
is
    val: TC_2_4;
    i1:Integer;
begin
    i1 := 1;
    while i1<= 2 loop
        pragma Loop_Invariant (i1 >=1 and i1<=2);
        val.Data(i1) := CPDU_Cmd_Init;
        i1 := i1 + 1;
    end loop;
    val.Length := 1;
    return val;
end TC_2_4_Init;

FUNCTION TC_2_4_IsConstraintValid(val : in TC_2_4) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
    i2:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.Length) AND (val.Length <= 2)), ErrorCode => ERR_TC_2_4);
    i1 := val.Data'First;
    while ret.Success and i1 <= val.Length loop
        pragma Loop_Invariant (i1 >= val.Data'First and i1 <= val.Length);
        ret:= adaasn1rtl.ASN1_RESULT'(Success => val.Data(i1).Exist.cpdu_id=1, ErrorCode => ERR_TC_2_4_ELM_CPDU_ID_IS_ABSENT);
        if val.Data(i1).Exist.cpdu_id = 1 then
            ret := adaasn1rtl.ASN1_RESULT'(Success => (((val.Data(i1).cpdu_id = cpdu_id_1)) OR ((val.Data(i1).cpdu_id = cpdu_id_2))), ErrorCode => ERR_TC_2_4_ELM_CPDU_ID);
        end if;
        if ret.Success then
            ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.Data(i1).cmd_pulse_instr.Length) AND (val.Data(i1).cmd_pulse_instr.Length <= 12)), ErrorCode => ERR_TC_2_4_ELM_CMD_PULSE_INSTR);
            i2 := val.Data(i1).cmd_pulse_instr.Data'First;
            while ret.Success and i2 <= val.Data(i1).cmd_pulse_instr.Length loop
                pragma Loop_Invariant (i2 >= val.Data(i1).cmd_pulse_instr.Data'First and i2 <= val.Data(i1).cmd_pulse_instr.Length);
                ret := adaasn1rtl.ASN1_RESULT'(Success => (val.Data(i1).cmd_pulse_instr.Data(i2).output_line_id <= 4095), ErrorCode => ERR_TC_2_4_ELM_CMD_PULSE_INSTR_ELM_OUTPUT_LINE_ID);
                if ret.Success then
                    ret := adaasn1rtl.ASN1_RESULT'(Success => (val.Data(i1).cmd_pulse_instr.Data(i2).duration_value <= 7), ErrorCode => ERR_TC_2_4_ELM_CMD_PULSE_INSTR_ELM_DURATION_VALUE);
                end if;

                i2 := i2+1;
            end loop;

        end if;

        i1 := i1+1;
    end loop;

    RETURN ret;
END TC_2_4_IsConstraintValid;



function TCs_Equal(val1, val2: in TCs)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := val1.kind = val2.kind;
    if ret then
        case val1.kind is
            when tc2_4_PRESENT =>
                ret := TC_2_4_Equal(val1.tc2_4, val2.tc2_4);
        end case;
    end if;
	return ret;

end TCs_Equal;

function TCs_Init return TCs
is
    val: TCs;
begin
    --set tc2_4 
    declare
        tc2_4_tmp:TC_2_4;
    begin
        tc2_4_tmp := TC_2_4_Init;
        val := TCs'(kind => tc2_4_PRESENT, tc2_4 => tc2_4_tmp);
    end;
    return val;
end TCs_Init;

FUNCTION TCs_IsConstraintValid(val : in TCs) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
    i2:Integer;
BEGIN
    case val.kind is
        WHEN tc2_4_PRESENT =>
            ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.tc2_4.Length) AND (val.tc2_4.Length <= 2)), ErrorCode => ERR_TCS_TC2_4);
            i1 := val.tc2_4.Data'First;
            while ret.Success and i1 <= val.tc2_4.Length loop
                pragma Loop_Invariant (i1 >= val.tc2_4.Data'First and i1 <= val.tc2_4.Length);
                ret:= adaasn1rtl.ASN1_RESULT'(Success => val.tc2_4.Data(i1).Exist.cpdu_id=1, ErrorCode => ERR_TCS_TC2_4_ELM_CPDU_ID_IS_ABSENT);
                if val.tc2_4.Data(i1).Exist.cpdu_id = 1 then
                    ret := adaasn1rtl.ASN1_RESULT'(Success => (((val.tc2_4.Data(i1).cpdu_id = cpdu_id_1)) OR ((val.tc2_4.Data(i1).cpdu_id = cpdu_id_2))), ErrorCode => ERR_TCS_TC2_4_ELM_CPDU_ID);
                end if;
                if ret.Success then
                    ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.tc2_4.Data(i1).cmd_pulse_instr.Length) AND (val.tc2_4.Data(i1).cmd_pulse_instr.Length <= 12)), ErrorCode => ERR_TCS_TC2_4_ELM_CMD_PULSE_INSTR);
                    i2 := val.tc2_4.Data(i1).cmd_pulse_instr.Data'First;
                    while ret.Success and i2 <= val.tc2_4.Data(i1).cmd_pulse_instr.Length loop
                        pragma Loop_Invariant (i2 >= val.tc2_4.Data(i1).cmd_pulse_instr.Data'First and i2 <= val.tc2_4.Data(i1).cmd_pulse_instr.Length);
                        ret := adaasn1rtl.ASN1_RESULT'(Success => (val.tc2_4.Data(i1).cmd_pulse_instr.Data(i2).output_line_id <= 4095), ErrorCode => ERR_TCS_TC2_4_ELM_CMD_PULSE_INSTR_ELM_OUTPUT_LINE_ID);
                        if ret.Success then
                            ret := adaasn1rtl.ASN1_RESULT'(Success => (val.tc2_4.Data(i1).cmd_pulse_instr.Data(i2).duration_value <= 7), ErrorCode => ERR_TCS_TC2_4_ELM_CMD_PULSE_INSTR_ELM_DURATION_VALUE);
                        end if;

                        i2 := i2+1;
                    end loop;

                end if;

                i1 := i1+1;
            end loop;

    end case;
    RETURN ret;
END TCs_IsConstraintValid;



function Telecommand_secondary_header_Equal(val1, val2: in Telecommand_secondary_header)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := (val1.ack_successful_completion = val2.ack_successful_completion);

    if ret then
        ret := (val1.ack_successful_progress = val2.ack_successful_progress);

        if ret then
            ret := (val1.ack_successful_start = val2.ack_successful_start);

            if ret then
                ret := (val1.ack_successful_acceptance = val2.ack_successful_acceptance);

                if ret then
                    ret := (val1.source_id = val2.source_id);

                end if;
            end if;
        end if;
    end if;
	return ret;

end Telecommand_secondary_header_Equal;

function Telecommand_Equal(val1, val2: in Telecommand)
    return Boolean 
is
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : Boolean := TRUE;
    pragma Warnings (On, "initialization of ret has no effect");        

begin
    ret := (val1.dest_apid = val2.dest_apid);

    if ret then
        ret := (val1.packet_seq_count = val2.packet_seq_count);

        if ret then
            ret := Telecommand_secondary_header_Equal(val1.secondary_header, val2.secondary_header);

            if ret then
                ret := TCs_Equal(val1.packet_data, val2.packet_data);

            end if;
        end if;
    end if;
	return ret;

end Telecommand_Equal;

function Telecommand_secondary_header_Init return Telecommand_secondary_header
is
    val: Telecommand_secondary_header;
begin

    --set ack_successful_completion 
    val.ack_successful_completion := FALSE;
    --set ack_successful_progress 
    val.ack_successful_progress := FALSE;
    --set ack_successful_start 
    val.ack_successful_start := FALSE;
    --set ack_successful_acceptance 
    val.ack_successful_acceptance := FALSE;
    --set source_id 
    val.source_id := APID_Init;
    return val;
end Telecommand_secondary_header_Init;
function Telecommand_Init return Telecommand
is
    val: Telecommand;
begin

    --set dest_apid 
    val.dest_apid := APID_Init;
    --set packet_seq_count 
    val.packet_seq_count := SEQ_COUNT_OR_NAME_Init;
    --set secondary_header 
    val.secondary_header := Telecommand_secondary_header_Init;
    --set packet_data 
    val.packet_data := TCs_Init;
    return val;
end Telecommand_Init;

FUNCTION Telecommand_IsConstraintValid(val : in Telecommand) return adaasn1rtl.ASN1_RESULT
IS
    pragma Warnings (Off, "initialization of ret has no effect");        
    ret : adaasn1rtl.ASN1_RESULT := adaasn1rtl.ASN1_RESULT'(Success => true, ErrorCode => 0);
    pragma Warnings (On, "initialization of ret has no effect");        
    i1:Integer;
    i2:Integer;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (((val.dest_apid = ground)) OR ((val.dest_apid = flight))), ErrorCode => ERR_TELECOMMAND_DEST_APID);
    if ret.Success then
        ret := adaasn1rtl.ASN1_RESULT'(Success => (val.packet_seq_count <= 16383), ErrorCode => ERR_TELECOMMAND_PACKET_SEQ_COUNT);
        if ret.Success then
            ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_TELECOMMAND_SECONDARY_HEADER_ACK_SUCCESSFUL_COMPLETION);
            if ret.Success then
                ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_TELECOMMAND_SECONDARY_HEADER_ACK_SUCCESSFUL_PROGRESS);
                if ret.Success then
                    ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_TELECOMMAND_SECONDARY_HEADER_ACK_SUCCESSFUL_START);
                    if ret.Success then
                        ret := adaasn1rtl.ASN1_RESULT'(Success => TRUE, ErrorCode => ERR_TELECOMMAND_SECONDARY_HEADER_ACK_SUCCESSFUL_ACCEPTANCE);
                        if ret.Success then
                            ret := adaasn1rtl.ASN1_RESULT'(Success => (((val.secondary_header.source_id = ground)) OR ((val.secondary_header.source_id = flight))), ErrorCode => ERR_TELECOMMAND_SECONDARY_HEADER_SOURCE_ID);
                        end if;

                    end if;

                end if;

            end if;

            if ret.Success then
                case val.packet_data.kind is
                    WHEN tc2_4_PRESENT =>
                        ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.packet_data.tc2_4.Length) AND (val.packet_data.tc2_4.Length <= 2)), ErrorCode => ERR_TELECOMMAND_PACKET_DATA_TC2_4);
                        i1 := val.packet_data.tc2_4.Data'First;
                        while ret.Success and i1 <= val.packet_data.tc2_4.Length loop
                            pragma Loop_Invariant (i1 >= val.packet_data.tc2_4.Data'First and i1 <= val.packet_data.tc2_4.Length);
                            ret:= adaasn1rtl.ASN1_RESULT'(Success => val.packet_data.tc2_4.Data(i1).Exist.cpdu_id=1, ErrorCode => ERR_TELECOMMAND_PACKET_DATA_TC2_4_ELM_CPDU_ID_IS_ABSENT);
                            if val.packet_data.tc2_4.Data(i1).Exist.cpdu_id = 1 then
                                ret := adaasn1rtl.ASN1_RESULT'(Success => (((val.packet_data.tc2_4.Data(i1).cpdu_id = cpdu_id_1)) OR ((val.packet_data.tc2_4.Data(i1).cpdu_id = cpdu_id_2))), ErrorCode => ERR_TELECOMMAND_PACKET_DATA_TC2_4_ELM_CPDU_ID);
                            end if;
                            if ret.Success then
                                ret := adaasn1rtl.ASN1_RESULT'(Success => ((1 <= val.packet_data.tc2_4.Data(i1).cmd_pulse_instr.Length) AND (val.packet_data.tc2_4.Data(i1).cmd_pulse_instr.Length <= 12)), ErrorCode => ERR_TELECOMMAND_PACKET_DATA_TC2_4_ELM_CMD_PULSE_INSTR);
                                i2 := val.packet_data.tc2_4.Data(i1).cmd_pulse_instr.Data'First;
                                while ret.Success and i2 <= val.packet_data.tc2_4.Data(i1).cmd_pulse_instr.Length loop
                                    pragma Loop_Invariant (i2 >= val.packet_data.tc2_4.Data(i1).cmd_pulse_instr.Data'First and i2 <= val.packet_data.tc2_4.Data(i1).cmd_pulse_instr.Length);
                                    ret := adaasn1rtl.ASN1_RESULT'(Success => (val.packet_data.tc2_4.Data(i1).cmd_pulse_instr.Data(i2).output_line_id <= 4095), ErrorCode => ERR_TELECOMMAND_PACKET_DATA_TC2_4_ELM_CMD_PULSE_INSTR_ELM_OUTPUT_LINE_ID);
                                    if ret.Success then
                                        ret := adaasn1rtl.ASN1_RESULT'(Success => (val.packet_data.tc2_4.Data(i1).cmd_pulse_instr.Data(i2).duration_value <= 7), ErrorCode => ERR_TELECOMMAND_PACKET_DATA_TC2_4_ELM_CMD_PULSE_INSTR_ELM_DURATION_VALUE);
                                    end if;

                                    i2 := i2+1;
                                end loop;

                            end if;

                            i1 := i1+1;
                        end loop;

                end case;
            end if;

        end if;

    end if;

    RETURN ret;
END Telecommand_IsConstraintValid;



function CPDU_Index_Equal(val1, val2: in CPDU_Index)
    return Boolean 
is
begin
	return val1 = val2;

end CPDU_Index_Equal;

function CPDU_Index_Init return CPDU_Index
is
    val: CPDU_Index;
begin
    val := 0;
    return val;
end CPDU_Index_Init;

FUNCTION CPDU_Index_IsConstraintValid(val : in CPDU_Index) return adaasn1rtl.ASN1_RESULT
IS
    ret : adaasn1rtl.ASN1_RESULT;
BEGIN
    ret := adaasn1rtl.ASN1_RESULT'(Success => (val <= 1), ErrorCode => ERR_CPDU_INDEX);
    RETURN ret;
END CPDU_Index_IsConstraintValid;


 

END My_Project;