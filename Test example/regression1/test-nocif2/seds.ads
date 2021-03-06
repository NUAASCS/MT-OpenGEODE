-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
USE adaasn1rtl;
use type adaasn1rtl.OctetBuffer;
use type adaasn1rtl.BitArray;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;
--# inherit ;


PACKAGE Seds with SPARK_Mode
IS


SUBTYPE SedsBoolean is adaasn1rtl.Asn1Boolean;


function SedsBoolean_Equal(val1, val2: in SedsBoolean) return Boolean;

function SedsBoolean_Init return SedsBoolean;

ERR_SEDSBOOLEAN:CONSTANT INTEGER := 4195; -- 
FUNCTION SedsBoolean_IsConstraintValid(val : in SedsBoolean) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsUint8 is adaasn1rtl.Asn1UInt range 0 .. 255;


function SedsUint8_Equal(val1, val2: in SedsUint8) return Boolean;

function SedsUint8_Init return SedsUint8;

ERR_SEDSUINT8:CONSTANT INTEGER := 4202; -- 
FUNCTION SedsUint8_IsConstraintValid(val : in SedsUint8) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsUint16 is adaasn1rtl.Asn1UInt range 0 .. 65535;


function SedsUint16_Equal(val1, val2: in SedsUint16) return Boolean;

function SedsUint16_Init return SedsUint16;

ERR_SEDSUINT16:CONSTANT INTEGER := 4209; -- 
FUNCTION SedsUint16_IsConstraintValid(val : in SedsUint16) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsUint32 is adaasn1rtl.Asn1UInt range 0 .. 4294967295;


function SedsUint32_Equal(val1, val2: in SedsUint32) return Boolean;

function SedsUint32_Init return SedsUint32;

ERR_SEDSUINT32:CONSTANT INTEGER := 4216; -- 
FUNCTION SedsUint32_IsConstraintValid(val : in SedsUint32) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsInt8 is adaasn1rtl.Asn1Int range -128 .. 127;


function SedsInt8_Equal(val1, val2: in SedsInt8) return Boolean;

function SedsInt8_Init return SedsInt8;

ERR_SEDSINT8:CONSTANT INTEGER := 4223; -- 
FUNCTION SedsInt8_IsConstraintValid(val : in SedsInt8) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsInt16 is adaasn1rtl.Asn1Int range -32768 .. 32767;


function SedsInt16_Equal(val1, val2: in SedsInt16) return Boolean;

function SedsInt16_Init return SedsInt16;

ERR_SEDSINT16:CONSTANT INTEGER := 4230; -- 
FUNCTION SedsInt16_IsConstraintValid(val : in SedsInt16) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsInt32 is adaasn1rtl.Asn1Int range -2147483648 .. 2147483647;


function SedsInt32_Equal(val1, val2: in SedsInt32) return Boolean;

function SedsInt32_Init return SedsInt32;

ERR_SEDSINT32:CONSTANT INTEGER := 4237; -- 
FUNCTION SedsInt32_IsConstraintValid(val : in SedsInt32) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsFloat32 is adaasn1rtl.Asn1Real;


function SedsFloat32_Equal(val1, val2: in SedsFloat32) return Boolean;

function SedsFloat32_Init return SedsFloat32;

ERR_SEDSFLOAT32:CONSTANT INTEGER := 4244; -- 
FUNCTION SedsFloat32_IsConstraintValid(val : in SedsFloat32) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsFloat64 is adaasn1rtl.Asn1Real;


function SedsFloat64_Equal(val1, val2: in SedsFloat64) return Boolean;

function SedsFloat64_Init return SedsFloat64;

ERR_SEDSFLOAT64:CONSTANT INTEGER := 4251; -- 
FUNCTION SedsFloat64_IsConstraintValid(val : in SedsFloat64) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsNumberOfMetre is adaasn1rtl.Asn1Real;


function SedsNumberOfMetre_Equal(val1, val2: in SedsNumberOfMetre) return Boolean;

