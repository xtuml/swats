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
--* File Name:               ASL_Mapping_objBIG1_Receive_Unfeasonableness_Service.adb
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
with Root_Object.ASL_Mapping.objBIG;

-- List of bridges used
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_objBIG1_Receive_Unfeasonableness_Service is
   
   procedure ASL_Mapping_objBIG1_Receive_Unfeasonableness (
      A_Big_Object       : in     Root_Object.Object_Access;
      Current_Test       : in     Application_Types.Base_Integer_Type;
      Expected_Attribute : in     Application_Types.Base_Integer_Type) is
      
   begin
   -- start of objBIG1_Receive_Unfeasonableness
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Current_Test,
         Requid          => "1103-0000-01-0522               ",
         Invoking_Domain => "ASL_Mapping                     ",
         Invoking_Object => "Big Object                      ",
         Purpose         => "Receive big IH                  ");
      
      
      if A_Big_Object /= Null then
         
         if Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(A_Big_Object.all).One        =  Expected_Attribute and then
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(A_Big_Object.all).Forty      =  Expected_Attribute and then
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(A_Big_Object.all).Eightyfour =  Expected_Attribute then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "Valid big IH                    ",
               Test_Number        => Current_Test,
               Test_Value         => Expected_Attribute);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "Mismatching big attributes      ",
               Failed_Test_Number   => Current_Test,
               Failed_Test_Value    => Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(A_Big_Object.all).One);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Invalid big IH                  ",
            Failed_Test_Number   => Current_Test,
            Failed_Test_Value    => -1);
         
      end if;
      
      
   end ASL_Mapping_objBIG1_Receive_Unfeasonableness;
   
end ASL_Mapping_objBIG1_Receive_Unfeasonableness_Service;

--
-- End of file ASL_Mapping_objBIG1_Receive_Unfeasonableness_Service.adb
--
