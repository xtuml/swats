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
--* File Name:               TAGS5_Report_Now_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Test requirement Tag
--*                           @@TAGS-01-0001
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

-- List of bridges used
with TAGS_RPT4_Test_Unsupported_Bridge;
with TAGS_RPT3_Test_Failed_Bridge;
with TAGS_RPT2_Test_Passed_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body TAGS_TAGS5_Report_Now_Service is
   
   procedure TAGS_TAGS5_Report_Now (
      Test_Number     : in     Application_Types.Base_Integer_Type;
      Testing_For     : in     Application_Types.Base_Text_Type;
      Failure         : in     Application_Types.Base_Integer_Type;
      It_Is_Supported : in     Boolean) is
      
   begin
   -- start of TAGS5_Report_Now
      
      if Failure =  0 then
         
         TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
            Test_Object_Domain => Testing_For,
            Test_Number        => Test_Number,
            Test_Value         => Failure);
         
      else
         
         if It_Is_Supported then
            
            TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
               Failed_Domain_Object => Testing_For,
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => Failure);
            
         else
            TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
               Unsupported_Test_Number => Test_Number);
            
         end if;
         
      end if;
      
      
   end TAGS_TAGS5_Report_Now;
   
end TAGS_TAGS5_Report_Now_Service;

--
-- End of file TAGS_TAGS5_Report_Now_Service.adb
--
