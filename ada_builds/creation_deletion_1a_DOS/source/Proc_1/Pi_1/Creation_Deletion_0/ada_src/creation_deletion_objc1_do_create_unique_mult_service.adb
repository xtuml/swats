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
--* File Name:               Creation_Deletion_objC1_do_create_unique_mult_Service.adb
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
--* Domain Name              : Creation_Deletion
--* Domain Key Letter        : Creation_Deletion
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with Creation_Deletion_RPT4_Test_Unsupported_Bridge;
with Creation_Deletion_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Creation_Deletion_objC1_do_create_unique_mult_Service is
   
   procedure Creation_Deletion_objC1_do_create_unique_mult (
      Test_Number          : in     Application_Types.Base_Integer_Type;
      Returned_Test_Number :    out Application_Types.Base_Integer_Type) is
      
      Test : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of objC1_do_create_unique_mult
      
      -- -------------------------------------------------------------------------
      --  Create unique state where the object has multiple preferred identifiers
      -- -------------------------------------------------------------------------
      Test := Test_Number;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objC                            ",
         Purpose         => "Create unique using multiple ids");
      
      Creation_Deletion_RPT4_Test_Unsupported_Bridge.Creation_Deletion_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      Returned_Test_Number := Test;
      
      
      -- -------------------------------------------------------------------------
      
   end Creation_Deletion_objC1_do_create_unique_mult;
   
end Creation_Deletion_objC1_do_create_unique_mult_Service;

--
-- End of file Creation_Deletion_objC1_do_create_unique_mult_Service.adb
--
