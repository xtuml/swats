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
--* File Name:               ASL_Mapping11_Check_Defaults_Service.adb
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

-- List of bridges used
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_WAW1_What_Env_Bridge;
with ASL_Mapping_RPT4_Test_Unsupported_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_ASL_Mapping11_Check_Defaults_Service is
   
   procedure ASL_Mapping_ASL_Mapping11_Check_Defaults (
      Test         : in     Application_Types.Base_Integer_Type;
      Returning_No :    out Application_Types.Base_Integer_Type) is
      
      The_Real_Default : Application_Types.Base_Float_Type := 1.0;
      
      The_Integer_Default : Application_Types.Base_Integer_Type := 1;
      
      Host             : Application_Types.Base_Text_Type := (others => ' ');
      The_Text_Default : Application_Types.Base_Text_Type := (others => ' ');
      
      Supported           : Boolean := Application_Types.Boolean_first;
      Set_Vals            : Boolean := Application_Types.Boolean_first;
      The_Boolean_Default : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of ASL_Mapping11_Check_Defaults
      
      -- ----------------------------------------------------------------------------------
      --  Check that variables are set default values on initialisation
      -- ----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0311               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check Default Values            ",
         Purpose         => "Check default values            ");
      
      ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      ASL_Mapping_WAW1_What_Env_Bridge.ASL_Mapping_WAW1_What_Env (
         Env_Text => Host);
      
      
      if Host =  "ISIM                            " then
         Supported := False;
      else
         Supported := True;
      end if;
      
      Set_Vals := False;
      
      
      if Set_Vals then
         
         if Supported then
            
            The_Real_Default    := 1.0;
            The_Integer_Default := 1;
            The_Text_Default    := "Goodbye                         ";
            The_Boolean_Default := True;
         else
            The_Real_Default    := 0.0;
            The_Integer_Default := 0;
            The_Text_Default    := "Goodbye                         ";
            The_Boolean_Default := True;
            
         end if;
         
      end if;
      
      
      if The_Real_Default =  1.0 then
         
         if The_Integer_Default =  1 then
            
            if The_Text_Default =  "                                " then
               
               if (not The_Boolean_Default) then
                  
                  ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
                     Test_Object_Domain => "Basic ASL                       ",
                     Test_Number        => Test,
                     Test_Value         => 0);
                  
               else
                  ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                     Failed_Domain_Object => "Basic ASL                       ",
                     Failed_Test_Number   => Test,
                     Failed_Test_Value    => -10);
                  
               end if;
               
            else
               ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                  Failed_Domain_Object => "Basic ASL                       ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -20);
               
            end if;
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "Basic ASL                       ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -30);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -40);
         
      end if;
      
      
      Returning_No := Test + 1;
      
      
   end ASL_Mapping_ASL_Mapping11_Check_Defaults;
   
end ASL_Mapping_ASL_Mapping11_Check_Defaults_Service;

--
-- End of file ASL_Mapping_ASL_Mapping11_Check_Defaults_Service.adb
--
