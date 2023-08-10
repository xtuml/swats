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
--* File Name:               DomainA_Scenario6.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          one_to_one_navigation
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
with Root_Object.DomainA.otors;
with Root_Object.DomainA.otols;
with Root_Object.DomainA.TD;

-- List of relationships used
with DomainA_rel_R1;

-- List of bridges used
with DomainA_NAV3_One_to_One_Navigate_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure DomainA_Scenario6 is
   
      
      my_test : Root_Object.Object_Access;
      left    : Root_Object.Object_Access;
      right   : Root_Object.Object_Access;
      
      Test                  : Application_Types.Base_Integer_Type := 1;
      Termination_Condition : Application_Types.Base_Integer_Type := 1;
      loop_counter          : Application_Types.Base_Integer_Type := 1;
      
   begin
      my_test := Root_Object.DomainA.TD.Unconditional_Find_One;
      Test := Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number;
      
      
      -- -------------------------------------------------------------------------
      --  Create five instances of left and right parts of the one to one relationship.
      -- -------------------------------------------------------------------------
      
      Termination_Condition := Test + 5;
      loop_counter          := Test;
      
      
      loop
         
         left := Root_Object.DomainA.otols.Create;
         Root_Object.DomainA.otols.DomainA_otols_Type(left.all).otols_id := loop_counter;
         
         
         right := Root_Object.DomainA.otors.Create;
         Root_Object.DomainA.otors.DomainA_otors_Type(right.all).otors_id := loop_counter;
         
         DomainA_Rel_R1.Link (
            A_Instance => left,
            B_Instance => right);
         
         
         loop_counter := loop_counter + 1;
         
         exit when loop_counter =  Termination_Condition;
      end loop;
      
      
      --  Call bridge service to see if we can navigate from one side to the other
      
      loop
         
         DomainA_NAV3_One_to_One_Navigate_Bridge.DomainA_NAV3_One_to_One_Navigate (
            Test => Test);
         
         
         Test := Test + 1;
         
         exit when Test =  Termination_Condition;
      end loop;
      
      
      -- -------------------------------------------------------------------------
      
      Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number := Test;
      
   end DomainA_Scenario6;
   
--
-- End of file DomainA_Scenario6.ada
--
