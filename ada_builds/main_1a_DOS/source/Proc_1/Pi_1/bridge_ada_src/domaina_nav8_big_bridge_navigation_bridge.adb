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
--* File Name:               DomainA_NAV8_Big_Bridge_Navigation_Bridge.adb
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
with Root_Object.DomainA.RD;

-- List of services used
with RP_RP2_Test_Failed_Service;
with RP_RP1_Test_Passed_Service;
with RP_RP10_Specify_Requid_Service;
with RP_RP4_Test_Description_Service;
with Function_Calls_Function_Calls7_Nav_Enum_Over_Bridge_Service;
with Find_and_Sets_Find_and_Sets4_Check_Enum_Service;
with Creation_Deletion_Creation_Deletion3_Check_Enum_Service;
with DomainB_DomainB7_Check_Enum_Service;
with DomainA_DomainA3_Check_Enum_Service;
with RP_RP7_Report_Run_Time_Error_Service;

-- List of domain types used
with DomainA_Domain_Types;
use type DomainA_Domain_Types.Test_Enum_Type;
with Function_Calls_Domain_Types;
use type Function_Calls_Domain_Types.Return_Enum_Type;
use type Function_Calls_Domain_Types.New_Enum_Type;
with Find_and_Sets_Domain_Types;
use type Find_and_Sets_Domain_Types.New_Enum_Type;
with Creation_Deletion_Domain_Types;
use type Creation_Deletion_Domain_Types.Test_Enum_Type;
with DomainB_Domain_Types;
use type DomainB_Domain_Types.Test_Enum_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainA_NAV8_Big_Bridge_Navigation_Bridge is
   
   procedure DomainA_NAV8_Big_Bridge_Navigation (
      Test       : in     Application_Types.Base_Integer_Type;
      Enum_Input : in     DomainA_Domain_Types.Test_Enum_Type) is
      
      My_Report : Root_Object.Object_Access;
      
      This_Domain_Number    : Application_Types.Base_Integer_Type := 1;
      Which_Domain          : Application_Types.Base_Integer_Type := 1;
      Total_Val             : Application_Types.Base_Integer_Type := 1;
      DomainA_Val           : Application_Types.Base_Integer_Type := 1;
      DomainB_Val           : Application_Types.Base_Integer_Type := 1;
      Creation_Deletion_Val : Application_Types.Base_Integer_Type := 1;
      Find_and_Sets_Val     : Application_Types.Base_Integer_Type := 1;
      
      DomainA_Enum_Val           : DomainA_Domain_Types.Test_Enum_Type                  := DomainA_Domain_Types.Test_Enum_Type_first;
      DomainB_Enum_Val           : DomainB_Domain_Types.Test_Enum_Type                  := DomainB_Domain_Types.Test_Enum_Type_first;
      Creation_Deletion_Enum_Val : Creation_Deletion_Domain_Types.Test_Enum_Type                  := Creation_Deletion_Domain_Types.Test_Enum_Type_first;
      Func_Calls_Val             : Function_Calls_Domain_Types.Return_Enum_Type                := Function_Calls_Domain_Types.Return_Enum_Type_first;
      
   begin
   -- start of NAV8_Big_Bridge_Navigation
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
         Total_Val          := 0;
         
         
         loop
            
            Which_Domain := Which_Domain + 1;
            
            
            case Which_Domain is
               when 1 =>
                  
                  DomainA_DomainA3_Check_Enum_Service.DomainA_DomainA3_Check_Enum (
                     The_Input_Value  => DomainA_Domain_Types.Sly,
                     The_Return_Value => DomainA_Val);
                  
                  
                  if DomainA_Val =  11 then
                     
                     Total_Val := Total_Val + DomainA_Val;
                     
                  else
                     
                     Which_Domain := 7;
                     Total_Val    := DomainA_Val;
                     
                  end if;
                  
               
               -- end of when Which_Domain = 1
               
               when 2 =>
                  
                  case Enum_Input is
                     when DomainA_Domain_Types.Sly =>
                        DomainA_Enum_Val := DomainA_Domain_Types.Sly;
                     
                     when DomainA_Domain_Types.Sandy =>
                        DomainA_Enum_Val := DomainA_Domain_Types.Sandy;
                     
                     when DomainA_Domain_Types.Wes =>
                        DomainA_Enum_Val := DomainA_Domain_Types.Wes;
                     
                  end case; -- end of case Enum_Input
                  
