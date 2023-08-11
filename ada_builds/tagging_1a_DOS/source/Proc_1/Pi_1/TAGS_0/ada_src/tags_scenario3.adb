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
--* File Name:               TAGS_Scenario3.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Perform_Active_Object_Tests
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
with Root_Object.TAGS.AAO;
with Root_Object.TAGS.CHECK;
with Root_Object.TAGS.TD;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure TAGS_Scenario3 is
   
      
      my_test                         : Root_Object.Object_Access;
      How_Was_It_For_You              : Root_Object.Object_Access;
      Create_And_Delete_Active_Object : Root_Object.Object_Access;
      First_Active_Object             : Root_Object.Object_Access;
      
      Test                     : Application_Types.Base_Integer_Type := 1;
      Expected_Result          : Application_Types.Base_Integer_Type := 1;
      Base_Value_To_Start_With : Application_Types.Base_Integer_Type := 1;
      
      Restart_Check_Object : Boolean := Application_Types.Boolean_first;
      Finish_Check_Object  : Boolean := Application_Types.Boolean_first;
      Find_It              : Boolean := Application_Types.Boolean_first;
      Lose_It              : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------------
      --  This scenario should always be called last, and the Test value be updated 
      --  with the next available test number.
      -- --------------------------------------------------------------------------
      my_test := Root_Object.TAGS.TD.Unconditional_Find_One;
      Test                 := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number;
      Restart_Check_Object := True;
      Finish_Check_Object  := False;
      Find_It              := True;
      Lose_It              := False;
      
      
      --  Create object for checking the results of the actions on the active object
      How_Was_It_For_You := Root_Object.TAGS.CHECK.Create_Unique;
      Root_Object.TAGS.CHECK.TAGS_CHECK_Type(How_Was_It_For_You.all).Current_State := Root_Object.TAGS.CHECK.Idle;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - Create an active object tagged as singleton.
      -- --------------------------------------------------------------------------
      Create_And_Delete_Active_Object := Root_Object.TAGS.AAO.Create_Unique;
      Root_Object.TAGS.AAO.TAGS_AAO_Type(Create_And_Delete_Active_Object.all).Current_State := Root_Object.TAGS.AAO.Idle;
      
      
      Root_Object.TAGS.AAO.Delete (
         Old_Instance => Create_And_Delete_Active_Object);
      
      Expected_Result := 0;
      
      
      --  Make sure that the active object has indeed gone.
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.CHECK.TAGS_CHECK1'(Root_Object.Root_Event_Type with
            This_Event_Class          => Root_Object.TAGS.CHECK.CHECK1,
            Target_Instance           => How_Was_It_For_You,
            Test_Number               => Test,
            Active_IH                 => Create_And_Delete_Active_Object,
            Testing_For               => "Create and Delete active        ",
            Expected                  => Expected_Result,
            Your_Presence_Is_Required => Lose_It,
            Call_To_Reset             => Restart_Check_Object);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2 - This test shall cause the active object to transition from Idle
      --           to Act and then back to Idle.
      -- --------------------------------------------------------------------------
      
      Base_Value_To_Start_With := 1;
      Expected_Result          := 101;
      
      First_Active_Object := Root_Object.TAGS.AAO.Create_Unique;
      Root_Object.TAGS.AAO.TAGS_AAO_Type(First_Active_Object.all).Result        := 0;
      Root_Object.TAGS.AAO.TAGS_AAO_Type(First_Active_Object.all).Current_State := Root_Object.TAGS.AAO.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAO.TAGS_AAO1'(Root_Object.Root_Event_Type with
            This_Event_Class  => Root_Object.TAGS.AAO.AAO1,
            Target_Instance   => First_Active_Object,
            Value_To_Add      => Base_Value_To_Start_With);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAO.TAGS_AAO2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.AAO.AAO2,
            Target_Instance  => First_Active_Object);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.CHECK.TAGS_CHECK1'(Root_Object.Root_Event_Type with
            This_Event_Class          => Root_Object.TAGS.CHECK.CHECK1,
            Target_Instance           => How_Was_It_For_You,
            Test_Number               => Test,
            Active_IH                 => First_Active_Object,
            Testing_For               => "Create and Delete active        ",
            Expected                  => Expected_Result,
            Your_Presence_Is_Required => Find_It,
            Call_To_Reset             => Restart_Check_Object);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - This test shall cause the previously defined active object to
      --           transition from Idle to Act and then back to Idle.
      -- --------------------------------------------------------------------------
      
      Base_Value_To_Start_With := 2;
      Expected_Result          := 203;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAO.TAGS_AAO1'(Root_Object.Root_Event_Type with
            This_Event_Class  => Root_Object.TAGS.AAO.AAO1,
            Target_Instance   => First_Active_Object,
            Value_To_Add      => Base_Value_To_Start_With);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAO.TAGS_AAO2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.AAO.AAO2,
            Target_Instance  => First_Active_Object);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.CHECK.TAGS_CHECK1'(Root_Object.Root_Event_Type with
            This_Event_Class          => Root_Object.TAGS.CHECK.CHECK1,
            Target_Instance           => How_Was_It_For_You,
            Test_Number               => Test,
            Active_IH                 => First_Active_Object,
            Testing_For               => "Create and Delete active again  ",
            Expected                  => Expected_Result,
            Your_Presence_Is_Required => Find_It,
            Call_To_Reset             => Restart_Check_Object);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 4 - This test shall cause the previously defined active object to
      --           transition from Idle to Act and then to Terminate.
      -- --------------------------------------------------------------------------
      
      Base_Value_To_Start_With := 3;
      Expected_Result          := 216;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAO.TAGS_AAO1'(Root_Object.Root_Event_Type with
            This_Event_Class  => Root_Object.TAGS.AAO.AAO1,
            Target_Instance   => First_Active_Object,
            Value_To_Add      => Base_Value_To_Start_With);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAO.TAGS_AAO3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.AAO.AAO3,
            Target_Instance  => First_Active_Object);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.CHECK.TAGS_CHECK1'(Root_Object.Root_Event_Type with
            This_Event_Class          => Root_Object.TAGS.CHECK.CHECK1,
            Target_Instance           => How_Was_It_For_You,
            Test_Number               => Test,
            Active_IH                 => First_Active_Object,
            Testing_For               => "Create and Delete to Terminate  ",
            Expected                  => Expected_Result,
            Your_Presence_Is_Required => Find_It,
            Call_To_Reset             => Restart_Check_Object);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------------
      --  Test 5
      -- --------------------------------------------------------------------------
      
      Expected_Result := 0;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAO.TAGS_AAO4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.AAO.AAO4,
            Target_Instance  => First_Active_Object);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.CHECK.TAGS_CHECK1'(Root_Object.Root_Event_Type with
            This_Event_Class          => Root_Object.TAGS.CHECK.CHECK1,
            Target_Instance           => How_Was_It_For_You,
            Test_Number               => Test,
            Active_IH                 => First_Active_Object,
            Testing_For               => "Terminate to Expire             ",
            Expected                  => Expected_Result,
            Your_Presence_Is_Required => Lose_It,
            Call_To_Reset             => Restart_Check_Object);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number := Test;
      
   end TAGS_Scenario3;
   
--
-- End of file TAGS_Scenario3.ada
--
