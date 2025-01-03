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
--* File Name:               TT1_create_report_data_Service.adb
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
--* Domain Name              : Test_Timers
--* Domain Key Letter        : TT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.TT.RD;

-- List of bridges used
with TT_RPT6_Domain_Test_Start_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body TT_TT1_create_report_data_Service is
   
   procedure TT_TT1_create_report_data is
      
      the_old_report_data : Root_Object.Object_Access;
      the_new_report_data : Root_Object.Object_Access;
      
   begin
   -- start of TT1_create_report_data
      the_old_report_data := Root_Object.TT.RD.Unconditional_Find_One;
      
      if (the_old_report_data /= Null) then
         
         Root_Object.TT.RD.Delete (
            Old_Instance => the_old_report_data);
      end if;
      
      the_new_report_data := Root_Object.TT.RD.Create_Unique;
      Root_Object.TT.RD.TT_RD_Type(the_new_report_data.all).Reported_Domain_Number := 0;
      
      
      TT_RPT6_Domain_Test_Start_Bridge.TT_RPT6_Domain_Test_Start (
         This_Domain_Name => "Test Timers                     ");
      
      
   end TT_TT1_create_report_data;
   
end TT_TT1_create_report_data_Service;

--
-- End of file TT_TT1_create_report_data_Service.adb
--
