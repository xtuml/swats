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
--* File Name:               Events_TE_3.ada
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


separate(Root_Object.Events.TE)
   
   procedure Events_TE_3 (Test_No       : in     Application_Types.Base_Integer_Type;
                          Effect_Type   : in     Application_Types.Base_Text_Type;
                          This_Instance : in out Root_Object.Object_Access) is
   
      
   begin
      
      if Effect_Type =  "Ignored                         " then
         
         if Root_Object.Events.TE.Events_TE_type(This_Instance.all).Result =  10 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Ignored event                   ",
               Test_Number        => Test_No,
               Test_Value         => 0);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Ignored event                   ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => Root_Object.Events.TE.Events_TE_type(This_Instance.all).Result);
            
         end if;
         
      end if;
      
      
      if Effect_Type =  "Cannot Happen                   " then
         
         if Root_Object.Events.TE.Events_TE_type(This_Instance.all).Result =  10 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Cannot Happen event             ",
               Test_Number        => Test_No,
               Test_Value         => 0);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Cannot Happen event             ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => Root_Object.Events.TE.Events_TE_type(This_Instance.all).Result);
            
         end if;
         
      end if;
      
      
      if Effect_Type =  "Undefined                       " then
         
         if Root_Object.Events.TE.Events_TE_type(This_Instance.all).Result =  10 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Undefined event                 ",
               Test_Number        => Test_No,
               Test_Value         => 0);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Undefined event                 ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => Root_Object.Events.TE.Events_TE_type(This_Instance.all).Result);
            
         end if;
         
      end if;
      
      Root_Object.Events.TE.Process_Queue;
   end Events_TE_3;
   
--
-- End of file Events_TE_3.ada
--
