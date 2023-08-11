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
--* File Name:               Events_ETS_4.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies the following:
--*                           
--*                           [1] That an event to self was acted upon before
--*                               any other events where handled.
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
--* Domain Name              : Events
--* Domain Key Letter        : Events
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT2_Test_Passed_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.ETS)
   
   procedure Events_ETS_4 (Test          : in     Application_Types.Base_Integer_Type;
                           Test_Number   : in     Application_Types.Base_Integer_Type;
                           This_Instance : in out Root_Object.Object_Access) is
   
      
      result : Application_Types.Base_Integer_Type := 1;
      temp   : Application_Types.Base_Integer_Type := 1;
      
      faultflag  : Boolean := Application_Types.Boolean_first;
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------
      -- Verify tests
      -- --------------------------------------------------------------------
      -- Initialise the fault flag
      faultflag := False;
      
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "objETS                          ",
         Purpose         => "Events to self                  ");
      
      
      -- --------------------------------------------------------------------
      -- Test 1
      
      if Test =  1 then
         
         -- Check that the verifying event was handled after
         -- generating events to self
         
         result := Root_Object.Events.ETS.Events_ETS_type(This_Instance.all).NewResult - Root_Object.Events.ETS.Events_ETS_type(This_Instance.all).OldResult;
         
         
         if result /= 10 then
            
            faultflag := True;
            
         end if;
         
      end if;
      
      
      -- End Test 1
      -- --------------------------------------------------------------------
      -- Tests complete
      
      if faultflag =  False then
         
         -- Indicate that the test was successful and complete
         
         temp := Root_Object.Events.ETS.Events_ETS_type(This_Instance.all).NewResult + 10;
         
         
         Root_Object.Events.ETS.Events_ETS_type(This_Instance.all).OldResult := temp;
         Root_Object.Events.ETS.Events_ETS_type(This_Instance.all).NewResult := temp;
         
         
         Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
            Test_Object_Domain => "objETS                          ",
            Test_Number        => Test_Number,
            Test_Value         => temp);
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.ETS.Events_ETS2'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.ETS.ETS2,
               Target_Instance  => This_Instance);
            
            Root_Object.Events.ETS.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         -- Indicate that the test failed
         
         Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
            Failed_Domain_Object => "objETS                          ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => temp);
         
         
         has_failed := True;
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.ETS.Events_ETS1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.ETS.ETS1,
               Target_Instance  => This_Instance);
            
            Root_Object.Events.ETS.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      
      -- --------------------------------------------------------------------
      Root_Object.Events.ETS.Process_Queue;
   end Events_ETS_4;
   
--
-- End of file Events_ETS_4.ada
--
