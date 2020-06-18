-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
USE adaasn1rtl;
use type adaasn1rtl.OctetBuffer;
use type adaasn1rtl.BitArray;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;
WITH Demo; use Demo;
WITH CcsdsSoisSubnetwork; use CcsdsSoisSubnetwork;
--# inherit Demo,CcsdsSoisSubnetwork;


PACKAGE DemoInterfaces with SPARK_Mode
IS


-- DeviceAccessInterfaceUpType --------------------------------------------
-- DeviceAccessInterfaceUpType_updateParameter --------------------------------------------

SUBTYPE DeviceAccessInterfaceUpType_updateParameter_index_range is integer range 0..6;

TYPE DeviceAccessInterfaceUpType_updateParameter_selection IS (deviceEvent_PRESENT, updateParameter_extendedMode_PRESENT, updateParameter_extendedStatus_PRESENT, updateParameter_queryCount_PRESENT, updateParameter_status_PRESENT, telemetrySet1_PRESENT, telemetrySet2_PRESENT);
for DeviceAccessInterfaceUpType_updateParameter_selection use
    (deviceEvent_PRESENT => 1, updateParameter_extendedMode_PRESENT => 2, updateParameter_extendedStatus_PRESENT => 3, updateParameter_queryCount_PRESENT => 4, updateParameter_status_PRESENT => 5, telemetrySet1_PRESENT => 6, telemetrySet2_PRESENT => 7);
for DeviceAccessInterfaceUpType_updateParameter_selection'Size use 32;

TYPE DeviceAccessInterfaceUpType_updateParameter(kind : DeviceAccessInterfaceUpType_updateParameter_selection:= deviceEvent_PRESENT) IS 
RECORD
    case kind is
    when deviceEvent_PRESENT =>
            deviceEvent: Demo.EventTypeT;
    when updateParameter_extendedMode_PRESENT =>
            extendedMode: Demo.ExtendedModeTypeT;
    when updateParameter_extendedStatus_PRESENT =>
            extendedStatus: Demo.ExtendedStatusTypeT;
    when updateParameter_queryCount_PRESENT =>
            queryCount: Demo.QueryCountTypeT;
    when updateParameter_status_PRESENT =>
            status: Demo.StatusTypeT;
    when telemetrySet1_PRESENT =>
            telemetrySet1: Demo.TelemetrySet1TypeT;
    when telemetrySet2_PRESENT =>
            telemetrySet2: Demo.TelemetrySet2TypeT;
    end case;
END RECORD;

FOR DeviceAccessInterfaceUpType_updateParameter USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;
-- DeviceAccessInterfaceUpType_replyToCommand --------------------------------------------
-- DeviceAccessInterfaceUpType_replyToCommand_setMode --------------------------------------------

TYPE DeviceAccessInterfaceUpType_replyToCommand_setMode IS RECORD 
    status : Demo.CommandStatusTypeT;
END RECORD;
-- DeviceAccessInterfaceUpType_replyToCommand_setUserData --------------------------------------------

TYPE DeviceAccessInterfaceUpType_replyToCommand_setUserData IS RECORD 
    status : Demo.CommandStatusTypeT;
END RECORD;

SUBTYPE DeviceAccessInterfaceUpType_replyToCommand_index_range is integer range 0..1;

TYPE DeviceAccessInterfaceUpType_replyToCommand_selection IS (replyToCommand_setMode_PRESENT, replyToCommand_setUserData_PRESENT);
for DeviceAccessInterfaceUpType_replyToCommand_selection use
    (replyToCommand_setMode_PRESENT => 1, replyToCommand_setUserData_PRESENT => 2);
for DeviceAccessInterfaceUpType_replyToCommand_selection'Size use 32;

TYPE DeviceAccessInterfaceUpType_replyToCommand(kind : DeviceAccessInterfaceUpType_replyToCommand_selection:= replyToCommand_setMode_PRESENT) IS 
RECORD
    case kind is
    when replyToCommand_setMode_PRESENT =>
            setMode: DeviceAccessInterfaceUpType_replyToCommand_setMode;
    when replyToCommand_setUserData_PRESENT =>
            setUserData: DeviceAccessInterfaceUpType_replyToCommand_setUserData;
    end case;
END RECORD;

FOR DeviceAccessInterfaceUpType_replyToCommand USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

SUBTYPE DeviceAccessInterfaceUpType_index_range is integer range 0..1;