function SedsNumberOfMetre_Init return SedsNumberOfMetre;

ERR_SEDSNUMBEROFMETRE:CONSTANT INTEGER := 4258; -- 
FUNCTION SedsNumberOfMetre_IsConstraintValid(val : in SedsNumberOfMetre) return adaasn1rtl.ASN1_RESULT;
-- SedsPosition --------------------------------------------
SUBTYPE SedsPosition_index is integer range 1..3;
TYPE SedsPosition_array IS ARRAY (SedsPosition_index) OF SedsNumberOfMetre;
TYPE SedsPosition IS  RECORD
    Data  : SedsPosition_array;
END RECORD;

function SedsPosition_Equal(val1, val2: in SedsPosition) return Boolean;

function SedsPosition_Init return SedsPosition;

ERR_SEDSPOSITION_ELM:CONSTANT INTEGER := 4441; 
FUNCTION SedsPosition_IsConstraintValid(val : in SedsPosition) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsRadianRate is adaasn1rtl.Asn1Real;


function SedsRadianRate_Equal(val1, val2: in SedsRadianRate) return Boolean;

function SedsRadianRate_Init return SedsRadianRate;

ERR_SEDSRADIANRATE:CONSTANT INTEGER := 4265; -- 
FUNCTION SedsRadianRate_IsConstraintValid(val : in SedsRadianRate) return adaasn1rtl.ASN1_RESULT;
-- SedsAngularRate --------------------------------------------
SUBTYPE SedsAngularRate_index is integer range 1..3;
TYPE SedsAngularRate_array IS ARRAY (SedsAngularRate_index) OF SedsRadianRate;
TYPE SedsAngularRate IS  RECORD
    Data  : SedsAngularRate_array;
END RECORD;

function SedsAngularRate_Equal(val1, val2: in SedsAngularRate) return Boolean;

function SedsAngularRate_Init return SedsAngularRate;

ERR_SEDSANGULARRATE_ELM:CONSTANT INTEGER := 4458; 
FUNCTION SedsAngularRate_IsConstraintValid(val : in SedsAngularRate) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsMetreRate is adaasn1rtl.Asn1Real;


function SedsMetreRate_Equal(val1, val2: in SedsMetreRate) return Boolean;

function SedsMetreRate_Init return SedsMetreRate;

ERR_SEDSMETRERATE:CONSTANT INTEGER := 4272; -- 
FUNCTION SedsMetreRate_IsConstraintValid(val : in SedsMetreRate) return adaasn1rtl.ASN1_RESULT;
-- SedsVelocity --------------------------------------------
SUBTYPE SedsVelocity_index is integer range 1..3;
TYPE SedsVelocity_array IS ARRAY (SedsVelocity_index) OF SedsMetreRate;
TYPE SedsVelocity IS  RECORD
    Data  : SedsVelocity_array;
END RECORD;

function SedsVelocity_Equal(val1, val2: in SedsVelocity) return Boolean;

function SedsVelocity_Init return SedsVelocity;

ERR_SEDSVELOCITY_ELM:CONSTANT INTEGER := 4475; 
FUNCTION SedsVelocity_IsConstraintValid(val : in SedsVelocity) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsNumberOfSeconds is adaasn1rtl.Asn1Real;


function SedsNumberOfSeconds_Equal(val1, val2: in SedsNumberOfSeconds) return Boolean;

function SedsNumberOfSeconds_Init return SedsNumberOfSeconds;

ERR_SEDSNUMBEROFSECONDS:CONSTANT INTEGER := 4279; -- 
FUNCTION SedsNumberOfSeconds_IsConstraintValid(val : in SedsNumberOfSeconds) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsValidityFlag is adaasn1rtl.Asn1Boolean;


function SedsValidityFlag_Equal(val1, val2: in SedsValidityFlag) return Boolean;

function SedsValidityFlag_Init return SedsValidityFlag;

