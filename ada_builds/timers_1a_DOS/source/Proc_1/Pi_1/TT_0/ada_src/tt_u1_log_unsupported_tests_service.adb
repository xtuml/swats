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
--* File Name:               TT_U1_log_unsupported_tests_Service.adb
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
--* Domain Name              : Test_Timers
--* Domain Key Letter        : TT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.TT.TS;

-- List of bridges used
with TT_RPT3_Test_Failed_Bridge;
with TT_RPT4_Test_Unsupported_Bridge;
with TT_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body TT_U1_log_unsupported_tests_Service is
   
   procedure TT_U1_log_unsupported_tests is
      
      the_test_scheduler : Root_Object.Object_Access;
      
      test_number : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of U1_log_unsupported_tests
      the_test_scheduler := Root_Object.TT.TS.Unconditional_Find_One;
      test_number := Root_Object.TT.TS.TT_TS_type(the_test_scheduler.all).current_test_number + 1;
      
      TT_RPT1_Start_Test_Bridge.TT_RPT1_Start_Test (
         Test_Number     => test_number,
         Requid          => "1241-0000-01-0901               ",
         Invoking_Domain => "Test Timers                     ",
         Invoking_Object => "Unsupported Tests               ",
         Purpose         => "Support for Timers              ");
      
      TT_RPT4_Test_Unsupported_Bridge.TT_RPT4_Test_Unsupported (
         Unsupported_Test_Number => test_number);
      
      test_number := test_number + 1;
      
      TT_RPT1_Start_Test_Bridge.TT_RPT1_Start_Test (
         Test_Number     => test_number,
         Requid          => "1241-0000-01-0902               ",
         Invoking_Domain => "Test Timers                     ",
         Invoking_Object => "Unsupported Tests               ",
         Purpose         => "Timers are serviced             ");
      
      TT_RPT4_Test_Unsupported_Bridge.TT_RPT4_Test_Unsupported (
         Unsupported_Test_Number => test_number);
      
      test_number := test_number + 1;
      
      TT_RPT1_Start_Test_Bridge.TT_RPT1_Start_Test (
         Test_Number     => test_number,
         Requid          => "1241-0000-01-0907               ",
         Invoking_Domain => "Test Timers                     ",
         Invoking_Object => "Unsupported Tests               ",
         Purpose         => "Determine time remaining before ");
      
      TT_RPT4_Test_Unsupported_Bridge.TT_RPT4_Test_Unsupported (
         Unsupported_Test_Number => test_number);
      
      test_number := test_number + 1;
      
      TT_RPT1_Start_Test_Bridge.TT_RPT1_Start_Test (
         Test_Number     => test_number,
         Requid          => "1241-0000-01-0917               ",
         Invoking_Domain => "Test Timers                     ",
         Invoking_Object => "Unsupported Tests               ",
         Purpose         => "No limit on number of Timers    ");
      
      TT_RPT3_Test_Failed_Bridge.TT_RPT3_Test_Failed (
         Failed_Domain_Object => "No limit on number of Timers    ",
         Failed_Test_Number   => test_number,
         Failed_Test_Value    => 0);
      
      test_number := test_number + 1;
      
      TT_RPT1_Start_Test_Bridge.TT_RPT1_Start_Test (
         Test_Number     => test_number,
         Requid          => "1241-0000-01-0918               ",
         Invoking_Domain => "Test Timers                     ",
         Invoking_Object => "Unsupported Tests               ",
         Purpose         => "Timers shall not waste memory   ");
      
      TT_RPT4_Test_Unsupported_Bridge.TT_RPT4_Test_Unsupported (
         Unsupported_Test_Number => test_number);
      
      test_number := test_number + 1;
      
      TT_RPT1_Start_Test_Bridge.TT_RPT1_Start_Test (
         Test_Number     => test_number,
         Requid          => "1241-0000-01-0919               ",
         Invoking_Domain => "Test Timers                     ",
         Invoking_Object => "Unsupported Tests               ",
         Purpose         => "Get current time                ");
      
      TT_RPT4_Test_Unsupported_Bridge.TT_RPT4_Test_Unsupported (
         Unsupported_Test_Number => test_number);
      
      test_number := test_number + 1;
      
      TT_RPT1_Start_Test_Bridge.TT_RPT1_Start_Test (
         Test_Number     => test_number,
         Requid          => "1241-0000-01-0920               ",
         Invoking_Domain => "Test Timers                     ",
         Invoking_Object => "Unsupported Tests               ",
         Purpose         => "Int & Float values for 1241-0000");
      
      TT_RPT4_Test_Unsupported_Bridge.TT_RPT4_Test_Unsupported (
         Unsupported_Test_Number => test_number);
      
      test_number := test_number + 1;
      
      
      TT_RPT1_Start_Test_Bridge.TT_RPT1_Start_Test (
         Test_Number     => test_number,
         Requid          => "1241-0000-01-0921               ",
         Invoking_Domain => "Test Timers                     ",
         Invoking_Object => "Unsupported Tests               ",
         Purpose         => "Access 1241-0000-01-0920 from AS");
      
      TT_RPT4_Test_Unsupported_Bridge.TT_RPT4_Test_Unsupported (
         Unsupported_Test_Number => test_number);
      
      
      Root_Object.TT.TS.TT_TS_type(the_test_scheduler.all).current_test_number := test_number;
      
      
   end TT_U1_log_unsupported_tests;
   
end TT_U1_log_unsupported_tests_Service;

--
-- End of file TT_U1_log_unsupported_tests_Service.adb
--