TYPE DeviceAccessInterfaceUpType_selection IS (DeviceAccessInterfaceUpType_updateParameter_PRESENT, DeviceAccessInterfaceUpType_replyToCommand_PRESENT);
for DeviceAccessInterfaceUpType_selection use
    (DeviceAccessInterfaceUpType_updateParameter_PRESENT => 1, DeviceAccessInterfaceUpType_replyToCommand_PRESENT => 2);
for DeviceAccessInterfaceUpType_selection'Size use 32;

TYPE DeviceAccessInterfaceUpType(kind : DeviceAccessInterfaceUpType_selection:= DeviceAccessInterfaceUpType_updateParameter_PRESENT) IS 
RECORD
    case kind is
    when DeviceAccessInterfaceUpType_updateParameter_PRESENT =>
            updateParameter: DeviceAccessInterfaceUpType_updateParameter;
    when DeviceAccessInterfaceUpType_replyToCommand_PRESENT =>
            replyToCommand: DeviceAccessInterfaceUpType_replyToCommand;
    end case;
END RECORD;

FOR DeviceAccessInterfaceUpType USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

function DeviceAccessInterfaceUpType_updateParameter_Equal(val1, val2: in DeviceAccessInterfaceUpType_updateParameter) return Boolean;

function DeviceAccessInterfaceUpType_replyToCommand_setMode_Equal(val1, val2: in DeviceAccessInterfaceUpType_replyToCommand_setMode) return Boolean;

function DeviceAccessInterfaceUpType_replyToCommand_setUserData_Equal(val1, val2: in DeviceAccessInterfaceUpType_replyToCommand_setUserData) return Boolean;

function DeviceAccessInterfaceUpType_replyToCommand_Equal(val1, val2: in DeviceAccessInterfaceUpType_replyToCommand) return Boolean;

function DeviceAccessInterfaceUpType_Equal(val1, val2: in DeviceAccessInterfaceUpType) return Boolean;

function DeviceAccessInterfaceUpType_updateParameter_Init return DeviceAccessInterfaceUpType_updateParameter;
function DeviceAccessInterfaceUpType_replyToCommand_setMode_Init return DeviceAccessInterfaceUpType_replyToCommand_setMode;
function DeviceAccessInterfaceUpType_replyToCommand_setUserData_Init return DeviceAccessInterfaceUpType_replyToCommand_setUserData;
function DeviceAccessInterfaceUpType_replyToCommand_Init return DeviceAccessInterfaceUpType_replyToCommand;
function DeviceAccessInterfaceUpType_Init return DeviceAccessInterfaceUpType;

ERR_DEVICEACCESSINTERFACEUPTYPE:CONSTANT INTEGER := 2917; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER:CONSTANT INTEGER := 2869; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER_DEVICEEVENT_TYPEKEYWORD:CONSTANT INTEGER := 2697; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER_DEVICEEVENT_DATA_VALUE:CONSTANT INTEGER := 2708; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER_EXTENDEDMODE:CONSTANT INTEGER := 2729; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER_EXTENDEDSTATUS:CONSTANT INTEGER := 2740; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER_QUERYCOUNT:CONSTANT INTEGER := 2751; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER_STATUS_STATUSFLAG1:CONSTANT INTEGER := 2762; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER_STATUS_STATUSFLAG2:CONSTANT INTEGER := 2773; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER_STATUS_OPCOUNT:CONSTANT INTEGER := 2784; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER_TELEMETRYSET1_HK1:CONSTANT INTEGER := 2805; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER_TELEMETRYSET1_HK2:CONSTANT INTEGER := 2816; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER_TELEMETRYSET2_HK3:CONSTANT INTEGER := 2837; 
ERR_DEVICEACCESSINTERFACEUPTYPE_UPDATEPARAMETER_TELEMETRYSET2_HK4:CONSTANT INTEGER := 2848; 
ERR_DEVICEACCESSINTERFACEUPTYPE_REPLYTOCOMMAND:CONSTANT INTEGER := 2910; 
ERR_DEVICEACCESSINTERFACEUPTYPE_REPLYTOCOMMAND_SETMODE_STATUS:CONSTANT INTEGER := 2876; 
ERR_DEVICEACCESSINTERFACEUPTYPE_REPLYTOCOMMAND_SETUSERDATA_STATUS:CONSTANT INTEGER := 2893; 
FUNCTION DeviceAccessInterfaceUpType_IsConstraintValid(val : in DeviceAccessInterfaceUpType) return adaasn1rtl.ASN1_RESULT;
-- DeviceFunctionalInterfaceUpType --------------------------------------------
-- DeviceFunctionalInterfaceUpType_updateParameter --------------------------------------------

