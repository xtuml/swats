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
--* File Name:               TT_RPT2_Test_Passed_Bridge.adb
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
with RP_RP1_Test_Passed_Service;
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body TT_RPT2_Test_Passed_Bridge is
   
   procedure TT_RPT2_Test_Passed (
      Test_Object_Domain : in     Application_Types.Base_Text_Type;
      Test_Number        : in     Application_Types.Base_Integer_Type;
      Test_Value         : in     Application_Types.Base_Integer_Type) is
      
      The_Reporter_Object : Root_Object.Object_Access;
      
      local_test_number : Application_Types.Base_Integer_Type := 1;
      local_test_value  : Application_Types.Base_Integer_Type := 1;
      Unique_Domain_ID  : Application_Types.Base_Integer_Type := 1;
      
      local_object_domain : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of RPT2_Test_Passed
      local_test_number   := Test_Number;
      local_test_value    := Test_Value;
      local_object_domain := Test_Object_Domain;
      
      
      --  Find the reporter object for this domain, there will be only one.
      The_Reporter_Object := Root_Object.TT.RD.Unconditional_Find_One;
      
      if The_Reporter_Object =  Null then
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "TP Calling domain has not create");
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      else
         
         Unique_Domain_ID := Root_Object.TT.RD.TT_RD_type(The_Reporter_Object.all).Reported_Domain_Number;
         
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
            Passed_Domain            => local_object_domain,
            Passed_Test_Number       => local_test_number,
            Passed_Test_Result_Value => local_test_value,
            Passed_Domain_Number     => Unique_Domain_ID);
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
   end TT_RPT2_Test_Passed;
   
end TT_RPT2_Test_Passed_Bridge;

--
-- End of file TT_RPT2_Test_Passed_Bridge.adb
--
