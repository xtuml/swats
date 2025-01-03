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
--* File Name:               ASL_Mapping_DV1_Default_Vals_In_Object_Service.adb
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
--* Domain Name              : ASL_Mapping
--* Domain Key Letter        : ASL_Mapping
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.ASL_Mapping.DV;

-- List of bridges used
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_WAW1_What_Env_Bridge;
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_DV1_Default_Vals_In_Object_Service is
   
   procedure ASL_Mapping_DV1_Default_Vals_In_Object (
      Test         : in     Application_Types.Base_Integer_Type;
      Returning_No :    out Application_Types.Base_Integer_Type) is
      
      InstDV : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Host : Application_Types.Base_Text_Type := (others => ' ');
      
      Set_Vals   : Boolean := Application_Types.Boolean_first;
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of DV1_Default_Vals_In_Object
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0115               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check defaults vals in object   ",
         Purpose         => "Check defaults vals in object   ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0114               ");
      
      Set_Vals   := False;
      Has_Failed := False;
      
      
      ASL_Mapping_WAW1_What_Env_Bridge.ASL_Mapping_WAW1_What_Env (
         Env_Text => Host);
      
      
      InstDV := Root_Object.ASL_Mapping.DV.Create;
      Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_Type(InstDV.all).dv_id := 1;
      
      
      if Set_Vals then
         
         Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(InstDV.all).The_Integer := 10;
         Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(InstDV.all).The_Real    := 10.0;
         Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(InstDV.all).The_Text    := "Value Set                       ";
         Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(InstDV.all).The_Boolean := True;
         
      end if;
      
      
      if (not Set_Vals) then
         
         if Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(InstDV.all).The_Integer =  0 then
            
            if Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(InstDV.all).The_Real =  0.0 then
               
               if (not Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(InstDV.all).The_Boolean) then
                  
                  if Host =  "WACA                            " then
                     
                     if Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(InstDV.all).The_Text /= "                                " then
                        
                        Has_Failed   := True;
                        Failure_Code := -10;
                     end if;
                     
                  else
                     
                     if Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(InstDV.all).The_Text /= "                                " then
                        Has_Failed   := True;
                        Failure_Code := -10;
                     end if;
                     
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -20;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -30;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -40;
         end if;
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "DV                              ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "DV                              ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      Returning_No := Test + 1;
      
      
   end ASL_Mapping_DV1_Default_Vals_In_Object;
   
end ASL_Mapping_DV1_Default_Vals_In_Object_Service;

--
-- End of file ASL_Mapping_DV1_Default_Vals_In_Object_Service.adb
--