SUBTYPE DeviceFunctionalInterfaceUpType_updateParameter_index_range is integer range 0..1;

TYPE DeviceFunctionalInterfaceUpType_updateParameter_selection IS (hk1_PRESENT, hk2_PRESENT);
for DeviceFunctionalInterfaceUpType_updateParameter_selection use
    (hk1_PRESENT => 1, hk2_PRESENT => 2);
for DeviceFunctionalInterfaceUpType_updateParameter_selection'Size use 32;

TYPE DeviceFunctionalInterfaceUpType_updateParameter(kind : DeviceFunctionalInterfaceUpType_updateParameter_selection:= hk1_PRESENT) IS 
RECORD
    case kind is
    when hk1_PRESENT =>
            hk1: Demo.CalibratedHKTypeT;
    when hk2_PRESENT =>
            hk2: Demo.CalibratedHKTypeT;
    end case;
END RECORD;

FOR DeviceFunctionalInterfaceUpType_updateParameter USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

SUBTYPE DeviceFunctionalInterfaceUpType_index_range is integer range 0..0;

TYPE DeviceFunctionalInterfaceUpType_selection IS (DeviceFunctionalInterfaceUpType_updateParameter_PRESENT);
for DeviceFunctionalInterfaceUpType_selection use
    (DeviceFunctionalInterfaceUpType_updateParameter_PRESENT => 1);
for DeviceFunctionalInterfaceUpType_selection'Size use 32;

TYPE DeviceFunctionalInterfaceUpType(kind : DeviceFunctionalInterfaceUpType_selection:= DeviceFunctionalInterfaceUpType_updateParameter_PRESENT) IS 
RECORD
    case kind is
    when DeviceFunctionalInterfaceUpType_updateParameter_PRESENT =>
            updateParameter: DeviceFunctionalInterfaceUpType_updateParameter;
    end case;
END RECORD;

FOR DeviceFunctionalInterfaceUpType USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

function DeviceFunctionalInterfaceUpType_updateParameter_Equal(val1, val2: in DeviceFunctionalInterfaceUpType_updateParameter) return Boolean;

function DeviceFunctionalInterfaceUpType_Equal(val1, val2: in DeviceFunctionalInterfaceUpType) return Boolean;

function DeviceFunctionalInterfaceUpType_updateParameter_Init return DeviceFunctionalInterfaceUpType_updateParameter;
function DeviceFunctionalInterfaceUpType_Init return DeviceFunctionalInterfaceUpType;

ERR_DEVICEFUNCTIONALINTERFACEUPTYPE:CONSTANT INTEGER := 3615; 
ERR_DEVICEFUNCTIONALINTERFACEUPTYPE_UPDATEPARAMETER:CONSTANT INTEGER := 3608; 
ERR_DEVICEFUNCTIONALINTERFACEUPTYPE_UPDATEPARAMETER_HK1:CONSTANT INTEGER := 3586; 
ERR_DEVICEFUNCTIONALINTERFACEUPTYPE_UPDATEPARAMETER_HK2:CONSTANT INTEGER := 3597; 
FUNCTION DeviceFunctionalInterfaceUpType_IsConstraintValid(val : in DeviceFunctionalInterfaceUpType) return adaasn1rtl.ASN1_RESULT;
-- DeviceFunctionalInterfaceProviderType --------------------------------------------

TYPE DeviceFunctionalInterfaceProviderType IS RECORD 
    outputData : DeviceFunctionalInterfaceUpType;
END RECORD;

function DeviceFunctionalInterfaceProviderType_Equal(val1, val2: in DeviceFunctionalInterfaceProviderType) return Boolean;

function DeviceFunctionalInterfaceProviderType_Init return DeviceFunctionalInterfaceProviderType;

