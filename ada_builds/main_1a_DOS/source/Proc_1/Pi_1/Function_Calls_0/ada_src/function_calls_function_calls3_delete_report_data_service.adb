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
--* File Name:               Function_Calls3_Delete_Report_Data_Service.adb
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
--* Domain Name              : Function_Calls
--* Domain Key Letter        : Function_Calls
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with Function_Calls_RPT7_Domain_Test_Finished_Bridge;
with Function_Calls_RPT5_Test_Text_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_Function_Calls3_Delete_Report_Data_Service is
   
   procedure Function_Calls_Function_Calls3_Delete_Report_Data is
      
   begin
   -- start of Function_Calls3_Delete_Report_Data
      
      Function_Calls_RPT5_Test_Text_Bridge.Function_Calls_RPT5_Test_Text (
         Test_Number => 0,
         Free_Text   => "Test Finished                   ");
      
      Function_Calls_RPT7_Domain_Test_Finished_Bridge.Function_Calls_RPT7_Domain_Test_Finished (
         This_Domain_Name => "Function Calls                  ");
      
      
      --  Do not delete the Report_Data object, as there may be still events in
      --  the queue.
      
   end Function_Calls_Function_Calls3_Delete_Report_Data;
   
end Function_Calls_Function_Calls3_Delete_Report_Data_Service;

--
-- End of file Function_Calls_Function_Calls3_Delete_Report_Data_Service.adb
--
