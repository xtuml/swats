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
--* File Name:               DomainB_NAV5_Enum_Test_Bridge.adb
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
with Root_Object.DomainB.RD;

-- List of services used
with RP_RP2_Test_Failed_Service;
with RP_RP1_Test_Passed_Service;
with RP_RP10_Specify_Requid_Service;
with RP_RP4_Test_Description_Service;
with Function_Calls_Function_Calls7_Nav_Enum_Over_Bridge_Service;
with Find_and_Sets_Find_and_Sets4_Check_Enum_Service;
with Creation_Deletion_Creation_Deletion3_Check_Enum_Service;
with DomainA_DomainA3_Check_Enum_Service;
with DomainB_DomainB7_Check_Enum_Service;
with RP_RP7_Report_Run_Time_Error_Service;

-- List of domain types used
with DomainB_Domain_Types;
use type DomainB_Domain_Types.Test_Enum_Type;
with Function_Calls_Domain_Types;
use type Function_Calls_Domain_Types.Return_Enum_Type;
use type Function_Calls_Domain_Types.New_Enum_Type;
with Find_and_Sets_Domain_Types;
use type Find_and_Sets_Domain_Types.New_Enum_Type;
with Creation_Deletion_Domain_Types;
use type Creation_Deletion_Domain_Types.Test_Enum_Type;
with DomainA_Domain_Types;
use type DomainA_Domain_Types.Test_Enum_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainB_NAV5_Enum_Test_Bridge is
   
   procedure DomainB_NAV5_Enum_Test (
      Test       : in     Application_Types.Base_Integer_Type;
      Enum_Input : in     DomainB_Domain_Types.Test_Enum_Type) is
      
      My_Report : Root_Object.Object_Access;
      
      This_Domain_Number        : Application_Types.Base_Integer_Type := 1;
      The_DomainB_Val           : Application_Types.Base_Integer_Type := 1;
      The_DomainA_Val           : Application_Types.Base_Integer_Type := 1;
      The_Creation_Deletion_Val : Application_Types.Base_Integer_Type := 1;
      The_Find_and_Sets_Val     : Application_Types.Base_Integer_Type := 1;
      
      DomainB_Enum_Val           : DomainB_Domain_Types.Test_Enum_Type                  := DomainB_Domain_Types.Test_Enum_Type_first;
      DomainA_Enum_Val           : DomainA_Domain_Types.Test_Enum_Type                  := DomainA_Domain_Types.Test_Enum_Type_first;
      Creation_Deletion_Enum_Val : Creation_Deletion_Domain_Types.Test_Enum_Type                  := Creation_Deletion_Domain_Types.Test_Enum_Type_first;
      Find_and_Sets_Enum_Val     : Find_and_Sets_Domain_Types.New_Enum_Type                   := Find_and_Sets_Domain_Types.New_Enum_Type_first;
      Function_Calls_Enum_Val    : Function_Calls_Domain_Types.New_Enum_Type                   := Function_Calls_Domain_Types.New_Enum_Type_first;
      The_Function_Calls_Val     : Function_Calls_Domain_Types.Return_Enum_Type                := Function_Calls_Domain_Types.Return_Enum_Type_first;
      
   begin
   -- start of NAV5_Enum_Test
      My_Report := Root_Object.DomainB.RD.Unconditional_Find_One;
      
      if My_Report =  Null then
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "Calling domain has not created R");
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      else
         This_Domain_Number := Root_Object.DomainB.RD.DomainB_RD_type(My_Report.all).Reported_Domain_Number;
         
         
         case Enum_Input is
            when DomainB_Domain_Types.Sly =>
               DomainB_Enum_Val := DomainB_Domain_Types.Sly;
            
            when DomainB_Domain_Types.Sandy =>
               DomainB_Enum_Val := DomainB_Domain_Types.Sandy;
            
            when DomainB_Domain_Types.Wes =>
               DomainB_Enum_Val := DomainB_Domain_Types.Wes;
            
         end case;
         
         
         DomainB_DomainB7_Check_Enum_Service.DomainB_DomainB7_Check_Enum (
            The_Input_Value  => DomainB_Enum_Val,
            The_Return_Value => The_DomainB_Val);
         
--
-- DomainA start _____________________________________________v--DomainA--v_______________________________________________________start DomainA
         
         case Enum_Input is
            when DomainB_Domain_Types.Sly =>
               DomainA_Enum_Val := DomainA_Domain_Types.Sly;
            
            when DomainB_Domain_Types.Sandy =>
               DomainA_Enum_Val := DomainA_Domain_Types.Sandy;
            
            when DomainB_Domain_Types.Wes =>
               DomainA_Enum_Val := DomainA_Domain_Types.Wes;
            
         end case; -- end of case Enum_Input
         
         
         DomainA_DomainA3_Check_Enum_Service.DomainA_DomainA3_Check_Enum (
            The_Input_Value  => DomainA_Enum_Val,
            The_Return_Value => The_DomainA_Val);
         
-- DomainA end   _____________________________________________^--DomainA--^_______________________________________________________end   DomainA
--

