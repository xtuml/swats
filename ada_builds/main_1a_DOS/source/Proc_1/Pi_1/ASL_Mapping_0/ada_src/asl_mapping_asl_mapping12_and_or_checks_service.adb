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
--* File Name:               ASL_Mapping12_And_Or_Checks_Service.adb
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
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_ASL_Mapping12_And_Or_Checks_Service is
   
   procedure ASL_Mapping_ASL_Mapping12_And_Or_Checks (
      Test_No      : in     Application_Types.Base_Integer_Type;
      Returning_No :    out Application_Types.Base_Integer_Type) is
      
      Test : Application_Types.Base_Integer_Type := 1;
      Val1 : Application_Types.Base_Integer_Type := 1;
      Val2 : Application_Types.Base_Integer_Type := 1;
      
      Bool1 : Boolean := Application_Types.Boolean_first;
      Bool2 : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of ASL_Mapping12_And_Or_Checks
      
      -- --------------------------------------------------------------------
      --  Logical operators AND and OR within if statements
      -- --------------------------------------------------------------------
      Test := Test_No;
      
      
      -- --------------------------------------------------------------------
      --  Test 1 - Check if AND then with boolean values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if AND then               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0911               ");
      
      
      Bool1 := True;
      Bool2 := True;
      
      
      if Bool1 and then
         Bool2 then
         
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
      --  Test 2 - Check if AND then with integer values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if AND then               ");
      
      Val1 := 10;
      Val2 := 20;
      
      if Val1 =  10 and then
         Val2 =  20 then
         
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
      --  Test 3 - Check if AND then with boolean values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if AND then               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0911               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0912               ");
      
      
      Bool1 := True;
      Bool2 := False;
      
      
      if Bool1 and then
         (not Bool2) then
         
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
      --  Test 4 - Check if AND then else with integer values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if AND then               ");
      
      Val1 := 10;
      Val2 := 20;
      
      if Val1 =  10 and then
         Val2 =  10 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Basic ASL                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------
      --  Test 5 - Check if OR then with boolean values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if OR then                ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0911               ");
      
      
      Bool1 := True;
      Bool2 := False;
      
      
      if Bool1 or else
         Bool2 then
         
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
      
      
      --  End Test 5
      -- --------------------------------------------------------------------
      --  Test 6 - Check if OR then with boolean values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if OR then                ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0911               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0912               ");
      
      
      Bool1 := True;
      Bool2 := True;
      
      
      if Bool1 or else
         Bool2 then
         
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
      
      --  End Test 6
      -- --------------------------------------------------------------------
      --  Test 7 - Check if OR then with integer values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if OR then                ");
      
      Val1 := 10;
      Val2 := 20;
      
      if Val1 =  10 or else
         Val2 =  10 then
         
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
      
      --  End Test 7
      -- --------------------------------------------------------------------
      --  Test 8 - Check if OR then with integer values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if OR then                ");
      
      Val1 := 10;
      Val2 := 20;
      
      if Val1 =  20 or else
         Val2 =  20 then
         
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
      
      
      --  End Test 8
      -- --------------------------------------------------------------------
      --  Test 9 - Check if OR then else with boolean values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if OR then                ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0911               ");
      
      
      Bool1 := False;
      Bool2 := False;
      
      
      if Bool1 or else
         Bool2 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Basic ASL                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 9
      -- --------------------------------------------------------------------
      --  Test 10 - Check if & then with integer values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if logical AND then       ");
      
      Val1 := 10;
      Val2 := 20;
      
      if Val1 =  10 and then
         Val2 =  20 then
         
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
      
      
      --  End Test 10
      -- --------------------------------------------------------------------
      --  Test 11 - Check if & then with boolean values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if logical AND then       ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0911               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0912               ");
      
      
      Bool1 := True;
      Bool2 := False;
      
      
      if Bool1 and then
         (not Bool2) then
         
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
      
      
      --  End Test 11
      -- --------------------------------------------------------------------
      --  Test 12 - Check if & then else with boolean values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if logical AND then       ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0911               ");
      
      
      Bool1 := False;
      Bool2 := False;
      
      
      if Bool1 and then
         Bool2 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Basic ASL                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 12
      -- --------------------------------------------------------------------
      --  Test 13 - Check if | then with integer values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if logical OR then        ");
      
      Val1 := 10;
      Val2 := 20;
      
      if Val1 =  10 or else
         Val2 =  10 then
         
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
      
      
      --  End Test 13
      -- --------------------------------------------------------------------
      --  Test 14 - Check if & then else with boolean values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if logical AND then       ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0911               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0912               ");
      
      
      Bool1 := True;
      Bool2 := False;
      
      
      if (not Bool1 and then
         Bool2) then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Basic ASL                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 14
      -- --------------------------------------------------------------------
      --  Test 15 - Check if | then else with boolean values
      -- --------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check AND and ORs in if statemen",
         Purpose         => "Check if logical OR then        ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0911               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0912               ");
      
      
      Bool1 := True;
      Bool2 := False;
      
      
      if (not Bool1 or else
         Bool2) then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Basic ASL                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 15
      -- --------------------------------------------------------------------
      
      Returning_No := Test;
      
      
   end ASL_Mapping_ASL_Mapping12_And_Or_Checks;
   
end ASL_Mapping_ASL_Mapping12_And_Or_Checks_Service;

--
-- End of file ASL_Mapping_ASL_Mapping12_And_Or_Checks_Service.adb
--
