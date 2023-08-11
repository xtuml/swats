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
--* File Name:               TAGS_ATMO_2.ada
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
--* Domain Name              : Tagging
--* Domain Key Letter        : TAGS
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.TAGS.ATSO;

-- List of relationships used
with TAGS_rel_R2;

-- List of bridges used
with TAGS_RPT3_Test_Failed_Bridge;
with TAGS_RPT2_Test_Passed_Bridge;
with TAGS_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TAGS.ATMO)
   
   procedure TAGS_ATMO_2 (ATMO_Test_No  : in     Application_Types.Base_Integer_Type;
                          This_Instance : in out Root_Object.Object_Access) is
   
      
      Single_End : Root_Object.Object_Access;
      
   begin
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => ATMO_Test_No,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Active Many Tagged Object       ",
         Purpose         => "generate to Active Many         ");
      
      
      TAGS_Rel_R2.Navigate (
         From  => This_Instance,
         Class => Root_Object.TAGS.ATSO.TAGS_ATSO_type'tag,
         To    => Single_End);
      
      
      if Single_End /= Null then
         
         if Root_Object.TAGS.ATSO.TAGS_ATSO_type(Single_End.all).Attribute_One =  Root_Object.TAGS.ATMO.TAGS_ATMO_type(This_Instance.all).Attribute_Two then
            
            TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
               Test_Object_Domain => "generate ATMO                   ",
               Test_Number        => ATMO_Test_No,
               Test_Value         => 0);
            
         else
            TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
               Failed_Domain_Object => "generate ATMO                   ",
               Failed_Test_Number   => ATMO_Test_No,
               Failed_Test_Value    => -2);
            
         end if;
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "generate ATMO                   ",
            Failed_Test_Number   => ATMO_Test_No,
            Failed_Test_Value    => -1);
         
      end if;
      
      Root_Object.TAGS.ATMO.Process_Queue;
   end TAGS_ATMO_2;
   
--
-- End of file TAGS_ATMO_2.ada
--