--
-- Creation_Deletion start _____________________________________________v--Creation_Deletion--v_______________________________________________________start Creation_Deletion
         
         case Enum_Input is
            when DomainB_Domain_Types.Sly =>
               Creation_Deletion_Enum_Val := Creation_Deletion_Domain_Types.Sly;
            
            when DomainB_Domain_Types.Sandy =>
               Creation_Deletion_Enum_Val := Creation_Deletion_Domain_Types.Sandy;
            
            when DomainB_Domain_Types.Wes =>
               Creation_Deletion_Enum_Val := Creation_Deletion_Domain_Types.Wes;
            
         end case; -- end of case Enum_Input
         
         
         Creation_Deletion_Creation_Deletion3_Check_Enum_Service.Creation_Deletion_Creation_Deletion3_Check_Enum (
            The_Input_Value  => Creation_Deletion_Enum_Val,
            The_Return_Value => The_Creation_Deletion_Val);
         
-- Creation_Deletion end   _____________________________________________^--Creation_Deletion--^_______________________________________________________end   Creation_Deletion
--

--
-- Find_and_Sets start _____________________________________________v--Find_and_Sets--v_______________________________________________________start Find_and_Sets
         
         case Enum_Input is
            when DomainB_Domain_Types.Sly =>
               Find_and_Sets_Enum_Val := Find_and_Sets_Domain_Types.Sly;
            
            when DomainB_Domain_Types.Sandy =>
               Find_and_Sets_Enum_Val := Find_and_Sets_Domain_Types.Sandy;
            
            when DomainB_Domain_Types.Wes =>
               Find_and_Sets_Enum_Val := Find_and_Sets_Domain_Types.Wes;
            
         end case; -- end of case Enum_Input
         
         
         Find_and_Sets_Find_and_Sets4_Check_Enum_Service.Find_and_Sets_Find_and_Sets4_Check_Enum (
            The_Input_Value  => Find_and_Sets_Enum_Val,
            The_Return_Value => The_Find_and_Sets_Val);
         
-- Find_and_Sets end   _____________________________________________^--Find_and_Sets--^_______________________________________________________end   Find_and_Sets
--

--
-- Function_Calls start _____________________________________________v--Function_Calls--v_______________________________________________________start Function_Calls
         
         case Enum_Input is
            when DomainB_Domain_Types.Sly =>
               Function_Calls_Enum_Val := Function_Calls_Domain_Types.Sly;
            
            when DomainB_Domain_Types.Sandy =>
               Function_Calls_Enum_Val := Function_Calls_Domain_Types.Sandy;
            
            when DomainB_Domain_Types.Wes =>
               Function_Calls_Enum_Val := Function_Calls_Domain_Types.Wes;
            
         end case; -- end of case Enum_Input
         
         
         Function_Calls_Function_Calls7_Nav_Enum_Over_Bridge_Service.Function_Calls_Function_Calls7_Nav_Enum_Over_Bridge (
            The_Input_Value  => Function_Calls_Enum_Val,
            The_Return_Value => The_Function_Calls_Val);
         
-- Function_Calls end   _____________________________________________^--Function_Calls--^_______________________________________________________end   Function_Calls
--

--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
            Write_Test_Number           => Test,
            Write_Requid                => "1241-0000-01-1102               ",
            Write_Invoker_Domain_Name   => "Domain_B                        ",
            Write_Object                => "Bridge                          ",
            Write_Test_Purpose          => "Check Enumeration across bridge ",
            Write_Invoker_Domain_Number => This_Domain_Number);
         
         RP_RP10_Specify_Requid_Service.RP_RP10_Specify_Requid (
            Requid_Domain_Number => This_Domain_Number,
            Requid_Test_Number   => Test,
            Requid_Identifier    => "1241-0000-01-1107               ");
         
         
         if The_DomainA_Val =  12 then
            
            if The_DomainB_Val =  22 then
               
               if The_Creation_Deletion_Val =  32 then
                  
                  if The_Find_and_Sets_Val =  42 then
                     
                     --                   if The_Function_Calls_Val = 'Sandys_Mum' then
                     
                     RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
                        Passed_Domain            => "Bridge                          ",
                        Passed_Test_Number       => Test,
                        Passed_Test_Result_Value => 42,
                        Passed_Domain_Number     => This_Domain_Number);
                     
                     
                     --                   else
                     --                      [] = RP2::Test_Failed["Bridge", Test, -52, This_Domain_Number]
                     --                   endif
                  else
                     
                     RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
                        Failed_Domain        => "Bridge                          ",
                        the_test_no          => Test,
                        the_test_value       => The_Find_and_Sets_Val,
                        Failed_Domain_Number => This_Domain_Number);
                     
                  end if;
                  
               else
                  RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
                     Failed_Domain        => "Bridge                          ",
                     the_test_no          => Test,
                     the_test_value       => The_Creation_Deletion_Val,
                     Failed_Domain_Number => This_Domain_Number);
                  
               end if;
               
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
      
      
   end DomainB_NAV5_Enum_Test;
   
end DomainB_NAV5_Enum_Test_Bridge;

--
-- End of file DomainB_NAV5_Enum_Test_Bridge.adb
--
