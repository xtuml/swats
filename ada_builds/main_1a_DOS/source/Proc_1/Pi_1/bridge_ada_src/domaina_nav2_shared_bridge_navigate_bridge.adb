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
--* File Name:               DomainA_NAV2_Shared_Bridge_Navigate_Bridge.adb
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
with Root_Object.DomainB.objD;
with Root_Object.DomainB.objC;
with Root_Object.DomainA.RD;

-- List of relationships used
with DomainB_rel_R1;

-- List of services used
with RP_RP1_Test_Passed_Service;
with RP_RP2_Test_Failed_Service;
with RP_RP10_Specify_Requid_Service;
with RP_RP4_Test_Description_Service;
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainA_NAV2_Shared_Bridge_Navigate_Bridge is
   
   procedure DomainA_NAV2_Shared_Bridge_Navigate (
      Test : in     Application_Types.Base_Integer_Type) is
      
      set_of_object_D : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      My_Report    : Root_Object.Object_Access;
      an_object_C  : Root_Object.Object_Access;
      the_object_D : Root_Object.Object_Access;
      
      Locally_Held_Returned_Number : Application_Types.Base_Integer_Type := 1;
      What_We_Got                  : Application_Types.Base_Integer_Type := 1;
      This_Domain_Number           : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of NAV2_Shared_Bridge_Navigate
      
      -- -------------------------------------------------------------------------
      --  Call the shared bridge to navigate a relationship in domain_B
      -- -------------------------------------------------------------------------
      Locally_Held_Returned_Number := 99;
      What_We_Got                  := 99;
      
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
         
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
            Write_Test_Number           => Test,
            Write_Requid                => "1241-0000-01-1102               ",
            Write_Invoker_Domain_Name   => "Domain_A                        ",
            Write_Object                => "Bridge                          ",
            Write_Test_Purpose          => "shared bridge                   ",
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
            Requid_Identifier    => "1103-0000-01-1021               ");
         
         RP_RP10_Specify_Requid_Service.RP_RP10_Specify_Requid (
            Requid_Domain_Number => This_Domain_Number,
            Requid_Test_Number   => Test,
            Requid_Identifier    => "1103-0000-01-1311               ");
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

--
-- DomainB start _____________________________________________v--DomainB--v_______________________________________________________start DomainB
         an_object_C := Root_Object.DomainB.objC.Conditional_Find_One;
         while (an_object_C /= null) and then (not (Root_Object.DomainB.objC.DomainB_objC_Type(an_object_C.all).idC =  1) ) loop
            
            an_object_C := an_object_C.Next_Object;
         end loop;
         
         
         Root_Object.Object_List.Clear (
            From => set_of_object_D);
         
         
         DomainB_Rel_R1.Navigate (
            From  => an_object_C,
            Class => Root_Object.DomainB.objD.DomainB_objD_type'tag,
            To    => set_of_object_D);
         
         --  Prove that the navigation was successful
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => set_of_object_D);
            
            while (Temp_Entry /= null) loop
               the_object_D := Temp_Entry.Item;
               
               Locally_Held_Returned_Number := Root_Object.DomainB.objD.DomainB_objD_type(the_object_D.all).D_Number;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => set_of_object_D);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
-- DomainB end   _____________________________________________^--DomainB--^_______________________________________________________end   DomainB
--

         
         --  ASL won't allow the calling of another bridge service in this one, so
         --  fake it, and USE the relevent domain. Sneaky.
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
         
         if Locally_Held_Returned_Number =  What_We_Got then
            
            RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
               Failed_Domain        => "Bridge                          ",
               the_test_no          => Test,
               the_test_value       => Locally_Held_Returned_Number,
               Failed_Domain_Number => This_Domain_Number);
            
         else
            RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
               Passed_Domain            => "Bridge                          ",
               Passed_Test_Number       => Test,
               Passed_Test_Result_Value => Locally_Held_Returned_Number,
               Passed_Domain_Number     => This_Domain_Number);
            
         end if;
         
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (set_of_object_D);
      
   end DomainA_NAV2_Shared_Bridge_Navigate;
   
end DomainA_NAV2_Shared_Bridge_Navigate_Bridge;

--
-- End of file DomainA_NAV2_Shared_Bridge_Navigate_Bridge.adb
--
