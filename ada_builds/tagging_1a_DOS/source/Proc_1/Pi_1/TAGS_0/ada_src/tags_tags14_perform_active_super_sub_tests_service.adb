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
--* File Name:               TAGS14_Perform_Active_Super_Sub_Tests_Service.adb
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
with Root_Object.TAGS.ATSUBTHREE;
with Root_Object.TAGS.ATSUBTWO;
with Root_Object.TAGS.ATSUBONE;
with Root_Object.TAGS.ATSUPER;
with Root_Object.TAGS.TD;

-- List of relationships used
with TAGS_rel_R6;

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


package body TAGS_TAGS14_Perform_Active_Super_Sub_Tests_Service is
   
   procedure TAGS_TAGS14_Perform_Active_Super_Sub_Tests is
      
      my_test      : Root_Object.Object_Access;
      Super1       : Root_Object.Object_Access;
      Sub1_1       : Root_Object.Object_Access;
      view_of_sub1 : Root_Object.Object_Access;
      Sub1_2       : Root_Object.Object_Access;
      Sub2         : Root_Object.Object_Access;
      view_of_sub2 : Root_Object.Object_Access;
      Sub3         : Root_Object.Object_Access;
      view_of_sub3 : Root_Object.Object_Access;
      
      this_test         : Application_Types.Base_Integer_Type := 1;
      Index_For_Subtype : Application_Types.Base_Integer_Type := 1;
      failure_value     : Application_Types.Base_Integer_Type := 1;
      
      supported : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of TAGS14_Perform_Active_Super_Sub_Tests
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
         Invoking_Object => "Active Super Sub types          ",
         Purpose         => "Active One Super Sub relationshi");
      
      
      --  Create one of one super type objects
      Super1 := Root_Object.TAGS.ATSUPER.Create_Unique;
      Root_Object.TAGS.ATSUPER.TAGS_ATSUPER_Type(Super1.all).Supertype_Data := this_test;
      Root_Object.TAGS.ATSUPER.TAGS_ATSUPER_Type(Super1.all).Current_State  := Root_Object.TAGS.ATSUPER.Idle;
      
      
      --  create one of two sub type 1 objects
      
      Index_For_Subtype := this_test + 1;
      
      
      --  Increase index for test by one more than the test number so that the sub type, when it processes
      --  the polymorphically delivered event, will report a different test number. This is so that the report
      --  will be distinguished by the reporter domain as a separate test.
      
      Sub1_1 := Root_Object.TAGS.ATSUBONE.Create;
      Root_Object.TAGS.ATSUBONE.TAGS_ATSUBONE_Type(Sub1_1.all).Subtype_One_Data := this_test;
      Root_Object.TAGS.ATSUBONE.TAGS_ATSUBONE_Type(Sub1_1.all).Test_No          := Index_For_Subtype;
      Root_Object.TAGS.ATSUBONE.TAGS_ATSUBONE_Type(Sub1_1.all).Current_State    := Root_Object.TAGS.ATSUBONE.Idle;
      
      TAGS_Rel_R6.Link (
         A_Instance => Super1,
         B_Instance => Sub1_1);
      
      
      --  Navigate from the super to the sub, and compare the data attribute
      
      TAGS_Rel_R6.Navigate (
         From  => Super1,
         Class => Root_Object.TAGS.ATSUBONE.TAGS_ATSUBONE_type'tag,
         To    => view_of_sub1);
      
      
      failure_value := Root_Object.TAGS.ATSUBONE.TAGS_ATSUBONE_type(view_of_sub1.all).Subtype_One_Data - 
      Root_Object.TAGS.ATSUPER.TAGS_ATSUPER_type(Super1.all).Supertype_Data;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => this_test,
         Testing_For     => "Active One Super Sub relationshi",
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
         Invoking_Object => "Active Super Sub types          ",
         Purpose         => "Other Super Sub relationship    ");
      
      
      Index_For_Subtype := this_test + 1;
      
      
      --  Create second of two sub type 1 objects
      
      Sub1_2 := Root_Object.TAGS.ATSUBONE.Create;
      Root_Object.TAGS.ATSUBONE.TAGS_ATSUBONE_Type(Sub1_2.all).Subtype_One_Data := this_test;
      Root_Object.TAGS.ATSUBONE.TAGS_ATSUBONE_Type(Sub1_2.all).Test_No          := Index_For_Subtype;
      Root_Object.TAGS.ATSUBONE.TAGS_ATSUBONE_Type(Sub1_2.all).Current_State    := Root_Object.TAGS.ATSUBONE.Idle;
      
      
      --  unlink first sub type from super type
      
      TAGS_Rel_R6.Unlink (
         A_Instance => Super1,
         B_Instance => Sub1_1);
      
      
      --  Update super type data so that it matches new sub type.
      
      Root_Object.TAGS.ATSUPER.TAGS_ATSUPER_type(Super1.all).Supertype_Data := this_test;
      
      
      --  link second subtype to supertype
      TAGS_Rel_R6.Link (
         A_Instance => Super1,
         B_Instance => Sub1_2);
      
      
      --  Navigate from the super to the sub, and compare the data attribute
      
      TAGS_Rel_R6.Navigate (
         From  => Super1,
         Class => Root_Object.TAGS.ATSUBONE.TAGS_ATSUBONE_type'tag,
         To    => view_of_sub1);
      
      
      failure_value := Root_Object.TAGS.ATSUBONE.TAGS_ATSUBONE_type(view_of_sub1.all).Subtype_One_Data - 
      Root_Object.TAGS.ATSUPER.TAGS_ATSUPER_type(Super1.all).Supertype_Data;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => this_test,
         Testing_For     => "Other Super Sub relationship    ",
         Failure         => failure_value,
         It_Is_Supported => supported);
      
      
      this_test := this_test + 1;
      
      
      -- --------------------------------------------------------------------------
      --  Test 3
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => this_test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagged                          ",
         Invoking_Object => "Active Super Sub types          ",
         Purpose         => "Migrate Super Sub relationship  ");
      
      
      Index_For_Subtype := this_test + 1;
      
      
      --  Create sub type 2 object
      
      Sub2 := Root_Object.TAGS.ATSUBTWO.Create;
      Root_Object.TAGS.ATSUBTWO.TAGS_ATSUBTWO_Type(Sub2.all).Subtype_Two_Data := this_test;
      Root_Object.TAGS.ATSUBTWO.TAGS_ATSUBTWO_Type(Sub2.all).Test_No          := Index_For_Subtype;
      Root_Object.TAGS.ATSUBTWO.TAGS_ATSUBTWO_Type(Sub2.all).Current_State    := Root_Object.TAGS.ATSUBTWO.Idle;
      
      
      --  unlink first sub type from super type
      
      TAGS_Rel_R6.Unlink (
         A_Instance => Super1,
         B_Instance => Sub1_2);
      
      
      --  Update super type data so that it matches new sub type.
      
      Root_Object.TAGS.ATSUPER.TAGS_ATSUPER_type(Super1.all).Supertype_Data := this_test;
      
      
      --  link second subtype to supertype
      TAGS_Rel_R6.Link (
         A_Instance => Super1,
         B_Instance => Sub2);
      
      
      --  Navigate from the super to the sub, and compare the data attribute
      
      TAGS_Rel_R6.Navigate (
         From  => Super1,
         Class => Root_Object.TAGS.ATSUBTWO.TAGS_ATSUBTWO_type'tag,
         To    => view_of_sub2);
      
      
      failure_value := Root_Object.TAGS.ATSUBTWO.TAGS_ATSUBTWO_type(view_of_sub2.all).Subtype_Two_Data - 
      Root_Object.TAGS.ATSUPER.TAGS_ATSUPER_type(Super1.all).Supertype_Data;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => this_test,
         Testing_For     => "Migrate Super Sub relationship  ",
         Failure         => failure_value,
         It_Is_Supported => supported);
      
      
      this_test := this_test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 4
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => this_test,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagged                          ",
         Invoking_Object => "Active Super Sub types          ",
         Purpose         => "Migrate Super Sub relationship a");
      
      
      Index_For_Subtype := this_test + 1;
      
      
      --  Create sub type 2 object
      
      Sub3 := Root_Object.TAGS.ATSUBTHREE.Create;
      Root_Object.TAGS.ATSUBTHREE.TAGS_ATSUBTHREE_Type(Sub3.all).Subtype_Three_Data := this_test;
      Root_Object.TAGS.ATSUBTHREE.TAGS_ATSUBTHREE_Type(Sub3.all).Test_No            := Index_For_Subtype;
      Root_Object.TAGS.ATSUBTHREE.TAGS_ATSUBTHREE_Type(Sub3.all).Current_State      := Root_Object.TAGS.ATSUBTHREE.Idle;
      
      
      --  unlink first sub type from super type
      
      TAGS_Rel_R6.Unlink (
         A_Instance => Super1,
         B_Instance => Sub2);
      
      
      --  Update super type data so that it matches new sub type.
      
      Root_Object.TAGS.ATSUPER.TAGS_ATSUPER_type(Super1.all).Supertype_Data := this_test;
      
      
      --  link second subtype to supertype
      TAGS_Rel_R6.Link (
         A_Instance => Super1,
         B_Instance => Sub3);
      
      
      --  Navigate from the super to the sub, and compare the data attribute
      
      TAGS_Rel_R6.Navigate (
         From  => Super1,
         Class => Root_Object.TAGS.ATSUBTHREE.TAGS_ATSUBTHREE_type'tag,
         To    => view_of_sub3);
      
      
      failure_value := Root_Object.TAGS.ATSUBTHREE.TAGS_ATSUBTHREE_type(view_of_sub3.all).Subtype_Three_Data - 
      Root_Object.TAGS.ATSUPER.TAGS_ATSUPER_type(Super1.all).Supertype_Data;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => this_test,
         Testing_For     => "Migrate Super Sub relationship  ",
         Failure         => failure_value,
         It_Is_Supported => supported);
      
      
      this_test := this_test + 1;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number := this_test;
      
      
   end TAGS_TAGS14_Perform_Active_Super_Sub_Tests;
   
end TAGS_TAGS14_Perform_Active_Super_Sub_Tests_Service;

--
-- End of file TAGS_TAGS14_Perform_Active_Super_Sub_Tests_Service.adb
--
