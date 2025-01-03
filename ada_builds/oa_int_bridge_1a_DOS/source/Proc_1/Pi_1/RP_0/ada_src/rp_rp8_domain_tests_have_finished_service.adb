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
--* File Name:               RP8_Domain_Tests_Have_Finished_Service.adb
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
with Root_Object.RP.DD;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP8_Domain_Tests_Have_Finished_Service is
   
   procedure RP_RP8_Domain_Tests_Have_Finished (
      Completed_Domain_Name : in     Application_Types.Base_Text_Type;
      Domain_Identifer      : in     Application_Types.Base_Integer_Type) is
      
      The_Domain_Details : Root_Object.Object_Access;
      
   begin
   -- start of RP8_Domain_Tests_Have_Finished
      
      -- Find the only domain currently in existence.
      The_Domain_Details := Root_Object.RP.DD.Conditional_Find_One;
      while (The_Domain_Details /= null) and then (not (Root_Object.RP.DD.RP_DD_Type(The_Domain_Details.all).Domain_Number =  Domain_Identifer) ) loop
         
         The_Domain_Details := The_Domain_Details.Next_Object;
      end loop;
      
      
      if The_Domain_Details /= Null then
         
         if Root_Object.RP.DD.RP_DD_type(The_Domain_Details.all).Domain_Name =  Completed_Domain_Name then
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.RP.DD.RP_DD1'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.RP.DD.DD1,
                  Target_Instance  => The_Domain_Details);
               
               Application_Queue.Push (
                  Item        => Pushed_Event,
                  Target_Fifo => Application_Queue.Application_Queue);
            end;
         else
            
            RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
               Detail           => "Mismatched domains to report fro");
            
         end if;
         
      else
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "No domain found to report from  ");
         
      end if;
      
      
   end RP_RP8_Domain_Tests_Have_Finished;
   
end RP_RP8_Domain_Tests_Have_Finished_Service;

--
-- End of file RP_RP8_Domain_Tests_Have_Finished_Service.adb
--
