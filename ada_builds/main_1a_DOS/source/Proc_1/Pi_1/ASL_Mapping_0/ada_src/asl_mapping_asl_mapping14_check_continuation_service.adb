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
--* File Name:               ASL_Mapping14_Check_Continuation_Service.adb
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

-- List of bridges used
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_ASL_Mapping14_Check_Continuation_Service is
   
   procedure ASL_Mapping_ASL_Mapping14_Check_Continuation (
      Test_No      : in     Application_Types.Base_Integer_Type;
      Returning_No :    out Application_Types.Base_Integer_Type) is
      
      Test : Application_Types.Base_Integer_Type := 1;
      Val1 : Application_Types.Base_Integer_Type := 1;
      Val2 : Application_Types.Base_Integer_Type := 1;
      Val3 : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of ASL_Mapping14_Check_Continuation
      
      -- --------------------------------------------------------------------
      --  Line Continuation character check
      --  The use of the line continuation '\' character placed at the end
      --  of a line to indicate that a following line is to be included as
      --  part of the same ASL statement shall be supported
      --  1103-0000-01-0313
      -- --------------------------------------------------------------------
      Test := Test_No;
      
      -- --------------------------------------------------------------------
      --  Test 1 - Check multi line statments
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0313               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Comment Checks                  ",
         Purpose         => "Check multi line statement      ");
      
      Val1 := 10;
      Val2 := 20;
      Val1 := Val1 + Val2;
      
      if Val1 =  30 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Basic ASL                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 1
      -- --------------------------------------------------------------------
      --  Test 2 - Check multi line statments
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0313               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Comment Checks                  ",
         Purpose         => "Check multi line statement      ");
      
      Val1 := 10;
      Val2 := 20;
      Val3 := 30;
      Val1 := Val1 + Val2 + Val3;
      
      if Val1 =  60 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Basic ASL                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      Test := Test + 1;
      
      
      --  End Test 2
      
      Returning_No := Test;
      
      
   end ASL_Mapping_ASL_Mapping14_Check_Continuation;
   
end ASL_Mapping_ASL_Mapping14_Check_Continuation_Service;

--
-- End of file ASL_Mapping_ASL_Mapping14_Check_Continuation_Service.adb
--
