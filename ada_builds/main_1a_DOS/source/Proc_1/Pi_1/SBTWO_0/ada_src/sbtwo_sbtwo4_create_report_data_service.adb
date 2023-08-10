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
--* File Name:               SBTWO4_Create_Report_Data_Service.adb
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
--* Domain Name              : Structure_Bridge_Two
--* Domain Key Letter        : SBTWO
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.SBTWO.RD;

-- List of bridges used
with SBTWO_RPT6_Domain_Test_Start_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body SBTWO_SBTWO4_Create_Report_Data_Service is
   
   procedure SBTWO_SBTWO4_Create_Report_Data is
      
      old_report : Root_Object.Object_Access;
      My_Report  : Root_Object.Object_Access;
      
   begin
   -- start of SBTWO4_Create_Report_Data
      
      --  Find out of there already is one of these.
      --  It is not inconceivable that a report object still exists from a previous run.
      --  Report objects are not deleted at the end of a run, as certain events may
      --  still be en-queued.
      old_report := Root_Object.SBTWO.RD.Unconditional_Find_One;
      
      if old_report /= Null then
         
         Root_Object.SBTWO.RD.Delete (
            Old_Instance => old_report);
      end if;
      
      My_Report := Root_Object.SBTWO.RD.Create_Unique;
      Root_Object.SBTWO.RD.SBTWO_RD_Type(My_Report.all).Reported_Domain_Number := 0;
      
      
      SBTWO_RPT6_Domain_Test_Start_Bridge.SBTWO_RPT6_Domain_Test_Start (
         This_Domain_Name => "Structure Bridge Two            ");
      
      
   end SBTWO_SBTWO4_Create_Report_Data;
   
end SBTWO_SBTWO4_Create_Report_Data_Service;

--
-- End of file SBTWO_SBTWO4_Create_Report_Data_Service.adb
--
