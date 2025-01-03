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
--* File Name:               TAGS11_Perform_Passive_Many_To_Many_Tests_Service.adb
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
with Root_Object.TAGS.TS_ASSOC;
with Root_Object.TAGS.TM_RIGHT;
with Root_Object.TAGS.TM_LEFT;
with Root_Object.TAGS.TD;

-- List of relationships used
with TAGS_rel_R3;

-- List of services used
with TAGS_TAGS5_Report_Now_Service;

-- List of bridges used
with TAGS_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body TAGS_TAGS11_Perform_Passive_Many_To_Many_Tests_Service is
   
   procedure TAGS_TAGS11_Perform_Passive_Many_To_Many_Tests is
      
      Set_Of_Right : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test           : Root_Object.Object_Access;
      Left_One          : Root_Object.Object_Access;
      Right_One         : Root_Object.Object_Access;
      Assoc_One_One     : Root_Object.Object_Access;
      Left_Two          : Root_Object.Object_Access;
      Right_Two         : Root_Object.Object_Access;
      Assoc_Two_Two     : Root_Object.Object_Access;
      Left_Three        : Root_Object.Object_Access;
      Right_Three       : Root_Object.Object_Access;
      Assoc_Three_Three : Root_Object.Object_Access;
      Assoc_One_Two     : Root_Object.Object_Access;
      Assoc_One_Three   : Root_Object.Object_Access;
      Assoc_Two_One     : Root_Object.Object_Access;
      Assoc_Two_Three   : Root_Object.Object_Access;
      Assoc_Three_One   : Root_Object.Object_Access;
      Assoc_Three_Two   : Root_Object.Object_Access;
      
      Test            : Application_Types.Base_Integer_Type := 1;
      Failure_Value   : Application_Types.Base_Integer_Type := 1;
      Number_In_Set   : Application_Types.Base_Integer_Type := 1;
      Expected_Number : Application_Types.Base_Integer_Type := 1;
      
      Supported : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of TAGS11_Perform_Passive_Many_To_Many_Tests
      my_test := Root_Object.TAGS.TD.Unconditional_Find_One;
      Test          := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number;
      Failure_Value := 0;
      Supported     := True;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1
      -- --------------------------------------------------------------------------
      Left_One := Root_Object.TAGS.TM_LEFT.Create_Unique;
      Root_Object.TAGS.TM_LEFT.TAGS_TM_LEFT_Type(Left_One.all).Attribute_One := Test;
      
      Right_One := Root_Object.TAGS.TM_RIGHT.Create_Unique;
      Root_Object.TAGS.TM_RIGHT.TAGS_TM_RIGHT_Type(Right_One.all).Attribute_Two := Test;
      
      
      Assoc_One_One := Root_Object.TAGS.TS_ASSOC.Create;
      Root_Object.TAGS.TS_ASSOC.TAGS_TS_ASSOC_Type(Assoc_One_One.all).Attribute_Three := Test;
      
      TAGS_Rel_R3.Link (
         A_Instance => Left_One,
         B_Instance => Right_One,
         Using      => Assoc_One_One);
      
      
      --  navigate to prove link
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Right);
      
      
      TAGS_Rel_R3.Navigate (
         From  => Left_One,
         Class => Root_Object.TAGS.TM_RIGHT.TAGS_TM_RIGHT_type'tag,
         To    => Set_Of_Right);
      
      Number_In_Set   := Root_Object.Object_List.Count_Of(Set_Of_Right);
      Expected_Number := 1;
      Failure_Value   := Number_In_Set - Expected_Number;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "M to M Passive Relationships    ",
         Purpose         => "Create first three              ");
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create all three                ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      Left_Two := Root_Object.TAGS.TM_LEFT.Create_Unique;
      Root_Object.TAGS.TM_LEFT.TAGS_TM_LEFT_Type(Left_Two.all).Attribute_One := Test;
      
      Right_Two := Root_Object.TAGS.TM_RIGHT.Create_Unique;
      Root_Object.TAGS.TM_RIGHT.TAGS_TM_RIGHT_Type(Right_Two.all).Attribute_Two := Test;
      
      
      Assoc_Two_Two := Root_Object.TAGS.TS_ASSOC.Create;
      Root_Object.TAGS.TS_ASSOC.TAGS_TS_ASSOC_Type(Assoc_Two_Two.all).Attribute_Three := Test;
      
      TAGS_Rel_R3.Link (
         A_Instance => Left_Two,
         B_Instance => Right_Two,
         Using      => Assoc_Two_Two);
      
      
      --  navigate to prove link
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Right);
      
      
      TAGS_Rel_R3.Navigate (
         From  => Left_Two,
         Class => Root_Object.TAGS.TM_RIGHT.TAGS_TM_RIGHT_type'tag,
         To    => Set_Of_Right);
      
      Number_In_Set   := Root_Object.Object_List.Count_Of(Set_Of_Right);
      Expected_Number := 1;
      Failure_Value   := Number_In_Set - Expected_Number;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "M to M Passive Relationships    ",
         Purpose         => "Create second three             ");
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create all three                ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3
      -- --------------------------------------------------------------------------
      Left_Three := Root_Object.TAGS.TM_LEFT.Create_Unique;
      Root_Object.TAGS.TM_LEFT.TAGS_TM_LEFT_Type(Left_Three.all).Attribute_One := Test;
      
      Right_Three := Root_Object.TAGS.TM_RIGHT.Create_Unique;
      Root_Object.TAGS.TM_RIGHT.TAGS_TM_RIGHT_Type(Right_Three.all).Attribute_Two := Test;
      
      
      Assoc_Three_Three := Root_Object.TAGS.TS_ASSOC.Create;
      Root_Object.TAGS.TS_ASSOC.TAGS_TS_ASSOC_Type(Assoc_Three_Three.all).Attribute_Three := Test;
      
      TAGS_Rel_R3.Link (
         A_Instance => Left_Three,
         B_Instance => Right_Three,
         Using      => Assoc_Three_Three);
      
      
      --  navigate to prove link
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Right);
      
      
      TAGS_Rel_R3.Navigate (
         From  => Left_Three,
         Class => Root_Object.TAGS.TM_RIGHT.TAGS_TM_RIGHT_type'tag,
         To    => Set_Of_Right);
      
      Number_In_Set   := Root_Object.Object_List.Count_Of(Set_Of_Right);
      Expected_Number := 1;
      Failure_Value   := Number_In_Set - Expected_Number;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "M to M Passive Relationships    ",
         Purpose         => "Create third three              ");
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create all three                ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 4
      -- --------------------------------------------------------------------------
      
      Assoc_One_Two := Root_Object.TAGS.TS_ASSOC.Create;
      Root_Object.TAGS.TS_ASSOC.TAGS_TS_ASSOC_Type(Assoc_One_Two.all).Attribute_Three := Test;
      
      TAGS_Rel_R3.Link (
         A_Instance => Left_One,
         B_Instance => Right_Two,
         Using      => Assoc_One_Two);
      
      
      --  navigate to prove link
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Right);
      
      
      TAGS_Rel_R3.Navigate (
         From  => Left_One,
         Class => Root_Object.TAGS.TM_RIGHT.TAGS_TM_RIGHT_type'tag,
         To    => Set_Of_Right);
      
      Number_In_Set   := Root_Object.Object_List.Count_Of(Set_Of_Right);
      Expected_Number := 2;
      Failure_Value   := Number_In_Set - Expected_Number;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "M to M Passive Relationships    ",
         Purpose         => "Link one to two via three       ");
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create all three                ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------------
      --  Test 5
      -- --------------------------------------------------------------------------
      
      Assoc_One_Three := Root_Object.TAGS.TS_ASSOC.Create;
      Root_Object.TAGS.TS_ASSOC.TAGS_TS_ASSOC_Type(Assoc_One_Three.all).Attribute_Three := Test;
      
      TAGS_Rel_R3.Link (
         A_Instance => Left_One,
         B_Instance => Right_Three,
         Using      => Assoc_One_Three);
      
      
      --  navigate to prove link
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Right);
      
      
      TAGS_Rel_R3.Navigate (
         From  => Left_One,
         Class => Root_Object.TAGS.TM_RIGHT.TAGS_TM_RIGHT_type'tag,
         To    => Set_Of_Right);
      
      Number_In_Set   := Root_Object.Object_List.Count_Of(Set_Of_Right);
      Expected_Number := 3;
      Failure_Value   := Number_In_Set - Expected_Number;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "M to M Passive Relationships    ",
         Purpose         => "Link one to three               ");
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create all three                ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------------
      --  Test 6 
      -- --------------------------------------------------------------------------
      
      Assoc_Two_One := Root_Object.TAGS.TS_ASSOC.Create;
      Root_Object.TAGS.TS_ASSOC.TAGS_TS_ASSOC_Type(Assoc_Two_One.all).Attribute_Three := Test;
      
      TAGS_Rel_R3.Link (
         A_Instance => Left_Two,
         B_Instance => Right_One,
         Using      => Assoc_Two_One);
      
      
      --  navigate to prove link
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Right);
      
      
      TAGS_Rel_R3.Navigate (
         From  => Left_Two,
         Class => Root_Object.TAGS.TM_RIGHT.TAGS_TM_RIGHT_type'tag,
         To    => Set_Of_Right);
      
      Number_In_Set   := Root_Object.Object_List.Count_Of(Set_Of_Right);
      Expected_Number := 2;
      Failure_Value   := Number_In_Set - Expected_Number;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "M to M Passive Relationships    ",
         Purpose         => "Link two to one                 ");
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create all three                ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 6 
      -- --------------------------------------------------------------------------
      --  Test 7
      -- --------------------------------------------------------------------------
      
      Assoc_Two_Three := Root_Object.TAGS.TS_ASSOC.Create;
      Root_Object.TAGS.TS_ASSOC.TAGS_TS_ASSOC_Type(Assoc_Two_Three.all).Attribute_Three := Test;
      
      TAGS_Rel_R3.Link (
         A_Instance => Left_Two,
         B_Instance => Right_Three,
         Using      => Assoc_Two_Three);
      
      
      --  navigate to prove link
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Right);
      
      
      TAGS_Rel_R3.Navigate (
         From  => Left_Two,
         Class => Root_Object.TAGS.TM_RIGHT.TAGS_TM_RIGHT_type'tag,
         To    => Set_Of_Right);
      
      Number_In_Set   := Root_Object.Object_List.Count_Of(Set_Of_Right);
      Expected_Number := 3;
      Failure_Value   := Number_In_Set - Expected_Number;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "M to M Passive Relationships    ",
         Purpose         => "Link two to three               ");
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create all three                ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 7
      -- --------------------------------------------------------------------------
      --  Test 8 
      -- --------------------------------------------------------------------------
      
      Assoc_Three_One := Root_Object.TAGS.TS_ASSOC.Create;
      Root_Object.TAGS.TS_ASSOC.TAGS_TS_ASSOC_Type(Assoc_Three_One.all).Attribute_Three := Test;
      
      TAGS_Rel_R3.Link (
         A_Instance => Left_Three,
         B_Instance => Right_One,
         Using      => Assoc_Three_One);
      
      
      --  navigate to prove link
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Right);
      
      
      TAGS_Rel_R3.Navigate (
         From  => Left_Three,
         Class => Root_Object.TAGS.TM_RIGHT.TAGS_TM_RIGHT_type'tag,
         To    => Set_Of_Right);
      
      Number_In_Set   := Root_Object.Object_List.Count_Of(Set_Of_Right);
      Expected_Number := 2;
      Failure_Value   := Number_In_Set - Expected_Number;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "M to M Passive Relationships    ",
         Purpose         => "Link three to one               ");
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create all three                ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------------
      --  Test 9 
      -- --------------------------------------------------------------------------
      
      Assoc_Three_Two := Root_Object.TAGS.TS_ASSOC.Create;
      Root_Object.TAGS.TS_ASSOC.TAGS_TS_ASSOC_Type(Assoc_Three_Two.all).Attribute_Three := Test;
      
      TAGS_Rel_R3.Link (
         A_Instance => Left_Three,
         B_Instance => Right_Two,
         Using      => Assoc_Three_Two);
      
      
      --  navigate to prove link
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Right);
      
      
      TAGS_Rel_R3.Navigate (
         From  => Left_Three,
         Class => Root_Object.TAGS.TM_RIGHT.TAGS_TM_RIGHT_type'tag,
         To    => Set_Of_Right);
      
      Number_In_Set   := Root_Object.Object_List.Count_Of(Set_Of_Right);
      Expected_Number := 3;
      Failure_Value   := Number_In_Set - Expected_Number;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "M to M Passive Relationships    ",
         Purpose         => "Link three to two               ");
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create all three                ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Set_Of_Right);
      
   end TAGS_TAGS11_Perform_Passive_Many_To_Many_Tests;
   
end TAGS_TAGS11_Perform_Passive_Many_To_Many_Tests_Service;

--
-- End of file TAGS_TAGS11_Perform_Passive_Many_To_Many_Tests_Service.adb
--
