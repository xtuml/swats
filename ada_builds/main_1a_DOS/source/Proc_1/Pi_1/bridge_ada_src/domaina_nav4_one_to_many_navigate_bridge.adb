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
--* File Name:               DomainA_NAV4_One_to_Many_Navigate_Bridge.adb
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
with Root_Object.DomainA.otmrs;
with Root_Object.DomainA.otmls;
with Root_Object.DomainA.RD;

-- List of relationships used
with DomainA_rel_R2;

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


package body DomainA_NAV4_One_to_Many_Navigate_Bridge is
   
   procedure DomainA_NAV4_One_to_Many_Navigate (
      Test : in     Application_Types.Base_Integer_Type) is
      
      a_set_of_right_sides : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      My_Report    : Root_Object.Object_Access;
      left_side    : Root_Object.Object_Access;
      a_right_side : Root_Object.Object_Access;
      
      This_Domain_Number : Application_Types.Base_Integer_Type := 1;
      local_id           : Application_Types.Base_Integer_Type := 1;
      
      Bridge_Test_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of NAV4_One_to_Many_Navigate
      
      --  Perform a navigation in THIS domain
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
         Bridge_Test_Passed := False;
         
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
            Write_Test_Number           => Test,
            Write_Requid                => "null requid                     ",
            Write_Invoker_Domain_Name   => "Domain_A                        ",
            Write_Object                => "Bridge                          ",
            Write_Test_Purpose          => "local one to many nav           ",
            Write_Invoker_Domain_Number => This_Domain_Number);
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

         
         --  Only local variables and input parameters are in scope within a bridge
         
         local_id := 0;
         
         left_side := Root_Object.DomainA.otmls.Conditional_Find_One;
         while (left_side /= null) and then (not (Root_Object.DomainA.otmls.DomainA_otmls_Type(left_side.all).otmls_id =  Test) ) loop
            
            left_side := left_side.Next_Object;
         end loop;
         
         
         Root_Object.Object_List.Clear (
            From => a_set_of_right_sides);
         
         
         DomainA_Rel_R2.Navigate (
            From  => left_side,
            Class => Root_Object.DomainA.otmrs.DomainA_otmrs_type'tag,
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
               
               if Root_Object.DomainA.otmrs.DomainA_otmrs_type(a_right_side.all).otmrs_id =  Test then
                  
                  Bridge_Test_Passed := True;
                  
                  
                  --  Copy id to local variable
                  
                  local_id := Root_Object.DomainA.otmrs.DomainA_otmrs_type(a_right_side.all).otmrs_id;
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => a_set_of_right_sides);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         if Bridge_Test_Passed =  True then
            
            RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
               Passed_Domain            => "Bridge                          ",
               Passed_Test_Number       => Test,
               Passed_Test_Result_Value => local_id,
               Passed_Domain_Number     => This_Domain_Number);
            
         else
            RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
               Failed_Domain        => "Bridge                          ",
               the_test_no          => Test,
               the_test_value       => local_id,
               Failed_Domain_Number => This_Domain_Number);
            
         end if;
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (a_set_of_right_sides);
      
   end DomainA_NAV4_One_to_Many_Navigate;
   
end DomainA_NAV4_One_to_Many_Navigate_Bridge;

--
-- End of file DomainA_NAV4_One_to_Many_Navigate_Bridge.adb
--
