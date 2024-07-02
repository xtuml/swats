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
--* File Name:               ASL_Mapping10_Check_Base_Types_Service.adb
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
with Root_Object.ASL_Mapping.objB;
with Root_Object.ASL_Mapping.objA;
with Root_Object.ASL_Mapping.DV;

-- List of bridges used
with ASL_Mapping_RPT4_Test_Unsupported_Bridge;
with ASL_Mapping_RPT5_Test_Text_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_ASL_Mapping10_Check_Base_Types_Service is
   
   procedure ASL_Mapping_ASL_Mapping10_Check_Base_Types (
      Test         : in     Application_Types.Base_Integer_Type;
      Returning_No :    out Application_Types.Base_Integer_Type) is
      
      objDV : Root_Object.Object_Access;
      instA : Root_Object.Object_Access;
      instB : Root_Object.Object_Access;
      
      The_Real_Type : Application_Types.Base_Float_Type := 1.0;
      
      Local_Test       : Application_Types.Base_Integer_Type := 1;
      The_Integer_Type : Application_Types.Base_Integer_Type := 1;
      
      The_String_Type : Application_Types.Base_Text_Type := (others => ' ');
      
      The_Boolean_Type : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of ASL_Mapping10_Check_Base_Types
      
      -- ------------------------------------------------------------------
      --  The architecture should be able to support Real, Integer, Boolean
      --  and Text base types. This test assigns appropriates values to 
      --  variables and then reads them back to make sure that these values
      --  have been correctly assigned
      -- ------------------------------------------------------------------
      Local_Test       := Test;
      The_Real_Type    := 23.12345;
      The_Integer_Type := 12345;
      The_String_Type  := "The Cat Sat On The Mat          ";
      The_Boolean_Type := True;
      
      
      objDV := Root_Object.ASL_Mapping.DV.Create;
      Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_Type(objDV.all).The_Integer  := 0;
      Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_Type(objDV.all).The_Real     := 0.0;
      Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_Type(objDV.all).The_Text     := "                                ";
      Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_Type(objDV.all).The_Boolean  := False;
      
      
      Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(objDV.all).The_Real    := The_Real_Type;
      Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(objDV.all).The_Integer := The_Integer_Type;
      Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(objDV.all).The_Text    := The_String_Type;
      Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(objDV.all).The_Boolean := The_Boolean_Type;
      
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1241-0000-01-0105               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check Base types                ",
         Purpose         => "Check that base types are correc");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0106               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0107               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0110               ");
      
      
      if Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(objDV.all).The_Real =  23.12345 then
         
         if Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(objDV.all).The_Integer =  12345 then
            
            if Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(objDV.all).The_Text =  "The Cat Sat On The Mat          " then
               
               if Root_Object.ASL_Mapping.DV.ASL_Mapping_DV_type(objDV.all).The_Boolean then
                  
                  ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
                     Test_Object_Domain => "Basic ASL                       ",
                     Test_Number        => Local_Test,
                     Test_Value         => 0);
                  
               else
                  ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                     Failed_Domain_Object => "Basic ASL                       ",
                     Failed_Test_Number   => Local_Test,
                     Failed_Test_Value    => -10);
                  
               end if;
               
            else
               ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                  Failed_Domain_Object => "Basic ASL                       ",
                  Failed_Test_Number   => Local_Test,
                  Failed_Test_Value    => -30);
               
            end if;
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "Basic ASL                       ",
               Failed_Test_Number   => Local_Test,
               Failed_Test_Value    => -40);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -50);
         
      end if;
      
      
      Local_Test := Local_Test + 1;
      
      --  End Test 1
      -- ------------------------------------------------------------------
      --  Test 2 - Test the Time Of Day attribute
      -- ------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1241-0000-01-0108               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check Base types                ",
         Purpose         => "Check Time Of Day Attribute     ");
      
      ASL_Mapping_RPT5_Test_Text_Bridge.ASL_Mapping_RPT5_Test_Text (
         Test_Number => Local_Test,
         Free_Text   => "Time Of Day attribute is        ");
      
      ASL_Mapping_RPT5_Test_Text_Bridge.ASL_Mapping_RPT5_Test_Text (
         Test_Number => Local_Test,
         Free_Text   => "unsupported by the WACA         ");
      
      ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Local_Test);
      
      Local_Test := Local_Test + 1;
      
      -- ------------------------------------------------------------------
      --  Test 3 - 
      -- ------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check Base types                ",
         Purpose         => "Check Attribute comparison      ");
      
      
      instA := Root_Object.ASL_Mapping.objA.Create;
      Root_Object.ASL_Mapping.objA.ASL_Mapping_objA_Type(instA.all).objA_id      := 1;
      Root_Object.ASL_Mapping.objA.ASL_Mapping_objA_Type(instA.all).The_Int1     := 1;
      Root_Object.ASL_Mapping.objA.ASL_Mapping_objA_Type(instA.all).The_Int2     := 2;
      
      
      instB := Root_Object.ASL_Mapping.objB.Create;
      Root_Object.ASL_Mapping.objB.ASL_Mapping_objB_Type(instB.all).objB_id      := 1;
      Root_Object.ASL_Mapping.objB.ASL_Mapping_objB_Type(instB.all).The_IntB1    := 1;
      Root_Object.ASL_Mapping.objB.ASL_Mapping_objB_Type(instB.all).The_IntB2    := 2;
      
      
      if Root_Object.ASL_Mapping.objA.ASL_Mapping_objA_type(instA.all).The_Int1 =  Root_Object.ASL_Mapping.objB.ASL_Mapping_objB_type(instB.all).The_IntB1 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Comp                            ",
            Test_Number        => Local_Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Comp                            ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      Local_Test := Local_Test + 1;
      
      -- ------------------------------------------------------------------
      --  Test 4 - 
      -- ------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check Base types                ",
         Purpose         => "Check Attribute comparison      ");
      
      
      if Root_Object.ASL_Mapping.objA.ASL_Mapping_objA_type(instA.all).The_Int1 /= Root_Object.ASL_Mapping.objA.ASL_Mapping_objA_type(instA.all).The_Int2 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Comp                            ",
            Test_Number        => Local_Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Comp                            ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      Local_Test := Local_Test + 1;
      
      -- ------------------------------------------------------------------
      --  Test 4 - 
      -- ------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check Base types                ",
         Purpose         => "Check Attribute comparison      ");
      
      
      if Root_Object.ASL_Mapping.objA.ASL_Mapping_objA_type(instA.all).The_Int1 /= Root_Object.ASL_Mapping.objA.ASL_Mapping_objA_type(instA.all).The_Int2 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Comp                            ",
            Test_Number        => Local_Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Comp                            ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      Local_Test := Local_Test + 1;
      
      -- ------------------------------------------------------------------
      --  Test 5 - 
      -- ------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Check Base types                ",
         Purpose         => "Check Attribute comparison      ");
      
      
      if Root_Object.ASL_Mapping.objA.ASL_Mapping_objA_type(instA.all).The_Int2 =  Root_Object.ASL_Mapping.objB.ASL_Mapping_objB_type(instB.all).The_IntB2 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Comp                            ",
            Test_Number        => Local_Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Comp                            ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      Local_Test := Local_Test + 1;
      
      
      --  End Test 2
      
      Returning_No := Local_Test;
      
      
   end ASL_Mapping_ASL_Mapping10_Check_Base_Types;
   
end ASL_Mapping_ASL_Mapping10_Check_Base_Types_Service;

--
-- End of file ASL_Mapping_ASL_Mapping10_Check_Base_Types_Service.adb
--
