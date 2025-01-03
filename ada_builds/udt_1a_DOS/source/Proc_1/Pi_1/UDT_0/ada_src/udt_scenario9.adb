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
--* File Name:               UDT_Scenario9.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Enum_Scenario
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
--* Domain Name              : User_Defined_Types
--* Domain Key Letter        : UDT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.UDT.FTD;

-- List of services used
with UDT_UDT10_Check_The_Enumerators_Service;

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Temp_Type;
use type UDT_Domain_Types.Colour_Type;
use type UDT_Domain_Types.Simple_Enumeration_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure UDT_Scenario9 is
   
      
      my_final_test : Root_Object.Object_Access;
      
      Test : Application_Types.Base_Integer_Type := 1;
      
   begin
      my_final_test := Root_Object.UDT.FTD.Unconditional_Find_One;
      Test := Root_Object.UDT.FTD.UDT_FTD_type(my_final_test.all).Final_Test_Number;
      
      -- --------------------------------------------------------------------------
      --  Test 1
      -- --------------------------------------------------------------------------
      
      UDT_UDT10_Check_The_Enumerators_Service.UDT_UDT10_Check_The_Enumerators (
         Test              => Test,
         First_Enum_Input  => UDT_Domain_Types.Five,
         Second_Enum_Input => UDT_Domain_Types.Blue,
         Third_Enum_Input  => UDT_Domain_Types.Freezing);
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      
      Root_Object.UDT.FTD.UDT_FTD_type(my_final_test.all).Final_Test_Number := Test;
      
   end UDT_Scenario9;
   
--
-- End of file UDT_Scenario9.ada
--
