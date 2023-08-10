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
--* File Name:               Events_CP_1.ada
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

-- List of bridges used
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT2_Test_Passed_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.CP)
   
   procedure Events_CP_1 (Start_Val     : in     Application_Types.Base_Integer_Type;
                          Got_To_End    : in     Boolean;
                          This_Instance : in out Root_Object.Object_Access) is
   
      
   begin
      
      if Got_To_End then
         
         if Start_Val =  10 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Paramaters                      ",
               Test_Number        => Root_Object.Events.CP.Events_CP_type(This_Instance.all).Number_Of_Test,
               Test_Value         => 0);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Paramaters                      ",
               Failed_Test_Number   => Root_Object.Events.CP.Events_CP_type(This_Instance.all).Number_Of_Test,
               Failed_Test_Value    => Start_Val);
            
         end if;
         
      else
         Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
            Failed_Domain_Object => "Paramaters                      ",
            Failed_Test_Number   => Root_Object.Events.CP.Events_CP_type(This_Instance.all).Number_Of_Test,
            Failed_Test_Value    => Start_Val);
         
      end if;
      
      Root_Object.Events.CP.Process_Queue;
   end Events_CP_1;
   
--
-- End of file Events_CP_1.ada
--
