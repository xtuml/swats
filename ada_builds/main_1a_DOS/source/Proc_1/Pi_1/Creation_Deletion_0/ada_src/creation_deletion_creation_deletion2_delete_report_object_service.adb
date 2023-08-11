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
--* File Name:               Creation_Deletion2_Delete_Report_Object_Service.adb
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
--* Domain Name              : Creation_Deletion
--* Domain Key Letter        : Creation_Deletion
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Creation_Deletion.RD;

-- List of bridges used
with Creation_Deletion_RPT7_Domain_Test_Finished_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Creation_Deletion_Creation_Deletion2_Delete_Report_Object_Service is
   
   procedure Creation_Deletion_Creation_Deletion2_Delete_Report_Object is
      
      This_Report : Root_Object.Object_Access;
      
      This_Domain_Identifier : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of Creation_Deletion2_Delete_Report_Object
      This_Report := Root_Object.Creation_Deletion.RD.Unconditional_Find_One;
      
      if This_Report /= Null then
         This_Domain_Identifier := Root_Object.Creation_Deletion.RD.Creation_Deletion_RD_type(This_Report.all).Reported_Domain_Number;
      else
         This_Domain_Identifier := -1;
         
      end if;
      
      
      Creation_Deletion_RPT7_Domain_Test_Finished_Bridge.Creation_Deletion_RPT7_Domain_Test_Finished (
         This_Domain_Name   => "Creation Deletion               ",
         This_Domain_Number => This_Domain_Identifier);
      
      
      --  Do not delete the Report_Data object, as there may be still events in
      --  the queue.
      
   end Creation_Deletion_Creation_Deletion2_Delete_Report_Object;
   
end Creation_Deletion_Creation_Deletion2_Delete_Report_Object_Service;

--
-- End of file Creation_Deletion_Creation_Deletion2_Delete_Report_Object_Service.adb
--
