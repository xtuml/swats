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
--* File Name:               SBONE_Scenario1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Send_To_Bridge
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
--* Domain Name              : Structure_Bridge_One
--* Domain Key Letter        : SBONE
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.SBONE.TD;

-- List of bridges used
with SBONE_ITGWO3_Test_Structure_In_Bridge_Bridge;
with SBONE_RPT1_Start_Test_Bridge;

-- List of domain types used
with SBONE_Domain_Types;
with SBONE_Domain_Types.Ops;
use type SBONE_Domain_Types.Structure_Of_UDTs;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure SBONE_Scenario1 is
   
      
      my_test : Root_Object.Object_Access;
      
      The_Source_Structure : SBONE_Domain_Types.Structure_Of_UDTs;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      Source_Value : Application_Types.Base_Integer_Type := 1;
      
   begin
      my_test := Root_Object.SBONE.TD.Unconditional_Find_One;
      Test := Root_Object.SBONE.TD.SBONE_TD_type(my_test.all).This_Test_Number;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - 
      -- --------------------------------------------------------------------------
      
      SBONE_RPT1_Start_Test_Bridge.SBONE_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Source Structure Bridge         ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Send structure to SBTWO         ");
      
      -- {The_Source_Structure} is Structure_Of_UDTs
      SBONE_Domain_Types.Ops.Initialise (The_Source_Structure);
      
      
      Source_Value := 2;
      
      --
      -- start of append members to structure
      SBONE_Domain_Types.Ops.Append (
         A_The_Range    => Source_Value, 
         To_Structure   => The_Source_Structure);
      -- end of append members to structure
      --
      
      
      SBONE_ITGWO3_Test_Structure_In_Bridge_Bridge.SBONE_ITGWO3_Test_Structure_In_Bridge (
         Test            => Test,
         Input_Structure => The_Source_Structure);
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      
      Root_Object.SBONE.TD.SBONE_TD_type(my_test.all).This_Test_Number := Test;
      
   end SBONE_Scenario1;
   
--
-- End of file SBONE_Scenario1.ada
--
