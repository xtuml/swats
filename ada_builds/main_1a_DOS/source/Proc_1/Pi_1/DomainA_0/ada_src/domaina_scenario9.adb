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
--* File Name:               DomainA_Scenario9.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          invoke misc calls
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
--* Domain Name              : DomainA
--* Domain Key Letter        : DomainA
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.DomainA.TD;

-- List of bridges used
with DomainA_RPT2_Test_Passed_Bridge;
with DomainA_RPT3_Test_Failed_Bridge;
with DomainA_termA5_Common_Named_Object_Usage_Bridge;
with DomainA_RPT1_Start_Test_Bridge;
with DomainA_NAV6_Misc_Calls_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure DomainA_Scenario9 is
   
      
      my_test : Root_Object.Object_Access;
      
      Test        : Application_Types.Base_Integer_Type := 1;
      local_value : Application_Types.Base_Integer_Type := 1;
      
      local_fail : Boolean := Application_Types.Boolean_first;
      
   begin
      my_test := Root_Object.DomainA.TD.Unconditional_Find_One;
      Test := Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number;
      
      
      -- -------------------------------------------------------------------------
      
      DomainA_NAV6_Misc_Calls_Bridge.DomainA_NAV6_Misc_Calls (
         Test => Test);
      
      
      Test        := Test + 1;
      local_fail  := False;
      local_value := 0;
      
      
      Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number := Test;
      
      
      DomainA_RPT1_Start_Test_Bridge.DomainA_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "DomainA                         ",
         Invoking_Object => "Misc calls                      ",
         Purpose         => "Common objects                  ");
      
      
      --  Domain B should have executed seven tests by now, so the next test shown in the TEST_DATA
      --  object should be 8, that is is this is an ISIM environment. However, if this is WACA then
      --  domain B will only have executed four tests so far.
      
      DomainA_termA5_Common_Named_Object_Usage_Bridge.DomainA_termA5_Common_Named_Object_Usage (
         Test_Number_Parameter   => Test,
         This_Test_Has_Failed    => local_fail,
         This_Test_Failure_Value => local_value);
      
      
      if local_fail =  True then
         
         DomainA_RPT3_Test_Failed_Bridge.DomainA_RPT3_Test_Failed (
            Failed_Domain_Object => "DomainA                         ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => local_value);
         
      else
         DomainA_RPT2_Test_Passed_Bridge.DomainA_RPT2_Test_Passed (
            Test_Object_Domain => "DomainA                         ",
            Test_Number        => Test,
            Test_Value         => local_value);
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number := Test;
      
   end DomainA_Scenario9;
   
--
-- End of file DomainA_Scenario9.ada
--
