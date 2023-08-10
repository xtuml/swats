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
--* File Name:               DomainA_Scenario15.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Pass_Params
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

-- List of services used
with DomainA_DomainA4_Check_Service_Params_Service;

-- List of bridges used
with DomainA_RPT3_Test_Failed_Bridge;
with DomainA_RPT2_Test_Passed_Bridge;
with DomainA_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure DomainA_Scenario15 is
   
      
      my_test : Root_Object.Object_Access;
      
      Local_Real : Application_Types.Base_Float_Type := 1.0;
      
      Test       : Application_Types.Base_Integer_Type := 1;
      Local_Int  : Application_Types.Base_Integer_Type := 1;
      The_Result : Application_Types.Base_Integer_Type := 1;
      
      Local_Text : Application_Types.Base_Text_Type := (others => ' ');
      
      Local_Bool : Boolean := Application_Types.Boolean_first;
      
   begin
      my_test := Root_Object.DomainA.TD.Unconditional_Find_One;
      Test := Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number;
      
      
      DomainA_RPT1_Start_Test_Bridge.DomainA_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1106               ",
         Invoking_Domain => "DomainA                         ",
         Invoking_Object => "Misc calls                      ",
         Purpose         => "Param Passed through bridge     ");
      
      
      Local_Int  := 999;
      Local_Real := 99.9;
      Local_Text := "Passed From Domain A            ";
      Local_Bool := True;
      
      
      DomainA_DomainA4_Check_Service_Params_Service.DomainA_DomainA4_Check_Service_Params (
         Int_Input         => Local_Int,
         Real_Input        => Local_Real,
         Text_Input        => Local_Text,
         Bool_Input        => Local_Bool,
         The_Returning_Val => The_Result);
      
      
      if The_Result =  10 then
         
         DomainA_RPT2_Test_Passed_Bridge.DomainA_RPT2_Test_Passed (
            Test_Object_Domain => "Param Passed through bridge     ",
            Test_Number        => Test,
            Test_Value         => The_Result);
         
      else
         DomainA_RPT3_Test_Failed_Bridge.DomainA_RPT3_Test_Failed (
            Failed_Domain_Object => "Param Passed through bridge     ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => The_Result);
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number := Test;
      
   end DomainA_Scenario15;
   
--
-- End of file DomainA_Scenario15.ada
--
