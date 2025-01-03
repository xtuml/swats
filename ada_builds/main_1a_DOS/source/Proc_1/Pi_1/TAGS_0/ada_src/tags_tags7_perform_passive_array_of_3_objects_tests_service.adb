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
--* File Name:               TAGS7_Perform_Passive_Array_of_3_Objects_Tests_Service.adb
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
with Root_Object.TAGS.APAOTO;

-- List of services used
with TAGS_TAGS5_Report_Now_Service;

-- List of bridges used
with TAGS_RPT4_Test_Unsupported_Bridge;
with TAGS_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body TAGS_TAGS7_Perform_Passive_Array_of_3_Objects_Tests_Service is
   
   procedure TAGS_TAGS7_Perform_Passive_Array_of_3_Objects_Tests (
      Start_Test_Number : in     Application_Types.Base_Integer_Type;
      Supported         : in     Boolean;
      Final_Test_Number :    out Application_Types.Base_Integer_Type) is
      
      set_of_objects : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      Obj                : Root_Object.Object_Access;
      Any_Object         : Root_Object.Object_Access;
      replacement_object : Root_Object.Object_Access;
      each_object        : Root_Object.Object_Access;
      new_object         : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      Test         : Application_Types.Base_Integer_Type := 1;
      count        : Application_Types.Base_Integer_Type := 1;
      total_count  : Application_Types.Base_Integer_Type := 1;
      
      Test_Has_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of TAGS7_Perform_Passive_Array_of_3_Objects_Tests
      Test_Has_Passed := False;
      Failure_Code    := -1;
      Test            := Start_Test_Number;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - Create three passive data objects
      -- --------------------------------------------------------------------------
      
      count := 1;
      
      loop
         Obj := Root_Object.TAGS.APAOTO.Create_Unique;
         exit when count =  3;
         count := count + 1;
         
      end loop;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Passive Array 3 UNIQUE object   ",
         Purpose         => "Create three                    ");
      
      
      --  Return count of A_Passive_Array_Of_Three_Objects
      
      Root_Object.Object_List.Clear (
         From => set_of_objects);
      
      Root_Object.TAGS.APAOTO.Find (
         Add_To => set_of_objects);
      
      
      total_count := Root_Object.Object_List.Count_Of(set_of_objects);
      
      
      if total_count =  3 then
         
         Test_Has_Passed := True;
         Failure_Code    := 0;
      else
         Test_Has_Passed := False;
         Failure_Code    := -1;
         
      end if;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create three                    ",
         Failure         => Failure_Code,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Passive Array 3 UNIQUE object   ",
         Purpose         => "Delete one                      ");
      
      
      --  Delete 1 of passive objects
      Any_Object := Root_Object.TAGS.APAOTO.Unconditional_Find_One;
      
      Root_Object.TAGS.APAOTO.Delete (
         Old_Instance => Any_Object);
      
      Root_Object.Object_List.Clear (
         From => set_of_objects);
      
      Root_Object.TAGS.APAOTO.Find (
         Add_To => set_of_objects);
      
      
      total_count := Root_Object.Object_List.Count_Of(set_of_objects);
      
      
      if total_count =  2 then
         
         Test_Has_Passed := True;
         Failure_Code    := 0;
      else
         Test_Has_Passed := False;
         Failure_Code    := -1;
         
      end if;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create three                    ",
         Failure         => Failure_Code,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - Create extra passive object, total of three
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Passive Array 3 UNIQUE object   ",
         Purpose         => "Create one more                 ");
      
      replacement_object := Root_Object.TAGS.APAOTO.Create_Unique;
      
      --  Return count of A_Passive_Array_Of_Three_Objects
      
      Root_Object.Object_List.Clear (
         From => set_of_objects);
      
      Root_Object.TAGS.APAOTO.Find (
         Add_To => set_of_objects);
      
      
      total_count := Root_Object.Object_List.Count_Of(set_of_objects);
      
      
      if total_count =  3 then
         
         Test_Has_Passed := True;
         Failure_Code    := 0;
      else
         Test_Has_Passed := False;
         Failure_Code    := -1;
         
      end if;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create three                    ",
         Failure         => Failure_Code,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 4 - Attempt to create fourth object
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Passive Array 3 UNIQUE object   ",
         Purpose         => "Create illegal object           ");
      
      
      --  Unsupported
      --  illegal_object = create unique A_Passive_Array_Of_Three_Objects
      --  Return count of A_Passive_Array_Of_Three_Objects
      --  {set_of_objects} = find-all A_Passive_Array_Of_Three_Objects
      --  total_count = countof {set_of_objects}
      --  Check for null
      --  if illegal_object = UNDEFINED then 
      --    if total_count = 3 then
      --       Test_Has_Passed  = TRUE
      --       Failure_Code = 0
      --    else
      --       Test_Has_Passed  = FALSE
      --       Failure_Code = -1
      --    endif
      --  else
      --    Test_Has_Passed = FALSE
      --    Failure_Code = -2
      --  endif
      --  [] = TAGS5::Report_Now[Test, "Create illegal object", Failure_Code, Supported]
      
      TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      Test := Test + 1;
      
      
      --  End Test 4
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
      
      Root_Object.TAGS.APAOTO.Find (
         Add_To => set_of_objects);
      
      
      total_count := Root_Object.Object_List.Count_Of(set_of_objects);
      
      if total_count =  3 then
         
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
               
               Root_Object.TAGS.APAOTO.Delete (
                  Old_Instance => each_object);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => set_of_objects);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         Root_Object.Object_List.Clear (
            From => set_of_objects);
         
         Root_Object.TAGS.APAOTO.Find (
            Add_To => set_of_objects);
         
         total_count := Root_Object.Object_List.Count_Of(set_of_objects);
         
         if total_count =  0 then
            new_object := Root_Object.TAGS.APAOTO.Create_Unique;
            
            --  Check that it is defined
            
            if new_object /= Null then
               
               Root_Object.Object_List.Clear (
                  From => set_of_objects);
               
               Root_Object.TAGS.APAOTO.Find (
                  Add_To => set_of_objects);
               
               total_count := Root_Object.Object_List.Count_Of(set_of_objects);
               
               
               --  and only one now exists
               
               if total_count =  1 then
                  
                  Test_Has_Passed := True;
                  Failure_Code    := 0;
               else
                  Test_Has_Passed := False;
                  Failure_Code    := -4;
               end if;
               
            else
               Test_Has_Passed := False;
               Failure_Code    := -3;
            end if;
            
         else
            Test_Has_Passed := False;
            Failure_Code    := -2;
         end if;
         
      else
         Test_Has_Passed := False;
         Failure_Code    := -1;
         
      end if;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Delete all objects              ",
         Failure         => Failure_Code,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------------
      --  Test 6
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Passive Array 3 UNIQUE object   ",
         Purpose         => "Delete final object             ");
      
      
      --  This won't exist if the previous test failed due to it being unsupported.
      
      if Supported and then
         Test_Has_Passed then
         
         --  Delete new object, leaving none.
         --  But only if the previous test worked and was supposed to.
         
         Root_Object.TAGS.APAOTO.Delete (
            Old_Instance => new_object);
         
         Root_Object.Object_List.Clear (
            From => set_of_objects);
         
         Root_Object.TAGS.APAOTO.Find (
            Add_To => set_of_objects);
         
         
         total_count := Root_Object.Object_List.Count_Of(set_of_objects);
         
         
         --  None exist
         
         if total_count =  0 then
            
            Test_Has_Passed := True;
            Failure_Code    := 0;
         else
            Test_Has_Passed := False;
            Failure_Code    := total_count;
         end if;
         
      else
         Test_Has_Passed := False;
         Failure_Code    := -1;
         
      end if;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Delete final object             ",
         Failure         => Failure_Code,
         It_Is_Supported => Supported);
      
      
      --  End Test 6
      -- --------------------------------------------------------------------------
      
      Final_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (set_of_objects);
      
   end TAGS_TAGS7_Perform_Passive_Array_of_3_Objects_Tests;
   
end TAGS_TAGS7_Perform_Passive_Array_of_3_Objects_Tests_Service;

--
-- End of file TAGS_TAGS7_Perform_Passive_Array_of_3_Objects_Tests_Service.adb
--
