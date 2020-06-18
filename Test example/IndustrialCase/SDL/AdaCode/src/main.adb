WITH Ada.Text_IO;
USE Ada.Text_IO;
WITH adaasn1rtl;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;
with TASTE_Dataview;
use TASTE_Dataview;

with Multi_Task;
use Multi_Task;



procedure Main is

   --  totalErrors  : INTEGER:=0;
   --  dpc:aliased Device_PowerOn_Command;
   --  --  msg:Message;
   --  type dpca IS access all Device_PowerOn_Command;
   --  pp: dpca :=dpc'Access;
   procedure test is
       dpct:DPC_Task;
   begin
      dpct.Start;
   end test;

begin

   for i in 1 .. 100 loop
         Put_Line("------------------111");
       test;
    end loop;


end Main;