--
-- DomainB start _____________________________________________v--DomainB--v_______________________________________________________start DomainB
                  
                  case Enum_Input is
                     when DomainA_Domain_Types.Sly =>
                        DomainB_Enum_Val := DomainB_Domain_Types.Sly;
                     
                     when DomainA_Domain_Types.Sandy =>
                        DomainB_Enum_Val := DomainB_Domain_Types.Sandy;
                     
                     when DomainA_Domain_Types.Wes =>
                        DomainB_Enum_Val := DomainB_Domain_Types.Wes;
                     
                  end case; -- end of case Enum_Input
                  
                  
                  DomainB_DomainB7_Check_Enum_Service.DomainB_DomainB7_Check_Enum (
                     The_Input_Value  => DomainB_Enum_Val,
                     The_Return_Value => DomainB_Val);
                  
-- DomainB end   _____________________________________________^--DomainB--^_______________________________________________________end   DomainB
--

                  
                  DomainA_DomainA3_Check_Enum_Service.DomainA_DomainA3_Check_Enum (
                     The_Input_Value  => DomainA_Enum_Val,
                     The_Return_Value => DomainA_Val);
                  
                  
                  if DomainB_Val =  22 then
                     
                     Total_Val := Total_Val + DomainB_Val;
                     
                     if DomainA_Val =  12 then
                        Total_Val := Total_Val + DomainA_Val;
                        
                     else
                        
                        Total_Val    := DomainA_Val;
                        Which_Domain := 7;
                     end if;
                     
                  else
                     Total_Val := DomainB_Val;
                     Which_Domain := 7;
                     
                  end if;
                  
               
               -- end of when Which_Domain = 2
               
               when 3 =>
--
-- Creation_Deletion start _____________________________________________v--Creation_Deletion--v_______________________________________________________start Creation_Deletion
                  
                  Creation_Deletion_Creation_Deletion3_Check_Enum_Service.Creation_Deletion_Creation_Deletion3_Check_Enum (
                     The_Input_Value  => Creation_Deletion_Domain_Types.Sly,
                     The_Return_Value => Creation_Deletion_Val);
                  
-- Creation_Deletion end   _____________________________________________^--Creation_Deletion--^_______________________________________________________end   Creation_Deletion
--

                  
                  if Creation_Deletion_Val =  31 then
                     
                     Total_Val := Total_Val + Creation_Deletion_Val;
                     
                  else
                     
                     Total_Val    := Creation_Deletion_Val;
                     Which_Domain := 7;
                     
                  end if;
                  
               
               -- end of when Which_Domain = 3
               
               when 4 =>
--
-- Find_and_Sets start _____________________________________________v--Find_and_Sets--v_______________________________________________________start Find_and_Sets
                  
                  Find_and_Sets_Find_and_Sets4_Check_Enum_Service.Find_and_Sets_Find_and_Sets4_Check_Enum (
                     The_Input_Value  => Find_and_Sets_Domain_Types.Sly,
                     The_Return_Value => Find_and_Sets_Val);
                  
-- Find_and_Sets end   _____________________________________________^--Find_and_Sets--^_______________________________________________________end   Find_and_Sets
--

--
-- Creation_Deletion start _____________________________________________v--Creation_Deletion--v_______________________________________________________start Creation_Deletion
                  
                  Creation_Deletion_Creation_Deletion3_Check_Enum_Service.Creation_Deletion_Creation_Deletion3_Check_Enum (
                     The_Input_Value  => Creation_Deletion_Domain_Types.Sandy,
                     The_Return_Value => Creation_Deletion_Val);
                  
