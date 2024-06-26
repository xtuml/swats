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
--* File Name:               RP_DD1_A_Test_Has_Passed_Service.adb
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
--* Domain Name              : Report
--* Domain Key Letter        : RP
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.RP.RESULTS;
with Root_Object.RP.DUPLICATED;
with Root_Object.RP.TD;
with Root_Object.RP.DD;

-- List of relationships used
with RP_rel_R6;
with RP_rel_R4;
with RP_rel_R8;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;
with RP_DUPLICATED1_Duplicated_Result_Found_Service;
with RP_RP9_Test_Anomalous_Behaviour_Service;
with RP_PASS1_Got_One_Service;
with RP_RP13_Requirement_Tracker_Service;

-- List of domain types used
with RP_Domain_Types;
use type RP_Domain_Types.Result_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_DD1_A_Test_Has_Passed_Service is
   
   procedure RP_DD1_A_Test_Has_Passed (
      New_Test_Number       : in     Application_Types.Base_Integer_Type;
      Invoking_Domain       : in     Application_Types.Base_Integer_Type;
      New_Test_Result_Value : in     Application_Types.Base_Integer_Type;
      Details_Of_Test       : in     Application_Types.Base_Text_Type) is
      
      Set_Of_Test_Details       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      set_of_duplicated_results : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Local_Set_Of_Test_Details : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Matching_Test_Details_Set : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Duplicated_Reports        : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      The_Domain_IH                : Root_Object.Object_Access;
      a_test                       : Root_Object.Object_Access;
      a_duplicated_result          : Root_Object.Object_Access;
      the_d_r_ih                   : Root_Object.Object_Access;
      a_test_detail                : Root_Object.Object_Access;
      the_old_results_ih           : Root_Object.Object_Access;
      new_results_of_test_instance : Root_Object.Object_Access;
      Matching_Test_Details        : Root_Object.Object_Access;
      new_duplicated_instance      : Root_Object.Object_Access;
      Previous_Reported_Result     : Root_Object.Object_Access;
      
      local_invoking_domain : Application_Types.Base_Integer_Type := 1;
      local_test_number     : Application_Types.Base_Integer_Type := 1;
      
      local_test_purpose        : Application_Types.Base_Text_Type := (others => ' ');
      local_tested_object       : Application_Types.Base_Text_Type := (others => ' ');
      local_domain_test_details : Application_Types.Base_Text_Type := (others => ' ');
      
      local_result_found : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of DD1_A_Test_Has_Passed
      local_result_found        := False;
      local_test_purpose        := "                                ";
      local_tested_object       := "                                ";
      local_invoking_domain     := Invoking_Domain;
      local_domain_test_details := Details_Of_Test;
      local_test_number         := New_Test_Number;
      
      
      --  For requirement identifier tracking, update the requirement status
      
      RP_RP13_Requirement_Tracker_Service.RP_RP13_Requirement_Tracker (
         Updated_Domain_ID   => local_invoking_domain,
         Updated_Test_Number => local_test_number,
         Updated_Result      => RP_Domain_Types.Passed);
      
      The_Domain_IH := Root_Object.RP.DD.Conditional_Find_One;
      while (The_Domain_IH /= null) and then (not (Root_Object.RP.DD.RP_DD_Type(The_Domain_IH.all).Domain_Number =  local_invoking_domain) ) loop
         
         The_Domain_IH := The_Domain_IH.Next_Object;
      end loop;
      
      
      if The_Domain_IH /= Null then
         
         Root_Object.Object_List.Clear (
            From => Set_Of_Test_Details);
         
         
         RP_Rel_R8.Navigate (
            From  => The_Domain_IH,
            Class => Root_Object.RP.TD.RP_TD_type'tag,
            To    => Set_Of_Test_Details);
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Set_Of_Test_Details);
            
            while (Temp_Entry /= null) loop
               a_test := Temp_Entry.Item;
               
               if Root_Object.RP.TD.RP_TD_type(a_test.all).The_Test_No =  New_Test_Number then
                  
                  Root_Object.RP.TD.RP_TD_type(a_test.all).Result_Found := True;
                  
                  
                  local_result_found  := True;
                  local_test_purpose  := Root_Object.RP.TD.RP_TD_type(a_test.all).Test_Purpose;
                  local_tested_object := Root_Object.RP.TD.RP_TD_type(a_test.all).Tested_Object;
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Set_Of_Test_Details);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         if New_Test_Number /= Root_Object.RP.DD.RP_DD_type(The_Domain_IH.all).Last_Reported_Test_Number then
            
            --  New stuff 24/04/01
            --  Find the matching instance from the objects in the set returned from a navigation.
            --  A simple find operation could return instances created for other domains!
            
            Root_Object.Object_List.Clear (
               From => set_of_duplicated_results);
            
            
            RP_Rel_R4.Navigate (
               From  => The_Domain_IH,
               Class => Root_Object.RP.DUPLICATED.RP_DUPLICATED_type'tag,
               To    => set_of_duplicated_results);
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => set_of_duplicated_results);
               
               while (Temp_Entry /= null) loop
                  a_duplicated_result := Temp_Entry.Item;
                  
                  if Root_Object.RP.DUPLICATED.RP_DUPLICATED_type(a_duplicated_result.all).Duplicated_Test_Number =  
                  Root_Object.RP.DD.RP_DD_type(The_Domain_IH.all).Last_Reported_Test_Number then
                     
                     the_d_r_ih := a_duplicated_result;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => set_of_duplicated_results);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            --  New stuff 24/04/01
            --  Use the navigation rather than find to make sure we get the instance
            --  that we are expecting to see.
            
            Root_Object.Object_List.Clear (
               From => Local_Set_Of_Test_Details);
            
            
            RP_Rel_R8.Navigate (
               From  => The_Domain_IH,
               Class => Root_Object.RP.TD.RP_TD_type'tag,
               To    => Local_Set_Of_Test_Details);
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => Local_Set_Of_Test_Details);
               
               while (Temp_Entry /= null) loop
                  a_test_detail := Temp_Entry.Item;
                  
                  if Root_Object.RP.TD.RP_TD_type(a_test_detail.all).The_Test_No =  Root_Object.RP.DD.RP_DD_type(The_Domain_IH.all).Last_Reported_Test_Number then
                     
                     RP_Rel_R6.Navigate (
                        From  => a_test_detail,
                        Class => Root_Object.RP.RESULTS.RP_RESULTS_type'tag,
                        To    => the_old_results_ih);
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => Local_Set_Of_Test_Details);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if the_d_r_ih /= Null and then
               the_old_results_ih /= Null then
               
               Root_Object.RP.RESULTS.RP_RESULTS_type(the_old_results_ih.all).The_No_Of_Duplicated_Results := 
                  Root_Object.RP.DUPLICATED.RP_DUPLICATED_type(the_d_r_ih.all).Duplicated_Test_Count;
               
            end if;
            
            
            RP_PASS1_Got_One_Service.RP_PASS1_Got_One (
               Invoker_Domain_IH => The_Domain_IH);
            
            
            Root_Object.RP.DD.RP_DD_type(The_Domain_IH.all).Last_Reported_Test_Number := New_Test_Number;
            
            new_results_of_test_instance := Root_Object.RP.RESULTS.Create_Unique;
            Root_Object.RP.RESULTS.RP_RESULTS_Type(new_results_of_test_instance.all).The_Number_Of_Test    := New_Test_Number;
            Root_Object.RP.RESULTS.RP_RESULTS_Type(new_results_of_test_instance.all).The_Name_Of_The_Domain  := 
               Root_Object.RP.DD.RP_DD_type(The_Domain_IH.all).Domain_Name;
            Root_Object.RP.RESULTS.RP_RESULTS_Type(new_results_of_test_instance.all).The_Result_Of_Test    := RP_Domain_Types.Passed;
            Root_Object.RP.RESULTS.RP_RESULTS_Type(new_results_of_test_instance.all).The_Value_Of_The_Result   := New_Test_Result_Value;
            Root_Object.RP.RESULTS.RP_RESULTS_Type(new_results_of_test_instance.all).The_Purpose_Of_Test   := local_test_purpose;
            Root_Object.RP.RESULTS.RP_RESULTS_Type(new_results_of_test_instance.all).The_No_Of_Duplicated_Results        := 0;
            Root_Object.RP.RESULTS.RP_RESULTS_Type(new_results_of_test_instance.all).The_Result_Of_Object  := local_tested_object;
            Root_Object.RP.RESULTS.RP_RESULTS_Type(new_results_of_test_instance.all).Domain_Test_Details   := local_domain_test_details;
            
            
            -- find the test data that matches the test result
            --  Can't use referential attribute to find the Test_Details.
            --       Matching_Test_Details = find-one Test_Details where The_Test_No = New_Test_Number and \
            --                                  Domain_Number = local_invoking_domain
            
            Root_Object.Object_List.Clear (
               From => Matching_Test_Details_Set);
            
            
            RP_Rel_R8.Navigate (
               From  => The_Domain_IH,
               Class => Root_Object.RP.TD.RP_TD_type'tag,
               To    => Matching_Test_Details_Set);
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => Matching_Test_Details_Set);
               
               while (Temp_Entry /= null) loop
                  Matching_Test_Details := Temp_Entry.Item;
                  exit when Root_Object.RP.TD.RP_TD_type(Matching_Test_Details.all).The_Test_No =  New_Test_Number;
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => Matching_Test_Details_Set);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            --  Link this report to the matching test details if it exists
            
            if Matching_Test_Details /= Null then
               RP_Rel_R6.Link (
                  A_Instance => new_results_of_test_instance,
                  B_Instance => Matching_Test_Details);
               
            else
               
               RP_RP9_Test_Anomalous_Behaviour_Service.RP_RP9_Test_Anomalous_Behaviour (
                  Anomalous_Test_Number => New_Test_Number,
                  Anomalous_Detail      => "Passed. No Test Details Found   ");
               
            end if;
            
         else
            
            --  Find the duplicated result IH that was linked in when duplication 
            --  was first seen.
            --  Duplicate report found.
            --       the_d_r_ih = find-one Duplicated_Result where \
            --          Duplicated_Test_Number = New_Test_Number and \
            --          Domain_Number = local_invoking_domain
            
            Root_Object.Object_List.Clear (
               From => Duplicated_Reports);
            
            
            RP_Rel_R4.Navigate (
               From  => The_Domain_IH,
               Class => Root_Object.RP.DUPLICATED.RP_DUPLICATED_type'tag,
               To    => Duplicated_Reports);
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => Duplicated_Reports);
               
               while (Temp_Entry /= null) loop
                  the_d_r_ih := Temp_Entry.Item;
                  exit when Root_Object.RP.DUPLICATED.RP_DUPLICATED_type(the_d_r_ih.all).Duplicated_Test_Number =  New_Test_Number;
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => Duplicated_Reports);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if the_d_r_ih =  Null then
               new_duplicated_instance := Root_Object.RP.DUPLICATED.Create_Unique;
               Root_Object.RP.DUPLICATED.RP_DUPLICATED_Type(new_duplicated_instance.all).Duplicated_Test_Number  := New_Test_Number;
               Root_Object.RP.DUPLICATED.RP_DUPLICATED_Type(new_duplicated_instance.all).Who_Reported_The_Duplicated_Result              := RP_Domain_Types.Passed;
               Root_Object.RP.DUPLICATED.RP_DUPLICATED_Type(new_duplicated_instance.all).Duplicated_Test_Count := 0;
               
               RP_Rel_R4.Link (
                  A_Instance => new_duplicated_instance,
                  B_Instance => The_Domain_IH);
               
               
               the_d_r_ih := new_duplicated_instance;
               
            else
               
               --  Check to see if the reported result is the same! Passed then failed? We need to know.
               --          Previous_Reported_Result = find-one Results_Of_Tests where Domain_Number = local_invoking_domain &\
               --                                        The_Number_Of_Test = New_Test_Number
               
               Root_Object.Object_List.Clear (
                  From => Matching_Test_Details_Set);
               
               
               RP_Rel_R8.Navigate (
                  From  => The_Domain_IH,
                  Class => Root_Object.RP.TD.RP_TD_type'tag,
                  To    => Matching_Test_Details_Set);
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => Matching_Test_Details_Set);
                  
                  while (Temp_Entry /= null) loop
                     Matching_Test_Details := Temp_Entry.Item;
                     exit when Root_Object.RP.TD.RP_TD_type(Matching_Test_Details.all).The_Test_No =  New_Test_Number;
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => Matching_Test_Details_Set);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               
               if Matching_Test_Details /= Null then
                  
                  RP_Rel_R6.Navigate (
                     From  => Matching_Test_Details,
                     Class => Root_Object.RP.RESULTS.RP_RESULTS_type'tag,
                     To    => Previous_Reported_Result);
                  
               else
                  
                  RP_RP9_Test_Anomalous_Behaviour_Service.RP_RP9_Test_Anomalous_Behaviour (
                     Anomalous_Test_Number => New_Test_Number,
                     Anomalous_Detail      => "Duplicated Pass. No Test Details");
                  
               end if;
               
               
               if Previous_Reported_Result /= Null then
                  
                  if Root_Object.RP.RESULTS.RP_RESULTS_type(Previous_Reported_Result.all).The_Result_Of_Test /= RP_Domain_Types.Passed then
                     
                     RP_RP9_Test_Anomalous_Behaviour_Service.RP_RP9_Test_Anomalous_Behaviour (
                        Anomalous_Test_Number => New_Test_Number,
                        Anomalous_Detail      => "Inconsistent duplicated pass res");
                     
                  end if;
                  
               else
                  
                  --  Big problems, we thought this was duplicated, but it would appear not!
                  
                  RP_RP9_Test_Anomalous_Behaviour_Service.RP_RP9_Test_Anomalous_Behaviour (
                     Anomalous_Test_Number => New_Test_Number,
                     Anomalous_Detail      => "Error in duplication of test pas");
                  
               end if;
               
            end if;
            
            RP_DUPLICATED1_Duplicated_Result_Found_Service.RP_DUPLICATED1_Duplicated_Result_Found (
               Invoker_Domain_IH => the_d_r_ih);
            
            
            Root_Object.RP.DD.RP_DD_type(The_Domain_IH.all).Last_Reported_Test_Number := New_Test_Number;
            
         end if;
         
      else
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "Test Passed undefined domain det");
         
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Duplicated_Reports);
      Root_Object.Object_List.Destroy_List (Matching_Test_Details_Set);
      Root_Object.Object_List.Destroy_List (Local_Set_Of_Test_Details);
      Root_Object.Object_List.Destroy_List (set_of_duplicated_results);
      Root_Object.Object_List.Destroy_List (Set_Of_Test_Details);
      
   end RP_DD1_A_Test_Has_Passed;
   
end RP_DD1_A_Test_Has_Passed_Service;

--
-- End of file RP_DD1_A_Test_Has_Passed_Service.adb
--
