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
--* File Name:               TAGS12_Perform_Passive_Super_Sub_Tests_Service.adb
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
with Root_Object.TAGS.SUB_TWO;
with Root_Object.TAGS.SUB_ONE;
with Root_Object.TAGS.TAG_SUPER;
with Root_Object.TAGS.TD;

-- List of relationships used
with TAGS_rel_R4;

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


package body TAGS_TAGS12_Perform_Passive_Super_Sub_Tests_Service is
   
   procedure TAGS_TAGS12_Perform_Passive_Super_Sub_Tests is
      
      my_test      : Root_Object.Object_Access;
      Super1       : Root_Object.Object_Access;
      Sub1_1       : Root_Object.Object_Access;
      view_of_sub1 : Root_Object.Object_Access;
      Sub1_2       : Root_Object.Object_Access;
      Sub2         : Root_Object.Object_Access;
      view_of_sub2 : Root_Object.Object_Access;
      
      this_test     : Application_Types.Base_Integer_Type := 1;
      failure_value : Application_Types.Base_Integer_Type := 1;
      
      supported : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of TAGS12_Perform_Passive_Super_Sub_Tests
      my_test := Root_Object.TAGS.TD.Unconditional_Find_One;
      this_test := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number;
      supported := True;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => this_test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagged                          ",
         Invoking_Object => "Passive Super Sub types         ",
         Purpose         => "One Super Sub relationship      ");
      
      
      --  Create one of one super type objects
      Super1 := Root_Object.TAGS.TAG_SUPER.Create_Unique;
      Root_Object.TAGS.TAG_SUPER.TAGS_TAG_SUPER_Type(Super1.all).Supertype_Data := this_test;
      
      
      -- create one of two sub type 1 objects
      
      Sub1_1 := Root_Object.TAGS.SUB_ONE.Create;
      Root_Object.TAGS.SUB_ONE.TAGS_SUB_ONE_Type(Sub1_1.all).Subtype_1_Data := this_test;
      
      TAGS_Rel_R4.Link (
         A_Instance => Super1,
         B_Instance => Sub1_1);
      
      
      --  Navigate from the super to the sub, and compare the data attribute
      
      TAGS_Rel_R4.Navigate (
         From  => Super1,
         Class => Root_Object.TAGS.SUB_ONE.TAGS_SUB_ONE_type'tag,
         To    => view_of_sub1);
      
      
      failure_value := Root_Object.TAGS.SUB_ONE.TAGS_SUB_ONE_type(view_of_sub1.all).Subtype_1_Data - 
      Root_Object.TAGS.TAG_SUPER.TAGS_TAG_SUPER_type(Super1.all).Supertype_Data;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => this_test,
         Testing_For     => "One Super Sub relationship      ",
         Failure         => failure_value,
         It_Is_Supported => supported);
      
      
      this_test := this_test + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => this_test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagged                          ",
         Invoking_Object => "Passive Super Sub types         ",
         Purpose         => "Other Super Sub relationship    ");
      
      
      --  Create second of two sub type 1 objects
      
      Sub1_2 := Root_Object.TAGS.SUB_ONE.Create;
      Root_Object.TAGS.SUB_ONE.TAGS_SUB_ONE_Type(Sub1_2.all).Subtype_1_Data := this_test;
      
      
      --  unlink first sub type from super type
      
      TAGS_Rel_R4.Unlink (
         A_Instance => Super1,
         B_Instance => Sub1_1);
      
      
      --  Update super 1 data
      
      Root_Object.TAGS.TAG_SUPER.TAGS_TAG_SUPER_type(Super1.all).Supertype_Data := this_test;
      
      
      -- link second subtype to supertype
      TAGS_Rel_R4.Link (
         A_Instance => Super1,
         B_Instance => Sub1_2);
      
      
      --  Navigate from the super to the sub, and compare the data attribute
      
      TAGS_Rel_R4.Navigate (
         From  => Super1,
         Class => Root_Object.TAGS.SUB_ONE.TAGS_SUB_ONE_type'tag,
         To    => view_of_sub1);
      
      
      failure_value := Root_Object.TAGS.SUB_ONE.TAGS_SUB_ONE_type(view_of_sub1.all).Subtype_1_Data - 
      Root_Object.TAGS.TAG_SUPER.TAGS_TAG_SUPER_type(Super1.all).Supertype_Data;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => this_test,
         Testing_For     => "Other Super Sub relationship    ",
         Failure         => failure_value,
         It_Is_Supported => supported);
      
      
      this_test := this_test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => this_test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagged                          ",
         Invoking_Object => "Passive Super Sub types         ",
         Purpose         => "Migrate Super Sub relationship  ");
      
      
      --  Create sub type 2 object
      
      Sub2 := Root_Object.TAGS.SUB_TWO.Create;
      Root_Object.TAGS.SUB_TWO.TAGS_SUB_TWO_Type(Sub2.all).Subtype_2_Data := this_test;
      
      
      --  unlink first sub type from super type
      
      TAGS_Rel_R4.Unlink (
         A_Instance => Super1,
         B_Instance => Sub1_2);
      
      
      --  Update super 1 data
      
      Root_Object.TAGS.TAG_SUPER.TAGS_TAG_SUPER_type(Super1.all).Supertype_Data := this_test;
      
      
      -- link second subtype to supertype
      TAGS_Rel_R4.Link (
         A_Instance => Super1,
         B_Instance => Sub2);
      
      
      --  Navigate from the super to the sub, and compare the data attribute
      
      TAGS_Rel_R4.Navigate (
         From  => Super1,
         Class => Root_Object.TAGS.SUB_TWO.TAGS_SUB_TWO_type'tag,
         To    => view_of_sub2);
      
      
      failure_value := Root_Object.TAGS.SUB_TWO.TAGS_SUB_TWO_type(view_of_sub2.all).Subtype_2_Data - 
      Root_Object.TAGS.TAG_SUPER.TAGS_TAG_SUPER_type(Super1.all).Supertype_Data;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => this_test,
         Testing_For     => "Migrate Super Sub relationship  ",
         Failure         => failure_value,
         It_Is_Supported => supported);
      
      
      this_test := this_test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number := this_test;
      
      
   end TAGS_TAGS12_Perform_Passive_Super_Sub_Tests;
   
end TAGS_TAGS12_Perform_Passive_Super_Sub_Tests_Service;

--
-- End of file TAGS_TAGS12_Perform_Passive_Super_Sub_Tests_Service.adb
--
