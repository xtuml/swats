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
--* File Name:               ASL_Mapping13_Comment_Checks_Service.adb
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
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_ASL_Mapping13_Comment_Checks_Service is
   
   procedure ASL_Mapping_ASL_Mapping13_Comment_Checks (
      Test_No      : in     Application_Types.Base_Integer_Type;
      Returning_No :    out Application_Types.Base_Integer_Type) is
      
      Test  : Application_Types.Base_Integer_Type := 1;
      Val1  : Application_Types.Base_Integer_Type := 1;
      Val2  : Application_Types.Base_Integer_Type := 1;
      Count : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of ASL_Mapping13_Comment_Checks
      
      -- --------------------------------------------------------------------
      --  Comment line checks
      --  Single and multiple line comments shall be supported
      --  1103-0000-01-1511
      -- --------------------------------------------------------------------
      Test := Test_No;
      
      -- --------------------------------------------------------------------
      --  Test 1 - Check that a single line of commented out ASL code is 
      --           not translated
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-1511               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Comment Checks                  ",
         Purpose         => "Check single line comment       ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0110               ");
      
      Val1 := 10;
      Val2 := 20;
      
      --  Val1 = Val2
      
      if Val1 =  10 then
         
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
      --  Test 2 - Check that multiple lines of commented out ASL code are 
      --           not translated
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-1511               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Comment Checks                  ",
         Purpose         => "Check multi line comments       ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0110               ");
      
      Val1 := 10;
      Val2 := 20;
      
      --  Multiple line comment not supported by WACA. Uncomment if this changes
      --    -{
      --       Val1 = 30
      --       Val2 = 40
      --       Val1 = Val2
      --    }-
      
      if Val1 =  10 then
         
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
      -- --------------------------------------------------------------------
      --  Test 3 - This test ensures that if a hash on its own does not 
      --            comment out the line following it
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objE                            ",
         Purpose         => "Check single hash does not comme");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0110               ");
      
      
      Count := 0;
      Count := Count + 1;
      
      
      if Count =  1 then
         
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
      
      --  End Test 3
      -- --------------------------------------------------------------------
      --  Test 4 - Check long comments
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objE                            ",
         Purpose         => "Check long comments             ");
      
      
      --  This comment lins was long (DNS)
      
      ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
         Test_Object_Domain => "Basic ASL                       ",
         Test_Number        => Test,
         Test_Value         => 0);
      
      Test := Test + 1;
      
      
      --  End Test 4
      
      Returning_No := Test;
      
      
   end ASL_Mapping_ASL_Mapping13_Comment_Checks;
   
end ASL_Mapping_ASL_Mapping13_Comment_Checks_Service;

--
-- End of file ASL_Mapping_ASL_Mapping13_Comment_Checks_Service.adb
--