ERR_SEDSVALIDITYFLAG:CONSTANT INTEGER := 4286; -- 
FUNCTION SedsValidityFlag_IsConstraintValid(val : in SedsValidityFlag) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsCommandStatus is adaasn1rtl.Asn1Boolean;


function SedsCommandStatus_Equal(val1, val2: in SedsCommandStatus) return Boolean;

function SedsCommandStatus_Init return SedsCommandStatus;

ERR_SEDSCOMMANDSTATUS:CONSTANT INTEGER := 4293; -- 
FUNCTION SedsCommandStatus_IsConstraintValid(val : in SedsCommandStatus) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsNumberOfVolt is adaasn1rtl.Asn1Real;


function SedsNumberOfVolt_Equal(val1, val2: in SedsNumberOfVolt) return Boolean;

function SedsNumberOfVolt_Init return SedsNumberOfVolt;

ERR_SEDSNUMBEROFVOLT:CONSTANT INTEGER := 4300; -- 
FUNCTION SedsNumberOfVolt_IsConstraintValid(val : in SedsNumberOfVolt) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsNumberOfWatt is adaasn1rtl.Asn1Real;


function SedsNumberOfWatt_Equal(val1, val2: in SedsNumberOfWatt) return Boolean;

function SedsNumberOfWatt_Init return SedsNumberOfWatt;

ERR_SEDSNUMBEROFWATT:CONSTANT INTEGER := 4307; -- 
FUNCTION SedsNumberOfWatt_IsConstraintValid(val : in SedsNumberOfWatt) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsNumberOfRadian is adaasn1rtl.Asn1Real;


function SedsNumberOfRadian_Equal(val1, val2: in SedsNumberOfRadian) return Boolean;

function SedsNumberOfRadian_Init return SedsNumberOfRadian;

ERR_SEDSNUMBEROFRADIAN:CONSTANT INTEGER := 4314; -- 
FUNCTION SedsNumberOfRadian_IsConstraintValid(val : in SedsNumberOfRadian) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsNumberOfNewton is adaasn1rtl.Asn1Real;


function SedsNumberOfNewton_Equal(val1, val2: in SedsNumberOfNewton) return Boolean;

function SedsNumberOfNewton_Init return SedsNumberOfNewton;

ERR_SEDSNUMBEROFNEWTON:CONSTANT INTEGER := 4321; -- 
FUNCTION SedsNumberOfNewton_IsConstraintValid(val : in SedsNumberOfNewton) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsBitRate is adaasn1rtl.Asn1Real;


function SedsBitRate_Equal(val1, val2: in SedsBitRate) return Boolean;

function SedsBitRate_Init return SedsBitRate;

ERR_SEDSBITRATE:CONSTANT INTEGER := 4328; -- 
FUNCTION SedsBitRate_IsConstraintValid(val : in SedsBitRate) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsSecondsSinceTAI is adaasn1rtl.Asn1UInt range 0 .. 4294967295;


function SedsSecondsSinceTAI_Equal(val1, val2: in SedsSecondsSinceTAI) return Boolean;

function SedsSecondsSinceTAI_Init return SedsSecondsSinceTAI;

ERR_SEDSSECONDSSINCETAI:CONSTANT INTEGER := 4335; -- 
FUNCTION SedsSecondsSinceTAI_IsConstraintValid(val : in SedsSecondsSinceTAI) return adaasn1rtl.ASN1_RESULT;
-- SedsCucTime --------------------------------------------
SUBTYPE SedsCucTime_fldFine is SedsNumberOfSeconds;


TYPE SedsCucTime IS RECORD 
    fldCoarse : SedsSecondsSinceTAI;
    fldFine : SedsCucTime_fldFine;
END RECORD;

function SedsCucTime_fldFine_Equal(val1, val2: in SedsCucTime_fldFine) return Boolean;

function SedsCucTime_Equal(val1, val2: in SedsCucTime) return Boolean;

function SedsCucTime_fldFine_Init return SedsCucTime_fldFine;
function SedsCucTime_Init return SedsCucTime;

