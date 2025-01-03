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
--* File Name:               SBONE_RPT1_Start_Test_Bridge.adb
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
with Root_Object.SBONE.RD;

-- List of services used
with RP_RP4_Test_Description_Service;
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body SBONE_RPT1_Start_Test_Bridge is
   
   procedure SBONE_RPT1_Start_Test (
      Test_Number     : in     Application_Types.Base_Integer_Type;
      Requid          : in     Application_Types.Base_Text_Type;
      Invoking_Domain : in     Application_Types.Base_Text_Type;
      Invoking_Object : in     Application_Types.Base_Text_Type;
      Purpose         : in     Application_Types.Base_Text_Type) is
      
      The_Reporter_Object : Root_Object.Object_Access;
      
      local_test_number : Application_Types.Base_Integer_Type := 1;
      Unique_Domain_ID  : Application_Types.Base_Integer_Type := 1;
      
      local_requid          : Application_Types.Base_Text_Type := (others => ' ');
      local_invoking_domain : Application_Types.Base_Text_Type := (others => ' ');
      local_invoking_object : Application_Types.Base_Text_Type := (others => ' ');
      local_purpose         : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of RPT1_Start_Test
      local_test_number     := Test_Number;
      local_requid          := Requid;
      local_invoking_domain := Invoking_Domain;
      local_invoking_object := Invoking_Object;
      local_purpose         := Purpose;
      
      
      --  Find the reporter object for this domain, there will be only one.
      The_Reporter_Object := Root_Object.SBONE.RD.Unconditional_Find_One;
      
      if The_Reporter_Object =  Null then
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "ST Calling domain has not create");
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      else
         
         Unique_Domain_ID := Root_Object.SBONE.RD.SBONE_RD_type(The_Reporter_Object.all).Reported_Domain_Number;
         
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
            Write_Test_Number           => local_test_number,
            Write_Requid                => local_requid,
            Write_Invoker_Domain_Name   => local_invoking_domain,
            Write_Object                => local_invoking_object,
            Write_Test_Purpose          => local_purpose,
            Write_Invoker_Domain_Number => Unique_Domain_ID);
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
   end SBONE_RPT1_Start_Test;
   
end SBONE_RPT1_Start_Test_Bridge;

--
-- End of file SBONE_RPT1_Start_Test_Bridge.adb
--
