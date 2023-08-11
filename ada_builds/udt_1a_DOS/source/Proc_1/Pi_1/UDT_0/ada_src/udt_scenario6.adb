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
--* File Name:               UDT_Scenario6.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Terminator_Type_Scenario
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
--* Domain Name              : User_Defined_Types
--* Domain Key Letter        : UDT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.UDT.OIB;
with Root_Object.UDT.FTD;

-- List of bridges used
with UDT_BTF2_User_Defined_Types_Across_Bridge;
with UDT_RPT3_Test_Failed_Bridge;
with UDT_RPT2_Test_Passed_Bridge;
with UDT_BTF1_I_H_Type_Across_Bridge;
with UDT_RPT1_Start_Test_Bridge;

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Simple_Enumeration_Type;
use type UDT_Domain_Types.Subset_1_Of_Integer;
use type UDT_Domain_Types.One_To_Maximum_Integer;
use type UDT_Domain_Types.Subset_Zero_Of_Integer;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure UDT_Scenario6 is
   
      
      my_test : Root_Object.Object_Access;
      the_IH  : Root_Object.Object_Access;
      
      the_test_number : Application_Types.Base_Integer_Type := 1;
      result_value    : Application_Types.Base_Integer_Type := 1;
      
      result_subtype : UDT_Domain_Types.One_To_Maximum_Integer     := UDT_Domain_Types.One_To_Maximum_Integer_first;
      
      the_result : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------------
      --  This scenario shall prove that a data object instance handle passed into
      --  a terminator shall have its' attribute types passed in correctly.
      --  The locally defined data objects in the terminator should not have any 
      --  defined type assinged to them by the code generator, ie. they should be 
      --  base types. 
      --  A secondary test has been defined where the data attributes of the object
      --  are passed in directly. This too should prove that locally defined 
      --  objects do not inherit the type of the attribute or object that they are 
      --  being assigned. 
      --  Given the difference in the way I-SIM and WACA deal with UDT's, the tests
      --  will always pass in I-SIM, and cause a run-time error in WACA if ranges 
      --  are exceeded.
      --  The thrust of the tests will be to force a range overflow in the UDT 
      --  defined object in the terminator. If there are no UDT types associated 
      --  with the local object in the terminator, then the test will pass, if the
      --  object has inherited the type, then the test will crash spectacularly.
      -- --------------------------------------------------------------------------
      my_test := Root_Object.UDT.FTD.Unconditional_Find_One;
      the_test_number := Root_Object.UDT.FTD.UDT_FTD_type(my_test.all).Final_Test_Number;
      the_result      := False;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 
      -- --------------------------------------------------------------------------
      
      UDT_RPT1_Start_Test_Bridge.UDT_RPT1_Start_Test (
         Test_Number     => the_test_number,
         Requid          => "1103-0000-01-0311               ",
         Invoking_Domain => "UDT                             ",
         Invoking_Object => "Terminator typing               ",
         Purpose         => "Pass in object IH, decode types ");
      
      the_IH := Root_Object.UDT.OIB.Create_Unique;
      Root_Object.UDT.OIB.UDT_OIB_Type(the_IH.all).Current_State := Root_Object.UDT.OIB.Idle;
      
      
      Root_Object.UDT.OIB.UDT_OIB_type(the_IH.all).A_Number         := 10;
      Root_Object.UDT.OIB.UDT_OIB_type(the_IH.all).Some_Enumeration := UDT_Domain_Types.Four;
      
      
      --  with 101, 'Four'
      
      UDT_BTF1_I_H_Type_Across_Bridge.UDT_BTF1_I_H_Type_Across (
         Param1_IH     => the_IH,
         Success       => the_result,
         Success_Value => result_value);
      
      
      if the_result =  True then
         
         UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
            Test_Object_Domain => "Decode IH                       ",
            Test_Number        => the_test_number,
            Test_Value         => result_value);
         
      else
         UDT_RPT3_Test_Failed_Bridge.UDT_RPT3_Test_Failed (
            Failed_Domain_Object => "Decode IH                       ",
            Failed_Test_Number   => the_test_number,
            Failed_Test_Value    => result_value);
         
      end if;
      
      
      the_test_number := the_test_number + 1;
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      UDT_RPT1_Start_Test_Bridge.UDT_RPT1_Start_Test (
         Test_Number     => the_test_number,
         Requid          => "1103-0000-01-0311               ",
         Invoking_Domain => "UDT                             ",
         Invoking_Object => "Terminator typing               ",
         Purpose         => "Pass in UDT data, decode types  ");
      
      UDT_BTF2_User_Defined_Types_Across_Bridge.UDT_BTF2_User_Defined_Types_Across (
         Param1         => Root_Object.UDT.OIB.UDT_OIB_type(the_IH.all).A_Number,
         Param2         => Root_Object.UDT.OIB.UDT_OIB_type(the_IH.all).Some_Enumeration,
         Success        => the_result,
         Success_Value  => result_value,
         A_Return_Param => result_subtype);
      
      
      if the_result =  True then
         
         UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
            Test_Object_Domain => "Decode object                   ",
            Test_Number        => the_test_number,
            Test_Value         => result_value);
         
      else
         UDT_RPT3_Test_Failed_Bridge.UDT_RPT3_Test_Failed (
            Failed_Domain_Object => "Decode object                   ",
            Failed_Test_Number   => the_test_number,
            Failed_Test_Value    => result_value);
         
      end if;
      
      the_test_number := the_test_number + 1;
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3
      -- --------------------------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.UDT.OIB.UDT_OIB1'(Root_Object.Root_Event_Type with
            This_Event_Class  => Root_Object.UDT.OIB.OIB1,
            Target_Instance   => the_IH,
            Where_To_Start    => the_test_number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      the_test_number := the_test_number + 1;
      
      
      Root_Object.UDT.FTD.UDT_FTD_type(my_test.all).Final_Test_Number := the_test_number;
      
   end UDT_Scenario6;
   
--
-- End of file UDT_Scenario6.ada
--
