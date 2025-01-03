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
--* File Name:               DomainA_Scenario8.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          many_to_many_navigation
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
with Root_Object.DomainA.mtma;
with Root_Object.DomainA.mtmrs;
with Root_Object.DomainA.mtmls;
with Root_Object.DomainA.TD;

-- List of relationships used
with DomainA_rel_R3;

-- List of bridges used
with DomainA_NAV5_Many_to_Many_Navigate_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure DomainA_Scenario8 is
   
      
      my_test : Root_Object.Object_Access;
      left    : Root_Object.Object_Access;
      right   : Root_Object.Object_Access;
      assoc   : Root_Object.Object_Access;
      
      Test                : Application_Types.Base_Integer_Type := 1;
      number_of_tests     : Application_Types.Base_Integer_Type := 1;
      loop_counter        : Application_Types.Base_Integer_Type := 1;
      terminate_condition : Application_Types.Base_Integer_Type := 1;
      inner_loop_counter  : Application_Types.Base_Integer_Type := 1;
      break_condition     : Application_Types.Base_Integer_Type := 1;
      
   begin
      my_test := Root_Object.DomainA.TD.Unconditional_Find_One;
      Test := Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number;
      
      
      -- -------------------------------------------------------------------------
      --  Create five instances of left and right parts of the many to many relationship.
      -- -------------------------------------------------------------------------
      
      number_of_tests     := 5;
      loop_counter        := Test;
      terminate_condition := number_of_tests + Test + 1;
      
      
      loop
         
         left := Root_Object.DomainA.mtmls.Create;
         Root_Object.DomainA.mtmls.DomainA_mtmls_Type(left.all).mtmls_id := loop_counter;
         
         
         inner_loop_counter := loop_counter;
         break_condition    := loop_counter + 3;
         
         --  Make three instances of the right side of the navigation to link to
         --  a single instance of the left
         
         loop
            
            right := Root_Object.DomainA.mtmrs.Create;
            Root_Object.DomainA.mtmrs.DomainA_mtmrs_Type(right.all).mtmrs_id := loop_counter;
            
            
            assoc := Root_Object.DomainA.mtma.Create;
            Root_Object.DomainA.mtma.DomainA_mtma_Type(assoc.all).mtma_data := loop_counter;
            
            DomainA_Rel_R3.Link (
               A_Instance => left,
               B_Instance => right,
               Using      => assoc);
            
            inner_loop_counter := inner_loop_counter + 1;
            
            exit when inner_loop_counter =  break_condition;
         end loop;
         
         
         loop_counter := loop_counter + 1;
         
         exit when loop_counter =  terminate_condition;
      end loop;
      
      
      --  Call bridge service to see if we can navigate from one side to the other
      
      loop
         
         DomainA_NAV5_Many_to_Many_Navigate_Bridge.DomainA_NAV5_Many_to_Many_Navigate (
            Test => Test);
         
         
         Test := Test + 1;
         
         exit when Test =  terminate_condition;
      end loop;
      
      
      -- -------------------------------------------------------------------------
      
      Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number := Test;
      
   end DomainA_Scenario8;
   
--
-- End of file DomainA_Scenario8.ada
--
