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
--* File Name:               DomainB4_Perform_DomainA_Navigations_Service.adb
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
with DomainB_NAV4_Misc_Calls_Bridge;
with DomainB_NAV3_Navigate_Many_to_Many_Bridge;
with DomainB_NAV2_Navigate_One_to_Many_Bridge;
with DomainB_NAV1_Navigate_One_to_One_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainB_DomainB4_Perform_DomainA_Navigations_Service is
   
   procedure DomainB_DomainB4_Perform_DomainA_Navigations is
      
      my_test : Root_Object.Object_Access;
      
      Local_Test : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of DomainB4_Perform_DomainA_Navigations
      
      -- -------------------------------------------------------------------------
      --  Call the bridge directly for navigation of relationships in
      --  DomainA.
      -- -------------------------------------------------------------------------
      my_test := Root_Object.DomainB.TD.Unconditional_Find_One;
      
      -- -------------------------------------------------------------------------
      Local_Test := Root_Object.DomainB.TD.DomainB_TD_type(my_test.all).This_Test_Number;
      
      DomainB_NAV1_Navigate_One_to_One_Bridge.DomainB_NAV1_Navigate_One_to_One (
         Test => Local_Test);
      
      
      -- -------------------------------------------------------------------------
      Local_Test := Local_Test + 1;
      
      DomainB_NAV2_Navigate_One_to_Many_Bridge.DomainB_NAV2_Navigate_One_to_Many (
         Test => Local_Test);
      
      
      -- -------------------------------------------------------------------------
      Local_Test := Local_Test + 1;
      
      DomainB_NAV3_Navigate_Many_to_Many_Bridge.DomainB_NAV3_Navigate_Many_to_Many (
         Test => Local_Test);
      
      
      -- -------------------------------------------------------------------------
      Local_Test := Local_Test + 1;
      
      DomainB_NAV4_Misc_Calls_Bridge.DomainB_NAV4_Misc_Calls (
         Test => Local_Test);
      
      
      -- -------------------------------------------------------------------------
      Local_Test := Local_Test + 1;
      
      
      Root_Object.DomainB.TD.DomainB_TD_type(my_test.all).This_Test_Number := Local_Test;
      
      
   end DomainB_DomainB4_Perform_DomainA_Navigations;
   
end DomainB_DomainB4_Perform_DomainA_Navigations_Service;

--
-- End of file DomainB_DomainB4_Perform_DomainA_Navigations_Service.adb
--