-- Creation_Deletion end   _____________________________________________^--Creation_Deletion--^_______________________________________________________end   Creation_Deletion
--

                  
                  if Find_and_Sets_Val =  41 then
                     
                     Total_Val := Total_Val + Find_and_Sets_Val;
                     
                     if Creation_Deletion_Val =  32 then
                        Total_Val := Total_Val + Creation_Deletion_Val;
                        
                     else
                        
                        Total_Val    := Creation_Deletion_Val;
                        Which_Domain := 7;
                     end if;
                     
                  else
                     Total_Val := Find_and_Sets_Val;
                     Which_Domain := 7;
                     
                  end if;
                  
               
               -- end of when Which_Domain = 4
               
               when 5 =>
--
-- Creation_Deletion start _____________________________________________v--Creation_Deletion--v_______________________________________________________start Creation_Deletion
                  
                  case Enum_Input is
                     when DomainA_Domain_Types.Sly =>
                        Creation_Deletion_Enum_Val := Creation_Deletion_Domain_Types.Sly;
                     
                     when DomainA_Domain_Types.Sandy =>
                        Creation_Deletion_Enum_Val := Creation_Deletion_Domain_Types.Sandy;
                     
                     when DomainA_Domain_Types.Wes =>
                        Creation_Deletion_Enum_Val := Creation_Deletion_Domain_Types.Wes;
                     
                  end case; -- end of case Enum_Input
                  
                  
                  Creation_Deletion_Creation_Deletion3_Check_Enum_Service.Creation_Deletion_Creation_Deletion3_Check_Enum (
                     The_Input_Value  => Creation_Deletion_Enum_Val,
                     The_Return_Value => Creation_Deletion_Val);
                  
-- Creation_Deletion end   _____________________________________________^--Creation_Deletion--^_______________________________________________________end   Creation_Deletion
--

--
-- DomainB start _____________________________________________v--DomainB--v_______________________________________________________start DomainB
                  
                  case Enum_Input is
                     when DomainA_Domain_Types.Sly =>
                        DomainB_Enum_Val := DomainB_Domain_Types.Sly;
                     
                     when DomainA_Domain_Types.Sandy =>
                        DomainB_Enum_Val := DomainB_Domain_Types.Sandy;
                     
                     when DomainA_Domain_Types.Wes =>
                        DomainB_Enum_Val := DomainB_Domain_Types.Wes;
                     
                  end case; -- end of case Enum_Input
                  
                  
                  DomainB_DomainB7_Check_Enum_Service.DomainB_DomainB7_Check_Enum (
                     The_Input_Value  => DomainB_Enum_Val,
                     The_Return_Value => DomainB_Val);
                  
-- DomainB end   _____________________________________________^--DomainB--^_______________________________________________________end   DomainB
--

                  
                  case Enum_Input is
                     when DomainA_Domain_Types.Sly =>
                        DomainA_Enum_Val := DomainA_Domain_Types.Sly;
                     
                     when DomainA_Domain_Types.Sandy =>
                        DomainA_Enum_Val := DomainA_Domain_Types.Sandy;
                     
                     when DomainA_Domain_Types.Wes =>
                        DomainA_Enum_Val := DomainA_Domain_Types.Wes;
                     
                  end case; -- end of case Enum_Input
                  
                  
                  DomainA_DomainA3_Check_Enum_Service.DomainA_DomainA3_Check_Enum (
                     The_Input_Value  => DomainA_Enum_Val,
                     The_Return_Value => DomainA_Val);
                  
                  
                  if Creation_Deletion_Val =  32 then
                     
                     Total_Val := Total_Val + Creation_Deletion_Val;
                     
                     if DomainB_Val =  22 then
                        Total_Val := Total_Val + DomainB_Val;
                        
                        if DomainA_Val =  12 then
                           Total_Val := Total_Val + DomainA_Val;
                           
                        else
                           
                           Total_Val    := DomainA_Val;
                           Which_Domain := 7;
                        end if;
                        
                     else
                        Total_Val := DomainB_Val;
                        Which_Domain := 7;
                     end if;
                     
                  else
                     Total_Val := Creation_Deletion_Val;
                     Which_Domain := 7;
                     
                  end if;
                  
               
               -- end of when Which_Domain = 5
               
               when 6 =>
