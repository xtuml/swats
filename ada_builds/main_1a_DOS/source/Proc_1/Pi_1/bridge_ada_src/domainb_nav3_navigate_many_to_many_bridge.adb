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
--* File Name:               DomainB_NAV3_Navigate_Many_to_Many_Bridge.adb
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
with Root_Object.DomainA.mtmrs;
with Root_Object.DomainA.mtmls;
with Root_Object.DomainB.RD;

-- List of relationships used
with DomainA_rel_R3;

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


package body DomainB_NAV3_Navigate_Many_to_Many_Bridge is
   
   procedure DomainB_NAV3_Navigate_Many_to_Many (
      Test : in     Application_Types.Base_Integer_Type) is
      
      a_set_of_right_sides : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      My_Report    : Root_Object.Object_Access;
      left_side    : Root_Object.Object_Access;
      a_right_side : Root_Object.Object_Access;
      
      This_Domain_Number : Application_Types.Base_Integer_Type := 1;
      local_id           : Application_Types.Base_Integer_Type := 1;
      
      Bridge_Test_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of NAV3_Navigate_Many_to_Many
      
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
         local_id           := 0;
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
            Write_Test_Number           => Test,
            Write_Requid                => "1241-0000-01-1102               ",
            Write_Invoker_Domain_Name   => "Domain_B                        ",
            Write_Object                => "DomainB DomainA                 ",
            Write_Test_Purpose          => "many to many nav                ",
            Write_Invoker_Domain_Number => This_Domain_Number);
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

--
-- DomainA start _____________________________________________v--DomainA--v_______________________________________________________start DomainA
         left_side := Root_Object.DomainA.mtmls.Unconditional_Find_One;
         
         -- where mtmls_id = Test
         
         if left_side /= Null then
            
            Root_Object.Object_List.Clear (
               From => a_set_of_right_sides);
            
            
            DomainA_Rel_R3.Navigate (
               From  => left_side,
               Class => Root_Object.DomainA.mtmrs.DomainA_mtmrs_type'tag,
               To    => a_set_of_right_sides);
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => a_set_of_right_sides);
               
               while (Temp_Entry /= null) loop
                  a_right_side := Temp_Entry.Item;
                  
                  if a_right_side /= Null then
                     Bridge_Test_Passed := True;
                     local_id           := Root_Object.DomainA.mtmrs.DomainA_mtmrs_type(a_right_side.all).mtmrs_id;
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => a_set_of_right_sides);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            local_id := -1;
            Bridge_Test_Passed := False;
            
         end if;
         
-- DomainA end   _____________________________________________^--DomainA--^_______________________________________________________end   DomainA
--

--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         if Bridge_Test_Passed =  True then
            
            RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
               Passed_Domain            => "DomainB DomainA                 ",
               Passed_Test_Number       => Test,
               Passed_Test_Result_Value => local_id,
               Passed_Domain_Number     => This_Domain_Number);
            
         else
            RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
               Failed_Domain        => "DomainB DomainA                 ",
               the_test_no          => Test,
               the_test_value       => local_id,
               Failed_Domain_Number => This_Domain_Number);
            
         end if;
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (a_set_of_right_sides);
      
   end DomainB_NAV3_Navigate_Many_to_Many;
   
end DomainB_NAV3_Navigate_Many_to_Many_Bridge;

--
-- End of file DomainB_NAV3_Navigate_Many_to_Many_Bridge.adb
--
