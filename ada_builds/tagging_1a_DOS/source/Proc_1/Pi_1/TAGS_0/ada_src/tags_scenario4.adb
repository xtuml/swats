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
--* File Name:               TAGS_Scenario4.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Perform_Passive_Array_Tests
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
with Root_Object.TAGS.JM;
with Root_Object.TAGS.TD;

-- List of services used
with TAGS_TAGS7_Perform_Passive_Array_of_3_Objects_Tests_Service;
with TAGS_TAGS8_Perform_Passive_Array_of_1_Object_Tests_Service;

-- List of bridges used
with TAGS_RPT3_Test_Failed_Bridge;
with TAGS_RPT2_Test_Passed_Bridge;
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

   
   procedure TAGS_Scenario4 is
   
      
      set_of_objects : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test            : Root_Object.Object_Access;
      JM1                : Root_Object.Object_Access;
      JM2                : Root_Object.Object_Access;
      replacement_object : Root_Object.Object_Access;
      each_object        : Root_Object.Object_Access;
      new_object         : Root_Object.Object_Access;
      
      Test        : Application_Types.Base_Integer_Type := 1;
      Last_Test   : Application_Types.Base_Integer_Type := 1;
      total_count : Application_Types.Base_Integer_Type := 1;
      
      This_Is_WACA : Boolean := Application_Types.Boolean_first;
      
   begin
      
      --  Separate requirement tag test
      --  @@TAGS-01-0012
      my_test := Root_Object.TAGS.TD.Unconditional_Find_One;
      
      if Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Environment =  TAGS_Domain_Types.WACA then
         This_Is_WACA := True;
      else
         This_Is_WACA := False;
      end if;
      
      Test := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number;
      Last_Test    := 0;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1
      -- --------------------------------------------------------------------------
      
      TAGS_TAGS8_Perform_Passive_Array_of_1_Object_Tests_Service.TAGS_TAGS8_Perform_Passive_Array_of_1_Object_Tests (
         Start_Test_Number => Test,
         Supported         => This_Is_WACA,
         Final_Test_Number => Last_Test);
      
      
      Test := Last_Test + 1;
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      TAGS_TAGS7_Perform_Passive_Array_of_3_Objects_Tests_Service.TAGS_TAGS7_Perform_Passive_Array_of_3_Objects_Tests (
         Start_Test_Number => Test,
         Supported         => This_Is_WACA,
         Final_Test_Number => Last_Test);
      
      Test := Last_Test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - Create three passive data objects for Just Multiple
      -- --------------------------------------------------------------------------
      
      JM1 := Root_Object.TAGS.JM.Create;
      Root_Object.TAGS.JM.TAGS_JM_Type(JM1.all).idJM := 1;
      
      
      JM2 := Root_Object.TAGS.JM.Create;
      Root_Object.TAGS.JM.TAGS_JM_Type(JM2.all).idJM := 1;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Multiple object                 ",
         Purpose         => "Create two                      ");
      
      
      --  Return count of A_Passive_Array_Of_Three_Objects
      
      Root_Object.Object_List.Clear (
         From => set_of_objects);
      
      Root_Object.TAGS.JM.Find (
         Add_To => set_of_objects);
      
      
      total_count := Root_Object.Object_List.Count_Of(set_of_objects);
      
      
      if total_count =  2 then
         
         TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
            Test_Object_Domain => "Created two                     ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "Failed to create two            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Multiple object                 ",
         Purpose         => "Delete one                      ");
      
      
      --  Delete 1 of passive objects
      
      Root_Object.TAGS.JM.Delete (
         Old_Instance => JM2);
      
      Root_Object.Object_List.Clear (
         From => set_of_objects);
      
      Root_Object.TAGS.JM.Find (
         Add_To => set_of_objects);
      
      
      total_count := Root_Object.Object_List.Count_Of(set_of_objects);
      
      
      if total_count =  1 then
         
         TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
            Test_Object_Domain => "Delete one                      ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "Failed to delete one            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - Create extra passive object, total of three
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Multiple object                 ",
         Purpose         => "Add one                         ");
      
      
      replacement_object := Root_Object.TAGS.JM.Create;
      Root_Object.TAGS.JM.TAGS_JM_Type(replacement_object.all).idJM := 3;
      
      
      --  Return count of A_Passive_Array_Of_Three_Objects
      
      Root_Object.Object_List.Clear (
         From => set_of_objects);
      
      Root_Object.TAGS.JM.Find (
         Add_To => set_of_objects);
      
      
      total_count := Root_Object.Object_List.Count_Of(set_of_objects);
      
      
      if total_count =  2 then
         
         TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
            Test_Object_Domain => "Add one                         ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "Failed to add one               ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 5 - Attempt to delete all objects
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Passive Array 3 UNIQUE object   ",
         Purpose         => "Delete all objects              ");
      
      
      --  Return count of A_Passive_Array_Of_Three_Objects
      
      Root_Object.Object_List.Clear (
         From => set_of_objects);
      
      Root_Object.TAGS.JM.Find (
         Add_To => set_of_objects);
      
      
      total_count := Root_Object.Object_List.Count_Of(set_of_objects);
      
      if total_count =  2 then
         
         --  Delete all objects
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => set_of_objects);
            
            while (Temp_Entry /= null) loop
               each_object := Temp_Entry.Item;
               
               Root_Object.TAGS.JM.Delete (
                  Old_Instance => each_object);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => set_of_objects);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         Root_Object.Object_List.Clear (
            From => set_of_objects);
         
         Root_Object.TAGS.JM.Find (
            Add_To => set_of_objects);
         
         total_count := Root_Object.Object_List.Count_Of(set_of_objects);
         
         if total_count =  0 then
            
            new_object := Root_Object.TAGS.JM.Create;
            Root_Object.TAGS.JM.TAGS_JM_Type(new_object.all).idJM := 1;
            
            
            --  Check that it is defined
            
            if new_object /= Null then
               
               Root_Object.Object_List.Clear (
                  From => set_of_objects);
               
               Root_Object.TAGS.JM.Find (
                  Add_To => set_of_objects);
               
               total_count := Root_Object.Object_List.Count_Of(set_of_objects);
               
               
               --  and only one now exists
               
               if total_count =  1 then
                  
                  Root_Object.TAGS.JM.Delete (
                     Old_Instance => new_object);
                  
                  TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
                     Test_Object_Domain => "Deleted all                     ",
                     Test_Number        => Test,
                     Test_Value         => 0);
                  
               else
                  TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
                     Failed_Domain_Object => "Failed to delete all            ",
                     Failed_Test_Number   => Test,
                     Failed_Test_Value    => -10);
                  
               end if;
               
            else
               TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
                  Failed_Domain_Object => "Failed to delete all            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -20);
               
            end if;
            
         else
            TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
               Failed_Domain_Object => "Failed to delete all            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -30);
            
         end if;
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "Failed to delete all            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -40);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (set_of_objects);
   end TAGS_Scenario4;
   
--
-- End of file TAGS_Scenario4.ada
--
