-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
USE adaasn1rtl;
use type adaasn1rtl.OctetBuffer;
use type adaasn1rtl.BitArray;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;
--# inherit ;


PACKAGE TASTE_Dataview with SPARK_Mode
IS


-- Seq --------------------------------------------
-- Seq_b --------------------------------------------

TYPE Seq_b_EXIST IS RECORD
    b_C:adaasn1rtl.BIT;
END RECORD;
TYPE Seq_b IS RECORD 
    b_C : adaasn1rtl.Asn1Boolean;
    
    Exist : Seq_b_EXIST;

END RECORD;

TYPE Seq_EXIST IS RECORD
    a:adaasn1rtl.BIT;
    b:adaasn1rtl.BIT;
END RECORD;
TYPE Seq IS RECORD 
    a : adaasn1rtl.Asn1Boolean;
    b : Seq_b;
    
    Exist : Seq_EXIST;

END RECORD;

function Seq_b_Equal(val1, val2: in Seq_b) return Boolean;

function Seq_Equal(val1, val2: in Seq) return Boolean;

function Seq_b_Init return Seq_b;
function Seq_Init return Seq;

ERR_SEQ_A:CONSTANT INTEGER := 1; 
ERR_SEQ_B_B_C:CONSTANT INTEGER := 8; 
FUNCTION Seq_IsConstraintValid(val : in Seq) return adaasn1rtl.ASN1_RESULT;
-- ChoiceWithInnerSeq --------------------------------------------
-- ChoiceWithInnerSeq_ch2 --------------------------------------------

TYPE ChoiceWithInnerSeq_ch2_EXIST IS RECORD
    opt_field:adaasn1rtl.BIT;
END RECORD;
TYPE ChoiceWithInnerSeq_ch2 IS RECORD 
    opt_field : adaasn1rtl.Asn1Boolean;
    
    Exist : ChoiceWithInnerSeq_ch2_EXIST;

END RECORD;

SUBTYPE ChoiceWithInnerSeq_index_range is integer range 0..1;

TYPE ChoiceWithInnerSeq_selection IS (ch1_PRESENT, ch2_PRESENT);
for ChoiceWithInnerSeq_selection use
    (ch1_PRESENT => 1, ch2_PRESENT => 2);
for ChoiceWithInnerSeq_selection'Size use 32;

TYPE ChoiceWithInnerSeq(kind : ChoiceWithInnerSeq_selection:= ch1_PRESENT) IS 
RECORD
    case kind is
    when ch1_PRESENT =>
            ch1: Seq;
    when ch2_PRESENT =>
            ch2: ChoiceWithInnerSeq_ch2;
    end case;
END RECORD;

FOR ChoiceWithInnerSeq USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

function ChoiceWithInnerSeq_ch2_Equal(val1, val2: in ChoiceWithInnerSeq_ch2) return Boolean;

function ChoiceWithInnerSeq_Equal(val1, val2: in ChoiceWithInnerSeq) return Boolean;

function ChoiceWithInnerSeq_ch2_Init return ChoiceWithInnerSeq_ch2;
function ChoiceWithInnerSeq_Init return ChoiceWithInnerSeq;

ERR_CHOICEWITHINNERSEQ:CONSTANT INTEGER := 70; 
ERR_CHOICEWITHINNERSEQ_CH1_A:CONSTANT INTEGER := 27; 
ERR_CHOICEWITHINNERSEQ_CH1_B_B_C:CONSTANT INTEGER := 34; 
ERR_CHOICEWITHINNERSEQ_CH2_OPT_FIELD:CONSTANT INTEGER := 57; 
FUNCTION ChoiceWithInnerSeq_IsConstraintValid(val : in ChoiceWithInnerSeq) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SeqPresent is Seq;
SUBTYPE SeqPresent_EXIST is Seq_EXIST;


function SeqPresent_Equal(val1, val2: in SeqPresent) return Boolean;

function SeqPresent_Init return SeqPresent;

ERR_SEQPRESENT_A_IS_ABSENT:CONSTANT INTEGER := 150; 
ERR_SEQPRESENT_A:CONSTANT INTEGER := 130; 
ERR_SEQPRESENT_B_B_C:CONSTANT INTEGER := 137; 
FUNCTION SeqPresent_IsConstraintValid(val : in SeqPresent) return adaasn1rtl.ASN1_RESULT;
SUBTYPE SeqAbsent is Seq;
SUBTYPE SeqAbsent_EXIST is Seq_EXIST;


function SeqAbsent_Equal(val1, val2: in SeqAbsent) return Boolean;

function SeqAbsent_Init return SeqAbsent;

ERR_SEQABSENT_A_IS_PRESENT:CONSTANT INTEGER := 177; 
ERR_SEQABSENT_A:CONSTANT INTEGER := 157; 
ERR_SEQABSENT_B_B_C:CONSTANT INTEGER := 164; 
FUNCTION SeqAbsent_IsConstraintValid(val : in SeqAbsent) return adaasn1rtl.ASN1_RESULT;
-- SeqDef --------------------------------------------
SUBTYPE SeqDef_b is adaasn1rtl.Asn1UInt range 10 .. 20;

SUBTYPE SeqDef_c is adaasn1rtl.Asn1UInt range 8 .. 255;

-- SeqDef_d --------------------------------------------

TYPE SeqDef_d IS RECORD 
    thanassis : adaasn1rtl.Asn1Boolean;
END RECORD;

TYPE SeqDef_EXIST IS RECORD
    a:adaasn1rtl.BIT;
    b:adaasn1rtl.BIT;
    d:adaasn1rtl.BIT;
END RECORD;
TYPE SeqDef IS RECORD 
    a : adaasn1rtl.Asn1Boolean;
    b : SeqDef_b;
    c : SeqDef_c;
    d : SeqDef_d;
    
    Exist : SeqDef_EXIST;

END RECORD;

function SeqDef_b_Equal(val1, val2: in SeqDef_b) return Boolean;

function SeqDef_c_Equal(val1, val2: in SeqDef_c) return Boolean;

function SeqDef_d_Equal(val1, val2: in SeqDef_d) return Boolean;

function SeqDef_Equal(val1, val2: in SeqDef) return Boolean;

function SeqDef_b_Init return SeqDef_b;
function SeqDef_c_Init return SeqDef_c;
function SeqDef_d_Init return SeqDef_d;
function SeqDef_Init return SeqDef;

ERR_SEQDEF_A:CONSTANT INTEGER := 77; 
ERR_SEQDEF_B:CONSTANT INTEGER := 84; 
ERR_SEQDEF_C:CONSTANT INTEGER := 91; 
ERR_SEQDEF_D_THANASSIS:CONSTANT INTEGER := 98; 
FUNCTION SeqDef_IsConstraintValid(val : in SeqDef) return adaasn1rtl.ASN1_RESULT;
-- SomeSeq --------------------------------------------

TYPE SomeSeq IS RECORD 
    thanassis : adaasn1rtl.Asn1Boolean;
END RECORD;

function SomeSeq_Equal(val1, val2: in SomeSeq) return Boolean;

function SomeSeq_Init return SomeSeq;

ERR_SOMESEQ_THANASSIS:CONSTANT INTEGER := 117; 
FUNCTION SomeSeq_IsConstraintValid(val : in SomeSeq) return adaasn1rtl.ASN1_RESULT;

some_constant : CONSTANT TASTE_Dataview.SomeSeq:= SomeSeq'(
    thanassis => TRUE
    ); 

private
   --# hide TASTE_Dataview;


END TASTE_Dataview;