ERR_SEDSCUCTIME_FLDCOARSE:CONSTANT INTEGER := 4564; 
ERR_SEDSCUCTIME_FLDFINE:CONSTANT INTEGER := 4575; 
FUNCTION SedsCucTime_IsConstraintValid(val : in SedsCucTime) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsDaysSinceTAI is adaasn1rtl.Asn1UInt range 0 .. 4294967295;


function SedsDaysSinceTAI_Equal(val1, val2: in SedsDaysSinceTAI) return Boolean;

function SedsDaysSinceTAI_Init return SedsDaysSinceTAI;

ERR_SEDSDAYSSINCETAI:CONSTANT INTEGER := 4342; -- 
FUNCTION SedsDaysSinceTAI_IsConstraintValid(val : in SedsDaysSinceTAI) return adaasn1rtl.ASN1_RESULT;
-- SedsCdsTime --------------------------------------------
SUBTYPE SedsCdsTime_fldSeconds is SedsNumberOfSeconds;


TYPE SedsCdsTime IS RECORD 
    fldDays : SedsDaysSinceTAI;
    fldSeconds : SedsCdsTime_fldSeconds;
END RECORD;

function SedsCdsTime_fldSeconds_Equal(val1, val2: in SedsCdsTime_fldSeconds) return Boolean;

function SedsCdsTime_Equal(val1, val2: in SedsCdsTime) return Boolean;

function SedsCdsTime_fldSeconds_Init return SedsCdsTime_fldSeconds;
function SedsCdsTime_Init return SedsCdsTime;

ERR_SEDSCDSTIME_FLDDAYS:CONSTANT INTEGER := 4592; 
ERR_SEDSCDSTIME_FLDSECONDS:CONSTANT INTEGER := 4603; 
FUNCTION SedsCdsTime_IsConstraintValid(val : in SedsCdsTime) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsQuaternianCoordinate is adaasn1rtl.Asn1Real;


function SedsQuaternianCoordinate_Equal(val1, val2: in SedsQuaternianCoordinate) return Boolean;

function SedsQuaternianCoordinate_Init return SedsQuaternianCoordinate;

ERR_SEDSQUATERNIANCOORDINATE:CONSTANT INTEGER := 4349; -- 
FUNCTION SedsQuaternianCoordinate_IsConstraintValid(val : in SedsQuaternianCoordinate) return adaasn1rtl.ASN1_RESULT;
-- SedsQuaternian --------------------------------------------

TYPE SedsQuaternian IS RECORD 
    fldQ1 : SedsQuaternianCoordinate;
    fldQ2 : SedsQuaternianCoordinate;
    fldQ3 : SedsQuaternianCoordinate;
    fldScalar : SedsQuaternianCoordinate;
END RECORD;

function SedsQuaternian_Equal(val1, val2: in SedsQuaternian) return Boolean;

function SedsQuaternian_Init return SedsQuaternian;

ERR_SEDSQUATERNIAN_FLDQ1:CONSTANT INTEGER := 4391; 
ERR_SEDSQUATERNIAN_FLDQ2:CONSTANT INTEGER := 4402; 
ERR_SEDSQUATERNIAN_FLDQ3:CONSTANT INTEGER := 4413; 
ERR_SEDSQUATERNIAN_FLDSCALAR:CONSTANT INTEGER := 4424; 
FUNCTION SedsQuaternian_IsConstraintValid(val : in SedsQuaternian) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsAngle is adaasn1rtl.Asn1Real;


function SedsAngle_Equal(val1, val2: in SedsAngle) return Boolean;

function SedsAngle_Init return SedsAngle;

ERR_SEDSANGLE:CONSTANT INTEGER := 4356; -- 
FUNCTION SedsAngle_IsConstraintValid(val : in SedsAngle) return adaasn1rtl.ASN1_RESULT;
-- SedsKeplerianOrbitalElements --------------------------------------------
SUBTYPE SedsKeplerianOrbitalElements_fldE is SedsFloat64;

SUBTYPE SedsKeplerianOrbitalElements_fldI is SedsAngle;


