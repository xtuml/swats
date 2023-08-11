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
--* File Name:               DomainB6_Delete_Report_Data_Service.adb
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
--* Domain Name              : DomainB
--* Domain Key Letter        : DomainB
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with DomainB_RPT7_Domain_Test_Finished_Bridge;

with Application_Types;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainB_DomainB6_Delete_Report_Data_Service is
   
   procedure DomainB_DomainB6_Delete_Report_Data is
      
   begin
   -- start of DomainB6_Delete_Report_Data
      
      DomainB_RPT7_Domain_Test_Finished_Bridge.DomainB_RPT7_Domain_Test_Finished (
         This_Domain_Name => "Domain B                        ");
      
      
      --  Do not delete the Report_Data object, as there may be still events in
      --  the queue.
      
   end DomainB_DomainB6_Delete_Report_Data;
   
end DomainB_DomainB6_Delete_Report_Data_Service;

--
-- End of file DomainB_DomainB6_Delete_Report_Data_Service.adb
--