ERR_DEVICEFUNCTIONALINTERFACEPROVIDERTYPE_OUTPUTDATA:CONSTANT INTEGER := 3651; 
ERR_DEVICEFUNCTIONALINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER:CONSTANT INTEGER := 3644; 
ERR_DEVICEFUNCTIONALINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_HK1:CONSTANT INTEGER := 3622; 
ERR_DEVICEFUNCTIONALINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_HK2:CONSTANT INTEGER := 3633; 
FUNCTION DeviceFunctionalInterfaceProviderType_IsConstraintValid(val : in DeviceFunctionalInterfaceProviderType) return adaasn1rtl.ASN1_RESULT;
-- DeviceFunctionalInterfaceClientType --------------------------------------------

TYPE DeviceFunctionalInterfaceClientType IS RECORD 
    inputReady : adaasn1rtl.Asn1Boolean;
    inputData : DeviceFunctionalInterfaceUpType;
END RECORD;

function DeviceFunctionalInterfaceClientType_Equal(val1, val2: in DeviceFunctionalInterfaceClientType) return Boolean;

function DeviceFunctionalInterfaceClientType_Init return DeviceFunctionalInterfaceClientType;

ERR_DEVICEFUNCTIONALINTERFACECLIENTTYPE_INPUTREADY:CONSTANT INTEGER := 3668; 
ERR_DEVICEFUNCTIONALINTERFACECLIENTTYPE_INPUTDATA:CONSTANT INTEGER := 3704; 
ERR_DEVICEFUNCTIONALINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER:CONSTANT INTEGER := 3697; 
ERR_DEVICEFUNCTIONALINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_HK1:CONSTANT INTEGER := 3675; 
ERR_DEVICEFUNCTIONALINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_HK2:CONSTANT INTEGER := 3686; 
FUNCTION DeviceFunctionalInterfaceClientType_IsConstraintValid(val : in DeviceFunctionalInterfaceClientType) return adaasn1rtl.ASN1_RESULT;
-- DeviceAccessInterfaceDownType --------------------------------------------
-- DeviceAccessInterfaceDownType_getParameter --------------------------------------------
SUBTYPE DeviceAccessInterfaceDownType_getParameter_extendedMode is adaasn1rtl.Asn1UInt range 0 .. 0;

SUBTYPE DeviceAccessInterfaceDownType_getParameter_extendedStatus is adaasn1rtl.Asn1UInt range 0 .. 0;

SUBTYPE DeviceAccessInterfaceDownType_getParameter_queryCount is adaasn1rtl.Asn1UInt range 0 .. 0;

SUBTYPE DeviceAccessInterfaceDownType_getParameter_status is adaasn1rtl.Asn1UInt range 0 .. 0;


SUBTYPE DeviceAccessInterfaceDownType_getParameter_index_range is integer range 0..3;

TYPE DeviceAccessInterfaceDownType_getParameter_selection IS (getParameter_extendedMode_PRESENT, getParameter_extendedStatus_PRESENT, getParameter_queryCount_PRESENT, getParameter_status_PRESENT);
for DeviceAccessInterfaceDownType_getParameter_selection use
    (getParameter_extendedMode_PRESENT => 1, getParameter_extendedStatus_PRESENT => 2, getParameter_queryCount_PRESENT => 3, getParameter_status_PRESENT => 4);
for DeviceAccessInterfaceDownType_getParameter_selection'Size use 32;

TYPE DeviceAccessInterfaceDownType_getParameter(kind : DeviceAccessInterfaceDownType_getParameter_selection:= getParameter_extendedMode_PRESENT) IS 
RECORD
    case kind is
    when getParameter_extendedMode_PRESENT =>
            extendedMode: DeviceAccessInterfaceDownType_getParameter_extendedMode;
    when getParameter_extendedStatus_PRESENT =>
            extendedStatus: DeviceAccessInterfaceDownType_getParameter_extendedStatus;
    when getParameter_queryCount_PRESENT =>
            queryCount: DeviceAccessInterfaceDownType_getParameter_queryCount;
    when getParameter_status_PRESENT =>
            status: DeviceAccessInterfaceDownType_getParameter_status;
    end case;
END RECORD;

FOR DeviceAccessInterfaceDownType_getParameter USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;
-- DeviceAccessInterfaceDownType_sendCommand --------------------------------------------
-- DeviceAccessInterfaceDownType_sendCommand_setMode --------------------------------------------

TYPE DeviceAccessInterfaceDownType_sendCommand_setMode IS RECORD 
    mode : Demo.ModeTypeT;
END RECORD;
-- DeviceAccessInterfaceDownType_sendCommand_setUserData --------------------------------------------

