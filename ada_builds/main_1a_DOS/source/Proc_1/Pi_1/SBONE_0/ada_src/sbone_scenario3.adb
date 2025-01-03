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
--* File Name:               SBONE_Scenario3.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Send_Structure_To_SBTWO_Via_Bridge
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
with SBONE_ITGWO2_Wide_Blue_Yonder_Bridge;
with SBONE_RPT2_Test_Passed_Bridge;
with SBONE_RPT1_Start_Test_Bridge;

-- List of domain types used
with SBONE_Domain_Types;
with SBONE_Domain_Types.Ops;
use type SBONE_Domain_Types.Very_Simple_Structure_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure SBONE_Scenario3 is
   
      
      my_test : Root_Object.Object_Access;
      
      Source_Structure_One : SBONE_Domain_Types.Very_Simple_Structure_Type;
      
      My_Simple_Real : Application_Types.Base_Float_Type := 1.0;
      
      Test              : Application_Types.Base_Integer_Type := 1;
      My_Simple_Integer : Application_Types.Base_Integer_Type := 1;
      count             : Application_Types.Base_Integer_Type := 1;
      
   begin
      my_test := Root_Object.SBONE.TD.Unconditional_Find_One;
      Test := Root_Object.SBONE.TD.SBONE_TD_type(my_test.all).This_Test_Number;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - Define a local data structure to be passed via a bridge into a 
      --           destination domain
      -- --------------------------------------------------------------------------
      
      SBONE_RPT1_Start_Test_Bridge.SBONE_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Source Structure Bridge         ",
         Invoking_Object => "Scenario3                       ",
         Purpose         => "Send 1 v simple structure to SBT");
      
      -- {Source_Structure_One} is Very_Simple_Structure_Type
      SBONE_Domain_Types.Ops.Initialise (Source_Structure_One);
      
      
      My_Simple_Integer := 10;
      My_Simple_Real    := 20.0;
      count             := 1;
      
      loop
         My_Simple_Integer := My_Simple_Integer * count;
         
         --
         -- start of append members to structure
         SBONE_Domain_Types.Ops.Append (
            A_Simple_Integer => My_Simple_Integer,
            A_Simple_Real    => My_Simple_Real, 
            To_Structure     => Source_Structure_One);
         -- end of append members to structure
         --
         
         exit when count =  5;
         
         count := count + 1;
         
      end loop;
      
      
      --  Pass this lot into the bridge.
      
      SBONE_RPT2_Test_Passed_Bridge.SBONE_RPT2_Test_Passed (
         Test_Object_Domain => "Send a simple structure         ",
         Test_Number        => Test,
         Test_Value         => My_Simple_Integer);
      
      SBONE_ITGWO2_Wide_Blue_Yonder_Bridge.SBONE_ITGWO2_Wide_Blue_Yonder (
         Test                    => Test,
         Simple_Source_Structure => Source_Structure_One);
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      
      Root_Object.SBONE.TD.SBONE_TD_type(my_test.all).This_Test_Number := Test;
      
   end SBONE_Scenario3;
   
--
-- End of file SBONE_Scenario3.ada
--
