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
--* File Name:               UDT10_Check_The_Enumerators_Service.adb
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
with Root_Object.UDT.ENUM;

-- List of bridges used
with UDT_RPT3_Test_Failed_Bridge;
with UDT_RPT2_Test_Passed_Bridge;
with UDT_RPT9_Specify_A_Requid_Bridge;
with UDT_RPT1_Start_Test_Bridge;

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Temp_Type;
use type UDT_Domain_Types.Colour_Type;
use type UDT_Domain_Types.Simple_Enumeration_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_UDT10_Check_The_Enumerators_Service is
   
   procedure UDT_UDT10_Check_The_Enumerators (
      Test              : in     Application_Types.Base_Integer_Type;
      First_Enum_Input  : in     UDT_Domain_Types.Simple_Enumeration_Type;
      Second_Enum_Input : in     UDT_Domain_Types.Colour_Type;
      Third_Enum_Input  : in     UDT_Domain_Types.Temp_Type) is
      
      InstEnum : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Defunct_Boy_Band : UDT_Domain_Types.Simple_Enumeration_Type    := UDT_Domain_Types.Simple_Enumeration_Type_first;
      Bad_Boy_Band     : UDT_Domain_Types.Colour_Type                := UDT_Domain_Types.Colour_Type_first;
      Zero_Degrees     : UDT_Domain_Types.Temp_Type                  := UDT_Domain_Types.Temp_Type_first;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of UDT10_Check_The_Enumerators
      
      -- ----------------------------------------------------------------------
      --  Test 1 - Check to ensure that attributes for an object can accept
      --           enumerated user defined types
      -- ----------------------------------------------------------------------
      
      UDT_RPT1_Start_Test_Bridge.UDT_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0113               ",
         Invoking_Domain => "User Defined Types              ",
         Invoking_Object => "Enumerator assignment           ",
         Purpose         => "Sub ranges of enumerators       ");
      
      UDT_RPT9_Specify_A_Requid_Bridge.UDT_RPT9_Specify_A_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1214               ");
      
      Defunct_Boy_Band := First_Enum_Input;
      Bad_Boy_Band     := Second_Enum_Input;
      Zero_Degrees     := Third_Enum_Input;
      
      
      InstEnum := Root_Object.UDT.ENUM.Create;
      Root_Object.UDT.ENUM.UDT_ENUM_Type(InstEnum.all).theID             := Test;
      Root_Object.UDT.ENUM.UDT_ENUM_Type(InstEnum.all).First_Enum        := Defunct_Boy_Band;
      Root_Object.UDT.ENUM.UDT_ENUM_Type(InstEnum.all).Second_Enum       := Bad_Boy_Band;
      Root_Object.UDT.ENUM.UDT_ENUM_Type(InstEnum.all).Third_Enum        := Zero_Degrees;
      
      
      Has_Failed   := True;
      Failure_Code := 0;
      
      
      if Root_Object.UDT.ENUM.UDT_ENUM_type(InstEnum.all).First_Enum =  UDT_Domain_Types.Five then
         
         if Root_Object.UDT.ENUM.UDT_ENUM_type(InstEnum.all).Second_Enum =  UDT_Domain_Types.Blue then
            
            if Root_Object.UDT.ENUM.UDT_ENUM_type(InstEnum.all).Third_Enum =  UDT_Domain_Types.Freezing then
               
               Has_Failed := False;
               
            else
               
               Has_Failed   := True;
               Failure_Code := -10;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -20;
         end if;
         
      else
         Has_Failed := True;
         Failure_Code := -30;
         
      end if;
      
      
      Root_Object.UDT.ENUM.Delete (
         Old_Instance => InstEnum);
      
      --  Report the results.
      
      if (not Has_Failed) then
         
         UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
            Test_Object_Domain => "Check Enumerators               ",
            Test_Number        => Test,
            Test_Value         => Failure_Code);
         
      else
         UDT_RPT3_Test_Failed_Bridge.UDT_RPT3_Test_Failed (
            Failed_Domain_Object => "Check Enumerators               ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
   end UDT_UDT10_Check_The_Enumerators;
   
end UDT_UDT10_Check_The_Enumerators_Service;

--
-- End of file UDT_UDT10_Check_The_Enumerators_Service.adb
--
