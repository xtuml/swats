
--*************************************************************************************
--*                            UNCLASSIFIED                                           *
--*************************************************************************************
--*                            BAE SYSTEMS PROPRIETARY                                *
--*************************************************************************************
--*          Export Control Restrictions: NONE                                        *
--*************************************************************************************
--*                                                                                   *
--*               Copyright 2023 BAE Systems. All Rights Reserved.                    *
--*                                                                                   *
--*************************************************************************************
--*                                                                                   *
--* No contract-specific restrictions are in place for this code-generated file.      *
--*                                                                                   *
--*************************************************************************************
--*                                                                                   *
--* File Name:               application_control.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Application main procedure
--* Comments:                Header written by header.macro                           *
--*                          New file created by conversion of log facilities to be build-specific. 
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*  Main execution procedure 
--*  Target specific exception handling 
--*
--*  ERROR HANDLING                                                                   *
--*  --------------                                                                   *
--*  None                                                                             *
--*                                                                                   *
--*  SAFETY         : None                                                            *
--*  ------                                                                           *
--*                                                                                   *
--*  BUILD INFORMATION                                                                *
--* -----------------                                                                 *
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--*                                                                                   *
--*  
--*  
--*  
--*  
--*  
--*************************************************************************************
--*  COMPONENTS CONTAINED WITHIN THIS FILE                                            *
--*  Application_Control 
--*
--*************************************************************************************

--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--     db       27/06/01         PILOT_0000_1047   Conditional generate for exception handler
--
--     db       06/08/01         PILOT_0000_1416    requirements dump added
--
--     db       12/03/02         SRLE100002792     Exception_Reporter added.
--
--     db        5/04/02         SRLE100000001     Rename Multi_Domain_Scenario_Scheduler to be
--                                                 Events_Build_Set_Scenario_Scheduler
--
--     db       16/05/02         SRLE100003156     Rename filename to remove Events_Build_Set
--
--    ANF     04/07/06        001798 9SR056        Software Architecture Changes for Open Architecture
--
--    DNS     15/06/15          CR 10267           Add SBC312 and PPCM2 Targets rather than generic VxWorks
--    DNS     28/08/15          CR 10278           Add Temperature Monitoring for SBC312 Target.
--    DNS     26/10/15          CR 10278           Add OLS sync message when clock type is IP.
--    DNS     16/02/16          CR 10278           Change abobe message from Sync to Ready.
--    DNS     01/12/16          CR 10383           SBC312 target now SBC314
--    DNS     07/03/17          CR 10383           No Temperature Monitoring on CONS
--    DNS     27/09/17          CR 10438           Remove check on Q length + Timer logic reworked
--    DNS     22/01/18          CR 10437           Comms Startup reworked
--    DNS     17/05/18          CR 10488           DOS support reinstated.
--    DNS     26/07/18          CR 10474           Removed Temperature Monitoring completely.
-- **************************************************************************************

--
with Scenario_Scheduler;
with Application_Queue;
with Timer;
with Root_Object;


procedure Application_Control is

   Current_Queue_Length: integer;


begin

   Scenario_Scheduler;
  
   Current_Queue_Length := Application_Queue.Queue_Length (Application_Queue.Application_Queue );
  
   Main_Execution_Loop:
   loop
           
      Current_Queue_Length := Application_Queue.Queue_Length (Application_Queue.Application_Queue );
      if Current_Queue_Length > 0 then

         declare
            This_Event: Root_Object.Root_Event_Access_Type;
         begin                                         
            Application_Queue.Pop (This_Event, Application_Queue.Application_Queue);
            Root_Object.Event_Action (This_Event.all, This_Event);
         end; -- block

      end if; -- Current_Queue_Length > 0

      --
      -- Check through the timers to see if the previous thread started any
      --
      Timer.Iterate_Timers;

   end loop Main_Execution_Loop;
  



end Application_Control;

