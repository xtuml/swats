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
--* File Name:               Events_objVERCETL_2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies that the tests performed within the objects
--*                           'Creation_Object' and 'Terminal_Object' provide the correct results.
--*                           
--*                           The following tests produced the following results:
--*                           
--*                               Test      Object      Reference      ResultA
--*                               1         Creation    1              10
--*                               19        Deletion    2              20
--*                               21        Deletion    3              30
--*                           
--*                           
--*                           Test:      Test case identity.
--*                           Object:    Indicates which object to which the test applies.
--*                           Reference: Indicates which instance of Object_Verify_Creation_Deletion
--*                                      was used to verify the tests performed in the above objects.
--*                           ResultA:   Indicates the value written into the attribute 'ResultA'
--*                                      if the test was successful.
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
with Root_Object.Events.objTERMINAL;
with Root_Object.Events.objCREATE;

-- List of bridges used
with Events_RPT2_Test_Passed_Bridge;
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objVERCETL)
   
   procedure Events_objVERCETL_2 (Test          : in     Application_Types.Base_Integer_Type;
                                  Test_Number   : in     Application_Types.Base_Integer_Type;
                                  This_Instance : in out Root_Object.Object_Access) is
   
      
      all_terminal_instance : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      an_inst_create : Root_Object.Object_Access;
      
      count_of_terminal_instances : Application_Types.Base_Integer_Type := 1;
      
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- -----------------------------------------------------------
      --  Verify state
      -- -----------------------------------------------------------
      -- -----------------------------------------------------------
      --  Test 1 - Verify an event to a creation state
      -- -----------------------------------------------------------
      
      if Test =  1 then
         
         Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
            Test_Number     => Test_Number,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Events                          ",
            Invoking_Object => "Verify                          ",
            Purpose         => "Verify Creation state           ");
         
         has_failed := False;
         an_inst_create := Root_Object.Events.objCREATE.Conditional_Find_One;
         while (an_inst_create /= null) and then (not (Root_Object.Events.objCREATE.Events_objCREATE_Type(an_inst_create.all).ReferenceCREATE =  1) ) loop
            
            an_inst_create := an_inst_create.Next_Object;
         end loop;
         
         
         if an_inst_create =  Null then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Creation State                  ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -1);
            
            has_failed := True;
            
         else
            
            Root_Object.Events.objVERCETL.Events_objVERCETL_type(This_Instance.all).ResultA := 10;
            
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Creation State                  ",
               Test_Number        => Test_Number,
               Test_Value         => 10);
            
         end if;
         
      end if;
      
      
      -- -----------------------------------------------------------
      --  Test 2 - Verify an event to a terminal state
      -- -----------------------------------------------------------
      
      if Test =  2 then
         
         Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
            Test_Number     => Test_Number,
            Requid          => "1241-0000-01-0206               ",
            Invoking_Domain => "Events                          ",
            Invoking_Object => "Verify                          ",
            Purpose         => "Verify Terminal state           ");
         
         
         has_failed := False;
         
         
         Root_Object.Object_List.Clear (
            From => all_terminal_instance);
         
         Root_Object.Events.objTERMINAL.Find (
            Add_To => all_terminal_instance);
         
         
         count_of_terminal_instances := Root_Object.Object_List.Count_Of(all_terminal_instance);
         
         
         if count_of_terminal_instances /= 1 then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Terminal State                  ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => count_of_terminal_instances);
            
            
            has_failed := True;
            
         else
            
            Root_Object.Events.objVERCETL.Events_objVERCETL_type(This_Instance.all).ResultA := 20;
            
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Terminal State                  ",
               Test_Number        => Test_Number,
               Test_Value         => 20);
            
         end if;
         
      end if;
      
      
      -- -----------------------------------------------------------
      --  Test 3 - Verify an event to a terminal state
      -- -----------------------------------------------------------
      
      if Test =  3 then
         
         Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
            Test_Number     => Test_Number,
            Requid          => "1241-0000-01-0206               ",
            Invoking_Domain => "Events                          ",
            Invoking_Object => "Verify                          ",
            Purpose         => "Verify Terminal state           ");
         
         
         has_failed := False;
         
         
         Root_Object.Object_List.Clear (
            From => all_terminal_instance);
         
         Root_Object.Events.objTERMINAL.Find (
            Add_To => all_terminal_instance);
         
         
         count_of_terminal_instances := Root_Object.Object_List.Count_Of(all_terminal_instance);
         
         
         if count_of_terminal_instances /= 0 then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Terminal State                  ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => count_of_terminal_instances);
            
            
            has_failed := True;
            
         else
            
            Root_Object.Events.objVERCETL.Events_objVERCETL_type(This_Instance.all).ResultA := 30;
            
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Terminal State                  ",
               Test_Number        => Test_Number,
               Test_Value         => 30);
            
         end if;
         
      end if;
      
      
      -- -----------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objVERCETL.Events_objVERCETL1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objVERCETL.objVERCETL1,
            Target_Instance  => This_Instance);
         
         Root_Object.Events.objVERCETL.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (all_terminal_instance);
      Root_Object.Events.objVERCETL.Process_Queue;
   end Events_objVERCETL_2;
   
--
-- End of file Events_objVERCETL_2.ada
--
