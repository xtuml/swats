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
--* File Name:               SBTWO_RPT4_Test_Unsupported_Bridge.adb
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
--*  Project Key Letter : Main_BSet
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
with Root_Object.SBTWO.RD;

-- List of services used
with RP_RP3_Test_Unsupported_Service;
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body SBTWO_RPT4_Test_Unsupported_Bridge is
   
   procedure SBTWO_RPT4_Test_Unsupported (
      Unsupported_Test_Number : in     Application_Types.Base_Integer_Type) is
      
      The_Reporter_Object : Root_Object.Object_Access;
      
      local_test_number : Application_Types.Base_Integer_Type := 1;
      Unique_Domain_ID  : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of RPT4_Test_Unsupported
      local_test_number := Unsupported_Test_Number;
      
      
      --  Find the reporter object for this domain, there will be only one.
      The_Reporter_Object := Root_Object.SBTWO.RD.Unconditional_Find_One;
      
      if The_Reporter_Object =  Null then
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "TU Calling domain has not create");
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      else
         
         Unique_Domain_ID := Root_Object.SBTWO.RD.SBTWO_RD_type(The_Reporter_Object.all).Reported_Domain_Number;
         
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP3_Test_Unsupported_Service.RP_RP3_Test_Unsupported (
            Unsupported_Test_Number   => local_test_number,
            Unsupported_Domain_Number => Unique_Domain_ID);
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
   end SBTWO_RPT4_Test_Unsupported;
   
end SBTWO_RPT4_Test_Unsupported_Bridge;

--
-- End of file SBTWO_RPT4_Test_Unsupported_Bridge.adb
--
