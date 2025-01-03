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
--* File Name:               ASL_Mapping2_basic_asl_divide_by_zero_Service.adb
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
with ASL_Mapping_RPT4_Test_Unsupported_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;
with ASL_Mapping_WAW1_What_Env_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_ASL_Mapping2_basic_asl_divide_by_zero_Service is
   
   procedure ASL_Mapping_ASL_Mapping2_basic_asl_divide_by_zero (
      Test_Start : in     Application_Types.Base_Integer_Type;
      Final_Test :    out Application_Types.Base_Integer_Type) is
      
      real_zero     : Application_Types.Base_Float_Type := 1.0;
      a_real_value  : Application_Types.Base_Float_Type := 1.0;
      a_real_result : Application_Types.Base_Float_Type := 1.0;
      
      Test          : Application_Types.Base_Integer_Type := 1;
      int_zero      : Application_Types.Base_Integer_Type := 1;
      an_int_value  : Application_Types.Base_Integer_Type := 1;
      an_int_result : Application_Types.Base_Integer_Type := 1;
      
      Host : Application_Types.Base_Text_Type := (others => ' ');
      
      Supported : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of ASL_Mapping2_basic_asl_divide_by_zero
      
      --  -------------------------------------------------------------------------------------------
      --  The following operators shall be supported: +, -, /, *, ^, unary - 
      --  1103-0000-01-0814
      --  -------------------------------------------------------------------------------------------
      Test := Test_Start;
      
      
      ASL_Mapping_WAW1_What_Env_Bridge.ASL_Mapping_WAW1_What_Env (
         Env_Text => Host);
      
      
      --  -------------------------------------------------------------------------------------------
      --  TEST 1 - Integer divide by zero tests
      --  -------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Basic ASL DBSS                  ",
         Purpose         => "Divide by integer zero          ");
      
      
      int_zero      := 0;
      an_int_value  := 10;
      an_int_result := 0;
      
      if Host =  "WACA                            " then
         Supported     := True;
         an_int_result := (an_int_value / int_zero);
         
      else
         
         Supported := False;
         
      end if;
      
      
      --  The result of a divide by zero is the result is set to 'last.
      --  Since this is target dependant, a check for non-zero is the easiest option.
      
      if Supported =  True then
         
         if an_int_result /= int_zero then
            
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
         
      else
         ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      --  -------------------------------------------------------------------------------------------
      --  TEST 2 - Integer divide by zero tests
      --  -------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Basic ASL DBSS                  ",
         Purpose         => "Negative divide by integer zero ");
      
      
      int_zero      := 0;
      an_int_value  := -10;
      an_int_result := 0;
      
      if Host =  "WACA                            " then
         Supported     := True;
         an_int_result := (an_int_value / int_zero);
         
      else
         
         Supported := False;
         
      end if;
      
      
      --  The result of a divide by zero is the result is set to 'last.
      --  Since this is target dependant, a check for non-zero is the easiest option.
      
      if Supported =  True then
         
         if an_int_result /= int_zero then
            
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
         
      else
         ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      --  -------------------------------------------------------------------------------------------
      --  TEST 3 - Integer divide by zero tests
      --  -------------------------------------------------------------------------------------------      
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Basic ASL DBSS                  ",
         Purpose         => "Zero divided by integer zero    ");
      
      
      int_zero      := 0;
      an_int_value  := 0;
      an_int_result := 0;
      
      if Host =  "WACA                            " then
         Supported     := True;
         an_int_result := (an_int_value / int_zero);
         
      else
         
         Supported := False;
         
      end if;
      
      
      if Supported =  True then
         
         if an_int_result =  int_zero then
            
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
         
      else
         ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      --  -------------------------------------------------------------------------------------------
      --  TEST 4 - Real divide by zero tests
      --  -------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Basic ASL DBSS                  ",
         Purpose         => "Divide by real zero             ");
      
      
      real_zero     := 0.0;
      a_real_value  := 10.0;
      a_real_result := 0.0;
      
      if Host =  "WACA                            " then
         Supported     := True;
         a_real_result := (a_real_value / real_zero);
         
      else
         
         Supported := False;
         
      end if;
      
      
      if Supported =  True then
         
         if a_real_result /= real_zero then
            
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
         
      else
         ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      --  -------------------------------------------------------------------------------------------
      --  TEST 5 - Real divide by zero tests
      --  -------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "basic asl DBSS                  ",
         Purpose         => "Negative divide by real zero    ");
      
      
      real_zero     := 0.0;
      a_real_value  := -10.0;
      a_real_result := 0.0;
      
      if Host =  "WACA                            " then
         Supported     := True;
         a_real_result := (a_real_value / real_zero);
         
      else
         
         Supported := False;
         
      end if;
      
      
      if Supported =  True then
         
         if a_real_result /= real_zero then
            
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
         
      else
         ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      --  -------------------------------------------------------------------------------------------
      --  TEST 6 - Real divide by zero tests
      --  -------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Basic ASL DBSS                  ",
         Purpose         => "Zero divided by real zero       ");
      
      
      real_zero     := 0.0;
      a_real_value  := 0.0;
      a_real_result := 0.0;
      
      if Host =  "WACA                            " then
         Supported     := True;
         a_real_result := (a_real_value / real_zero);
         
      else
         
         Supported := False;
         
      end if;
      
      
      if Supported =  True then
         
         if a_real_result =  real_zero then
            
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
         
      else
         ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 6
      --  ------------------------------------------------------------------------------
      
      Final_Test := Test;
      
      
   end ASL_Mapping_ASL_Mapping2_basic_asl_divide_by_zero;
   
end ASL_Mapping_ASL_Mapping2_basic_asl_divide_by_zero_Service;

--
-- End of file ASL_Mapping_ASL_Mapping2_basic_asl_divide_by_zero_Service.adb
--
