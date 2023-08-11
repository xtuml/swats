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
--* File Name:               TAGS_AAAOOO1_Do_Active_Single_Array_Tests_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          @@TAGS-01-0004
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
with Root_Object.TAGS.AAAOOO;
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


package body TAGS_AAAOOO1_Do_Active_Single_Array_Tests_Service is
   
   procedure TAGS_AAAOOO1_Do_Active_Single_Array_Tests is
      
      my_test      : Root_Object.Object_Access;
      First_Single : Root_Object.Object_Access;
      
      Test                  : Application_Types.Base_Integer_Type := 1;
      Value_To_Add          : Application_Types.Base_Integer_Type := 1;
      Expected_Result_Value : Application_Types.Base_Integer_Type := 1;
      
      This_Environment : TAGS_Domain_Types.Environment_Type     := TAGS_Domain_Types.Environment_Type_first;
      
      Supported : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of AAAOOO1_Do_Active_Single_Array_Tests
      
      -- --------------------------------------------------------------------------
      --  The array of 1 should be treated exactly the same way as an object tagged
      --  SINGLETON.
      -- --------------------------------------------------------------------------
      --  Create first of the single active array objects.
      my_test := Root_Object.TAGS.TD.Unconditional_Find_One;
      Test             := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number;
      This_Environment := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Environment;
      
      
      if This_Environment =  TAGS_Domain_Types.WACA then
         
         Supported := True;
      else
         Supported := False;
         
      end if;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - Create first and only allowable instance of the object
      --           This will be an asynchronous test.
      -- --------------------------------------------------------------------------
      First_Single := Root_Object.TAGS.AAAOOO.Create_Unique;
      Root_Object.TAGS.AAAOOO.TAGS_AAAOOO_Type(First_Single.all).Result        := 0;
      Root_Object.TAGS.AAAOOO.TAGS_AAAOOO_Type(First_Single.all).Current_State := Root_Object.TAGS.AAAOOO.Idle;
      
      
      Value_To_Add := 10;
      Expected_Result_Value := 10;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOOO.TAGS_AAAOOO1'(Root_Object.Root_Event_Type with
            This_Event_Class  => Root_Object.TAGS.AAAOOO.AAAOOO1,
            Target_Instance   => First_Single,
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
      -- --------------------------------------------------------------------------
      --  Test 2 - This will be a synchronous test.
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number       => Test,
         Requid            => "Null Requid                     ",
         Invoking_Domain   => "Tagging                         ",
         Invoking_Object   => "Single Array Active Object      ",
         Purpose           => "Inhibit second instance         ");
      
      
      --  Second_Single = create unique An_Active_Array_Of_One_Object with Result = 0 & Current_State = 'Idle'
      --  {Set_Of_Single_Array} = find-all An_Active_Array_Of_One_Object
      --  Number_Of_Single_Array = countof {Set_Of_Single_Array}
      --  Should only be 1, but reporter widget expects a zero in the Failure field for a pass.
      --  So if there are more than one instances found, this should be reported as an
      --  error.
      --  Failure_Value = Number_Of_Single_Array - 1
      --  [] = TAGS5::Report_Now[Test, "Inhibit second instance", Failure_Value, Supported]
      
      TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      Test := Test + 1;
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - Prove that the instance handle for the second instance is 
      --           UNDEFINED, or in ada's case, NULL.
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Single Array Active Object      ",
         Purpose         => "Second instance is null         ");
      
      
      --  if Second_Single = UNDEFINED then
      --    Failure_Value = 0
      --  else
      --    Failure_Value = 1
      --    - It isn't supposed to be here, so get rid of it.
      --    delete Second_Single
      --  endif
      --  [] = TAGS5::Report_Now[Test, "Second instance is null", Failure_Value, Supported]
      
      TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      --  Perform some synchronous tests as a result of this asynchronous service.
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOOO.TAGS_AAAOOO3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.AAAOOO.AAAOOO3,
            Target_Instance  => First_Single);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      --  Prove that the first legal instance can be deleted and a new one created in it's place.
      --  This processing will be done when the event is unqueued. It shall effectively delete
      --  First_Single instance, and create a new one and generate an event to the new instance
      --  to prove that it can execute its' state machine correctly.
      --  In the wrong hands, this could turn into a recursive call. If the Phoenix event was sent to
      --  the new instance in the state machine by the deleted state machine, there would be no return. 
      --  Ever.
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOOO.TAGS_AAAOOO4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TAGS.AAAOOO.AAAOOO4,
            Target_Instance  => First_Single);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      Test := Test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number := Test;
      
      
   end TAGS_AAAOOO1_Do_Active_Single_Array_Tests;
   
end TAGS_AAAOOO1_Do_Active_Single_Array_Tests_Service;

--
-- End of file TAGS_AAAOOO1_Do_Active_Single_Array_Tests_Service.adb
--
