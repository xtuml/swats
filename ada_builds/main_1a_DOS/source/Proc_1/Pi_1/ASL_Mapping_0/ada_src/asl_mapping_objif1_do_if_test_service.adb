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
--* File Name:               ASL_Mapping_objIF1_do_if_test_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Object based function for performing 'if' tests. Tests simple logical expre
--*                          ssions on Integer local variables and requires instance creation, attribute
--*                           assignment.
--*                          
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
with Root_Object.ASL_Mapping.objIF;

-- List of bridges used
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT5_Test_Text_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_objIF1_do_if_test_Service is
   
   procedure ASL_Mapping_objIF1_do_if_test (
      Test_Start : in     Application_Types.Base_Integer_Type;
      Final_Test :    out Application_Types.Base_Integer_Type) is
      
      newIF : Root_Object.Object_Access;
      
      Test : Application_Types.Base_Integer_Type := 1;
      Temp : Application_Types.Base_Integer_Type := 1;
      
      A : Boolean := Application_Types.Boolean_first;
      B : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objIF1_do_if_test
      
      -- -------------------------------------------------------------------------
      --  IF statement
      --  The ASL <if> statement shall be supported
      --  1103-0000-01-0421
      --  The ASL <if ... else> statement shall be supported
      --  1101-0000-01-0422
      -- -------------------------------------------------------------------------
      --  create an instance to remember to test results
      
      newIF := Root_Object.ASL_Mapping.objIF.Create;
      Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(newIF.all).ReferenceIF  := 1;
      Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(newIF.all).ResultA    := 0;
      
      Test := Test_Start;
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Enter IF THEN stage of condition with an integer value
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0422               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objIF                           ",
         Purpose         => "IF test enter THEN stage        ");
      
      ASL_Mapping_RPT5_Test_Text_Bridge.ASL_Mapping_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "The_First_Comment               ");
      
      ASL_Mapping_RPT5_Test_Text_Bridge.ASL_Mapping_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "The_Second_Comment              ");
      
      
      --  Initialise temporary variable
      Temp := 1;
      
      
      --  Perform the test
      
      if Temp =  1 then
         
         Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA := 10;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objIF                           ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objIF                           ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - Enter ELSE stage of condition
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0422               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objIF                           ",
         Purpose         => "IF test enter ELSE stage        ");
      
      
      --  Initialise temporary variable
      Temp := 1;
      
      
      --  Perform the test
      
      if Temp =  2 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objIF                           ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         
         Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA := 20;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objIF                           ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - IF-THEN, enter THEN part
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0421               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objIF                           ",
         Purpose         => "IF test enter THEN part         ");
      
      Temp := 2;
      
      
      --  Check temporary variables values
      
      if Temp /= 2 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objIF                           ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      --  Perform the test
      
      if Temp =  2 then
         
         Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA := 30;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objIF                           ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - IF-THEN statement where condition is unfulfilled
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0421               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objIF                           ",
         Purpose         => "If test condition unfulfilled   ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0422               ");
      
      Temp := 2;
      
      --  Perform the test
      
      if Temp =  3 then
         Temp := 4;
         
         
         --  This statement should not be entered
      end if;
      
      --  Check the results
      
      if Temp =  4 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objIF                           ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         
         Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA := 40;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objIF                           ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 - Boolean test should enter IF THEN condition
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0422               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objIF                           ",
         Purpose         => "Boolean tests TRUE 1            ");
      
      
      A := True;
      B := True;
      
      
      if A =  B then
         
         Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA := 50;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Boolean A = B TRUE              ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Boolean A = B TRUE              ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      --  Test 6 - Boolean test should enter IF THEN condition
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0422               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objIF                           ",
         Purpose         => "Boolean tests TRUE 2            ");
      
      
      A := True;
      
      
      if A then
         
         Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA := 60;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Boolean A TRUE                  ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Boolean A TRUE                  ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 6
      -- -------------------------------------------------------------------------
      --  Test 7 - Boolen test should enter IF THEN condition
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0422               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objIF                           ",
         Purpose         => "Boolean tests FALSE 1           ");
      
      
      A := True;
      B := False;
      
      
      if A /= B then
         
         Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA := 70;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Boolean A != B FALSE            ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Boolean A != B FALSE            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 7
      -- -------------------------------------------------------------------------
      --  Test 8 - Should enter IF THEN Condition
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0422               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objIF                           ",
         Purpose         => "Boolean tests FALSE 2           ");
      
      
      A := True;
      B := False;
      
      
      if (not B) then
         
         Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA := 80;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Boolean !B FALSE                ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Boolean !B FALSE                ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  Test 8
      -- -------------------------------------------------------------------------
      --  Test 9 - Boolean test should enter ELSE part of condition
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0422               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objIF                           ",
         Purpose         => "Boolean tests FALSE 3           ");
      
      
      A := True;
      B := False;
      
      
      if (not A) then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Boolean !A TRUE                 ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         
         Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA := 90;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Boolean !A TRUE                 ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_type(newIF.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 9
      -- -------------------------------------------------------------------------
      
      Final_Test := Test;
      
      
   end ASL_Mapping_objIF1_do_if_test;
   
end ASL_Mapping_objIF1_do_if_test_Service;

--
-- End of file ASL_Mapping_objIF1_do_if_test_Service.adb
--
