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
--* File Name:               TAGS_AAAOTO1_Do_Active_Many_Array_Tests_Service.adb
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
with Root_Object.TAGS.AAAOTO;
with Root_Object.TAGS.TD;

-- List of bridges used
with TAGS_RPT4_Test_Unsupported_Bridge;
with TAGS_RPT1_Start_Test_Bridge;

-- List of domain types used
with TAGS_Domain_Types;
use type TAGS_Domain_Types.Environment_Type;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body TAGS_AAAOTO1_Do_Active_Many_Array_Tests_Service is
   
   procedure TAGS_AAAOTO1_Do_Active_Many_Array_Tests is
      
      my_test         : Root_Object.Object_Access;
      First_Of_Three  : Root_Object.Object_Access;
      Second_Of_Three : Root_Object.Object_Access;
      Third_Of_Three  : Root_Object.Object_Access;
      
      Test                  : Application_Types.Base_Integer_Type := 1;
      Value_To_Add          : Application_Types.Base_Integer_Type := 1;
      Expected_Result_Value : Application_Types.Base_Integer_Type := 1;
      
      This_Environment : TAGS_Domain_Types.Environment_Type     := TAGS_Domain_Types.Environment_Type_first;
      
      Supported : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of AAAOTO1_Do_Active_Many_Array_Tests
      
      -- -----------------------------------------------------------------------------
      --  The array of 1 should be treated exactly the same way as an object tagged
      --  SINGLETON.
      -- -----------------------------------------------------------------------------
      --  @@TAGS-01-0005
      --  Create first of the single active array objects.
      my_test := Root_Object.TAGS.TD.Unconditional_Find_One;
      Test             := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number;
      This_Environment := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Environment;
      
      
      if This_Environment =  TAGS_Domain_Types.WACA then
         
         Supported := True;
      else
         Supported := False;
         
      end if;
      
      
      -- -----------------------------------------------------------------------------
      --  Test 1 - Create first, second & third instances of the object
      --           This will be an asynchronous test.
      -- -----------------------------------------------------------------------------
      First_Of_Three := Root_Object.TAGS.AAAOTO.Create_Unique;
      Root_Object.TAGS.AAAOTO.TAGS_AAAOTO_Type(First_Of_Three.all).Result        := 0;
      Root_Object.TAGS.AAAOTO.TAGS_AAAOTO_Type(First_Of_Three.all).Current_State := Root_Object.TAGS.AAAOTO.Idle;
      
      Second_Of_Three := Root_Object.TAGS.AAAOTO.Create_Unique;
      Root_Object.TAGS.AAAOTO.TAGS_AAAOTO_Type(Second_Of_Three.all).Result        := 0;
      Root_Object.TAGS.AAAOTO.TAGS_AAAOTO_Type(Second_Of_Three.all).Current_State := Root_Object.TAGS.AAAOTO.Idle;
      
      Third_Of_Three := Root_Object.TAGS.AAAOTO.Create_Unique;
      Root_Object.TAGS.AAAOTO.TAGS_AAAOTO_Type(Third_Of_Three.all).Result        := 0;
      Root_Object.TAGS.AAAOTO.TAGS_AAAOTO_Type(Third_Of_Three.all).Current_State := Root_Object.TAGS.AAAOTO.Idle;
      
      
      Value_To_Add := 10;
      Expected_Result_Value := 10;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOTO.TAGS_AAAOTO1'(Root_Object.Root_Event_Type with
            This_Event_Class  => Root_Object.TAGS.AAAOTO.AAAOTO1,
            Target_Instance   => First_Of_Three,
            Test_Number       => Test,
            Add               => Value_To_Add,
            Purpose           => "Create first object             ",
            Expected_Result   => Expected_Result_Value);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test := Test + 1;
      
      --  End Test 1
      -- -----------------------------------------------------------------------------
      --  Test 2
      -- -----------------------------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOTO.TAGS_AAAOTO1'(Root_Object.Root_Event_Type with
            This_Event_Class  => Root_Object.TAGS.AAAOTO.AAAOTO1,
            Target_Instance   => Second_Of_Three,
            Test_Number       => Test,
            Add               => Value_To_Add,
            Purpose           => "Create second object            ",
            Expected_Result   => Expected_Result_Value);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      Test := Test + 1;
      
      --  End Test 2
      -- -----------------------------------------------------------------------------
      --  Test 3
      -- -----------------------------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOTO.TAGS_AAAOTO1'(Root_Object.Root_Event_Type with
            This_Event_Class  => Root_Object.TAGS.AAAOTO.AAAOTO1,
            Target_Instance   => Third_Of_Three,
            Test_Number       => Test,
            Add               => Value_To_Add,
            Purpose           => "Create third object             ",
            Expected_Result   => Expected_Result_Value);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      Test := Test + 1;
      
      --  End Test 3
      -- -----------------------------------------------------------------------------
      --  Test 4 - This will be a synchronous test.
      -- -----------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number       => Test,
         Requid            => "Null Requid                     ",
         Invoking_Domain   => "Tagging                         ",
         Invoking_Object   => "Multiple Array Active Object    ",
         Purpose           => "Inhibit fourth instance         ");
      
      
      --  Fourth_Of_Three = create unique An_Active_Array_Of_Three_Objects with Result = 0 & Current_State = 'Idle'
      --  {Set_Of_Multiple_Array} = find-all An_Active_Array_Of_Three_Objects
      --  Number_Of_Multiple_Array = countof {Set_Of_Multiple_Array}
      --  Should only be 3, but reporter widget expects a zero in the Failure field for a pass.
      --  So if there are more than one instances found, this should be reported as an
      --  error.
      --  Failure_Value = Number_Of_Multiple_Array - 3
      --  [] = TAGS5::Report_Now[Test, "Inhibit fourth instance", Failure_Value, Supported]
      
      TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      Test := Test + 1;
      
      --  End Test 4
      -- -----------------------------------------------------------------------------
      --  Test 5 - Prove that the instance handle for the second instance is UNDEFINED
      --           , or in ada's case, NULL.
      -- -----------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Multiple Array Active Object    ",
         Purpose         => "Fourth instance is null         ");
      
      
      --  if Fourth_Of_Three = UNDEFINED then
      --    Failure_Value = 0
      --  else
      --    Failure_Value = 1
      --    - It isn't supposed to be here, so get rid of it.
      --    delete Fourth_Of_Three
      --  endif
      --  [] = TAGS5::Report_Now[Test, "Fourth instance is null", Failure_Value, Supported]
      
      TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      --  End Test 5
      -- -----------------------------------------------------------------------------
      --  Test 6 - Perform some synchronous tests as a result of this asynchronous 
      --           service.
      -- -----------------------------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOTO.TAGS_AAAOTO4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.AAAOTO.AAAOTO4,
            Target_Instance  => First_Of_Three);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOTO.TAGS_AAAOTO4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.AAAOTO.AAAOTO4,
            Target_Instance  => Second_Of_Three);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOTO.TAGS_AAAOTO4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.AAAOTO.AAAOTO4,
            Target_Instance  => Third_Of_Three);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      --  Prove that the first legal instance can be deleted and a new one created in it's place.
      --  This processing will be done when the event is unqueued. It shall effectively delete
      --  First_Of_Three instance, and create a new one and generate an event to the new instance
      --  to prove that it can execute its' state machine correctly.
      --  In the wrong hands, this could turn into a recursive call. If the Phoenix event was sent to
      --  the new instance in the state machine by the deleted state machine, there would be no return. 
      --  Ever.
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOTO.TAGS_AAAOTO3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.AAAOTO.AAAOTO3,
            Target_Instance  => First_Of_Three);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOTO.TAGS_AAAOTO3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.AAAOTO.AAAOTO3,
            Target_Instance  => Second_Of_Three);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOTO.TAGS_AAAOTO3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.AAAOTO.AAAOTO3,
            Target_Instance  => Third_Of_Three);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      Test := Test + 1;
      
      
      --  End Test 6
      -- -----------------------------------------------------------------------------
      --  Finally increment the test number to show the next available number.
      -- -----------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number := Test;
      
      
   end TAGS_AAAOTO1_Do_Active_Many_Array_Tests;
   
end TAGS_AAAOTO1_Do_Active_Many_Array_Tests_Service;

--
-- End of file TAGS_AAAOTO1_Do_Active_Many_Array_Tests_Service.adb
--
