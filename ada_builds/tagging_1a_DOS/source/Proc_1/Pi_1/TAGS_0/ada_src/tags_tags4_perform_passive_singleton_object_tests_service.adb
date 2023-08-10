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
--* File Name:               TAGS4_Perform_Passive_Singleton_Object_Tests_Service.adb
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
with Root_Object.TAGS.APSO;
with Root_Object.TAGS.TD;

-- List of services used
with TAGS_TAGS5_Report_Now_Service;

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


package body TAGS_TAGS4_Perform_Passive_Singleton_Object_Tests_Service is
   
   procedure TAGS_TAGS4_Perform_Passive_Singleton_Object_Tests (
      Test                 : in     Application_Types.Base_Integer_Type;
      Returned_Test_Number :    out Application_Types.Base_Integer_Type) is
      
      Set_of_Singletons : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      My_Test_Data         : Root_Object.Object_Access;
      The_Passive_Object   : Root_Object.Object_Access;
      A_New_Passive_Object : Root_Object.Object_Access;
      
      Local_Test   : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      How_Many     : Application_Types.Base_Integer_Type := 1;
      
      Supported : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of TAGS4_Perform_Passive_Singleton_Object_Tests
      
      -- --------------------------------------------------------------------------
      --  A_Passive_Static_Object should be tagged as SINGLETON.
      --  ie. it should only be created once.
      -- --------------------------------------------------------------------------
      Local_Test   := Test;
      Failure_Code := 0;
      
      My_Test_Data := Root_Object.TAGS.TD.Unconditional_Find_One;
      
      if Root_Object.TAGS.TD.TAGS_TD_type(My_Test_Data.all).Environment =  TAGS_Domain_Types.WACA then
         
         Supported := True;
      else
         Supported := False;
         
      end if;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Singleton passive object        ",
         Purpose         => "Create one singleton instance   ");
      
      
      The_Passive_Object := Root_Object.TAGS.APSO.Create;
      Root_Object.TAGS.APSO.TAGS_APSO_Type(The_Passive_Object.all).Unique_Identifier    := 5;
      Root_Object.TAGS.APSO.TAGS_APSO_Type(The_Passive_Object.all).Size                 := 1;
      
      
      --  Further attempts to create an object of this sort should be met with
      --  complete indifference by WACA.
      --  Another_Passive_Object = create A_Passive_Static_Object with Unique_Identifier = 6 & Size = 2
      
      if The_Passive_Object =  Null then
         
         Failure_Code := -5;
         
      end if;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create one singleton instance   ",
         Failure         => Failure_Code,
         It_Is_Supported => Supported);
      
      
      Local_Test := Local_Test + 1;
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Singleton passive object        ",
         Purpose         => "Create another singleton instanc");
      
      
      -- Another_Passive_Object = create A_Passive_Static_Object with Unique_Identifier = 6 & Size = 2
      
      TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Local_Test);
      
      Local_Test := Local_Test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Singleton passive object        ",
         Purpose         => "How many                        ");
      
      
      --  A SINGLETON object is still around from previous test.
      --  Check to see if the attempt to create another one has
      --  messed up the set information.
      
      Root_Object.Object_List.Clear (
         From => Set_of_Singletons);
      
      Root_Object.TAGS.APSO.Find (
         Add_To => Set_of_Singletons);
      
      
      How_Many := Root_Object.Object_List.Count_Of(Set_of_Singletons);
      
      
      if How_Many /= 1 then
         
         Failure_Code := How_Many;
         
      end if;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Local_Test,
         Testing_For     => "How many                        ",
         Failure         => Failure_Code,
         It_Is_Supported => Supported);
      
      
      Local_Test := Local_Test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 4
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Singleton passive object        ",
         Purpose         => "Delete passive object           ");
      
      
      --  Now let's try and delete the object
      
      Root_Object.TAGS.APSO.Delete (
         Old_Instance => The_Passive_Object);
      
      Root_Object.Object_List.Clear (
         From => Set_of_Singletons);
      
      Root_Object.TAGS.APSO.Find (
         Add_To => Set_of_Singletons);
      
      
      How_Many := Root_Object.Object_List.Count_Of(Set_of_Singletons);
      
      
      if How_Many /= 0 then
         
         Failure_Code := How_Many;
         
      end if;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Local_Test,
         Testing_For     => "Delete passive object           ",
         Failure         => Failure_Code,
         It_Is_Supported => Supported);
      
      
      Local_Test := Local_Test + 1;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------------
      --  Test 5
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Singleton passive object        ",
         Purpose         => "Create new passive object       ");
      
      
      --  Having sucessfully deleted the passive static object
      --  let's make the attempt to create a new one
      
      A_New_Passive_Object := Root_Object.TAGS.APSO.Create;
      Root_Object.TAGS.APSO.TAGS_APSO_Type(A_New_Passive_Object.all).Unique_Identifier    := 8;
      Root_Object.TAGS.APSO.TAGS_APSO_Type(A_New_Passive_Object.all).Size                 := 3;
      
      
      if A_New_Passive_Object =  Null then
         
         Failure_Code := -8;
      end if;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Local_Test,
         Testing_For     => "Create new passive object       ",
         Failure         => Failure_Code,
         It_Is_Supported => Supported);
      
      Local_Test := Local_Test + 1;
      Failure_Code := 0;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------------
      --  Test 6
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "TAGGING                         ",
         Invoking_Object => "Singleton passive object        ",
         Purpose         => "Delete all passive objects      ");
      
      
      --  Tidy up here.
      
      if A_New_Passive_Object /= Null then
         
         Root_Object.TAGS.APSO.Delete (
            Old_Instance => A_New_Passive_Object);
      end if;
      
      
      if The_Passive_Object /= Null then
         
         Root_Object.TAGS.APSO.Delete (
            Old_Instance => The_Passive_Object);
      end if;
      
      
      Root_Object.Object_List.Clear (
         From => Set_of_Singletons);
      
      Root_Object.TAGS.APSO.Find (
         Add_To => Set_of_Singletons);
      
      
      How_Many := Root_Object.Object_List.Count_Of(Set_of_Singletons);
      
      
      if How_Many /= 0 then
         
         Failure_Code := How_Many;
         
      end if;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Local_Test,
         Testing_For     => "Delete all passive objects      ",
         Failure         => Failure_Code,
         It_Is_Supported => Supported);
      
      
      --  End Test 6
      -- --------------------------------------------------------------------------
      
      Returned_Test_Number := Local_Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Set_of_Singletons);
      
   end TAGS_TAGS4_Perform_Passive_Singleton_Object_Tests;
   
end TAGS_TAGS4_Perform_Passive_Singleton_Object_Tests_Service;

--
-- End of file TAGS_TAGS4_Perform_Passive_Singleton_Object_Tests_Service.adb
--
