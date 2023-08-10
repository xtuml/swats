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
--* File Name:               DomainA_NAV3_One_to_One_Navigate_Bridge.adb
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
with Root_Object.DomainA.RD;

-- List of relationships used
with DomainA_rel_R1;

-- List of services used
with RP_RP2_Test_Failed_Service;
with RP_RP1_Test_Passed_Service;
with RP_RP4_Test_Description_Service;
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainA_NAV3_One_to_One_Navigate_Bridge is
   
   procedure DomainA_NAV3_One_to_One_Navigate (
      Test : in     Application_Types.Base_Integer_Type) is
      
      My_Report    : Root_Object.Object_Access;
      left_side    : Root_Object.Object_Access;
      a_right_side : Root_Object.Object_Access;
      
      Passed_Value       : Application_Types.Base_Integer_Type := 1;
      Failure_Value      : Application_Types.Base_Integer_Type := 1;
      This_Domain_Number : Application_Types.Base_Integer_Type := 1;
      
      Bridge_Test_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of NAV3_One_to_One_Navigate
      
      --  Perform a navigation in THIS domain
      Bridge_Test_Passed := False;
      Passed_Value       := 0;
      Failure_Value      := -1;
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
         left_side := Root_Object.DomainA.otols.Conditional_Find_One;
         while (left_side /= null) and then (not (Root_Object.DomainA.otols.DomainA_otols_Type(left_side.all).otols_id =  Test) ) loop
            
            left_side := left_side.Next_Object;
         end loop;
         
         
         if left_side /= Null then
            
            DomainA_Rel_R1.Navigate (
               From  => left_side,
               Class => Root_Object.DomainA.otors.DomainA_otors_type'tag,
               To    => a_right_side);
            
            
            if Root_Object.DomainA.otors.DomainA_otors_type(a_right_side.all).otors_id =  Test then
               Bridge_Test_Passed := True;
               Passed_Value       := Root_Object.DomainA.otors.DomainA_otors_type(a_right_side.all).otors_id;
               
            end if;
            
         else
            
            Failure_Value := -2;
            
         end if;
         
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
            Write_Test_Number           => Test,
            Write_Requid                => "null requid                     ",
            Write_Invoker_Domain_Name   => "Domain_A                        ",
            Write_Object                => "Bridge                          ",
            Write_Test_Purpose          => "local one to one nav            ",
            Write_Invoker_Domain_Number => This_Domain_Number);
         
         
         if Bridge_Test_Passed =  True then
            
            RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
               Passed_Domain            => "Bridge                          ",
               Passed_Test_Number       => Test,
               Passed_Test_Result_Value => Passed_Value,
               Passed_Domain_Number     => This_Domain_Number);
            
         else
            RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
               Failed_Domain        => "Bridge                          ",
               the_test_no          => Test,
               the_test_value       => Failure_Value,
               Failed_Domain_Number => This_Domain_Number);
            
         end if;
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
   end DomainA_NAV3_One_to_One_Navigate;
   
end DomainA_NAV3_One_to_One_Navigate_Bridge;

--
-- End of file DomainA_NAV3_One_to_One_Navigate_Bridge.adb
--
