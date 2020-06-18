-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
USE adaasn1rtl;
use type adaasn1rtl.OctetBuffer;
use type adaasn1rtl.BitArray;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;
WITH TASTE_BasicTypes; use TASTE_BasicTypes;
--# inherit TASTE_BasicTypes;


PACKAGE TASTE_Dataview with SPARK_Mode
IS


SUBTYPE MyInteger is TASTE_BasicTypes.T_UInt8 range 0 .. 255;


function MyInteger_Equal(val1, val2: in MyInteger) return Boolean;

function MyInteger_Init return MyInteger;

ERR_MYINTEGER:CONSTANT INTEGER := 1; -- 
FUNCTION MyInteger_IsConstraintValid(val : in MyInteger) return adaasn1rtl.ASN1_RESULT;
-- MySeq --------------------------------------------
SUBTYPE MySeq_b_index_range is integer range 0..2;
TYPE MySeq_b IS (taste, welcomes, you) with Convention => C;
for MySeq_b use
    (taste => 1, welcomes => 2, you => 3);

TYPE MySeq IS RECORD 
    a : MyInteger;
    b : MySeq_b;
END RECORD;

function MySeq_b_Equal(val1, val2: in MySeq_b) return Boolean;

function MySeq_Equal(val1, val2: in MySeq) return Boolean;

function MySeq_b_Init return MySeq_b;
function MySeq_Init return MySeq;

ERR_MYSEQ_A:CONSTANT INTEGER := 26; 
ERR_MYSEQ_B:CONSTANT INTEGER := 41; 
FUNCTION MySeq_IsConstraintValid(val : in MySeq) return adaasn1rtl.ASN1_RESULT;
SUBTYPE MySeq2 is MySeq;


function MySeq2_Equal(val1, val2: in MySeq2) return Boolean;

function MySeq2_Init return MySeq2;

ERR_MYSEQ2_A:CONSTANT INTEGER := 54; 
ERR_MYSEQ2_B:CONSTANT INTEGER := 69; 
FUNCTION MySeq2_IsConstraintValid(val : in MySeq2) return adaasn1rtl.ASN1_RESULT;
-- MyChoice --------------------------------------------

SUBTYPE MyChoice_index_range is integer range 0..2;

TYPE MyChoice_selection IS (a_PRESENT, b_PRESENT, c_PRESENT);
for MyChoice_selection use
    (a_PRESENT => 1, b_PRESENT => 2, c_PRESENT => 3);
for MyChoice_selection'Size use 32;

TYPE MyChoice(kind : MyChoice_selection:= a_PRESENT) IS 
RECORD
    case kind is
    when a_PRESENT =>
            a: adaasn1rtl.Asn1Boolean;
    when b_PRESENT =>
            b: MySeq;
    when c_PRESENT =>
            c: MySeq2;
    end case;
END RECORD;

FOR MyChoice USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

function MyChoice_Equal(val1, val2: in MyChoice) return Boolean;

function MyChoice_Init return MyChoice;

ERR_MYCHOICE:CONSTANT INTEGER := 161; 
ERR_MYCHOICE_A:CONSTANT INTEGER := 86; 
ERR_MYCHOICE_B_A:CONSTANT INTEGER := 93; 
ERR_MYCHOICE_B_B:CONSTANT INTEGER := 108; 
ERR_MYCHOICE_C_A:CONSTANT INTEGER := 125; 
ERR_MYCHOICE_C_B:CONSTANT INTEGER := 140; 
FUNCTION MyChoice_IsConstraintValid(val : in MyChoice) return adaasn1rtl.ASN1_RESULT;
SUBTYPE MyChoice2 is MyChoice;
SUBTYPE MyChoice2_index_range is MyChoice_index_range;
SUBTYPE MyChoice2_selection is MyChoice_selection;

function MyChoice2_Equal(val1, val2: in MyChoice2) return Boolean;

function MyChoice2_Init return MyChoice2;

ERR_MYCHOICE2:CONSTANT INTEGER := 243; 
ERR_MYCHOICE2_A:CONSTANT INTEGER := 168; 
ERR_MYCHOICE2_B_A:CONSTANT INTEGER := 175; 
ERR_MYCHOICE2_B_B:CONSTANT INTEGER := 190; 
ERR_MYCHOICE2_C_A:CONSTANT INTEGER := 207; 
ERR_MYCHOICE2_C_B:CONSTANT INTEGER := 222; 
FUNCTION MyChoice2_IsConstraintValid(val : in MyChoice2) return adaasn1rtl.ASN1_RESULT;
SUBTYPE MyReal is adaasn1rtl.Asn1Real;


function MyReal_Equal(val1, val2: in MyReal) return Boolean;

function MyReal_Init return MyReal;

ERR_MYREAL:CONSTANT INTEGER := 12; -- 
FUNCTION MyReal_IsConstraintValid(val : in MyReal) return adaasn1rtl.ASN1_RESULT;
SUBTYPE MyEnum_index_range is integer range 0..2;
TYPE MyEnum IS (hello, world, howareyou) with Convention => C;
for MyEnum use
    (hello => 0, world => 1, howareyou => 2);

function MyEnum_Equal(val1, val2: in MyEnum) return Boolean;

function MyEnum_Init return MyEnum;

ERR_MYENUM:CONSTANT INTEGER := 19; -- 
FUNCTION MyEnum_IsConstraintValid(val : in MyEnum) return adaasn1rtl.ASN1_RESULT;
-- MySeqOf --------------------------------------------
SUBTYPE MySeqOf_index is integer range 1..2;
TYPE MySeqOf_array IS ARRAY (MySeqOf_index) OF MyEnum;
TYPE MySeqOf IS  RECORD
    Data  : MySeqOf_array;
