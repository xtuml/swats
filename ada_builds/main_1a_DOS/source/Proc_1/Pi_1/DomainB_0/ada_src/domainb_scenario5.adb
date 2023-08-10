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
--* File Name:               DomainB_Scenario5.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Check_Enumeration_Across_Domain_B
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
--* Domain Name              : DomainB
--* Domain Key Letter        : DomainB
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.DomainB.TD;

-- List of bridges used
with DomainB_NAV5_Enum_Test_Bridge;

-- List of domain types used
with DomainB_Domain_Types;
use type DomainB_Domain_Types.Test_Enum_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure DomainB_Scenario5 is
   
      
      my_test : Root_Object.Object_Access;
      
      Test : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      -- -------------------------------------------------------------------------
      --  Check that enumerated type are passed through bridges correctly
      -- -------------------------------------------------------------------------
      my_test := Root_Object.DomainB.TD.Unconditional_Find_One;
      Test := Root_Object.DomainB.TD.DomainB_TD_type(my_test.all).This_Test_Number;
      
      DomainB_NAV5_Enum_Test_Bridge.DomainB_NAV5_Enum_Test (
         Test       => Test,
         Enum_Input => DomainB_Domain_Types.Sandy);
      
      Test := Test + 1;
      
      
      Root_Object.DomainB.TD.DomainB_TD_type(my_test.all).This_Test_Number := Test;
      
   end DomainB_Scenario5;
   
--
-- End of file DomainB_Scenario5.ada
--
