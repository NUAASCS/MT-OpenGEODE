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


-- MyChoice --------------------------------------------
-- MyChoice_a --------------------------------------------

TYPE MyChoice_a IS RECORD 
    null;
END RECORD;
-- MyChoice_b --------------------------------------------
-- MyChoice_b_elem --------------------------------------------

TYPE MyChoice_b_elem IS RECORD 
    null;
END RECORD;
SUBTYPE MyChoice_b_index is integer range 1..2;
TYPE MyChoice_b_array IS ARRAY (MyChoice_b_index) OF MyChoice_b_elem;
TYPE MyChoice_b IS  RECORD
    Data  : MyChoice_b_array;
END RECORD;
-- MyChoice_c --------------------------------------------
-- MyChoice_c_c0 --------------------------------------------

TYPE MyChoice_c_c0 IS RECORD 
    null;
END RECORD;
-- MyChoice_c_c1 --------------------------------------------

SUBTYPE MyChoice_c_c1_index_range is integer range 0..0;

TYPE MyChoice_c_c1_selection IS (c10_PRESENT);
for MyChoice_c_c1_selection use
    (c10_PRESENT => 1);
for MyChoice_c_c1_selection'Size use 32;

TYPE MyChoice_c_c1(kind : MyChoice_c_c1_selection:= c10_PRESENT) IS 
RECORD
    case kind is
    when c10_PRESENT =>
            c10: adaasn1rtl.Asn1Boolean;
    end case;
END RECORD;

FOR MyChoice_c_c1 USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

TYPE MyChoice_c IS RECORD 
    c0 : MyChoice_c_c0;
    c1 : MyChoice_c_c1;
END RECORD;

SUBTYPE MyChoice_index_range is integer range 0..2;

TYPE MyChoice_selection IS (a_PRESENT, b_PRESENT, c_PRESENT);
for MyChoice_selection use
    (a_PRESENT => 1, b_PRESENT => 2, c_PRESENT => 3);
for MyChoice_selection'Size use 32;

TYPE MyChoice(kind : MyChoice_selection:= a_PRESENT) IS 
RECORD
    case kind is
    when a_PRESENT =>
            a: MyChoice_a;
    when b_PRESENT =>
            b: MyChoice_b;
    when c_PRESENT =>
            c: MyChoice_c;
    end case;
END RECORD;

FOR MyChoice USE 
RECORD
    kind AT 0 RANGE 0..31;
END RECORD;

function MyChoice_a_Equal(val1, val2: in MyChoice_a) return Boolean;

function MyChoice_b_elem_Equal(val1, val2: in MyChoice_b_elem) return Boolean;

function MyChoice_b_Equal(val1, val2: in MyChoice_b) return Boolean;

function MyChoice_c_c0_Equal(val1, val2: in MyChoice_c_c0) return Boolean;

function MyChoice_c_c1_Equal(val1, val2: in MyChoice_c_c1) return Boolean;

function MyChoice_c_Equal(val1, val2: in MyChoice_c) return Boolean;

function MyChoice_Equal(val1, val2: in MyChoice) return Boolean;

function MyChoice_a_Init return MyChoice_a;
function MyChoice_b_elem_Init return MyChoice_b_elem;
function MyChoice_b_Init return MyChoice_b;
function MyChoice_c_c0_Init return MyChoice_c_c0;
function MyChoice_c_c1_Init return MyChoice_c_c1;
function MyChoice_c_Init return MyChoice_c;
function MyChoice_Init return MyChoice;

ERR_MYCHOICE:CONSTANT INTEGER := 45; 
ERR_MYCHOICE_C_C1:CONSTANT INTEGER := 32; 
ERR_MYCHOICE_C_C1_C10:CONSTANT INTEGER := 25; 
FUNCTION MyChoice_IsConstraintValid(val : in MyChoice) return adaasn1rtl.ASN1_RESULT;

 

private
   --# hide TASTE_Dataview;


END TASTE_Dataview;