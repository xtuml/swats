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
--* File Name:               DomainB1_Sync1B_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This synchronous service is invoked by a synchronous service in DomainA.
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
with Root_Object.DomainB.objB;
with Root_Object.DomainB.TD;

-- List of bridges used
with DomainB_RPT2_Test_Passed_Bridge;
with DomainB_RPT3_Test_Failed_Bridge;
with DomainB_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainB_DomainB1_Sync1B_Service is
   
   procedure DomainB_DomainB1_Sync1B (
      inputA  : in     Application_Types.Base_Integer_Type;
      inputB  : in     Application_Types.Base_Integer_Type;
      Test    : in     Application_Types.Base_Integer_Type;
      outputA :    out Application_Types.Base_Integer_Type;
      outputB :    out Application_Types.Base_Integer_Type) is
      
      my_test      : Root_Object.Object_Access;
      an_instanceB : Root_Object.Object_Access;
      
      local_test : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of DomainB1_Sync1B
      my_test := Root_Object.DomainB.TD.Unconditional_Find_One;
      local_test := Root_Object.DomainB.TD.DomainB_TD_type(my_test.all).This_Test_Number;
      
      
      DomainB_RPT1_Start_Test_Bridge.DomainB_RPT1_Start_Test (
         Test_Number     => local_test,
         Requid          => "1241-0000-01-1110               ",
         Invoking_Domain => "DomainB                         ",
         Invoking_Object => "DSS 1                           ",
         Purpose         => "sync service 1B called          ");
      
      
      -- Check that input parameters
      
      if (inputA /= 1) or else
         (inputB /= 2) then
         
         -- Return incorrect values, because the input values where incorrect
         
         outputA := 1;
         outputB := 2;
         
         DomainB_RPT3_Test_Failed_Bridge.DomainB_RPT3_Test_Failed (
            Failed_Domain_Object => "DSS 1B                          ",
            Failed_Test_Number   => local_test,
            Failed_Test_Value    => -1);
         
      else
         
         -- Return correct values, because the input values where correct
         outputA := 3;
         outputB := 4;
         
         -- In DomainB indicate that a Sync service call was made
         an_instanceB := Root_Object.DomainB.objB.Conditional_Find_One;
         while (an_instanceB /= null) and then (not (Root_Object.DomainB.objB.DomainB_objB_Type(an_instanceB.all).idB =  1) ) loop
            
            an_instanceB := an_instanceB.Next_Object;
         end loop;
         
         Root_Object.DomainB.objB.DomainB_objB_type(an_instanceB.all).ResultB := 10;
         
         
         DomainB_RPT2_Test_Passed_Bridge.DomainB_RPT2_Test_Passed (
            Test_Object_Domain => "DSS 1B                          ",
            Test_Number        => local_test,
            Test_Value         => Root_Object.DomainB.objB.DomainB_objB_type(an_instanceB.all).ResultB);
         
      end if;
      
      
      local_test := local_test + 1;
      
      
      Root_Object.DomainB.TD.DomainB_TD_type(my_test.all).This_Test_Number := local_test;
      
      
   end DomainB_DomainB1_Sync1B;
   
end DomainB_DomainB1_Sync1B_Service;

--
-- End of file DomainB_DomainB1_Sync1B_Service.adb
--
