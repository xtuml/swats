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
--* File Name:               Events_REFLECT_2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies that an instance of a reflexive object 
--*                           can send an event to its self and to other instances of 
--*                           the same object.
--*                           
--*                           The following tests give the following results:
--*                           
--*                               Test      Reference      ResultA
--*                               13        1              60
--*                               14        2, 3, 4        20
--*                           
--*                           Test:      Test case identity.
--*                           Reference: Indicates which instances of the 
--*                                      object 'Reflexive' was included in the test.
--*                           ResultA:   Indicates the final value written into 
--*                                      the attribute 'ResultA' at the end of 
--*                                      the test, the value of this attribute 
--*                                      may change during the test.
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
with Root_Object.Events.REFLECT;

-- List of services used
with Events_Events2_Delete_Report_Data_Service;

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


separate(Root_Object.Events.REFLECT)
   
   procedure Events_REFLECT_2 (Test          : in     Application_Types.Base_Integer_Type;
                               Counter       : in     Application_Types.Base_Integer_Type;
                               Test_Number   : in     Application_Types.Base_Integer_Type;
                               This_Instance : in out Root_Object.Object_Access) is
   
      
      all_instance : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      an_instance   : Root_Object.Object_Access;
      each_instance : Root_Object.Object_Access;
      
      count      : Application_Types.Base_Integer_Type := 1;
      temp       : Application_Types.Base_Integer_Type := 1;
      fault_code : Application_Types.Base_Integer_Type := 1;
      
      fault_flag : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- -----------------------------------------------------------
      --  Test state
      -- -----------------------------------------------------------
      -- -----------------------------------------------------------
      --  Test 1 - Send events to own instance handle
      -- -----------------------------------------------------------
      
      if Test =  1 then
         
         if Counter =  0 then
            
            --  Only dump this string if this is the first time
            
            Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
               Test_Number     => Test_Number,
               Requid          => "Null Requid                     ",
               Invoking_Domain => "Events                          ",
               Invoking_Object => "objREFLECT                      ",
               Purpose         => "Reflexive navigation            ");
            
            count := 0;
         end if;
         
         temp := Root_Object.Events.REFLECT.Events_REFLECT_type(This_Instance.all).ResultA + 10;
         
         
         Root_Object.Events.REFLECT.Events_REFLECT_type(This_Instance.all).ResultA := temp;
         
         
         --  Set counter value
         
         count := Counter + 1;
         
         
         --  Generate event to one's self
         
         if count <  6 then
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Events.REFLECT.Events_REFLECT3'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Events.REFLECT.REFLECT3,
                  Target_Instance  => This_Instance,
                  Test             => Test,
                  Counter          => count,
                  Test_Number      => Test_Number);
               
               Root_Object.Events.REFLECT.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         end if;
         
         
         if count =  6 then
            
            if Root_Object.Events.REFLECT.Events_REFLECT_type(This_Instance.all).ResultA /= 60 then
               
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => "Reflexive                       ",
                  Failed_Test_Number   => Test_Number,
                  Failed_Test_Value    => Root_Object.Events.REFLECT.Events_REFLECT_type(This_Instance.all).ResultA);
               
               
               declare
                  Pushed_Event : Root_Object.Root_Event_Access_Type;
               begin
                  Pushed_Event := new
                  Root_Object.Events.REFLECT.Events_REFLECT2'(Root_Object.Root_Event_Type with
                     This_Event_Class => Root_Object.Events.REFLECT.REFLECT2,
                     Target_Instance  => This_Instance);
                  
                  Root_Object.Events.REFLECT.Push (
                     Event  => Pushed_Event,
                     To_Top => True);
               end;
            else
               
               Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                  Test_Object_Domain => "Reflexive                       ",
                  Test_Number        => Test_Number,
                  Test_Value         => Root_Object.Events.REFLECT.Events_REFLECT_type(This_Instance.all).ResultA);
               
               
               declare
                  Pushed_Event : Root_Object.Root_Event_Access_Type;
               begin
                  Pushed_Event := new
                  Root_Object.Events.REFLECT.Events_REFLECT1'(Root_Object.Root_Event_Type with
                     This_Event_Class => Root_Object.Events.REFLECT.REFLECT1,
                     Target_Instance  => This_Instance);
                  
                  Root_Object.Events.REFLECT.Push (
                     Event  => Pushed_Event,
                     To_Top => True);
               end;
            end if;
            
         end if;
         
      end if;
      
      
      -- -----------------------------------------------------------
      --  Test 2 - Send events to another instance of same object
      -- -----------------------------------------------------------
      
      fault_flag := False;
      fault_code := 0;
      count      := 0;
      
      
      if Test =  2 then
         
         if Counter =  0 then
            
            Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
               Test_Number      => Test_Number,
               Requid           => "Null Requid                     ",
               Invoking_Domain  => "Events                          ",
               Invoking_Object  => "objREFLECT                      ",
               Purpose          => "Reflexive navigations           ");
            
         end if;
         
         
         temp := Root_Object.Events.REFLECT.Events_REFLECT_type(This_Instance.all).ResultA + 20;
         
         
         Root_Object.Events.REFLECT.Events_REFLECT_type(This_Instance.all).ResultA := temp;
         
         
         --  Set counter value
         
         count := Counter + 1;
         
         
         --  Find an instance to send the event to
         an_instance := Root_Object.Events.REFLECT.Conditional_Find_One;
         while (an_instance /= null) and then (not (Root_Object.Events.REFLECT.Events_REFLECT_Type(an_instance.all).ReferenceREFLECT =  count) ) loop
            
            an_instance := an_instance.Next_Object;
         end loop;
         
         
         if count <  5 then
            
            --  Generate event to one's self
            
            if an_instance /= Null then
               
               declare
                  Pushed_Event : Root_Object.Root_Event_Access_Type;
               begin
                  Pushed_Event := new
                  Root_Object.Events.REFLECT.Events_REFLECT3'(Root_Object.Root_Event_Type with
                     This_Event_Class => Root_Object.Events.REFLECT.REFLECT3,
                     Target_Instance  => an_instance,
                     Test             => Test,
                     Counter          => count,
                     Test_Number      => Test_Number);
                  
                  Root_Object.Events.REFLECT.Push (
                     Event  => Pushed_Event);
               end;
            else
               
               fault_code := -3;
               fault_flag := True;
            end if;
            
         end if;
         
         
         --  Verify results
         
         if count =  5 then
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
            begin
               Root_Object.Object_List.Clear (
                  From => all_instance);
               
               Root_Object.Events.REFLECT.Find (
                  Add_To => Temp_List);
               
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => Temp_List);
               
               while (Temp_Entry /= null) loop
                  
                  if Root_Object.Events.REFLECT.Events_REFLECT_Type(Temp_Entry.Item.all).ReferenceREFLECT =  2 then
                     
                     Root_Object.Object_List.Insert (
                        New_Item => Temp_Entry.Item,
                        On_To    => all_instance);
                     
                  end if;
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => Temp_List);
                  
               end loop;
               
               Root_Object.Object_List.Destroy_List (
                  Target_List => Temp_List);
            end;
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => all_instance);
               
               while (Temp_Entry /= null) loop
                  each_instance := Temp_Entry.Item;
                  
                  if each_instance =  Null then
                     fault_flag := True;
                     fault_code := -2;
                  else
                     
                     if Root_Object.Events.REFLECT.Events_REFLECT_type(each_instance.all).ResultA /= 20 then
                        fault_flag := True;
                        fault_code := Root_Object.Events.REFLECT.Events_REFLECT_type(each_instance.all).ResultA;
                        
                     end if;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => all_instance);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if fault_flag =  False then
               
               Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                  Test_Object_Domain => "objREFLECT                      ",
                  Test_Number        => Test_Number,
                  Test_Value         => Root_Object.Events.REFLECT.Events_REFLECT_type(This_Instance.all).ResultA);
               
               
               declare
                  Pushed_Event : Root_Object.Root_Event_Access_Type;
               begin
                  Pushed_Event := new
                  Root_Object.Events.REFLECT.Events_REFLECT1'(Root_Object.Root_Event_Type with
                     This_Event_Class => Root_Object.Events.REFLECT.REFLECT1,
                     Target_Instance  => This_Instance);
                  
                  Root_Object.Events.REFLECT.Push (
                     Event  => Pushed_Event,
                     To_Top => True);
               end;
            else
               
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => "objREFELCT                      ",
                  Failed_Test_Number   => Test_Number,
                  Failed_Test_Value    => fault_code);
               
               
               declare
                  Pushed_Event : Root_Object.Root_Event_Access_Type;
               begin
                  Pushed_Event := new
                  Root_Object.Events.REFLECT.Events_REFLECT2'(Root_Object.Root_Event_Type with
                     This_Event_Class => Root_Object.Events.REFLECT.REFLECT2,
                     Target_Instance  => This_Instance);
                  
                  Root_Object.Events.REFLECT.Push (
                     Event  => Pushed_Event,
                     To_Top => True);
               end;
            end if;
            
            
            Events_Events2_Delete_Report_Data_Service.Events_Events2_Delete_Report_Data;
            
         end if;
         
      end if;
      
      
      -- -----------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (all_instance);
      Root_Object.Events.REFLECT.Process_Queue;
   end Events_REFLECT_2;
   
--
-- End of file Events_REFLECT_2.ada
--
