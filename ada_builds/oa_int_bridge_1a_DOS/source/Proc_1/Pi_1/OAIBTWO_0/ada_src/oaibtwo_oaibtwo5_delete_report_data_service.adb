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
--* File Name:               OAIBTWO5_Delete_Report_Data_Service.adb
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
--* Domain Name              : Open_Architecture_Internal_Bridge_Domain_Two
--* Domain Key Letter        : OAIBTWO
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with OAIBTWO_RPT7_Domain_Test_Finished_Bridge;

with Application_Types;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body OAIBTWO_OAIBTWO5_Delete_Report_Data_Service is
   
   procedure OAIBTWO_OAIBTWO5_Delete_Report_Data is
      
   begin
   -- start of OAIBTWO5_Delete_Report_Data
      
      OAIBTWO_RPT7_Domain_Test_Finished_Bridge.OAIBTWO_RPT7_Domain_Test_Finished (
         This_Domain_Name => "OA Internal Bridge Domain Two   ");
      
      
      --  Do not delete the Report_Data object, as there may be still events in
      --  the queue.
      
   end OAIBTWO_OAIBTWO5_Delete_Report_Data;
   
end OAIBTWO_OAIBTWO5_Delete_Report_Data_Service;

--
-- End of file OAIBTWO_OAIBTWO5_Delete_Report_Data_Service.adb
--