TYPE DeviceAccessInterfaceDownType_sendCommand_setUserData IS RECORD 
    data_value : CcsdsSoisSubnetwork.OctetTypeT;
END RECORD;

SUBTYPE DeviceAccessInterfaceDownType_sendCommand_index_range is integer range 0..1;

TYPE DeviceAccessInterfaceDownType_sendCommand_selection IS (sendCommand_setMode_PRESENT, sendCommand_setUserData_PRESENT);
for DeviceAccessInterfaceDownType_sendCommand_selection use
    (sendCommand_setMode_PRESENT => 1, sendCommand_setUserData_PRESENT => 2);
for DeviceAccessInterfaceDownType_sendCommand_selection'Size use 32;

TYPE DeviceAccessInterfaceDownType_sendCommand(kind : DeviceAccessInterfaceDownType_sendCommand_selection:= sendCommand_setMode_PRESENT) IS 
RECORD
    case kind is
    when sendCommand_setMode_PRESENT =>
            setMode: DeviceAccessInterfaceDownType_sendCommand_setMode;
    when sendCommand_setUserData_PRESENT =>
            setUserData: DeviceAccessInterfaceDownType_sendCommand_setUserData;
    end case;
END RECORD;

FOR DeviceAccessInterfaceDownType_sendCommand USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

SUBTYPE DeviceAccessInterfaceDownType_index_range is integer range 0..1;

TYPE DeviceAccessInterfaceDownType_selection IS (getParameter_PRESENT, DeviceAccessInterfaceDownType_sendCommand_PRESENT);
for DeviceAccessInterfaceDownType_selection use
    (getParameter_PRESENT => 1, DeviceAccessInterfaceDownType_sendCommand_PRESENT => 2);
for DeviceAccessInterfaceDownType_selection'Size use 32;

TYPE DeviceAccessInterfaceDownType(kind : DeviceAccessInterfaceDownType_selection:= getParameter_PRESENT) IS 
RECORD
    case kind is
    when getParameter_PRESENT =>
            getParameter: DeviceAccessInterfaceDownType_getParameter;
    when DeviceAccessInterfaceDownType_sendCommand_PRESENT =>
            sendCommand: DeviceAccessInterfaceDownType_sendCommand;
    end case;
END RECORD;

FOR DeviceAccessInterfaceDownType USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

function DeviceAccessInterfaceDownType_getParameter_extendedMode_Equal(val1, val2: in DeviceAccessInterfaceDownType_getParameter_extendedMode) return Boolean;

function DeviceAccessInterfaceDownType_getParameter_extendedStatus_Equal(val1, val2: in DeviceAccessInterfaceDownType_getParameter_extendedStatus) return Boolean;

function DeviceAccessInterfaceDownType_getParameter_queryCount_Equal(val1, val2: in DeviceAccessInterfaceDownType_getParameter_queryCount) return Boolean;

function DeviceAccessInterfaceDownType_getParameter_status_Equal(val1, val2: in DeviceAccessInterfaceDownType_getParameter_status) return Boolean;

function DeviceAccessInterfaceDownType_getParameter_Equal(val1, val2: in DeviceAccessInterfaceDownType_getParameter) return Boolean;

function DeviceAccessInterfaceDownType_sendCommand_setMode_Equal(val1, val2: in DeviceAccessInterfaceDownType_sendCommand_setMode) return Boolean;

function DeviceAccessInterfaceDownType_sendCommand_setUserData_Equal(val1, val2: in DeviceAccessInterfaceDownType_sendCommand_setUserData) return Boolean;

function DeviceAccessInterfaceDownType_sendCommand_Equal(val1, val2: in DeviceAccessInterfaceDownType_sendCommand) return Boolean;

function DeviceAccessInterfaceDownType_Equal(val1, val2: in DeviceAccessInterfaceDownType) return Boolean;

function DeviceAccessInterfaceDownType_getParameter_extendedMode_Init return DeviceAccessInterfaceDownType_getParameter_extendedMode;
function DeviceAccessInterfaceDownType_getParameter_extendedStatus_Init return DeviceAccessInterfaceDownType_getParameter_extendedStatus;
function DeviceAccessInterfaceDownType_getParameter_queryCount_Init return DeviceAccessInterfaceDownType_getParameter_queryCount;
function DeviceAccessInterfaceDownType_getParameter_status_Init return DeviceAccessInterfaceDownType_getParameter_status;
function DeviceAccessInterfaceDownType_getParameter_Init return DeviceAccessInterfaceDownType_getParameter;
function DeviceAccessInterfaceDownType_sendCommand_setMode_Init return DeviceAccessInterfaceDownType_sendCommand_setMode;
function DeviceAccessInterfaceDownType_sendCommand_setUserData_Init return DeviceAccessInterfaceDownType_sendCommand_setUserData;
function DeviceAccessInterfaceDownType_sendCommand_Init return DeviceAccessInterfaceDownType_sendCommand;
function DeviceAccessInterfaceDownType_Init return DeviceAccessInterfaceDownType;

