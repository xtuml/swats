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
--* File Name:               DomainA_NAV7_Enum_Test_Bridge.adb
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
with Root_Object.DomainA.RD;

-- List of services used
with RP_RP2_Test_Failed_Service;
with RP_RP1_Test_Passed_Service;
with RP_RP4_Test_Description_Service;
with DomainB_DomainB7_Check_Enum_Service;
with DomainA_DomainA3_Check_Enum_Service;
with RP_RP7_Report_Run_Time_Error_Service;

-- List of domain types used
with DomainA_Domain_Types;
use type DomainA_Domain_Types.Test_Enum_Type;
with DomainB_Domain_Types;
use type DomainB_Domain_Types.Test_Enum_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainA_NAV7_Enum_Test_Bridge is
   
   procedure DomainA_NAV7_Enum_Test (
      Test       : in     Application_Types.Base_Integer_Type;
      Enum_Input : in     DomainA_Domain_Types.Test_Enum_Type) is
      
      My_Report : Root_Object.Object_Access;
      
      This_Domain_Number : Application_Types.Base_Integer_Type := 1;
      Which_Domain       : Application_Types.Base_Integer_Type := 1;
      The_DomainA_Val    : Application_Types.Base_Integer_Type := 1;
      The_DomainB_Val    : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of NAV7_Enum_Test
      My_Report := Root_Object.DomainA.RD.Unconditional_Find_One;
      
      if My_Report =  Null then
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "Calling domain has not created R");
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      else
         This_Domain_Number := Root_Object.DomainA.RD.DomainA_RD_type(My_Report.all).Reported_Domain_Number;
         Which_Domain       := 0;
         
         
         loop
            
            Which_Domain := Which_Domain + 1;
            
            case Which_Domain is
               when 1 =>
                  
                  DomainA_DomainA3_Check_Enum_Service.DomainA_DomainA3_Check_Enum (
                     The_Input_Value  => DomainA_Domain_Types.Sly,
                     The_Return_Value => The_DomainA_Val);
                  
               
               when 2 =>
--
-- DomainB start _____________________________________________v--DomainB--v_______________________________________________________start DomainB
                  
                  DomainB_DomainB7_Check_Enum_Service.DomainB_DomainB7_Check_Enum (
                     The_Input_Value  => DomainB_Domain_Types.Sandy,
                     The_Return_Value => The_DomainB_Val);
                  
-- DomainB end   _____________________________________________^--DomainB--^_______________________________________________________end   DomainB
--

               
               -- end of when Which_Domain = 2
               
               when others =>
                  Which_Domain := Which_Domain + 1;
                  
               
            end case;
            
            exit when Which_Domain >  1;
         end loop;
         
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
            Write_Test_Number           => Test,
            Write_Requid                => "Null Requid                     ",
            Write_Invoker_Domain_Name   => "Domain_A                        ",
            Write_Object                => "Bridge                          ",
            Write_Test_Purpose          => "Check Enumeration across bridge ",
            Write_Invoker_Domain_Number => This_Domain_Number);
         
         
         if The_DomainA_Val =  11 then
            
            if The_DomainB_Val =  22 then
               
               RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
                  Passed_Domain            => "Bridge                          ",
                  Passed_Test_Number       => Test,
                  Passed_Test_Result_Value => The_DomainB_Val,
                  Passed_Domain_Number     => This_Domain_Number);
               
            else
               RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
                  Failed_Domain        => "Bridge                          ",
                  the_test_no          => Test,
                  the_test_value       => The_DomainB_Val,
                  Failed_Domain_Number => This_Domain_Number);
               
            end if;
            
         else
            RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
               Failed_Domain        => "Bridge                          ",
               the_test_no          => Test,
               the_test_value       => The_DomainA_Val,
               Failed_Domain_Number => This_Domain_Number);
            
         end if;
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
   end DomainA_NAV7_Enum_Test;
   
end DomainA_NAV7_Enum_Test_Bridge;

--
-- End of file DomainA_NAV7_Enum_Test_Bridge.adb
--
