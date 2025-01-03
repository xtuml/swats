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
--* File Name:               TAGS3_Delete_Report_Domain_Service.adb
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
with Root_Object.TAGS.RD;

-- List of bridges used
with TAGS_RPT7_Domain_Test_Finished_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body TAGS_TAGS3_Delete_Report_Domain_Service is
   
   procedure TAGS_TAGS3_Delete_Report_Domain is
      
      This_Report : Root_Object.Object_Access;
      
      This_Domain_Identifier : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of TAGS3_Delete_Report_Domain
      This_Report := Root_Object.TAGS.RD.Unconditional_Find_One;
      
      if This_Report /= Null then
         This_Domain_Identifier := Root_Object.TAGS.RD.TAGS_RD_type(This_Report.all).Reported_Domain_Number;
      else
         This_Domain_Identifier := -1;
         
      end if;
      
      
      TAGS_RPT7_Domain_Test_Finished_Bridge.TAGS_RPT7_Domain_Test_Finished (
         This_Domain_Name   => "TAGGING                         ",
         This_Domain_Number => This_Domain_Identifier);
      
      
      --  There are no events en-queued in this domain.
      --  Events are not tagged currently, or at least there is no call to do, yet.
      
      if This_Domain_Identifier /= -1 then
         
         Root_Object.TAGS.RD.Delete (
            Old_Instance => This_Report);
      end if;
      
      
   end TAGS_TAGS3_Delete_Report_Domain;
   
end TAGS_TAGS3_Delete_Report_Domain_Service;

--
-- End of file TAGS_TAGS3_Delete_Report_Domain_Service.adb
--
