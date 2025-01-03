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
--* File Name:               TAGS_AAAOOO_3.ada
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
--* Domain Name              : Tagging
--* Domain Key Letter        : TAGS
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.TAGS.AAAOOO;
with Root_Object.TAGS.TD;

-- List of services used
with TAGS_TAGS5_Report_Now_Service;

-- List of bridges used
with TAGS_RPT1_Start_Test_Bridge;

-- List of domain types used
with TAGS_Domain_Types;
use type TAGS_Domain_Types.Environment_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TAGS.AAAOOO)
   
   procedure TAGS_AAAOOO_3 (This_Instance : in out Root_Object.Object_Access) is
   
      
      my_test    : Root_Object.Object_Access;
      New_Single : Root_Object.Object_Access;
      
      Test                  : Application_Types.Base_Integer_Type := 1;
      Failure_Value         : Application_Types.Base_Integer_Type := 1;
      Value_To_Add          : Application_Types.Base_Integer_Type := 1;
      Expected_Result_Value : Application_Types.Base_Integer_Type := 1;
      
      This_Environment : TAGS_Domain_Types.Environment_Type     := TAGS_Domain_Types.Environment_Type_first;
      
      Supported : Boolean := Application_Types.Boolean_first;
      
   begin
      my_test := Root_Object.TAGS.TD.Unconditional_Find_One;
      Test             := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number;
      This_Environment := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Environment;
      
      
      if This_Environment =  TAGS_Domain_Types.WACA then
         
         Supported := True;
      else
         Supported := False;
         
      end if;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - This test shall prove that this instance can delete itself, and 
      --           another created in it's place.
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Single Array Active Object      ",
         Purpose         => "Delete self                     ");
      
      
      --  There should be no more events queued to this instance, so delete it.
      
      Root_Object.TAGS.AAAOOO.Delete (
         Old_Instance => This_Instance);
      
      if This_Instance =  Null then
         
         Failure_Value := 0;
      else
         Failure_Value := 1;
         
      end if;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Delete self                     ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2 - Create new instance This is an asynchronous test.
      -- --------------------------------------------------------------------------
      New_Single := Root_Object.TAGS.AAAOOO.Create_Unique;
      Root_Object.TAGS.AAAOOO.TAGS_AAAOOO_Type(New_Single.all).Result        := 0;
      Root_Object.TAGS.AAAOOO.TAGS_AAAOOO_Type(New_Single.all).Current_State := Root_Object.TAGS.AAAOOO.Idle;
      
      
      Value_To_Add          := 20;
      Expected_Result_Value := 20;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOOO.TAGS_AAAOOO1'(Root_Object.Root_Event_Type with
            This_Event_Class  => Root_Object.TAGS.AAAOOO.AAAOOO1,
            Target_Instance   => New_Single,
            Test_Number       => Test,
            Add               => Value_To_Add,
            Purpose           => "Create new instance             ",
            Expected_Result   => Expected_Result_Value);
         
         Root_Object.TAGS.AAAOOO.Push (
            Event  => Pushed_Event);
      end;
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Perhaps this will generate an event onto the queue, which will be processed after
      --  the finish event is generated from Replacement_Instance
      -- --------------------------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.TD.TAGS_TD1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.TD.TD1,
            Target_Instance  => my_test);
         
         Root_Object.TAGS.AAAOOO.Push (
            Event  => Pushed_Event);
      end;
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number := Test;
      
      Root_Object.TAGS.AAAOOO.Process_Queue;
   end TAGS_AAAOOO_3;
   
--
-- End of file TAGS_AAAOOO_3.ada
--
