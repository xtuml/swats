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
--* File Name:               TAGS15_Perform_Tests_On_Static_Object_Service.adb
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
with Root_Object.TAGS.AMSO;
with Root_Object.TAGS.ASSO;
with Root_Object.TAGS.ASO;
with Root_Object.TAGS.TD;

-- List of bridges used
with TAGS_RPT3_Test_Failed_Bridge;
with TAGS_RPT2_Test_Passed_Bridge;
with TAGS_RPT5_Test_Text_Bridge;
with TAGS_RPT8_Specify_Requid_Bridge;
with TAGS_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body TAGS_TAGS15_Perform_Tests_On_Static_Object_Service is
   
   procedure TAGS_TAGS15_Perform_Tests_On_Static_Object is
      
      my_test           : Root_Object.Object_Access;
      firstStatic       : Root_Object.Object_Access;
      firstSingleStatic : Root_Object.Object_Access;
      firstMultiStatic  : Root_Object.Object_Access;
      
      this_test : Application_Types.Base_Integer_Type := 1;
      
      supported : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of TAGS15_Perform_Tests_On_Static_Object
      my_test := Root_Object.TAGS.TD.Unconditional_Find_One;
      this_test := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number;
      supported := True;
      
      -- --------------------------------------------------------------------------
      --  Test 1 - Create a static object. By inspection check that there is no
      --           delete option generated for this object
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => this_test,
         Requid          => "1241-0000-01-0132               ",
         Invoking_Domain => "Tagged                          ",
         Invoking_Object => "TAGGING                         ",
         Purpose         => "Create a STATIC object          ");
      
      TAGS_RPT8_Specify_Requid_Bridge.TAGS_RPT8_Specify_Requid (
         Requid_Test_Number => this_test,
         The_Requid_Itself  => "1241-0000-01-0127               ");
      
      TAGS_RPT5_Test_Text_Bridge.TAGS_RPT5_Test_Text (
         Test_Number => this_test,
         Free_Text   => "Must be tested by inspection    ");
      
      
      firstStatic := Root_Object.TAGS.ASO.Create;
      Root_Object.TAGS.ASO.TAGS_ASO_Type(firstStatic.all).Unique_ID := 1;
      
      
      if firstStatic /= Null and then
         Root_Object.TAGS.ASO.TAGS_ASO_type(firstStatic.all).Unique_ID =  1 then
         
         TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
            Test_Object_Domain => "Create STATIC oject             ",
            Test_Number        => this_test,
            Test_Value         => 0);
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "Create STATIC oject             ",
            Failed_Test_Number   => this_test,
            Failed_Test_Value    => -1);
         
      end if;
      
      this_test := this_test + 1;
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2 - Create a single static object. By inspection check that there is
      --           no delete option generated for this object
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => this_test,
         Requid          => "1241-0000-01-0132               ",
         Invoking_Domain => "Tagged                          ",
         Invoking_Object => "TAGGING                         ",
         Purpose         => "Create a SINGLE STATIC object   ");
      
      TAGS_RPT8_Specify_Requid_Bridge.TAGS_RPT8_Specify_Requid (
         Requid_Test_Number => this_test,
         The_Requid_Itself  => "1241-0000-01-0127               ");
      
      TAGS_RPT5_Test_Text_Bridge.TAGS_RPT5_Test_Text (
         Test_Number => this_test,
         Free_Text   => "Can only be tested by inspection");
      
      
      firstSingleStatic := Root_Object.TAGS.ASSO.Create;
      Root_Object.TAGS.ASSO.TAGS_ASSO_Type(firstSingleStatic.all).Unique_ID := 1;
      
      
      if firstSingleStatic /= Null and then
         Root_Object.TAGS.ASSO.TAGS_ASSO_type(firstSingleStatic.all).Unique_ID =  1 then
         
         TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
            Test_Object_Domain => "Create SINGLE STATIC oject      ",
            Test_Number        => this_test,
            Test_Value         => 0);
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "Create SINGLE STATIC oject      ",
            Failed_Test_Number   => this_test,
            Failed_Test_Value    => -1);
         
      end if;
      
      this_test := this_test + 1;
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => this_test,
         Requid          => "1241-0000-01-0132               ",
         Invoking_Domain => "Tagged                          ",
         Invoking_Object => "TAGGING                         ",
         Purpose         => "Create a MULTIPLE STATIC objects");
      
      TAGS_RPT8_Specify_Requid_Bridge.TAGS_RPT8_Specify_Requid (
         Requid_Test_Number => this_test,
         The_Requid_Itself  => "1241-0000-01-0127               ");
      
      TAGS_RPT5_Test_Text_Bridge.TAGS_RPT5_Test_Text (
         Test_Number => this_test,
         Free_Text   => "Can only be tested by inspection");
      
      
      firstMultiStatic := Root_Object.TAGS.AMSO.Create;
      Root_Object.TAGS.AMSO.TAGS_AMSO_Type(firstMultiStatic.all).Unique_ID := 1;
      
      
      if firstMultiStatic /= Null and then
         Root_Object.TAGS.AMSO.TAGS_AMSO_type(firstMultiStatic.all).Unique_ID =  1 then
         
         TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
            Test_Object_Domain => "Create MULTIPLE STATIC oject    ",
            Test_Number        => this_test,
            Test_Value         => 0);
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "Create MULTIPLE STATIC oject    ",
            Failed_Test_Number   => this_test,
            Failed_Test_Value    => -1);
         
      end if;
      
      this_test := this_test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number := this_test;
      
      
   end TAGS_TAGS15_Perform_Tests_On_Static_Object;
   
end TAGS_TAGS15_Perform_Tests_On_Static_Object_Service;

--
-- End of file TAGS_TAGS15_Perform_Tests_On_Static_Object_Service.adb
--
