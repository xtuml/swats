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
--* File Name:               UDT3_Create_Report_Data_Service.adb
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
with Root_Object.UDT.RD;

-- List of bridges used
with UDT_RPT6_Domain_Test_Start_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_UDT3_Create_Report_Data_Service is
   
   procedure UDT_UDT3_Create_Report_Data is
      
      old_report : Root_Object.Object_Access;
      My_Report  : Root_Object.Object_Access;
      
   begin
   -- start of UDT3_Create_Report_Data
      
      --  Find out of there already is one of these.
      --  It is not inconceivable that a report object still exists from a previous run.
      --  Report objects are not deleted at the end of a run, as certain events may
      --  still be en-queued.
      old_report := Root_Object.UDT.RD.Unconditional_Find_One;
      
      if old_report /= Null then
         
         Root_Object.UDT.RD.Delete (
            Old_Instance => old_report);
      end if;
      
      My_Report := Root_Object.UDT.RD.Create_Unique;
      Root_Object.UDT.RD.UDT_RD_Type(My_Report.all).Reported_Domain_Number := 0;
      
      
      UDT_RPT6_Domain_Test_Start_Bridge.UDT_RPT6_Domain_Test_Start (
         This_Domain_Name => "User Defined Types              ");
      
      
   end UDT_UDT3_Create_Report_Data;
   
end UDT_UDT3_Create_Report_Data_Service;

--
-- End of file UDT_UDT3_Create_Report_Data_Service.adb
--
