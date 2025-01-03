--*************************************************************************************
--*                            UNCLASSIFIED                                           *
--*************************************************************************************
--*                            BAE SYSTEMS PROPRIETARY                                *
--*************************************************************************************
--*          Export Control Restrictions: NONE                                        *
--*************************************************************************************
--*                                                                                   *
--*               Copyright 2024 BAE Systems. All Rights Reserved.                    *
--*                                                                                   *
--*************************************************************************************
--*                                                                                   *
--* No contract-specific restrictions are in place for this code-generated file.      *
--*                                                                                   *
--*************************************************************************************
--*                                                                                   *
--* File Name:               RP11_Perform_Req_Analysis_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Not Defined
--* Comments:                Header written by ASL Translator
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*
--*  ERROR HANDLING                                                                   *
--*  --------------                                                                   *
--*  None                                                                             *
--*                                                                                   *
--*  SAFETY         : None                                                            *
--*  ------                                                                           *
--*                                                                                   *
--*  BUILD INFORMATION                                                                *
--*  -----------------                                                                *
--*                                                                                   *
--* Domain Name              : Report
--* Domain Key Letter        : RP
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.RP.TS;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Queue;

with Test_Suite_Text_IO;

with Application_Types;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP11_Perform_Req_Analysis_Service is
   
   procedure RP_RP11_Perform_Req_Analysis is
      
      The_Test_Suite : Root_Object.Object_Access;
      
   begin
   -- start of RP11_Perform_Req_Analysis
      --
      -- start of Ada inline code insertion
      
            
         Test_Suite_Text_IO.Dump_String(Value => "Captured requirements analysis started");
      
      -- end of Ada inline code insertion
      --
      
      The_Test_Suite := Root_Object.RP.TS.Unconditional_Find_One;
      
      if The_Test_Suite /= Null then
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.RP.TS.RP_TS3'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.RP.TS.TS3,
               Target_Instance  => The_Test_Suite);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      else
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail           => "Requirements capture not enabled");
         
      end if;
      
      
   end RP_RP11_Perform_Req_Analysis;
   
end RP_RP11_Perform_Req_Analysis_Service;

--
-- End of file RP_RP11_Perform_Req_Analysis_Service.adb
--
