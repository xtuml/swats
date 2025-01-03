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
--* File Name:               ASL_Mapping15_Check_Identifiers_Service.adb
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
--* Domain Name              : ASL_Mapping
--* Domain Key Letter        : ASL_Mapping
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.ASL_Mapping.objLR;
with Root_Object.ASL_Mapping.objAR;
with Root_Object.ASL_Mapping.objRight;
with Root_Object.ASL_Mapping.objLeft;

-- List of bridges used
with ASL_Mapping_RPT5_Test_Text_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_ASL_Mapping15_Check_Identifiers_Service is
   
   procedure ASL_Mapping_ASL_Mapping15_Check_Identifiers (
      Test_No      : in     Application_Types.Base_Integer_Type;
      Returning_No :    out Application_Types.Base_Integer_Type) is
      
      LeftObject  : Root_Object.Object_Access;
      RightObject : Root_Object.Object_Access;
      ARObject    : Root_Object.Object_Access;
      LRObject    : Root_Object.Object_Access;
      
      Test : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of ASL_Mapping15_Check_Identifiers
      Test := Test_No;
      
      -- --------------------------------------------------------------------
      --  Test 1 - Check that identifying attributes are picked up
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0131               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check identifiers               ",
         Purpose         => "Check identifying attributes    ");
      
      
      LeftObject := Root_Object.ASL_Mapping.objLeft.Create;
      Root_Object.ASL_Mapping.objLeft.ASL_Mapping_objLeft_Type(LeftObject.all).idL := 1;
      
      
      RightObject := Root_Object.ASL_Mapping.objRight.Create;
      Root_Object.ASL_Mapping.objRight.ASL_Mapping_objRight_Type(RightObject.all).idR := 1;
      
      
      ARObject := Root_Object.ASL_Mapping.objAR.Create;
      Root_Object.ASL_Mapping.objAR.ASL_Mapping_objAR_Type(ARObject.all).idAR := 1;
      
      
      LRObject := Root_Object.ASL_Mapping.objLR.Create;
      Root_Object.ASL_Mapping.objLR.ASL_Mapping_objLR_Type(LRObject.all).idL          := 1;
      Root_Object.ASL_Mapping.objLR.ASL_Mapping_objLR_Type(LRObject.all).idR          := 1;
      
      
      if Root_Object.ASL_Mapping.objLR.ASL_Mapping_objLR_type(LRObject.all).idL =  1 then
         
         if Root_Object.ASL_Mapping.objLR.ASL_Mapping_objLR_type(LRObject.all).idR =  1 then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "Identifying Attribute           ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "Identifying Attribute           ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Identifying Attribute           ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      Test := Test + 1;
      
      -- --------------------------------------------------------------------
      --  Test 2 - Check that non-identifying attributes are ignored
      --           N.B. This test can only be confirmed by inspection
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0131               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check identifiers               ",
         Purpose         => "Check identifying attributes    ");
      
      ASL_Mapping_RPT5_Test_Text_Bridge.ASL_Mapping_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "Confirmed on inspection         ");
      
      ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
         Test_Object_Domain => "Non-Identifying Attribute       ",
         Test_Number        => Test,
         Test_Value         => 0);
      
      Test := Test + 1;
      
      
      --  End Test 2
      
      Returning_No := Test;
      
      
   end ASL_Mapping_ASL_Mapping15_Check_Identifiers;
   
end ASL_Mapping_ASL_Mapping15_Check_Identifiers_Service;

--
-- End of file ASL_Mapping_ASL_Mapping15_Check_Identifiers_Service.adb
--
