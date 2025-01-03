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
--* File Name:               DomainA_NAV9_Pass_IH_Bridge.adb
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
with Root_Object.DomainA.objA;
with Root_Object.DomainA.RD;

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


package body DomainA_NAV9_Pass_IH_Bridge is
   
   procedure DomainA_NAV9_Pass_IH (
      Test   : in     Application_Types.Base_Integer_Type;
      The_IH : in     Root_Object.Object_Access) is
      
      My_Report : Root_Object.Object_Access;
      
      This_Domain_Number : Application_Types.Base_Integer_Type := 1;
      Failure_Code       : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of NAV9_Pass_IH
      
      -- -------------------------------------------------------------------------
      --  Recieve an instance handle of Object A from domain A
      -- -------------------------------------------------------------------------
      My_Report := Root_Object.DomainA.RD.Unconditional_Find_One;
      Has_Failed := True;
      
      
      if My_Report =  Null then
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "Calling domain has not created R");
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      else
         
         This_Domain_Number := Root_Object.DomainA.RD.DomainA_RD_type(My_Report.all).Reported_Domain_Number;
         
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
            Write_Test_Number           => Test,
            Write_Requid                => "1241-0000-01-1108               ",
            Write_Invoker_Domain_Name   => "Domain_A                        ",
            Write_Object                => "Bridge                          ",
            Write_Test_Purpose          => "Recieve IH via bridge           ",
            Write_Invoker_Domain_Number => This_Domain_Number);
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

         
         if Root_Object.DomainA.objA.DomainA_objA_type(The_IH.all).idA =  100 then
            
            if Root_Object.DomainA.objA.DomainA_objA_type(The_IH.all).ResultA =  100 then
               
               --             if The_IH.Current_State = 'Sync_service_invocation_to_event' then
               
               Has_Failed := False;
               
               
               --             else
               --                Failure_Code = -10
               --             endif
            else
               
               Failure_Code := -20;
            end if;
            
         else
            Failure_Code := -30;
            
         end if;
         
         
         --  ASL won't allow the calling of another bridge service in this one, so
         --  fake it, and USE the relevent domain. Sneaky.
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         if Has_Failed then
            
            RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
               Failed_Domain        => "Bridge                          ",
               the_test_no          => Test,
               the_test_value       => Failure_Code,
               Failed_Domain_Number => This_Domain_Number);
            
         else
            RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
               Passed_Domain            => "Bridge                          ",
               Passed_Test_Number       => Test,
               Passed_Test_Result_Value => 0,
               Passed_Domain_Number     => This_Domain_Number);
            
         end if;
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
   end DomainA_NAV9_Pass_IH;
   
end DomainA_NAV9_Pass_IH_Bridge;

--
-- End of file DomainA_NAV9_Pass_IH_Bridge.adb
--
