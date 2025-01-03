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
--* File Name:               ASL_Mapping_objLOOP1_do_loop_tests_Service.adb
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
with Root_Object.ASL_Mapping.objLOOP;

-- List of bridges used
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_objLOOP1_do_loop_tests_Service is
   
   procedure ASL_Mapping_objLOOP1_do_loop_tests (
      an_instanceLOOP : in     Root_Object.Object_Access;
      Test_Start      : in     Application_Types.Base_Integer_Type;
      Final_Test      :    out Application_Types.Base_Integer_Type) is
      
      Test  : Application_Types.Base_Integer_Type := 1;
      Count : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of objLOOP1_do_loop_tests
      
      -- -------------------------------------------------------------------------
      --  LOOP statement
      --  The ASL <loop> statement shall be supported
      --  1103-0000-01-0441
      --  The ASL <break> statement shall be supported
      --  1103-0000-01-0451
      --  The ASL <break ... if> statement shall be supported
      --  1103-0000-01-0452
      -- -------------------------------------------------------------------------
      Test := Test_Start;
      
      
      -- -------------------------------------------------------------------------
      -- Test 1 - LOOP with BREAKIF
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0441               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOOP                         ",
         Purpose         => "Loop with BREAKIF               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0452               ");
      
      
      --  Increment the attribute ResultA for an instance of Object_LOOP 5 times
      
      Count := 0;
      
      loop
         Count := Count + 1;
         
         
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA := Count;
         exit when Count =  5;
      end loop;
      
      
      --  Check the results
      
      if Count /= 5 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOOP                         ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Count);
         
      else
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA := 10;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOOP                         ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - LOOP with BREAK, break after other ASL statements
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0441               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOOP                         ",
         Purpose         => "BREAK after other statement     ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0451               ");
      
      
      --  Increment the attribute ResultA for an instance of Object_LOOP once
      
      Count := 0;
      
      loop
         Count := Count + 1;
         
         
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA := Count;
            exit;
      end loop;
      
      
      --  Check the results
      
      if Count /= 1 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOOP                         ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Count);
         
      else
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA := 20;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOOP                         ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - LOOP with BREAK, break before other ASL statements
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0441               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOOP                         ",
         Purpose         => "BREAK before other statements   ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0451               ");
      
      
      --  Attribute ResultA is NOT AFFECTED
      
      Count := 0;
      
      loop
            exit;
         Count := Count + 1;
         
         
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA := Count;
      end loop;
      
      
      --  Until this point value written into ResultA should be 20
      
      if (Count /= 0 or else
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA /= 20) then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOOP                         ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Count);
         
      else
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA := 30;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOOP                         ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - LOOP with BREAKIF inside another ASL statement
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0441               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOOP                         ",
         Purpose         => "BREAK inside statement          ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0452               ");
      
      
      --  Increment the attribute ResultA for an instance of Object_LOOP 4 times
      
      Count := 0;
      
      loop
         Count := Count + 1;
         
         
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA := Count;
         
         if Count /= 3 then
            exit when Count >  2;
         end if;
         
      end loop;
      
      
      --  Check the results
      
      if Count /= 4 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOOP                         ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Count);
         
      else
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA := 40;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOOP                         ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 - LOOP with BREAK inside another ASL statement
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0441               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objLOOP                         ",
         Purpose         => "Inside ASL statement            ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0451               ");
      
      
      --  Increment the attribute ResultA for an instance of Object_LOOP 3 times
      
      Count := 0;
      
      loop
         Count := Count + 1;
         
         
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA := Count;
         
         if Count =  3 then
               exit;
         end if;
         
      end loop;
      
      
      --  Check the results
      
      if Count /= 3 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objLOOP                         ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Count);
         
      else
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA := 50;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objLOOP                         ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_type(an_instanceLOOP.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      --  Test complete
      -- -------------------------------------------------------------------------
      
      Final_Test := Test;
      
      
   end ASL_Mapping_objLOOP1_do_loop_tests;
   
end ASL_Mapping_objLOOP1_do_loop_tests_Service;

--
-- End of file ASL_Mapping_objLOOP1_do_loop_tests_Service.adb
--