END RECORD;

function MySeqOf_Equal(val1, val2: in MySeqOf) return Boolean;

function MySeqOf_Init return MySeqOf;

ERR_MYSEQOF_ELM:CONSTANT INTEGER := 254; 
FUNCTION MySeqOf_IsConstraintValid(val : in MySeqOf) return adaasn1rtl.ASN1_RESULT;
SUBTYPE MyOctStr_index is integer range 1..3;
SUBTYPE MyOctStr_array IS adaasn1rtl.OctetBuffer(MyOctStr_index);
TYPE MyOctStr IS  RECORD
    Data  : MyOctStr_array;
END RECORD;

function MyOctStr_Equal(val1, val2: in MyOctStr) return Boolean;

function MyOctStr_Init return MyOctStr;
-- T1 --------------------------------------------
-- T1_replyToCommand --------------------------------------------
-- T1_replyToCommand_cmd2 --------------------------------------------
SUBTYPE T1_replyToCommand_cmd2_index is integer range 1..10;
TYPE T1_replyToCommand_cmd2_array IS ARRAY (T1_replyToCommand_cmd2_index) OF adaasn1rtl.Asn1Boolean;
SUBTYPE T1_replyToCommand_cmd2_length_index is integer range 0..10;
TYPE T1_replyToCommand_cmd2 IS  RECORD
    Length : T1_replyToCommand_cmd2_length_index;
    Data  : T1_replyToCommand_cmd2_array;
END RECORD;

SUBTYPE T1_replyToCommand_index_range is integer range 0..1;

TYPE T1_replyToCommand_selection IS (cmd1_PRESENT, cmd2_PRESENT);
for T1_replyToCommand_selection use
    (cmd1_PRESENT => 1, cmd2_PRESENT => 2);
for T1_replyToCommand_selection'Size use 32;

TYPE T1_replyToCommand(kind : T1_replyToCommand_selection:= cmd1_PRESENT) IS 
RECORD
    case kind is
    when cmd1_PRESENT =>
            cmd1: adaasn1rtl.Asn1Boolean;
    when cmd2_PRESENT =>
            cmd2: T1_replyToCommand_cmd2;
    end case;
END RECORD;

FOR T1_replyToCommand USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

SUBTYPE T1_index_range is integer range 0..0;

TYPE T1_selection IS (replyToCommand_PRESENT);
for T1_selection use
    (replyToCommand_PRESENT => 1);
for T1_selection'Size use 32;

TYPE T1(kind : T1_selection:= replyToCommand_PRESENT) IS 
RECORD
    case kind is
    when replyToCommand_PRESENT =>
            replyToCommand: T1_replyToCommand;
    end case;
END RECORD;

FOR T1 USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

function T1_replyToCommand_cmd2_Equal(val1, val2: in T1_replyToCommand_cmd2) return Boolean;

function T1_replyToCommand_Equal(val1, val2: in T1_replyToCommand) return Boolean;

function T1_Equal(val1, val2: in T1) return Boolean;

function T1_replyToCommand_cmd2_Init return T1_replyToCommand_cmd2;
function T1_replyToCommand_Init return T1_replyToCommand;
function T1_Init return T1;

ERR_T1:CONSTANT INTEGER := 305; 
ERR_T1_REPLYTOCOMMAND:CONSTANT INTEGER := 298; 
ERR_T1_REPLYTOCOMMAND_CMD1:CONSTANT INTEGER := 277; 
ERR_T1_REPLYTOCOMMAND_CMD2_ELM:CONSTANT INTEGER := 284; 
ERR_T1_REPLYTOCOMMAND_CMD2:CONSTANT INTEGER := 291; 
FUNCTION T1_IsConstraintValid(val : in T1) return adaasn1rtl.ASN1_RESULT;
-- T2 --------------------------------------------

TYPE T2 IS RECORD 
    outputData : T1;
END RECORD;

function T2_Equal(val1, val2: in T2) return Boolean;

function T2_Init return T2;

ERR_T2_OUTPUTDATA:CONSTANT INTEGER := 340; 
ERR_T2_OUTPUTDATA_REPLYTOCOMMAND:CONSTANT INTEGER := 333; 
ERR_T2_OUTPUTDATA_REPLYTOCOMMAND_CMD1:CONSTANT INTEGER := 312; 
ERR_T2_OUTPUTDATA_REPLYTOCOMMAND_CMD2_ELM:CONSTANT INTEGER := 319; 
ERR_T2_OUTPUTDATA_REPLYTOCOMMAND_CMD2:CONSTANT INTEGER := 326; 
FUNCTION T2_IsConstraintValid(val : in T2) return adaasn1rtl.ASN1_RESULT;

myVar : CONSTANT TASTE_Dataview.MySeqOf:= MySeqOf'(Data => MySeqOf_array'(1=>hello, 2=>world, others => hello));
hello_t1 : CONSTANT TASTE_Dataview.T1:= T1'(kind => replyToCommand_PRESENT, replyToCommand => T1_replyToCommand'(kind => cmd2_PRESENT, cmd2 => T1_replyToCommand_cmd2'(Length => 0,Data => T1_replyToCommand_cmd2_array'( others => FALSE)))); 

private
   --# hide TASTE_Dataview;


END TASTE_Dataview;