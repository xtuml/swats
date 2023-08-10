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
--* File Name:               Events_objMCS_4.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies the following:
--*                           
--*                           [1] That instances in both creation states where
--*                               created correctly.
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
with Root_Object.Events.objMCS;

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


separate(Root_Object.Events.objMCS)
   
   procedure Events_objMCS_4 (Test          : in     Application_Types.Base_Integer_Type;
                              Test_Number   : in     Application_Types.Base_Integer_Type;
                              This_Instance : in out Root_Object.Object_Access) is
   
      
      some_instances : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      each_instanceMCS : Root_Object.Object_Access;
      
      IdentityA : Application_Types.Base_Integer_Type := 1;
      IdentityB : Application_Types.Base_Integer_Type := 1;
      temp      : Application_Types.Base_Integer_Type := 1;
      countA    : Application_Types.Base_Integer_Type := 1;
      countB    : Application_Types.Base_Integer_Type := 1;
      
      faultflag  : Boolean := Application_Types.Boolean_first;
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------
      -- Verify Tests
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "objMCS                          ",
         Purpose         => "Multiple creation states        ");
      
      
      -- --------------------------------------------------------------------
      -- Initialise the fault flag
      faultflag := False;
      
      
      -- --------------------------------------------------------------------
      -- Test 1
      
      if Test =  1 then
         
         has_failed := False;
         
         
         -- Find the newly created instances
         
         IdentityA := 100 + Test;
         IdentityB := 200 + Test;
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
         begin
            Root_Object.Object_List.Clear (
               From => some_instances);
            
            Root_Object.Events.objMCS.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Events.objMCS.Events_objMCS_Type(Temp_Entry.Item.all).idMCS =  IdentityA or else
                     Root_Object.Events.objMCS.Events_objMCS_Type(Temp_Entry.Item.all).idMCS =  IdentityB then
                  
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
         
         -- Check the result of the find.
         
         if Root_Object.Object_List.Count_Of(some_instances) /= 2 then
            faultflag := True;
            temp      := -1;
            
         else
            
            -- Check the contents of the set
            
            countA := 0;
            countB := 0;
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => some_instances);
               
               while (Temp_Entry /= null) loop
                  each_instanceMCS := Temp_Entry.Item;
                  
                  if Root_Object.Events.objMCS.Events_objMCS_type(each_instanceMCS.all).idMCS =  IdentityA then
                     countA := countA + 1;
                  else
                     
                     if Root_Object.Events.objMCS.Events_objMCS_type(each_instanceMCS.all).idMCS =  IdentityB then
                        countB := countB + 1;
                        
                     else
                        
                        faultflag := True;
                        temp      := -2;
                     end if;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => some_instances);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            -- Check counters
            
            if countA /= 1 or else
               countB /= 1 then
               faultflag := True;
               temp      := -3;
               
            end if;
            
         end if;
         
      end if;
      
      
      -- End Test 1
      -- --------------------------------------------------------------------
      -- Tests complete
      
      if faultflag =  False then
         
         -- Indicate that the test was succesful and complete
         
         temp := Root_Object.Events.objMCS.Events_objMCS_type(This_Instance.all).ResultA + 10;
         
         
         Root_Object.Events.objMCS.Events_objMCS_type(This_Instance.all).ResultA := temp;
         
         
         Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
            Test_Object_Domain => "objMCS                          ",
            Test_Number        => Test_Number,
            Test_Value         => temp);
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.objMCS.Events_objMCS6'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.objMCS.objMCS6,
               Target_Instance  => This_Instance,
               Test             => Test);
            
            Root_Object.Events.objMCS.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         -- Indicate that the test failed
         
         Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
            Failed_Domain_Object => "objMCS                          ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => temp);
         
         
         has_failed := True;
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.objMCS.Events_objMCS5'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.objMCS.objMCS5,
               Target_Instance  => This_Instance);
            
            Root_Object.Events.objMCS.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (some_instances);
      Root_Object.Events.objMCS.Process_Queue;
   end Events_objMCS_4;
   
--
-- End of file Events_objMCS_4.ada
--
