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
--* File Name:               DomainA_Scenario14.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Passing IH
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
with Root_Object.DomainA.objA;
with Root_Object.DomainA.TD;

-- List of bridges used
with DomainA_NAV9_Pass_IH_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure DomainA_Scenario14 is
   
      
      my_test         : Root_Object.Object_Access;
      IH_To_Be_Passed : Root_Object.Object_Access;
      
      Test : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      -- -------------------------------------------------------------------------
      --  Pass an instance handle through a bridge to see if it gets correctly
      --  picked up
      -- -------------------------------------------------------------------------
      my_test := Root_Object.DomainA.TD.Unconditional_Find_One;
      Test := Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number;
      
      IH_To_Be_Passed := Root_Object.DomainA.objA.Create;
      Root_Object.DomainA.objA.DomainA_objA_Type(IH_To_Be_Passed.all).idA           := 100;
      Root_Object.DomainA.objA.DomainA_objA_Type(IH_To_Be_Passed.all).ResultA       := 100;
      Root_Object.DomainA.objA.DomainA_objA_Type(IH_To_Be_Passed.all).Current_State := Root_Object.DomainA.objA.Sync_service_invocation_to_event;
      
      
      DomainA_NAV9_Pass_IH_Bridge.DomainA_NAV9_Pass_IH (
         Test   => Test,
         The_IH => IH_To_Be_Passed);
      
      
      -- -------------------------------------------------------------------------
      Test := Test + 1;
      
      
      Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number := Test;
      
   end DomainA_Scenario14;
   
--
-- End of file DomainA_Scenario14.ada
--
