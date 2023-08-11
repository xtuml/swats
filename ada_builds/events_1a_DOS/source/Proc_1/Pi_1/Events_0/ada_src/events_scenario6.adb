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
--* File Name:               Events_Scenario6.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Event Priorities
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

-- List of objects used
with Root_Object.Events.PriB;
with Root_Object.Events.PriA;
with Root_Object.Events.TD;

-- List of relationships used
with Events_rel_R20;

-- List of bridges used
with Events_RPT1_Start_Test_Bridge;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Events_Scenario6 is
   
      
      my_test : Root_Object.Object_Access;
      InstPA  : Root_Object.Object_Access;
      InstPB  : Root_Object.Object_Access;
      
      The_Test_Number : Application_Types.Base_Integer_Type := 1;
      
   begin
      my_test := Root_Object.Events.TD.Unconditional_Find_One;
      
      if my_test =  Null then
         
         --  Start in safe mode
         The_Test_Number := 100;
      else
         The_Test_Number := Root_Object.Events.TD.Events_TD_type(my_test.all).Current_Test_Number;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Test that the priority of events is executed correctly
      --           N.B. This test MUST be the LAST to be executed
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-0406               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Priority of events              ");
      
      
      InstPA := Root_Object.Events.PriA.Create;
      Root_Object.Events.PriA.Events_PriA_Type(InstPA.all).A_ID          := 1;
      Root_Object.Events.PriA.Events_PriA_Type(InstPA.all).RefA          := 0;
      Root_Object.Events.PriA.Events_PriA_Type(InstPA.all).Event_Count   := 0;
      Root_Object.Events.PriA.Events_PriA_Type(InstPA.all).Done_It       := False;
      Root_Object.Events.PriA.Events_PriA_Type(InstPA.all).Poly_A        := False;
      Root_Object.Events.PriA.Events_PriA_Type(InstPA.all).Poly_B        := False;
      Root_Object.Events.PriA.Events_PriA_Type(InstPA.all).Current_State := Root_Object.Events.PriA.Idle;
      
      
      InstPB := Root_Object.Events.PriB.Create;
      Root_Object.Events.PriB.Events_PriB_Type(InstPB.all).B_ID          := 1;
      Root_Object.Events.PriB.Events_PriB_Type(InstPB.all).Current_State := Root_Object.Events.PriB.Idle;
      
      Events_Rel_R20.Link (
         A_Instance => InstPA,
         B_Instance => InstPB);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.PriA.Events_PriA1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.PriA.PriA1,
            Target_Instance  => InstPA,
            Test_No          => The_Test_Number,
            Index            => 3);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      
      if my_test /= Null then
         
         Root_Object.Events.TD.Events_TD_type(my_test.all).Current_Test_Number := The_Test_Number;
         
      end if;
      
   end Events_Scenario6;
   
--
-- End of file Events_Scenario6.ada
--
