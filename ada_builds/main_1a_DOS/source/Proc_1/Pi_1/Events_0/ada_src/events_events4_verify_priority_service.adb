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
--* File Name:               Events4_Verify_Priority_Service.adb
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
--* Domain Name              : Events
--* Domain Key Letter        : Events
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Events.TD;

-- List of services used
with Events_Events2_Delete_Report_Data_Service;

-- List of bridges used
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT2_Test_Passed_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Events_Events4_Verify_Priority_Service is
   
   procedure Events_Events4_Verify_Priority (
      Ref_No   : in     Application_Types.Base_Integer_Type;
      Event_No : in     Application_Types.Base_Integer_Type;
      Test_No  : in     Application_Types.Base_Integer_Type) is
      
      my_test : Root_Object.Object_Access;
      
      The_Test_Number : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of Events4_Verify_Priority
      
      if Event_No =  6 then
         
         if Ref_No =  60 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Event Priority                  ",
               Test_Number        => Test_No,
               Test_Value         => 0);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Event Priority                  ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => Ref_No);
            
         end if;
         
         my_test := Root_Object.Events.TD.Unconditional_Find_One;
         The_Test_Number := Root_Object.Events.TD.Events_TD_type(my_test.all).Current_Test_Number;
         
         
         Events_Events2_Delete_Report_Data_Service.Events_Events2_Delete_Report_Data;
         
         my_test := Root_Object.Events.TD.Unconditional_Find_One;
         
         if my_test /= Null then
            
            Root_Object.Events.TD.Delete (
               Old_Instance => my_test);
         end if;
         
      end if;
      
      
   end Events_Events4_Verify_Priority;
   
end Events_Events4_Verify_Priority_Service;

--
-- End of file Events_Events4_Verify_Priority_Service.adb
--
