with Ada.Text_IO; use Ada.Text_IO;
with TASTE_Dataview;
use TASTE_Dataview;

with CCS;use CCS;
with DCS;use DCS;
with DP;use DP;
with PO;use PO;

package body Multi_Task is

   task body CCSR_Task is
      ccsr : aliased Control_Computer_SelfCheck_Result;
      msg : Message;
   begin
      accept Start;
      msg:=Message'(Length => 1,Data => Message_array'(1=>1, others => 0));
      ccsr.content:=msg;
       Put_Line("CCSR START");
         CCS.CCSR(ccsr'Access);     
   end CCSR_Task;
   
   task body DSR_Task is
      dsr : aliased Device_SelfCheck_Result;
      msg : Message;
   begin
      accept Start;
      msg:=Message'(Length => 1,Data => Message_array'(1=>1, others => 0));
      dsr.content:=msg;
      Put_Line("DSR START");
          DCS.DSR(dsr'Access);
   end DSR_Task;
   
   task body DPC_Task is
      dpc:aliased Device_PowerOn_Command;
      msg:Message;
   begin
      accept Start;      
      msg:=Message'(Length => 1,Data => Message_array'(1=>0, others => 0));
      dpc.content:=msg;
      dp.DPC(dpc'Access);
   end DPC_Task;
   
   task body DCSC_OK_Task is
   begin
   accept Start;
      DCSC_OK;
   end DCSC_OK_Task;
     
   task body DSSC_OK_Task is
   begin
   accept Start ;
       DSSC_OK;
   end DSSC_OK_Task;

end Multi_Task;