ERR_DEVICEACCESSINTERFACEDOWNTYPE:CONSTANT INTEGER := 2690; 
ERR_DEVICEACCESSINTERFACEDOWNTYPE_GETPARAMETER:CONSTANT INTEGER := 2642; 
ERR_DEVICEACCESSINTERFACEDOWNTYPE_GETPARAMETER_EXTENDEDMODE:CONSTANT INTEGER := 2614; 
ERR_DEVICEACCESSINTERFACEDOWNTYPE_GETPARAMETER_EXTENDEDSTATUS:CONSTANT INTEGER := 2621; 
ERR_DEVICEACCESSINTERFACEDOWNTYPE_GETPARAMETER_QUERYCOUNT:CONSTANT INTEGER := 2628; 
ERR_DEVICEACCESSINTERFACEDOWNTYPE_GETPARAMETER_STATUS:CONSTANT INTEGER := 2635; 
ERR_DEVICEACCESSINTERFACEDOWNTYPE_SENDCOMMAND:CONSTANT INTEGER := 2683; 
ERR_DEVICEACCESSINTERFACEDOWNTYPE_SENDCOMMAND_SETMODE_MODE:CONSTANT INTEGER := 2649; 
ERR_DEVICEACCESSINTERFACEDOWNTYPE_SENDCOMMAND_SETUSERDATA_DATA_VALUE:CONSTANT INTEGER := 2666; 
FUNCTION DeviceAccessInterfaceDownType_IsConstraintValid(val : in DeviceAccessInterfaceDownType) return adaasn1rtl.ASN1_RESULT;
-- DeviceAccessInterfaceProviderType --------------------------------------------

TYPE DeviceAccessInterfaceProviderType IS RECORD 
    inputReady : adaasn1rtl.Asn1Boolean;
    inputData : DeviceAccessInterfaceDownType;
    outputData : DeviceAccessInterfaceUpType;
END RECORD;

function DeviceAccessInterfaceProviderType_Equal(val1, val2: in DeviceAccessInterfaceProviderType) return Boolean;

function DeviceAccessInterfaceProviderType_Init return DeviceAccessInterfaceProviderType;

ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_INPUTREADY:CONSTANT INTEGER := 2924; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_INPUTDATA:CONSTANT INTEGER := 3007; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_INPUTDATA_GETPARAMETER:CONSTANT INTEGER := 2959; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_INPUTDATA_GETPARAMETER_EXTENDEDMODE:CONSTANT INTEGER := 2931; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_INPUTDATA_GETPARAMETER_EXTENDEDSTATUS:CONSTANT INTEGER := 2938; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_INPUTDATA_GETPARAMETER_QUERYCOUNT:CONSTANT INTEGER := 2945; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_INPUTDATA_GETPARAMETER_STATUS:CONSTANT INTEGER := 2952; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_INPUTDATA_SENDCOMMAND:CONSTANT INTEGER := 3000; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_INPUTDATA_SENDCOMMAND_SETMODE_MODE:CONSTANT INTEGER := 2966; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_INPUTDATA_SENDCOMMAND_SETUSERDATA_DATA_VALUE:CONSTANT INTEGER := 2983; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA:CONSTANT INTEGER := 3238; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER:CONSTANT INTEGER := 3190; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_DEVICEEVENT_TYPEKEYWORD:CONSTANT INTEGER := 3018; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_DEVICEEVENT_DATA_VALUE:CONSTANT INTEGER := 3029; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_EXTENDEDMODE:CONSTANT INTEGER := 3050; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_EXTENDEDSTATUS:CONSTANT INTEGER := 3061; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_QUERYCOUNT:CONSTANT INTEGER := 3072; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_STATUS_STATUSFLAG1:CONSTANT INTEGER := 3083; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_STATUS_STATUSFLAG2:CONSTANT INTEGER := 3094; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_STATUS_OPCOUNT:CONSTANT INTEGER := 3105; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_TELEMETRYSET1_HK1:CONSTANT INTEGER := 3126; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_TELEMETRYSET1_HK2:CONSTANT INTEGER := 3137; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_TELEMETRYSET2_HK3:CONSTANT INTEGER := 3158; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_UPDATEPARAMETER_TELEMETRYSET2_HK4:CONSTANT INTEGER := 3169; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_REPLYTOCOMMAND:CONSTANT INTEGER := 3231; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_REPLYTOCOMMAND_SETMODE_STATUS:CONSTANT INTEGER := 3197; 
ERR_DEVICEACCESSINTERFACEPROVIDERTYPE_OUTPUTDATA_REPLYTOCOMMAND_SETUSERDATA_STATUS:CONSTANT INTEGER := 3214; 
FUNCTION DeviceAccessInterfaceProviderType_IsConstraintValid(val : in DeviceAccessInterfaceProviderType) return adaasn1rtl.ASN1_RESULT;
-- DeviceAccessInterfaceClientType --------------------------------------------

