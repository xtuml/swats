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
--* File Name:               TT_RPT7_Domain_Test_Finished_Bridge.adb
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
--*  Project Key Letter : Main_Build_Set
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.TT.RD;

-- List of services used
with RP_RP8_Domain_Tests_Have_Finished_Service;
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body TT_RPT7_Domain_Test_Finished_Bridge is
   
   procedure TT_RPT7_Domain_Test_Finished (
      This_Domain_Name : in     Application_Types.Base_Text_Type) is
      
      My_Report : Root_Object.Object_Access;
      
      local_domain_number : Application_Types.Base_Integer_Type := 1;
      
      local_text : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of RPT7_Domain_Test_Finished
      local_text := This_Domain_Name;
      
      My_Report := Root_Object.TT.RD.Unconditional_Find_One;
      
      if My_Report =  Null then
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "DTF Calling domain has not creat");
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      else
         
         local_domain_number := Root_Object.TT.RD.TT_RD_type(My_Report.all).Reported_Domain_Number;
         
      end if;
      
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
      
      RP_RP8_Domain_Tests_Have_Finished_Service.RP_RP8_Domain_Tests_Have_Finished (
         Completed_Domain_Name => local_text,
         Domain_Identifer      => local_domain_number);
      
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      
   end TT_RPT7_Domain_Test_Finished;
   
end TT_RPT7_Domain_Test_Finished_Bridge;

--
-- End of file TT_RPT7_Domain_Test_Finished_Bridge.adb
--
