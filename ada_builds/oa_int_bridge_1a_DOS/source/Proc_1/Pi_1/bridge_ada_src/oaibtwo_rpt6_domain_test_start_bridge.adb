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
--* File Name:               OAIBTWO_RPT6_Domain_Test_Start_Bridge.adb
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
--*  Project Key Letter : OAIB_BSet
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
with Root_Object.OAIBTWO.RD;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;
with RP_RP6_Create_New_Domain_Test_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body OAIBTWO_RPT6_Domain_Test_Start_Bridge is
   
   procedure OAIBTWO_RPT6_Domain_Test_Start (
      This_Domain_Name : in     Application_Types.Base_Text_Type) is
      
      My_Report : Root_Object.Object_Access;
      
      New_Domain_Number : Application_Types.Base_Integer_Type := 1;
      
      local_text : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of RPT6_Domain_Test_Start
      local_text := This_Domain_Name;
      
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
      
      RP_RP6_Create_New_Domain_Test_Service.RP_RP6_Create_New_Domain_Test (
         Invoker_Domain_Name      => local_text,
         Domain_Unique_Identifier => New_Domain_Number);
      
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      
      --  Can't create in a bridge, so find this object and update it. Rely on the invoker
      --  domain to have created this object prior to this call.
      My_Report := Root_Object.OAIBTWO.RD.Unconditional_Find_One;
      
      if My_Report =  Null then
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "DTS Calling domain has not creat");
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      else
         
         Root_Object.OAIBTWO.RD.OAIBTWO_RD_type(My_Report.all).Reported_Domain_Number := New_Domain_Number;
         
      end if;
      
      
   end OAIBTWO_RPT6_Domain_Test_Start;
   
end OAIBTWO_RPT6_Domain_Test_Start_Bridge;

--
-- End of file OAIBTWO_RPT6_Domain_Test_Start_Bridge.adb
--
