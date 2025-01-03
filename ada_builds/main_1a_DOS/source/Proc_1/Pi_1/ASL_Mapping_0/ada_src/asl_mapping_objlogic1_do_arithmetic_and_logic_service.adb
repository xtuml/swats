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
--* File Name:               ASL_Mapping_objLOGIC1_do_arithmetic_and_logic_Service.adb
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
with Root_Object.ASL_Mapping.objLOGIC;

-- List of bridges used
with ASL_Mapping_RPT4_Test_Unsupported_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;
with ASL_Mapping_WAW1_What_Env_Bridge;

-- List of domain types used
with ASL_Mapping_Domain_Types;
use type ASL_Mapping_Domain_Types.Enum;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_objLOGIC1_do_arithmetic_and_logic_Service is
   
   procedure ASL_Mapping_objLOGIC1_do_arithmetic_and_logic (
      an_instanceLOGIC : in     Root_Object.Object_Access;
      Test_Start       : in     Application_Types.Base_Integer_Type;
      Final_Test       :    out Application_Types.Base_Integer_Type) is
      
      Real_Temp : Application_Types.Base_Float_Type := 1.0;
      
      Test  : Application_Types.Base_Integer_Type := 1;
      Temp  : Application_Types.Base_Integer_Type := 1;
      tempA : Application_Types.Base_Integer_Type := 1;
      tempB : Application_Types.Base_Integer_Type := 1;
      tempC : Application_Types.Base_Integer_Type := 1;
      Val1  : Application_Types.Base_Integer_Type := 1;
      Val2  : Application_Types.Base_Integer_Type := 1;
      Val3  : Application_Types.Base_Integer_Type := 1;
      
      Host : Application_Types.Base_Text_Type := (others => ' ');
      
      Has_Failed           : Boolean := Application_Types.Boolean_first;
      Supported            : Boolean := Application_Types.Boolean_first;
      btemp                : Boolean := Application_Types.Boolean_first;
      btempA               : Boolean := Application_Types.Boolean_first;
      Local_Boolean_Result : Boolean := Application_Types.Boolean_first;
      BoolVal1             : Boolean := Application_Types.Boolean_first;
      BoolVal2             : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objLOGIC1_do_arithmetic_and_logic
      
      -- -------------------------------------------------------------------------
      --  Arithmetical calculations
      --  Assigning arithmetic calculations to a variable shall be supported
      --  1103-0000-01-0811
      --  Assigning arithmetic calculations to an attribute shall be supported
      --  1103-0000-01-0812
      --  Arithmetic operations shall be limited to the numeric base type Integer
      --  and Real only
      --  1103-0000-01-0813
      --  The following operators shall be supported: +, -, /, *, ^, unary -
      --  1103-0000-01-0814
      --  The rules of precedence shall be defined by the Ada language and should
      --  be clarified with brackets where necessary
      --  1103-0000-01-0815
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_WAW1_What_Env_Bridge.ASL_Mapping_WAW1_What_Env (
         Env_Text => Host);
      
      Test := Test_Start;
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Arithmetical operation +
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0811               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Arithmetical ADD operation      ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0814               ");
      
      Temp := 1 + 2 + 3;
      
      
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
      
      
      if Temp /= 6 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - Arithmetical operation -
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0811               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Arithmetical SUBTRACT operation ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0814               ");
      
      Temp := 10 - 3 - 4 - 1;
      
      
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
      
      
      if Temp /= 2 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - Arithmetical DIVIDE operation
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0811               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Arithmetical DIVIDE operation   ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0814               ");
      
      
      Has_Failed := False;
      Temp       := 10 / 2;
      
      
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
      
      
      if Temp /= 5 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
         
         Has_Failed := True;
      end if;
      
      Temp := 16 / 4 / 2;
      
      
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
      
      
      if Temp /= 2 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -20);
         
         
         Has_Failed := True;
         
      end if;
      
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - Arithmetical operation *
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0811               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Arithmetical MULTIPLY operation ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0814               ");
      
      
      Has_Failed := False;
      Temp       := 10 * 2;
      
      
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
      
      
      if Temp /= 20 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
         
         Has_Failed := True;
      end if;
      
      Temp := 10 * 2 * 5;
      
      
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
      
      
      if Temp /= 100 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -20);
         
         
         Has_Failed := True;
         
      end if;
      
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 - Arithmetical operation ^
      --           The following is not supported by ISIM
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Arithmetical POWER operation 1  ");
      
      
      if Host =  "ISIM                            " then
         
         Supported := False;
         Temp      := 1;
      else
         Supported := True;
         
         --
         -- start of Ada inline code insertion
                  Temp := 2**10;
               -- end of Ada inline code insertion
         --
         
      end if;
      
      
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
      
      
      if Supported =  True then
         
         if Temp /= 1024 then
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
         else
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
            
         end if;
         
      else
         ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      --  -------------------------------------------------------------------------
      --  Test 6 - Arithmetical POWER operation 2
      --           The following is not supported by ISIM
      --  -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Arithmetical POWER operation 2  ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0815               ");
      
      
      if Host =  "ISIM                            " then
         
         Supported := False;
         Temp      := 1;
      else
         Supported := True;
         
         --
         -- start of Ada inline code insertion
                  Temp := (2**2)**2;
               -- end of Ada inline code insertion
         --
         
      end if;
      
      
      if Supported =  True then
         
         Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
         
         
         if Temp /= 16 then
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
         else
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
            
         end if;
         
      else
         ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 6
      -- -------------------------------------------------------------------------
      --  Test 7 - Complex arithmetic operations 1
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Complex arithmetic operations 1 ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0815               ");
      
      
      Has_Failed := False;
      
      
      --  Complex logical operations
      
      if Host =  "ISIM                            " then
         
         Supported := False;
         Temp      := 1;
      else
         Supported := True;
         
         --
         -- start of Ada inline code insertion
                  Temp := Application_Types.Base_Integer_Type((3 * 4) + 13)**2;
               -- end of Ada inline code insertion
         --
         
      end if;
      
      
      if Supported =  True then
         
         Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
         
         
         if Temp /= 625 then
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
         else
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
            
         end if;
         
      else
         ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 7
      -- -------------------------------------------------------------------------
      --  Test 8 -Complex arithmetic operations 2
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Complex arithmetic operations 2 ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0815               ");
      
      
      if Host =  "ISIM                            " then
         
         Supported := False;
         Temp      := 1;
      else
         Supported := True;
         
         --
         -- start of Ada inline code insertion
                  Temp := 100 - Application_Types.Base_Integer_Type((50 - 46)/2) + 2**(2 + 3);
               -- end of Ada inline code insertion
         --
         
      end if;
      
      
      if Supported =  True then
         
         Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
         
         
         if Temp /= 130 then
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
         else
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
            
         end if;
         
      else
         ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 8
      -- -------------------------------------------------------------------------
      --  Test 9 - Evaluation order
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Evaluation order                ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0815               ");
      
      
      Has_Failed := False;
      
      
      --  Parenthical expressions
      
      Temp := 3 * 3 * 3 + 4 + 13 - 2;
      
      
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
      
      
      if Temp /= 42 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 9
      -- -------------------------------------------------------------------------
      --  Test 10 - Evaluation order 1
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Evaluation order 1              ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0815               ");
      
      Temp := 3 - 2 * 3 * 3 + 4 + 13 - 2;
      
      
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
      
      
      if Temp /= 0 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 10
      -- -------------------------------------------------------------------------
      --  Test 11 - Evaluation order 2
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Evaluation order 2              ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0815               ");
      
      Temp := (3 - 2) * 3 * 3 + 4 + 13 - 2;
      
      
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
      
      
      if Temp /= 24 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 11
      -- -------------------------------------------------------------------------
      --  Test 12 - Evaluation order 3
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0814               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Evaluation order 3              ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0815               ");
      
      Temp := ((3 - 2) + 3 - (4 - 2)) * 3;
      
      
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := Temp;
      
      
      if Temp /= 6 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 12
      -- -------------------------------------------------------------------------
      --  Test 13 - Arithmetic operations on an attrubute. 
      --            Arithmetic PLUS operation
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0812               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Add operation on attribute      ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0814               ");
      
      
      if Host =  "WACA                            " then
         --
         -- start of Ada inline code insertion
               
                  Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).IntegerAttr := 1 + 2 + 3;
                  Temp := Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).IntegerAttr;
               -- end of Ada inline code insertion
         --
         
      else
         Temp := 6;
      end if;
      
      
      -- an_instanceLOGIC.IntegerAttr = 1 + 2 + 3
      
      if Temp =  6 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 13
      -- -------------------------------------------------------------------------
      --  Test 14 - Arithmetic operations on an attribute.
      --            Arithmetic - operation
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0812               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Subtract operation on attribute ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0814               ");
      
      
      if Host =  "WACA                            " then
         --
         -- start of Ada inline code insertion
               
                  Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).IntegerAttr := 10 - 3 - 2 - 1;
                  Temp := Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).IntegerAttr;
               -- end of Ada inline code insertion
         --
         
      else
         Temp := 4;
      end if;
      
      
      if Temp =  4 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Temp);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Temp);
         
      end if;
      
      Test := Test + 1;
      
      
      --  End Test 14
      -- -------------------------------------------------------------------------
      --  Test 15 - Arithmetic operations on an attribute.
      --            Arithmetic DEVIDE operation
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0812               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "DIVIDE operation on attribute   ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0814               ");
      
      
      Has_Failed := False;
      
      
      if Host =  "WACA                            " then
         --
         -- start of Ada inline code insertion
               
                  Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).RealAttr := 10.0 / 2.0;
                  Real_Temp := Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).RealAttr;
               -- end of Ada inline code insertion
         --
         
      else
         
         Real_Temp := 5.0;
      end if;
      
      
      if Real_Temp /= 5.0 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         
         if Host =  "WACA                            " then
            --
            -- start of Ada inline code insertion
                     
                        Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).RealAttr := 10.0 / 4.0;
                        Real_Temp := Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).RealAttr;
                     -- end of Ada inline code insertion
            --
            
         else
            Real_Temp := 2.5;
            
         end if;
         
         
         if Real_Temp /= 2.5 then
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         else
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         end if;
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 15
      -- -------------------------------------------------------------------------
      --  Test 16 - Arithmetic operations on an attribute.
      --            Arithmetic MULTIPLY operation
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0812               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "MULTIPLY operation on attribute ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0814               ");
      
      
      if Host =  "WACA                            " then
         --
         -- start of Ada inline code insertion
               
                  Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).IntegerAttr := 10 * 2;
                  Temp := Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).IntegerAttr;
               -- end of Ada inline code insertion
         --
         
      else
         Temp := 20;
      end if;
      
      
      if Temp /= 20 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         
         if Host =  "WACA                            " then
            --
            -- start of Ada inline code insertion
                     
                        Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).IntegerAttr := 10 * 2 * 5;
                        Temp := Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).IntegerAttr;
                     -- end of Ada inline code insertion
            --
            
         else
            Temp := 100;
         end if;
         
         
         if Temp /= 100 then
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         else
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         end if;
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 16
      -- -------------------------------------------------------------------------
      --  Test 17 - Arithmetic operations on an attribute.
      --            Arithmetic POWER operation
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "POWER operation on attribute    ");
      
      ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      Test := Test + 1;
      
      --  End Test 17
      -- -------------------------------------------------------------------------
      --  Test 18 - Arithmetic operations on an attribute.
      --            Arithmetic UNARY - operation
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0812               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "UNARY operation on attribute    ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0814               ");
      
      
      if Host =  "WACA                            " then
         --
         -- start of Ada inline code insertion
               
                  Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).IntegerAttr := -10 - 5 + 3;
                  Temp := Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).IntegerAttr;
               -- end of Ada inline code insertion
         --
         
         
         if Temp /= -12 then
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
         else
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         end if;
         
      else
         ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      --    an_instanceLOGIC.IntegerAttr = -10 - 5 + 3
      Test := Test + 1;
      
      
      --  End Test 18
      -- -------------------------------------------------------------------------
      --  Logical conditions, Boolean and Integers
      -- -------------------------------------------------------------------------
      -- -------------------------------------------------------------------------
      --  Test 19 - Boolean operators
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0911               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Boolean operators               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0913               ");
      
      
      Has_Failed := False;
      
      
      --  Boolean operator !
      --  Other logical conditions =, !=
      
      btemp := Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).BooleanAttr;
      
      
      if btemp =  True then
         
         --  Initial Boolean expression is TRUE
         
         btempA := False;
         
         
         --  Negate the Boolean expression, FALSE
         
         Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).BooleanAttr := btempA;
         
         
         if btempA /= False then
            
            --  Boolean expression should now be FALSE
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -15);
            
            
            Has_Failed := True;
            
         else
            
            Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := 10;
            
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -16);
         
         
         Has_Failed := True;
      end if;
      
      Test := Test + 1;
      
      --  End Test 19
      -- -------------------------------------------------------------------------
      --  Test 20 - Logical expressions 1
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0911               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Logical expressions 1           ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0913               ");
      
      
      --  Initial data
      tempA      := 10;
      tempB      := 3;
      tempC      := 5;
      Has_Failed := False;
      
      
      --  Perform test
      
      if ((tempA =  10) or else
          (tempB =  77)) and then
          (tempC /= 112) then
         
         Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := 20;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -17);
         
         
         Has_Failed := True;
      end if;
      
      Test := Test + 1;
      
      --  End Test 20
      -- -------------------------------------------------------------------------
      --  Test 21 - Logical expressions 2
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0911               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Logical expressions 2           ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0913               ");
      
      Has_Failed := False;
      
      
      --  Perform test
      
      if (tempA >= 10) and then
         (tempB <  77) and then
         (tempA >= tempC) then
         
         Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := 30;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -18);
         
         
         Has_Failed := True;
      end if;
      
      Test := Test + 1;
      
      --  End Test 21
      -- -------------------------------------------------------------------------
      --  Test 22 - Logical expressions 3
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0911               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Logical expressions 3           ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0913               ");
      
      Has_Failed := False;
      
      
      --  Perform test
      
      if (tempA >  tempB) and then
         (tempB <= 3) and then
         (tempC <= 6) then
         
         Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := 40;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -19);
         
         
         Has_Failed := True;
      end if;
      
      Test := Test + 1;
      
      --  End Test 22
      -- -------------------------------------------------------------------------
      --  Test 23 - REVERSE Logical expressions
      --            THE FOLLOWING CAUSES AN ASL COMPILER ERROR
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0911               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "REVERSE Logical expressions     ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0913               ");
      
      Has_Failed := False;
      
      
      --  Perform test
      
      Local_Boolean_Result := False;
      
      
      if Host =  "WACA                            " then
         --
         -- start of Ada inline code insertion
               
                  Local_Boolean_Result := Boolean (99 > tempB);
               
               -- end of Ada inline code insertion
         --
         
         
         if Local_Boolean_Result =  True then
            
            Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := 50;
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         
         if (tempB <  99) then
            Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := 50;
            
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 23
      -- -------------------------------------------------------------------------
      --  These tests verify the logical conditions for the following data types:
      --         Date
      --         Time
      --  The following operators are valid for both data types:
      --         =, =>, <=, <, >
      --  Test 1 and 2, are built of nested IF statements, the final value written
      --  into the attribute 'ResultA' is 70.
      --  If the final value is not 70 then an error would have occured during
      --  verification, the value of which indicating where the error occured.
      -- -------------------------------------------------------------------------
      -- -------------------------------------------------------------------------
      --  Test 24
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Date and Time operations        ");
      
      
      Has_Failed := False;
      
      
      --  Date attribute not supported in S/W architecture. So don't test.
      -- Date
      -- if an_instanceLOGIC.DateAttr = 1996.03.02 then
      --    an_instanceLOGIC.ResultA = 10
      --    if an_instanceLOGIC.DateAttr >= 1996.03.02 then
      --       an_instanceLOGIC.ResultA = 20
      --       if an_instanceLOGIC.DateAttr >= 1996.03.01 then
      --          an_instanceLOGIC.ResultA = 30
      --          if an_instanceLOGIC.DateAttr <= 1996.03.02 then
      --             an_instanceLOGIC.ResultA = 40
      --             if an_instanceLOGIC.DateAttr <= 1996.03.03 then
      --                an_instanceLOGIC.ResultA = 50
      --                if an_instanceLOGIC.DateAttr < 1997.03.02 then
      --                   an_instanceLOGIC.ResultA = 60
      --                   if an_instanceLOGIC.DateAttr > 1996.01.03 then
      --                      an_instanceLOGIC.ResultA = 70
      --                   else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -21]
      --    has_failed = TRUE
      --                   endif
      --                else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -22]
      --    has_failed = TRUE
      --                endif
      --             else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -23]
      --    has_failed = TRUE
      --             endif
      --          else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -24]
      --    has_failed = TRUE
      --          endif
      --       else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -25]
      --    has_failed = TRUE
      --       endif
      --    else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -26]
      --    has_failed = TRUE
      --    endif
      -- else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -27]
      --    has_failed = TRUE
      -- endif
      
      ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      Test := Test + 1;
      
      
      --  End Test 24
      -- -------------------------------------------------------------------------
      --  Test 25
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Date and Time operations        ");
      
      
      Has_Failed := False;
      
      
      --  Time operations not supported by S/W architecture.
      -- Time
      -- if an_instanceLOGIC.TimeAttr = 14:45:34 then
      --    an_instanceLOGIC.ResultA = 10
      --    if an_instanceLOGIC.TimeAttr >= 14:45:34 then
      --       an_instanceLOGIC.ResultA = 20
      --       if an_instanceLOGIC.TimeAttr >= 14:45:33 then
      --          an_instanceLOGIC.ResultA = 30
      --          if an_instanceLOGIC.TimeAttr <= 14:45:34 then
      --             an_instanceLOGIC.ResultA = 40
      --             if an_instanceLOGIC.TimeAttr <= 14:45:35 then
      --                an_instanceLOGIC.ResultA = 50
      --                if an_instanceLOGIC.TimeAttr < 14:46:34 then
      --                   an_instanceLOGIC.ResultA = 60
      --                   if an_instanceLOGIC.TimeAttr > 13:45:34 then
      --                      an_instanceLOGIC.ResultA = 70
      --                   else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -28]
      --    has_failed = TRUE
      --                   endif
      --                else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -29]
      --    has_failed = TRUE
      --                endif
      --             else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -30]
      --    has_failed = TRUE
      --             endif
      --          else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -31]
      --    has_failed = TRUE
      --          endif
      --       else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -32]
      --    has_failed = TRUE
      --       endif
      --    else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -33]
      --    has_failed = TRUE
      --    endif
      -- else
      --    [] = RPT3:Test_Failed["objLOGIC", Test, -34]
      --    has_failed = TRUE
      -- endif
      
      ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      Test := Test + 1;
      
      
      --  End Test 25
      -- -------------------------------------------------------------------------
      --  These tests verify logical conditions for the following data types:
      --         Text
      --         Enumeration
      --  The following operators are valid for the above data types:
      --         =       Equality
      --         !=      Inequality
      -- -------------------------------------------------------------------------
      -- -------------------------------------------------------------------------
      -- Logical conditions, TEXT and ENUMERATION
      -- -------------------------------------------------------------------------
      -- -------------------------------------------------------------------------
      --  Test 26 - Logical ops on Text
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Logical ops on Text             ");
      
      
      Has_Failed := False;
      
      
      --  Perform the test
      
      if Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).TextAttr =  "Verification                    " then
         
         Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := 10;
         
         if Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).TextAttr /= "Richard                         " then
            Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := 20;
            
         else
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -35);
            
            
            Has_Failed := True;
         end if;
         
      else
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -36);
         
         Has_Failed := True;
         
      end if;
      
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 26
      -- -------------------------------------------------------------------------
      --  Test 27 - Logical ops on Enums
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Logical ops on Enums            ");
      
      
      Has_Failed := False;
      
      
      --  Enumeration Perform the test
      
      if Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).EnumerationAttr =  ASL_Mapping_Domain_Types.Richard then
         
         Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := 30;
         
         if Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).EnumerationAttr /= ASL_Mapping_Domain_Types.Goran then
            Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA := 40;
            
         else
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -37);
            
            
            Has_Failed := True;
         end if;
         
      else
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -38);
         
         Has_Failed := True;
         
      end if;
      
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(an_instanceLOGIC.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 27
      -- -------------------------------------------------------------------------
      --  Test 28 - Test logical operator !
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test NOT in symbol form         ");
      
      
      BoolVal1 := False;
      
      
      if (not BoolVal1) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 28
      -- -------------------------------------------------------------------------
      --  Test 29 - Test logical operator NOT
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test NOT in keyword form        ");
      
      
      BoolVal1 := False;
      
      
      if (not BoolVal1) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 29
      -- -------------------------------------------------------------------------
      --  Test 30 - Test logical operator =
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test EQUALS in symbol form      ");
      
      
      BoolVal1 := False;
      BoolVal2 := False;
      
      
      if BoolVal1 =  BoolVal1 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 30
      -- -------------------------------------------------------------------------
      --  Test 31 - Test logical operator EQUALS
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test EQUALS in keyword form     ");
      
      
      BoolVal1 := False;
      BoolVal2 := False;
      
      
      if BoolVal1 =  BoolVal2 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 31
      -- -------------------------------------------------------------------------
      --  Test 32 - Test logical operator !=
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test NOT EQUALS in symbol form  ");
      
      
      BoolVal1 := False;
      BoolVal2 := True;
      
      
      if BoolVal1 /= BoolVal2 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 32
      -- -------------------------------------------------------------------------
      --  Test 33 - Test logical operator NOT-EQUALS
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test NOT-EQUALS in keyword form ");
      
      
      BoolVal1 := False;
      BoolVal2 := True;
      
      
      if BoolVal1 /= BoolVal2 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 33
      -- -------------------------------------------------------------------------
      --  Test 34 - Test logical operator <
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test LESS THAN in symbol form   ");
      
      Val1 := 10;
      Val2 := 20;
      
      if Val1 <  Val2 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 34
      -- -------------------------------------------------------------------------
      --  Test 35 - Test logical operator LESS-THAN
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test LESS-THAN in keyword form  ");
      
      Val1 := 10;
      Val2 := 20;
      
      if Val1 <  Val2 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 35
      -- -------------------------------------------------------------------------
      --  Test 36 - Test logical operator >
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test GREATER THAN in symbol form");
      
      Val1 := 10;
      Val2 := 20;
      
      if Val2 >  Val1 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 36
      -- -------------------------------------------------------------------------
      --  Test 37 - Test logical operator GREATER-THAN
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test GREATER-THAN in keyword for");
      
      Val1 := 10;
      Val2 := 20;
      
      if Val2 >  Val1 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 37
      -- -------------------------------------------------------------------------
      --  Test 38 - Test logical operator <=
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test LESS THAN OR EQUAL TO in sy");
      
      Val1 := 10;
      Val2 := 10;
      Val3 := 20;
      
      if Val1 <= Val2 then
         
         if Val1 <= Val3 then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -20);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 38
      -- -------------------------------------------------------------------------
      --  Test 39 - Test logical operator LESS-THAN-OR-EQUAL-TO
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test LESS-THAN-OR-EQUAL-TO in ke");
      
      Val1 := 10;
      Val2 := 10;
      Val3 := 20;
      
      if Val1 <= Val2 then
         
         if Val1 <= Val3 then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -20);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 39
      -- -------------------------------------------------------------------------
      --  Test 40 - Test logical operator >=
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test GREATER THAN OR EQUAL TO in");
      
      Val1 := 10;
      Val2 := 10;
      Val3 := 20;
      
      if Val2 >= Val1 then
         
         if Val3 >= Val1 then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -20);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 40
      -- -------------------------------------------------------------------------
      --  Test 41 - Test logical operator GREATER-THAN-OR-EQUAL-TO
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test GREATER-THAN-OR-EQUAL-TO in");
      
      Val1 := 10;
      Val2 := 10;
      Val3 := 20;
      
      if Val2 >= Val1 then
         
         if Val3 >= Val1 then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objLOGIC                        ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objLOGIC                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -20);
         
      end if;
      
      Test := Test + 1;
      
      
      --  End Test 41
      -- -------------------------------------------------------------------------
      --  Test 42 - Test logical operator &
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test AND in symbol form         ");
      
      
      BoolVal1 := True;
      BoolVal2 := True;
      
      
      if BoolVal1 and then
         BoolVal2 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 42
      -- -------------------------------------------------------------------------
      --  Test 43 - Test logical operator AND
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test AND in keyword form        ");
      
      
      BoolVal1 := True;
      BoolVal2 := True;
      
      
      if BoolVal1 and then
         BoolVal2 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 43
      -- -------------------------------------------------------------------------
      --  Test 44 - Test logical operator |
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test OR in symbol form          ");
      
      
      BoolVal1 := True;
      BoolVal2 := False;
      
      
      if BoolVal1 or else
         BoolVal2 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 44
      -- -------------------------------------------------------------------------
      --  Test 45 - Test logical operator OR
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0913               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOGIC                        ",
         Purpose         => "Test OR in keyword form         ");
      
      
      BoolVal1 := True;
      BoolVal2 := False;
      
      
      if BoolVal1 or else
         BoolVal2 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOGIC                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOGIC                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 45
      -- -------------------------------------------------------------------------
      
      Final_Test := Test;
      
      
   end ASL_Mapping_objLOGIC1_do_arithmetic_and_logic;
   
end ASL_Mapping_objLOGIC1_do_arithmetic_and_logic_Service;

--
-- End of file ASL_Mapping_objLOGIC1_do_arithmetic_and_logic_Service.adb
--
