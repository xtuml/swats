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
--* File Name:               TAGS_AAAOTO_4.ada
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
with Root_Object.TAGS.TD;

-- List of bridges used
with TAGS_RPT4_Test_Unsupported_Bridge;
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


separate(Root_Object.TAGS.AAAOTO)
   
   procedure TAGS_AAAOTO_4 (This_Instance : in out Root_Object.Object_Access) is
   
      
      my_test : Root_Object.Object_Access;
      
      Test : Application_Types.Base_Integer_Type := 1;
      
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
      --  Test 1 - This will be a synchronous test.
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Multiple Array Active Object    ",
         Purpose         => "Inhibit fourth instance         ");
      
      
      --  This test shall prove that a fourth instance is not allowed. 
      --  Fourth = create unique An_Active_Array_Of_Three_Objects with Result = 0 & Current_State = 'Idle'
      --  {Set_Of_Multiple_Array} = find-all An_Active_Array_Of_Three_Objects
      --  Number_Of_Multiple_Array = countof {Set_Of_Multiple_Array}
      --  Should only be 3, but reporter widget expects a zero in the Failure field for a pass.
      --  So if there are more than one instances found, this should be reported as an
      --  error.
      --  All three allowable instances have been created in the synch service BEFORE the event which
      --  caused this operation was generated. 
      --  So there should be three instances in existance when this bit is processed.
      --  That's the theory anyway. If this is not so, then a failure will be logged.
      --  Failure_Value = Number_Of_Multiple_Array - 3
      --  [] = TAGS5::Report_Now[Test, "Inhibit fourth instance", Failure_Value, Supported]
      
      TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      Test := Test + 1;
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2 - Prove that the instance handle for the fourth instance is 
      --           UNDEFINED, or in ada's case, NULL.
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Multiple Array Active Object    ",
         Purpose         => "Fourth instance is null         ");
      
      
      --  if Fourth = UNDEFINED then
      --    Failure_Value = 0
      --  else
      --    Failure_Value = 1
      --    - It isn't supposed to be here, so get rid of it.
      --    delete Fourth
      -- endif
      -- [] = TAGS5::Report_Now[Test, "Fourth instance is null", Failure_Value, Supported]
      
      TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number := Test;
      
      
      --  Transition back into 'Idle' state, but don't report anything.
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOTO.TAGS_AAAOTO2'(Root_Object.Root_Event_Type with
            This_Event_Class  => Root_Object.TAGS.AAAOTO.AAAOTO2,
            Target_Instance   => This_Instance,
            Final_Value       => 0,
            Test_Number       => 0,
            Purpose           => "null                            ",
            Tell_Tales        => False);
         
         Root_Object.TAGS.AAAOTO.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.TAGS.AAAOTO.Process_Queue;
   end TAGS_AAAOTO_4;
   
--
-- End of file TAGS_AAAOTO_4.ada
--
