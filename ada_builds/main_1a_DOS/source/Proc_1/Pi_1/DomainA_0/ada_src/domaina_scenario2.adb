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
--* File Name:               DomainA_Scenario2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Sync to sync
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
--* Domain Name              : DomainA
--* Domain Key Letter        : DomainA
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.DomainA.objA;
with Root_Object.DomainA.TD;

-- List of bridges used
with DomainA_RPT4_Test_Unsupported_Bridge;
with DomainA_RPT5_Test_Text_Bridge;
with DomainA_termA1_Sync1A_Bridge;
with DomainA_termA2_Sync2A_Bridge;
with DomainA_RPT3_Test_Failed_Bridge;
with DomainA_RPT2_Test_Passed_Bridge;
with DomainA_termA3_Sync3A_Bridge;
with DomainA_RPT8_Specify_Requid_Bridge;
with DomainA_RPT1_Start_Test_Bridge;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure DomainA_Scenario2 is
   
      
      my_test      : Root_Object.Object_Access;
      an_instanceA : Root_Object.Object_Access;
      
      Test    : Application_Types.Base_Integer_Type := 1;
      inputA  : Application_Types.Base_Integer_Type := 1;
      inputB  : Application_Types.Base_Integer_Type := 1;
      outputA : Application_Types.Base_Integer_Type := 1;
      outputB : Application_Types.Base_Integer_Type := 1;
      
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- -------------------------------------------------------------------
      -- Sync service invocation to sync service
      -- -------------------------------------------------------------------
      my_test := Root_Object.DomainA.TD.Unconditional_Find_One;
      
      --  Initiate the test
      Test       := Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number;
      has_failed := False;
      inputA     := 3;
      inputB     := 4;
      
      
      -- -------------------------------------------------------------------
      --  Test 1
      -- -------------------------------------------------------------------
      
      DomainA_RPT1_Start_Test_Bridge.DomainA_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1110               ",
         Invoking_Domain => "DomainA                         ",
         Invoking_Object => "Domain A to B                   ",
         Purpose         => "synch 3 service call            ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1101               ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1104               ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1105               ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0810               ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1103               ");
      
      DomainA_termA3_Sync3A_Bridge.DomainA_termA3_Sync3A (
         InputA  => inputA,
         InputB  => inputB,
         Test    => Test,
         OutputA => outputA,
         OutputB => outputB);
      
      
      if outputA =  5 and then
         outputB =  6 then
         
         DomainA_RPT2_Test_Passed_Bridge.DomainA_RPT2_Test_Passed (
            Test_Object_Domain => "DomainA                         ",
            Test_Number        => Test,
            Test_Value         => outputB);
         
      else
         DomainA_RPT3_Test_Failed_Bridge.DomainA_RPT3_Test_Failed (
            Failed_Domain_Object => "DomainA                         ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => outputA);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 1
      -- -------------------------------------------------------------------
      --  Test 2
      -- -------------------------------------------------------------------
      
      DomainA_RPT1_Start_Test_Bridge.DomainA_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1110               ",
         Invoking_Domain => "DomainA                         ",
         Invoking_Object => "Domain A to B                   ",
         Purpose         => "synch 2 service call            ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1101               ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1104               ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1105               ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0810               ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1103               ");
      
      DomainA_termA2_Sync2A_Bridge.DomainA_termA2_Sync2A (
         inputA  => inputA,
         inputB  => inputB,
         Test    => Test,
         outputA => outputA,
         outputB => outputB);
      
      
      if outputA =  5 and then
         outputB =  6 then
         
         DomainA_RPT2_Test_Passed_Bridge.DomainA_RPT2_Test_Passed (
            Test_Object_Domain => "DomainA                         ",
            Test_Number        => Test,
            Test_Value         => outputB);
         
      else
         DomainA_RPT3_Test_Failed_Bridge.DomainA_RPT3_Test_Failed (
            Failed_Domain_Object => "DomainA                         ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => outputA);
         
      end if;
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------
      --  Test 3
      -- -------------------------------------------------------------------
      
      DomainA_RPT1_Start_Test_Bridge.DomainA_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1110               ",
         Invoking_Domain => "DomainA                         ",
         Invoking_Object => "Domain A to B                   ",
         Purpose         => "synch 1 service call            ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1104               ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1104               ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1105               ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0810               ");
      
      DomainA_RPT8_Specify_Requid_Bridge.DomainA_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1103               ");
      
      
      inputA := 1;
      inputB := 2;
      
      
      DomainA_termA1_Sync1A_Bridge.DomainA_termA1_Sync1A (
         inputA  => inputA,
         inputB  => inputB,
         Test    => Test,
         outputA => outputA,
         outputB => outputB);
      
      
      if outputA =  3 and then
         outputB =  4 then
         
         DomainA_RPT2_Test_Passed_Bridge.DomainA_RPT2_Test_Passed (
            Test_Object_Domain => "DomainA                         ",
            Test_Number        => Test,
            Test_Value         => outputB);
         
      else
         DomainA_RPT3_Test_Failed_Bridge.DomainA_RPT3_Test_Failed (
            Failed_Domain_Object => "DomainA                         ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => outputA);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 3
      -- -------------------------------------------------------------------
      --  Test 4
      -- -------------------------------------------------------------------
      an_instanceA := Root_Object.DomainA.objA.Conditional_Find_One;
      while (an_instanceA /= null) and then (not (Root_Object.DomainA.objA.DomainA_objA_Type(an_instanceA.all).idA =  1) ) loop
         
         an_instanceA := an_instanceA.Next_Object;
      end loop;
      
      
      if an_instanceA /= Null then
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.DomainA.objA.DomainA_objA3'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.DomainA.objA.objA3,
               Target_Instance  => an_instanceA,
               Test             => Test);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      else
         
         --  Null instance detected.
         
         DomainA_RPT5_Test_Text_Bridge.DomainA_RPT5_Test_Text (
            Test_Number      => Test,
            Free_Text        => "Can not find object A domainA sc");
         
         DomainA_RPT4_Test_Unsupported_Bridge.DomainA_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------
      
      Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number := Test;
      
   end DomainA_Scenario2;
   
--
-- End of file DomainA_Scenario2.ada
--
