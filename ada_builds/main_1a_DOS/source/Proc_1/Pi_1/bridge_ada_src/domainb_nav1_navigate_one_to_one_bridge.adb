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
--* File Name:               DomainB_NAV1_Navigate_One_to_One_Bridge.adb
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
with Root_Object.DomainA.otors;
with Root_Object.DomainA.otols;
with Root_Object.DomainB.RD;

-- List of relationships used
with DomainA_rel_R1;

-- List of services used
with RP_RP2_Test_Failed_Service;
with RP_RP1_Test_Passed_Service;
with RP_RP10_Specify_Requid_Service;
with RP_RP4_Test_Description_Service;
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainB_NAV1_Navigate_One_to_One_Bridge is
   
   procedure DomainB_NAV1_Navigate_One_to_One (
      Test : in     Application_Types.Base_Integer_Type) is
      
      My_Report    : Root_Object.Object_Access;
      left_side    : Root_Object.Object_Access;
      a_right_side : Root_Object.Object_Access;
      
      This_Domain_Number : Application_Types.Base_Integer_Type := 1;
      Passed_Value       : Application_Types.Base_Integer_Type := 1;
      Failure_Value      : Application_Types.Base_Integer_Type := 1;
      
      Bridge_Test_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of NAV1_Navigate_One_to_One
      
      -- -------------------------------------------------------------------------
      --  Perform a navigation in domainA
      -- -------------------------------------------------------------------------
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
         Bridge_Test_Passed := False;
         Passed_Value       := 0;
         Failure_Value      := -1;
--
-- DomainA start _____________________________________________v--DomainA--v_______________________________________________________start DomainA
         left_side := Root_Object.DomainA.otols.Unconditional_Find_One;
         
         if left_side /= Null then
            
            DomainA_Rel_R1.Navigate (
               From  => left_side,
               Class => Root_Object.DomainA.otors.DomainA_otors_type'tag,
               To    => a_right_side);
            
            
            if a_right_side /= Null then
               Bridge_Test_Passed := True;
               Passed_Value       := Root_Object.DomainA.otors.DomainA_otors_type(a_right_side.all).otors_id;
               
            end if;
            
         else
            
            Failure_Value := -2;
            
         end if;
         
-- DomainA end   _____________________________________________^--DomainA--^_______________________________________________________end   DomainA
--

--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
            Write_Test_Number           => Test,
            Write_Requid                => "1241-0000-01-1102               ",
            Write_Invoker_Domain_Name   => "Domain_B                        ",
            Write_Object                => "DomainB DomainA                 ",
            Write_Test_Purpose          => "one to one nav                  ",
            Write_Invoker_Domain_Number => This_Domain_Number);
         
         RP_RP10_Specify_Requid_Service.RP_RP10_Specify_Requid (
            Requid_Domain_Number => This_Domain_Number,
            Requid_Test_Number   => Test,
            Requid_Identifier    => "1241-0000-01-1104               ");
         
         RP_RP10_Specify_Requid_Service.RP_RP10_Specify_Requid (
            Requid_Domain_Number => This_Domain_Number,
            Requid_Test_Number   => Test,
            Requid_Identifier    => "1241-0000-01-1105               ");
         
         RP_RP10_Specify_Requid_Service.RP_RP10_Specify_Requid (
            Requid_Domain_Number => This_Domain_Number,
            Requid_Test_Number   => Test,
            Requid_Identifier    => "1241-0000-01-1109               ");
         
         RP_RP10_Specify_Requid_Service.RP_RP10_Specify_Requid (
            Requid_Domain_Number => This_Domain_Number,
            Requid_Test_Number   => Test,
            Requid_Identifier    => "1103-0000-01-1311               ");
         
         
         if Bridge_Test_Passed =  True then
            
            RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
               Passed_Domain            => "DomainB DomainA                 ",
               Passed_Test_Number       => Test,
               Passed_Test_Result_Value => Passed_Value,
               Passed_Domain_Number     => This_Domain_Number);
            
         else
            RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
               Failed_Domain        => "DomainB DomainA                 ",
               the_test_no          => Test,
               the_test_value       => Failure_Value,
               Failed_Domain_Number => This_Domain_Number);
            
         end if;
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
   end DomainB_NAV1_Navigate_One_to_One;
   
end DomainB_NAV1_Navigate_One_to_One_Bridge;

--
-- End of file DomainB_NAV1_Navigate_One_to_One_Bridge.adb
--
