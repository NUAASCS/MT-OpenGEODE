package Multi_Task is

   task type CCSR_Task is
      entry Start;
   end CCSR_Task;
   
   task type DSR_Task is
      entry Start;
   end DSR_Task;
   
   task type DPC_Task is
      entry Start;
   end DPC_Task;
   
   task type DCSC_OK_Task is
      entry Start;
   end  DCSC_OK_Task;
   
   task type DSSC_OK_Task is
      entry Start;
   end DSSC_OK_Task;

end Multi_Task;
