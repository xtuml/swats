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
--* File Name:               Events_CCS_2.ada
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
with Root_Object.Events.TE;
use type Root_Object.Events.TE.Object_State_Type;
use type Root_Object.Events.TE.Object_State_Type;

-- List of bridges used
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT2_Test_Passed_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.CCS)
   
   procedure Events_CCS_2 (Test_No       : in     Application_Types.Base_Integer_Type;
                           Which_Test    : in     Application_Types.Base_Text_Type;
                           This_Instance : in out Root_Object.Object_Access) is
   
      
      instTE : Root_Object.Object_Access;
      
   begin
      
      if Which_Test =  "Ignore                          " then
         instTE := Root_Object.Events.TE.Conditional_Find_One;
         while (instTE /= null) and then (not (Root_Object.Events.TE.Events_TE_Type(instTE.all).ID =  1) ) loop
            
            instTE := instTE.Next_Object;
         end loop;
         
         
         if Root_Object.Events.TE.Events_TE_type(instTE.all).Current_State =  Root_Object.Events.TE.Check_Ignore_State then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Correct State                   ",
               Test_Number        => Test_No,
               Test_Value         => 0);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Wrong State                     ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => -10);
            
         end if;
         
      end if;
      
      
      if Which_Test =  "Cannot Happen                   " then
         instTE := Root_Object.Events.TE.Conditional_Find_One;
         while (instTE /= null) and then (not (Root_Object.Events.TE.Events_TE_Type(instTE.all).ID =  3) ) loop
            
            instTE := instTE.Next_Object;
         end loop;
         
         
         if Root_Object.Events.TE.Events_TE_type(instTE.all).Current_State =  Root_Object.Events.TE.Check_Cannot_Happen_State then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Correct State                   ",
               Test_Number        => Test_No,
               Test_Value         => 0);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Wrong State                     ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => -10);
            
         end if;
         
      end if;
      
      Root_Object.Events.CCS.Process_Queue;
   end Events_CCS_2;
   
--
-- End of file Events_CCS_2.ada
--
