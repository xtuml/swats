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
--* File Name:               UDT_BTF5_Timer_Enum_Across_Bridge_Bridge.adb
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
--*  Project Key Letter : UDT_BSet
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
with Root_Object.UDT.RD;

-- List of services used
with RP_RP2_Test_Failed_Service;
with RP_RP1_Test_Passed_Service;
with RP_RP4_Test_Description_Service;
with UDT_UDT9_Create_A_Timer_Enumeration_Service;
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_BTF5_Timer_Enum_Across_Bridge_Bridge is
   
   procedure UDT_BTF5_Timer_Enum_Across_Bridge (
      Test : in     Application_Types.Base_Integer_Type) is
      
      My_Report : Root_Object.Object_Access;
      
      This_Domain_Number : Application_Types.Base_Integer_Type := 1;
      The_First_Val      : Application_Types.Base_Integer_Type := 1;
      The_Second_Val     : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of BTF5_Timer_Enum_Across_Bridge
      My_Report := Root_Object.UDT.RD.Unconditional_Find_One;
      
      if My_Report =  Null then
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "Calling domain has not created R");
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      else
         This_Domain_Number := Root_Object.UDT.RD.UDT_RD_type(My_Report.all).Reported_Domain_Number;
         
         
         UDT_UDT9_Create_A_Timer_Enumeration_Service.UDT_UDT9_Create_A_Timer_Enumeration (
            The_Timer_Enum   => Application_Types.MILLISECOND,
            The_Return_Value => The_First_Val);
         
         UDT_UDT9_Create_A_Timer_Enumeration_Service.UDT_UDT9_Create_A_Timer_Enumeration (
            The_Timer_Enum   => Application_Types.SECOND,
            The_Return_Value => The_Second_Val);
         
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
            Write_Test_Number           => Test,
            Write_Requid                => "Null Requid                     ",
            Write_Invoker_Domain_Name   => "UDT                             ",
            Write_Object                => "Bridge                          ",
            Write_Test_Purpose          => "Check Enumeration across bridge ",
            Write_Invoker_Domain_Number => This_Domain_Number);
         
         
         if The_First_Val =  1 then
            
            if The_Second_Val =  2 then
               
               RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
                  Passed_Domain            => "Bridge                          ",
                  Passed_Test_Number       => Test,
                  Passed_Test_Result_Value => The_Second_Val,
                  Passed_Domain_Number     => This_Domain_Number);
               
            else
               RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
                  Passed_Domain            => "Bridge                          ",
                  Passed_Test_Number       => Test,
                  Passed_Test_Result_Value => The_First_Val,
                  Passed_Domain_Number     => This_Domain_Number);
               
            end if;
            
         else
            RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
               Failed_Domain        => "Bridge                          ",
               the_test_no          => Test,
               the_test_value       => The_First_Val,
               Failed_Domain_Number => This_Domain_Number);
            
         end if;
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
   end UDT_BTF5_Timer_Enum_Across_Bridge;
   
end UDT_BTF5_Timer_Enum_Across_Bridge_Bridge;

--
-- End of file UDT_BTF5_Timer_Enum_Across_Bridge_Bridge.adb
--
