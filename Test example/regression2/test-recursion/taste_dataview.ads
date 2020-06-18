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


SUBTYPE Letter_index_range is integer range 0..25;
TYPE Letter IS (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z) with Convention => C;
for Letter use
    (a => 0, b => 1, c => 2, d => 3, e => 4, f => 5, g => 6, h => 7, i => 8, j => 9, k => 10, l => 11, m => 12, n => 13, o => 14, p => 15, q => 16, r => 17, s => 18, t => 19, u => 20, v => 21, w => 22, x => 23, y => 24, z => 25);

function Letter_Equal(val1, val2: in Letter) return Boolean;

function Letter_Init return Letter;

ERR_LETTER:CONSTANT INTEGER := 1; -- 
FUNCTION Letter_IsConstraintValid(val : in Letter) return adaasn1rtl.ASN1_RESULT;
-- Path_elem --------------------------------------------
SUBTYPE Path_elem_index is integer range 1..255;
TYPE Path_elem_array IS ARRAY (Path_elem_index) OF Letter;
SUBTYPE Path_elem_length_index is integer range 0..255;
TYPE Path_elem IS  RECORD
    Length : Path_elem_length_index;
    Data  : Path_elem_array;
END RECORD;

function Path_elem_Equal(val1, val2: in Path_elem) return Boolean;

function Path_elem_Init return Path_elem;

ERR_PATH_ELEM_ELM:CONSTANT INTEGER := 138; 
ERR_PATH_ELEM:CONSTANT INTEGER := 149; 
FUNCTION Path_elem_IsConstraintValid(val : in Path_elem) return adaasn1rtl.ASN1_RESULT;
SUBTYPE LetterInt is adaasn1rtl.Asn1UInt range 0 .. 25;


function LetterInt_Equal(val1, val2: in LetterInt) return Boolean;

function LetterInt_Init return LetterInt;

ERR_LETTERINT:CONSTANT INTEGER := 8; -- 
FUNCTION LetterInt_IsConstraintValid(val : in LetterInt) return adaasn1rtl.ASN1_RESULT;
SUBTYPE Cost_ty is adaasn1rtl.Asn1UInt range 0 .. 255;


function Cost_ty_Equal(val1, val2: in Cost_ty) return Boolean;

function Cost_ty_Init return Cost_ty;

ERR_COST_TY:CONSTANT INTEGER := 15; -- 
FUNCTION Cost_ty_IsConstraintValid(val : in Cost_ty) return adaasn1rtl.ASN1_RESULT;
-- Tree_Elem --------------------------------------------

TYPE Tree_Elem IS RECORD 
    cost : Cost_ty;
    son : Letter;
END RECORD;

function Tree_Elem_Equal(val1, val2: in Tree_Elem) return Boolean;

function Tree_Elem_Init return Tree_Elem;

ERR_TREE_ELEM_COST:CONSTANT INTEGER := 22; 
ERR_TREE_ELEM_SON:CONSTANT INTEGER := 33; 
FUNCTION Tree_Elem_IsConstraintValid(val : in Tree_Elem) return adaasn1rtl.ASN1_RESULT;
-- Sons --------------------------------------------
SUBTYPE Sons_index is integer range 1..100;
TYPE Sons_array IS ARRAY (Sons_index) OF Tree_Elem;
SUBTYPE Sons_length_index is integer range 0..100;
TYPE Sons IS  RECORD
    Length : Sons_length_index;
    Data  : Sons_array;
END RECORD;

function Sons_Equal(val1, val2: in Sons) return Boolean;

function Sons_Init return Sons;

ERR_SONS_ELM_COST:CONSTANT INTEGER := 50; 
ERR_SONS_ELM_SON:CONSTANT INTEGER := 61; 
ERR_SONS:CONSTANT INTEGER := 82; 
FUNCTION Sons_IsConstraintValid(val : in Sons) return adaasn1rtl.ASN1_RESULT;
-- Tree --------------------------------------------
SUBTYPE Tree_index is integer range 1..26;
TYPE Tree_array IS ARRAY (Tree_index) OF Sons;
TYPE Tree IS  RECORD
    Data  : Tree_array;