TYPE DeviceAccessInterfaceClientType IS RECORD 
    inputReady : adaasn1rtl.Asn1Boolean;
    inputData : DeviceAccessInterfaceUpType;
    outputData : DeviceAccessInterfaceDownType;
END RECORD;

function DeviceAccessInterfaceClientType_Equal(val1, val2: in DeviceAccessInterfaceClientType) return Boolean;

function DeviceAccessInterfaceClientType_Init return DeviceAccessInterfaceClientType;

ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTREADY:CONSTANT INTEGER := 3255; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA:CONSTANT INTEGER := 3482; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER:CONSTANT INTEGER := 3434; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_DEVICEEVENT_TYPEKEYWORD:CONSTANT INTEGER := 3262; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_DEVICEEVENT_DATA_VALUE:CONSTANT INTEGER := 3273; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_EXTENDEDMODE:CONSTANT INTEGER := 3294; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_EXTENDEDSTATUS:CONSTANT INTEGER := 3305; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_QUERYCOUNT:CONSTANT INTEGER := 3316; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_STATUS_STATUSFLAG1:CONSTANT INTEGER := 3327; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_STATUS_STATUSFLAG2:CONSTANT INTEGER := 3338; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_STATUS_OPCOUNT:CONSTANT INTEGER := 3349; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_TELEMETRYSET1_HK1:CONSTANT INTEGER := 3370; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_TELEMETRYSET1_HK2:CONSTANT INTEGER := 3381; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_TELEMETRYSET2_HK3:CONSTANT INTEGER := 3402; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_UPDATEPARAMETER_TELEMETRYSET2_HK4:CONSTANT INTEGER := 3413; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_REPLYTOCOMMAND:CONSTANT INTEGER := 3475; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_REPLYTOCOMMAND_SETMODE_STATUS:CONSTANT INTEGER := 3441; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_INPUTDATA_REPLYTOCOMMAND_SETUSERDATA_STATUS:CONSTANT INTEGER := 3458; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_OUTPUTDATA:CONSTANT INTEGER := 3569; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_OUTPUTDATA_GETPARAMETER:CONSTANT INTEGER := 3521; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_OUTPUTDATA_GETPARAMETER_EXTENDEDMODE:CONSTANT INTEGER := 3493; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_OUTPUTDATA_GETPARAMETER_EXTENDEDSTATUS:CONSTANT INTEGER := 3500; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_OUTPUTDATA_GETPARAMETER_QUERYCOUNT:CONSTANT INTEGER := 3507; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_OUTPUTDATA_GETPARAMETER_STATUS:CONSTANT INTEGER := 3514; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_OUTPUTDATA_SENDCOMMAND:CONSTANT INTEGER := 3562; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_OUTPUTDATA_SENDCOMMAND_SETMODE_MODE:CONSTANT INTEGER := 3528; 
ERR_DEVICEACCESSINTERFACECLIENTTYPE_OUTPUTDATA_SENDCOMMAND_SETUSERDATA_DATA_VALUE:CONSTANT INTEGER := 3545; 
FUNCTION DeviceAccessInterfaceClientType_IsConstraintValid(val : in DeviceAccessInterfaceClientType) return adaasn1rtl.ASN1_RESULT;

 

private
   --# hide DemoInterfaces;


END DemoInterfaces;