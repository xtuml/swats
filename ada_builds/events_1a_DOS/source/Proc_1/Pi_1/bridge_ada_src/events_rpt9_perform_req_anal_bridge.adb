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
--* File Name:               Events_RPT9_Perform_Req_Anal_Bridge.adb
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
--*  Project Key Letter : Events_BSet
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of services used
with RP_RP11_Perform_Req_Analysis_Service;


with Root_Object;
use type Root_Object.Object_Access;


package body Events_RPT9_Perform_Req_Anal_Bridge is
   
   procedure Events_RPT9_Perform_Req_Anal is
      
   begin
   -- start of RPT9_Perform_Req_Anal
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
      
      RP_RP11_Perform_Req_Analysis_Service.RP_RP11_Perform_Req_Analysis;
      
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      
   end Events_RPT9_Perform_Req_Anal;
   
end Events_RPT9_Perform_Req_Anal_Bridge;

--
-- End of file Events_RPT9_Perform_Req_Anal_Bridge.adb
--