END RECORD;

function Tree_Equal(val1, val2: in Tree) return Boolean;

function Tree_Init return Tree;

ERR_TREE_ELM_ELM_COST:CONSTANT INTEGER := 89; 
ERR_TREE_ELM_ELM_SON:CONSTANT INTEGER := 100; 
ERR_TREE_ELM:CONSTANT INTEGER := 121; 
FUNCTION Tree_IsConstraintValid(val : in Tree) return adaasn1rtl.ASN1_RESULT;
-- Path --------------------------------------------

TYPE Path IS RECORD 
    cost : Cost_ty;
    elem : Path_elem;
END RECORD;

function Path_Equal(val1, val2: in Path) return Boolean;

function Path_Init return Path;

ERR_PATH_COST:CONSTANT INTEGER := 156; 
ERR_PATH_ELEM_ELM_2:CONSTANT INTEGER := 167; 
ERR_PATH_ELEM_2:CONSTANT INTEGER := 178; 
FUNCTION Path_IsConstraintValid(val : in Path) return adaasn1rtl.ASN1_RESULT;

LetterInt_letter_a : CONSTANT TASTE_Dataview.LetterInt:= 0;
LetterInt_letter_b : CONSTANT TASTE_Dataview.LetterInt:= 1;
LetterInt_letter_c : CONSTANT TASTE_Dataview.LetterInt:= 2;
LetterInt_letter_d : CONSTANT TASTE_Dataview.LetterInt:= 3;
LetterInt_letter_e : CONSTANT TASTE_Dataview.LetterInt:= 4;
LetterInt_letter_f : CONSTANT TASTE_Dataview.LetterInt:= 5;
LetterInt_letter_g : CONSTANT TASTE_Dataview.LetterInt:= 6;
LetterInt_letter_h : CONSTANT TASTE_Dataview.LetterInt:= 7;
LetterInt_letter_i : CONSTANT TASTE_Dataview.LetterInt:= 8;
LetterInt_letter_j : CONSTANT TASTE_Dataview.LetterInt:= 9;
LetterInt_letter_k : CONSTANT TASTE_Dataview.LetterInt:= 10;
LetterInt_letter_l : CONSTANT TASTE_Dataview.LetterInt:= 11;
LetterInt_letter_m : CONSTANT TASTE_Dataview.LetterInt:= 12;
LetterInt_letter_n : CONSTANT TASTE_Dataview.LetterInt:= 13;
LetterInt_letter_o : CONSTANT TASTE_Dataview.LetterInt:= 14;
LetterInt_letter_p : CONSTANT TASTE_Dataview.LetterInt:= 15;
LetterInt_letter_q : CONSTANT TASTE_Dataview.LetterInt:= 16;
LetterInt_letter_r : CONSTANT TASTE_Dataview.LetterInt:= 17;
LetterInt_letter_s : CONSTANT TASTE_Dataview.LetterInt:= 18;
LetterInt_letter_t : CONSTANT TASTE_Dataview.LetterInt:= 19;
LetterInt_letter_u : CONSTANT TASTE_Dataview.LetterInt:= 20;
LetterInt_letter_v : CONSTANT TASTE_Dataview.LetterInt:= 21;
LetterInt_letter_w : CONSTANT TASTE_Dataview.LetterInt:= 22;
LetterInt_letter_x : CONSTANT TASTE_Dataview.LetterInt:= 23;
LetterInt_letter_y : CONSTANT TASTE_Dataview.LetterInt:= 24;
LetterInt_letter_z : CONSTANT TASTE_Dataview.LetterInt:= 25; 

private
   --# hide TASTE_Dataview;


END TASTE_Dataview;