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
--* File Name:               Events_objCREATE_1.ada
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
with Root_Object.Events.objCREATE;

-- List of bridges used
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT2_Test_Passed_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objCREATE)
   
   procedure Events_objCREATE_1 (Test          : in     Application_Types.Base_Integer_Type;
                                 Test_Number   : in     Application_Types.Base_Integer_Type;
                                 This_Instance : in out Root_Object.Object_Access) is
   
      
      newCREATE : Root_Object.Object_Access;
      
   begin
      
      -- -----------------------------------------------------------
      --  Creation state
      -- -----------------------------------------------------------
      -- -----------------------------------------------------------
      --  Test 1 - Create an instance of an object.
      -- -----------------------------------------------------------
      
      if Test =  1 then
         
         Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
            Test_Number     => Test_Number,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Events                          ",
            Invoking_Object => "Creation State                  ",
            Purpose         => "Creation state test             ");
         
         
         newCREATE := Root_Object.Events.objCREATE.Create;
         Root_Object.Events.objCREATE.Events_objCREATE_Type(newCREATE.all).ReferenceCREATE   := 1;
         Root_Object.Events.objCREATE.Events_objCREATE_Type(newCREATE.all).Current_State := Root_Object.Events.objCREATE.Creation_State;
         
         
         if newCREATE /= Null then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Creation State                  ",
               Test_Number        => Test_Number,
               Test_Value         => 0);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Creation State                  ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -1);
            
         end if;
         
      end if;
      
      Root_Object.Events.objCREATE.Process_Queue;
   end Events_objCREATE_1;
   
--
-- End of file Events_objCREATE_1.ada
--
