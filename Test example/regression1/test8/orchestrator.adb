-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with VEGA;
use VEGA;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body orchestrator is
   type States is (stopped);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      gnc_out : aliased asn1SccT_GNC_LV_SIM_INPUTS;
      foo : aliased asn1SccT_QUAT_FLOAT32 := (Data => (1 => 1.0, 2 => 2.0, 3 => 3.0, 4 => 4.0, others => 1.0));
      toto : aliased asn1SccT_UInt8 := 2;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 1;
   procedure runTransition(Id: Integer);
   procedure pulse is
      begin
         case ctxt.state is
            when stopped =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end pulse;
      

   procedure simulate(simulation_choice: access asn1SccSimulation_Param) is
      begin
         case ctxt.state is
            when stopped =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end simulate;
      

   procedure VESAT_Data(gnc_inputs: access asn1SccT_GNC_LV_SIM_CONTEXT) is
      begin
         case ctxt.state is
            when stopped =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end VESAT_Data;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  writeln
                  --  ('[SDL] Startup') (15,13)
                  Put("[SDL] Startup");
                  New_Line;
                  --  COMMENT this range should iterate only ONCE
                  --  expected output:
                  --  Hello 2.0 (array index start at 0)
                  --  1 2.0 (23,8)
                  --  TASK for x in range(1,3,2):
                  --      call writeln('Hello ',foo(x));
                  --      call writeln(x, foo(1));
                  --  endfor (18,13)
                  --  COMMENT this range should iterate only ONCE
                  --  expected output:
                  --  Hello 2.0 (array index start at 0)
                  --  1 2.0 (23,8)
                  declare
                     x : Integer := 1;
                  begin
                     while x < 3 loop
                        --  writeln('Hello ',foo(x)) (19,9)
                        Put("Hello ");
                        Put(asn1SccT_FLOAT32'Image(ctxt.foo.Data(1 + Integer(x))));
                        New_Line;
                        --  writeln(x, foo(1)) (20,9)
                        Put(Integer'Image(x));
                        Put(asn1SccT_FLOAT32'Image(ctxt.foo.Data(2)));
                        New_Line;
                        x := x + 2;
                     end loop;
                  end;
                  --  COMMENT length(foo) = 4 -> should iterate 4 times
                  --  expected output (in addition to the printf in vesat_one_step):
                  --  1.0 
                  --  2.0
                  --  3.0
                  --  4.0 (33,8)
                  --  TASK for x in range(length(foo)):
                  --      call writeln(foo(x));
                  --      output vesat_one_step(gnc_out);
                  --  endfor (28,13)
                  --  COMMENT length(foo) = 4 -> should iterate 4 times
                  --  expected output (in addition to the printf in vesat_one_step):
                  --  1.0 
                  --  2.0
                  --  3.0
                  --  4.0 (33,8)
                  for x in 0 .. 3 loop
                     --  writeln(foo(x)) (29,9)
                     Put(asn1SccT_FLOAT32'Image(ctxt.foo.Data(1 + Integer(x))));
                     New_Line;
                     --  vesat_one_step(gnc_out) (30,11)
                     RIÜvesat_one_step(ctxt.gnc_out'Access);
                  end loop;
                  --  COMMENT expected output:
                  --   1.0
                  --   2.0
                  --   3.0
                  --   4.0 (44,8)
                  --  TASK for x in foo:
                  --      call writeln(x);
                  --  endfor (40,13)
                  --  COMMENT expected output:
                  --   1.0
                  --   2.0
                  --   3.0
                  --   4.0 (44,8)
                  declare
                     x : asn1SccT_FLOAT32;
                  begin
                     for x_idx in ctxt.foo.Data'Range loop
                        x := ctxt.foo.Data(x_idx);
                        --  writeln(x) (41,9)
                        Put(asn1SccT_FLOAT32'Image(x));
                        New_Line;
                     end loop;
                  end;
                  --  COMMENT expected output:
                  --   2.0
                  --   3.0 (54,8)
                  --  TASK for x in foo(1,2):
                  --      call writeln(x);
                  --  endfor (50,13)
                  --  COMMENT expected output:
                  --   2.0
                  --   3.0 (54,8)
                  declare
                     x : asn1SccT_FLOAT32;
                  begin
                     for x_idx in ctxt.foo.Data(2..3)'Range loop
                        x := ctxt.foo.Data(2..3)(x_idx);
                        --  writeln(x) (51,9)
                        Put(asn1SccT_FLOAT32'Image(x));
                        New_Line;
                     end loop;
                  end;
                  --  toto := (toto) (58,13)
                  ctxt.toto := ctxt.toto;
                  --  NEXT_STATE Stopped (60,18) at 388, 558
                  trId := -1;
                  ctxt.state := Stopped;
                  goto next_transition;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end orchestrator;