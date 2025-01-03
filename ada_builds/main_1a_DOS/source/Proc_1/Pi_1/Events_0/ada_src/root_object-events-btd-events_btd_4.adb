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
--* File Name:               Events_BTD_4.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies the following:
--*                           
--*                           [1] That an instance no longer exists if it had
--*                               a born-to-die life cycle.
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
with Root_Object.Events.BTD;

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


separate(Root_Object.Events.BTD)
   
   procedure Events_BTD_4 (Test          : in     Application_Types.Base_Integer_Type;
                           Test_Number   : in     Application_Types.Base_Integer_Type;
                           This_Instance : in out Root_Object.Object_Access) is
   
      
      some_instances : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      Identity : Application_Types.Base_Integer_Type := 1;
      temp     : Application_Types.Base_Integer_Type := 1;
      
      faultflag  : Boolean := Application_Types.Boolean_first;
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- -------------------------------------------------------------------------
      -- Verify born-to-die lifecycle
      -- -------------------------------------------------------------------------
      -- Initialise the fault flag
      faultflag := False;
      
      
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "BornToDie                       ",
         Purpose         => "verify born to die instance     ");
      
      
      -- Test 1
      
      if Test =  1 then
         
         -- Find instancea if they exist
         
         Identity := 100 + Test;
         
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
         begin
            Root_Object.Object_List.Clear (
               From => some_instances);
            
            Root_Object.Events.BTD.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Events.BTD.Events_BTD_Type(Temp_Entry.Item.all).idBTD >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => some_instances);
                  
               end if;
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Temp_List);
               
            end loop;
            
            Root_Object.Object_List.Destroy_List (
               Target_List => Temp_List);
         end;
         
         -- Check that non instances exists
         
         if Root_Object.Object_List.Count_Of(some_instances) /= 0 then
            
            faultflag := True;
            
         end if;
         
      end if;
      
      
      -- End Test 1
      -- -------------------------------------------------------------------------
      -- Tests complete
      
      if faultflag =  False then
         
         -- Indicate that the test was successful and complete
         
         temp := Root_Object.Events.BTD.Events_BTD_type(This_Instance.all).ResultA + 10;
         
         
         Root_Object.Events.BTD.Events_BTD_type(This_Instance.all).ResultA := temp;
         
         
         Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
            Test_Object_Domain => "objBTD                          ",
            Test_Number        => Test_Number,
            Test_Value         => temp);
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.BTD.Events_BTD2'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.BTD.BTD2,
               Target_Instance  => This_Instance);
            
            Root_Object.Events.BTD.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         -- Indicate that the test failed
         
         Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
            Failed_Domain_Object => "objBTD                          ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => -1);
         
         
         has_failed := True;
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.BTD.Events_BTD1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.BTD.BTD1,
               Target_Instance  => This_Instance);
            
            Root_Object.Events.BTD.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      
      -- -------------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (some_instances);
      Root_Object.Events.BTD.Process_Queue;
   end Events_BTD_4;
   
--
-- End of file Events_BTD_4.ada
--
