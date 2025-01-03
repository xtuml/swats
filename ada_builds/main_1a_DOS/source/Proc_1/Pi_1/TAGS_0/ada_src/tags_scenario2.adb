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
--* File Name:               TAGS_Scenario2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Perform_Passive_Static_Tests
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
with Root_Object.TAGS.TD;

-- List of services used
with TAGS_TAGS4_Perform_Passive_Singleton_Object_Tests_Service;
with TAGS_TAGS1_Perform_Unique_Passive_Singleton_Object_Tests_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure TAGS_Scenario2 is
   
      
      my_test : Root_Object.Object_Access;
      
      Test      : Application_Types.Base_Integer_Type := 1;
      Last_Test : Application_Types.Base_Integer_Type := 1;
      
   begin
      my_test := Root_Object.TAGS.TD.Unconditional_Find_One;
      Test      := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number;
      Last_Test := 0;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1
      -- --------------------------------------------------------------------------
      
      TAGS_TAGS1_Perform_Unique_Passive_Singleton_Object_Tests_Service.TAGS_TAGS1_Perform_Unique_Passive_Singleton_Object_Tests (
         Test                 => Test,
         Returned_Test_Number => Last_Test);
      
      
      Test := Last_Test + 1;
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      TAGS_TAGS4_Perform_Passive_Singleton_Object_Tests_Service.TAGS_TAGS4_Perform_Passive_Singleton_Object_Tests (
         Test                 => Test,
         Returned_Test_Number => Last_Test);
      
      Test := Last_Test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number := Test;
      
   end TAGS_Scenario2;
   
--
-- End of file TAGS_Scenario2.ada
--
