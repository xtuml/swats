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
--* File Name:               Relationships_objP1_ObjP_Navigation_Service.adb
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
--* Domain Name              : Relationships
--* Domain Key Letter        : Relationships
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with Relationships_RPT4_Test_Unsupported_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_objP1_ObjP_Navigation_Service is
   
   procedure Relationships_objP1_ObjP_Navigation (
      Test : in     Application_Types.Base_Integer_Type) is
      
   begin
   -- start of objP1_ObjP_Navigation
      
      -- --------------------------------------------------------------------
      --  Composed relationships
      -- --------------------------------------------------------------------
      --  Initialise the fault flag
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "ObjP                            ",
         Purpose         => "Composed Relationships          ");
      
      
      --  Test 1
      --  Navigate from a single instance handle as the source
      -- End Test 1
      -- --------------------------------------------------------------------
      -- Test 2
      -- Navigate from a set of instance handles as the source
      -- End Test 2
      -- --------------------------------------------------------------------
      
      Relationships_RPT4_Test_Unsupported_Bridge.Relationships_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      -- --------------------------------------------------------------------
      
   end Relationships_objP1_ObjP_Navigation;
   
end Relationships_objP1_ObjP_Navigation_Service;

--
-- End of file Relationships_objP1_ObjP_Navigation_Service.adb
--