--
-- Function_Calls start _____________________________________________v--Function_Calls--v_______________________________________________________start Function_Calls
                  
                  Function_Calls_Function_Calls7_Nav_Enum_Over_Bridge_Service.Function_Calls_Function_Calls7_Nav_Enum_Over_Bridge (
                     The_Input_Value  => Function_Calls_Domain_Types.Sly,
                     The_Return_Value => Func_Calls_Val);
                  
                  
                  if Func_Calls_Val =  Function_Calls_Domain_Types.Slys_Mum then
                     
                     Total_Val := Total_Val + 51;
                     
                  else
                     
                     Total_Val    := -51;
                     Which_Domain := 7;
                  end if;
                  
-- Function_Calls end   _____________________________________________^--Function_Calls--^_______________________________________________________end   Function_Calls
--

               
               -- end of when Which_Domain = 6
               
               when others =>
                  Which_Domain := Which_Domain + 1;
                  
               
            end case; -- end of case Which_Domain
            
            exit when Which_Domain >  5;
         end loop;
         
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
            Write_Test_Number           => Test,
            Write_Requid                => "1241-0000-01-1102               ",
            Write_Invoker_Domain_Name   => "Domain_A                        ",
            Write_Object                => "Bridge                          ",
            Write_Test_Purpose          => "Enumeration across lots of bridg",
            Write_Invoker_Domain_Number => This_Domain_Number);
         
         RP_RP10_Specify_Requid_Service.RP_RP10_Specify_Requid (
            Requid_Domain_Number => This_Domain_Number,
            Requid_Test_Number   => Test,
            Requid_Identifier    => "1241-0000-01-1107               ");
         
         
         case Total_Val is
            when 266 =>
               
               RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
                  Passed_Domain            => "Bridge                          ",
                  Passed_Test_Number       => Test,
                  Passed_Test_Result_Value => Total_Val,
                  Passed_Domain_Number     => This_Domain_Number);
               
            
            when -11 =>
               
               RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
                  Failed_Domain        => "Bridge                          ",
                  the_test_no          => Test,
                  the_test_value       => -11,
                  Failed_Domain_Number => This_Domain_Number);
               
            
            when -21 =>
               
               RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
                  Failed_Domain        => "Bridge                          ",
                  the_test_no          => Test,
                  the_test_value       => -21,
                  Failed_Domain_Number => This_Domain_Number);
               
            
            when -31 =>
               
               RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
                  Failed_Domain        => "Bridge                          ",
                  the_test_no          => Test,
                  the_test_value       => -31,
                  Failed_Domain_Number => This_Domain_Number);
               
            
            when -41 =>
               
               RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
                  Failed_Domain        => "Bridge                          ",
                  the_test_no          => Test,
                  the_test_value       => -41,
                  Failed_Domain_Number => This_Domain_Number);
               
            
            when -51 =>
               
               RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
                  Failed_Domain        => "Bridge                          ",
                  the_test_no          => Test,
                  the_test_value       => -51,
                  Failed_Domain_Number => This_Domain_Number);
               
            
            when others =>
               
               RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
                  Failed_Domain        => "Bridge                          ",
                  the_test_no          => Test,
                  the_test_value       => -51,
                  Failed_Domain_Number => This_Domain_Number);
               
            
         end case; -- end of case Total_Val
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
   end DomainA_NAV8_Big_Bridge_Navigation;
   
end DomainA_NAV8_Big_Bridge_Navigation_Bridge;

--
-- End of file DomainA_NAV8_Big_Bridge_Navigation_Bridge.adb
--