TYPE SedsKeplerianOrbitalElements IS RECORD 
    fldA : SedsNumberOfMetre;
    fldE : SedsKeplerianOrbitalElements_fldE;
    fldI : SedsKeplerianOrbitalElements_fldI;
    fldRa : SedsAngle;
    fldOmega : SedsAngle;
    fldNu : SedsAngle;
END RECORD;

function SedsKeplerianOrbitalElements_fldE_Equal(val1, val2: in SedsKeplerianOrbitalElements_fldE) return Boolean;

function SedsKeplerianOrbitalElements_fldI_Equal(val1, val2: in SedsKeplerianOrbitalElements_fldI) return Boolean;

function SedsKeplerianOrbitalElements_Equal(val1, val2: in SedsKeplerianOrbitalElements) return Boolean;

function SedsKeplerianOrbitalElements_fldE_Init return SedsKeplerianOrbitalElements_fldE;
function SedsKeplerianOrbitalElements_fldI_Init return SedsKeplerianOrbitalElements_fldI;
function SedsKeplerianOrbitalElements_Init return SedsKeplerianOrbitalElements;

ERR_SEDSKEPLERIANORBITALELEMENTS_FLDA:CONSTANT INTEGER := 4492; 
ERR_SEDSKEPLERIANORBITALELEMENTS_FLDE:CONSTANT INTEGER := 4503; 
ERR_SEDSKEPLERIANORBITALELEMENTS_FLDI:CONSTANT INTEGER := 4514; 
ERR_SEDSKEPLERIANORBITALELEMENTS_FLDRA:CONSTANT INTEGER := 4525; 
ERR_SEDSKEPLERIANORBITALELEMENTS_FLDOMEGA:CONSTANT INTEGER := 4536; 
ERR_SEDSKEPLERIANORBITALELEMENTS_FLDNU:CONSTANT INTEGER := 4547; 
FUNCTION SedsKeplerianOrbitalElements_IsConstraintValid(val : in SedsKeplerianOrbitalElements) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsNumberOfKelvin is adaasn1rtl.Asn1Real;


function SedsNumberOfKelvin_Equal(val1, val2: in SedsNumberOfKelvin) return Boolean;

function SedsNumberOfKelvin_Init return SedsNumberOfKelvin;

ERR_SEDSNUMBEROFKELVIN:CONSTANT INTEGER := 4363; -- 
FUNCTION SedsNumberOfKelvin_IsConstraintValid(val : in SedsNumberOfKelvin) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsNumberOfKilograms is adaasn1rtl.Asn1Real;


function SedsNumberOfKilograms_Equal(val1, val2: in SedsNumberOfKilograms) return Boolean;

function SedsNumberOfKilograms_Init return SedsNumberOfKilograms;

ERR_SEDSNUMBEROFKILOGRAMS:CONSTANT INTEGER := 4370; -- 
FUNCTION SedsNumberOfKilograms_IsConstraintValid(val : in SedsNumberOfKilograms) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsNumberOfAmperes is adaasn1rtl.Asn1Real;


function SedsNumberOfAmperes_Equal(val1, val2: in SedsNumberOfAmperes) return Boolean;

function SedsNumberOfAmperes_Init return SedsNumberOfAmperes;

ERR_SEDSNUMBEROFAMPERES:CONSTANT INTEGER := 4377; -- 
FUNCTION SedsNumberOfAmperes_IsConstraintValid(val : in SedsNumberOfAmperes) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SedsNumberOfBits is adaasn1rtl.Asn1Real;


function SedsNumberOfBits_Equal(val1, val2: in SedsNumberOfBits) return Boolean;

function SedsNumberOfBits_Init return SedsNumberOfBits;

ERR_SEDSNUMBEROFBITS:CONSTANT INTEGER := 4384; -- 
FUNCTION SedsNumberOfBits_IsConstraintValid(val : in SedsNumberOfBits) return adaasn1rtl.ASN1_RESULT;

 

private
   --# hide Seds;


END Seds;