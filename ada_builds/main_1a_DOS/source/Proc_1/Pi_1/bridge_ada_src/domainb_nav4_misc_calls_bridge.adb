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
--* File Name:               DomainB_NAV4_Misc_Calls_Bridge.adb
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
with Root_Object.DomainA.DOMAIN_A_SUBA;
with Root_Object.DomainA.DOMAIN_A_SUPER;
with Root_Object.DomainB.RD;

-- List of relationships used
with DomainA_rel_R4;

-- List of services used
with RP_RP1_Test_Passed_Service;
with RP_RP2_Test_Failed_Service;
with RP_RP4_Test_Description_Service;
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainB_NAV4_Misc_Calls_Bridge is
   
   procedure DomainB_NAV4_Misc_Calls (
      Test : in     Application_Types.Base_Integer_Type) is
      
      My_Report : Root_Object.Object_Access;
      My_Super  : Root_Object.Object_Access;
      The_Sub   : Root_Object.Object_Access;
      
      This_Domain_Number : Application_Types.Base_Integer_Type := 1;
      Failure_Code       : Application_Types.Base_Integer_Type := 1;
      
      Has_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of NAV4_Misc_Calls
      
      -- -------------------------------------------------------------------------
      --  Misc bridge.
      --  Used for pulling any extra tests into one scenario called test.
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
         Has_Passed         := False;
         Failure_Code       := 0;
         
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
            Write_Test_Number           => Test,
            Write_Requid                => "1241-0000-01-1102               ",
            Write_Invoker_Domain_Name   => "DomainB                         ",
            Write_Object                => "Bridge                          ",
            Write_Test_Purpose          => "Super sub navigation            ",
            Write_Invoker_Domain_Number => This_Domain_Number);
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

--
-- DomainA start _____________________________________________v--DomainA--v_______________________________________________________start DomainA
         My_Super := Root_Object.DomainA.DOMAIN_A_SUPER.Conditional_Find_One;
         while (My_Super /= null) and then (not (Root_Object.DomainA.DOMAIN_A_SUPER.DomainA_DOMAIN_A_SUPER_Type(My_Super.all).idSUPER =  1) ) loop
            
            My_Super := My_Super.Next_Object;
         end loop;
         
         
         if My_Super =  Null then
            
            Failure_Code := -1;
         else
            
            --  Navigate to the sub type
            
            DomainA_Rel_R4.Navigate (
               From  => My_Super,
               Class => Root_Object.DomainA.DOMAIN_A_SUBA.DomainA_DOMAIN_A_SUBA_type'tag,
               To    => The_Sub);
            
            
            if The_Sub =  Null then
               Failure_Code := -1;
               
            else
               
               if Root_Object.DomainA.DOMAIN_A_SUBA.DomainA_DOMAIN_A_SUBA_type(The_Sub.all).SubA_Attribute =  1 then
                  
                  Has_Passed := True;
                  
               else
                  
                  Failure_Code := -2;
                  
               end if;
               
            end if;
            
         end if;
         
-- DomainA end   _____________________________________________^--DomainA--^_______________________________________________________end   DomainA
--

--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         if Has_Passed =  False then
            
            RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
               Failed_Domain        => "Super sub navigation            ",
               the_test_no          => Test,
               the_test_value       => -1,
               Failed_Domain_Number => This_Domain_Number);
            
         else
            RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
               Passed_Domain            => "Super sub navigation            ",
               Passed_Test_Number       => Test,
               Passed_Test_Result_Value => 0,
               Passed_Domain_Number     => This_Domain_Number);
            
         end if;
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
   end DomainB_NAV4_Misc_Calls;
   
end DomainB_NAV4_Misc_Calls_Bridge;

--
-- End of file DomainB_NAV4_Misc_Calls_Bridge.adb
--
