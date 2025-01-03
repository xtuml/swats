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
--* File Name:               RP_DD4_End_Of_Test_Service.adb
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
with Root_Object.RP.DD;
with Root_Object.RP.TS;
with Root_Object.RP.RI;
with Root_Object.RP.RESULTS;
with Root_Object.RP.SC;
with Root_Object.RP.TD;
with Root_Object.RP.DUPLICATED;
with Root_Object.RP.UNSUPPORTED;
with Root_Object.RP.FAIL;
with Root_Object.RP.PASS;

-- List of relationships used
with RP_rel_R7;
with RP_rel_R6;
with RP_rel_R9;
with RP_rel_R8;
with RP_rel_R4;
with RP_rel_R3;
with RP_rel_R2;
with RP_rel_R1;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;
with RP_RP9_Test_Anomalous_Behaviour_Service;

-- List of domain types used
with RP_Domain_Types;
with RP_Domain_Types.Ops;
use type RP_Domain_Types.Unsupported_Tests_Record_Type;
use type RP_Domain_Types.Duplicated_Tests_Record_Type;
use type RP_Domain_Types.Failed_Tests_Record_Type;
use type RP_Domain_Types.Result_Type;

with Application_Queue;

with Test_Suite_Text_IO;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_DD4_End_Of_Test_Service is
   
   procedure RP_DD4_End_Of_Test (
      The_Domain : in     Root_Object.Object_Access) is
      
      Tell_Me_About_The_Duplicated : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Tell_Me_About_The_Tests      : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Tell_Me_About_The_Comments   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      All_The_Requirements         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Local_Comments               : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      All_Of_The_Tests             : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      set_of_requids               : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      Tell_Me_About_The_Passes      : Root_Object.Object_Access;
      Tell_Me_About_The_Failures    : Root_Object.Object_Access;
      Tell_Me_About_The_Unsupported : Root_Object.Object_Access;
      Each_Test_Result              : Root_Object.Object_Access;
      Tell_Me_About_The_Results     : Root_Object.Object_Access;
      Next_Comment                  : Root_Object.Object_Access;
      each_comment                  : Root_Object.Object_Access;
      Individual_Requid             : Root_Object.Object_Access;
      each_duplicated_set           : Root_Object.Object_Access;
      inst_of_comment               : Root_Object.Object_Access;
      Each_Test                     : Root_Object.Object_Access;
      res                           : Root_Object.Object_Access;
      still_res                     : Root_Object.Object_Access;
      each_requid                   : Root_Object.Object_Access;
      The_Requirements_Object       : Root_Object.Object_Access;
      
      Failed_Data      : RP_Domain_Types.Failed_Tests_Record_Type;
      Unsupported_Data : RP_Domain_Types.Unsupported_Tests_Record_Type;
      Duplicated_Data  : RP_Domain_Types.Duplicated_Tests_Record_Type;
      
      Local_Total_Duplicated_Count    : Application_Types.Base_Integer_Type := 1;
      Local_Passed                    : Application_Types.Base_Integer_Type := 1;
      Local_Failed                    : Application_Types.Base_Integer_Type := 1;
      Local_Unsupported               : Application_Types.Base_Integer_Type := 1;
      local_next_test_number          : Application_Types.Base_Integer_Type := 1;
      domain_number_for_file_handling : Application_Types.Base_Integer_Type := 1;
      How_Many_Requirements           : Application_Types.Base_Integer_Type := 1;
      Local_Test_Number               : Application_Types.Base_Integer_Type := 1;
      Local_Duplicated_Result_Count   : Application_Types.Base_Integer_Type := 1;
      Local_Result_Value              : Application_Types.Base_Integer_Type := 1;
      Total_Number_Of_Tests_Attempted : Application_Types.Base_Integer_Type := 1;
      Local_Failed_Test_Number        : Application_Types.Base_Integer_Type := 1;
      This_Unsupported_Test_Number    : Application_Types.Base_Integer_Type := 1;
      This_Duplicated_Test_Number     : Application_Types.Base_Integer_Type := 1;
      Number_Of_Duplicated_Results    : Application_Types.Base_Integer_Type := 1;
      
      Local_The_Domain_Name         : Application_Types.Base_Text_Type := (others => ' ');
      domain_name_for_file_handling : Application_Types.Base_Text_Type := (others => ' ');
      Local_Test_Domain_Name        : Application_Types.Base_Text_Type := (others => ' ');
      Local_The_Object              : Application_Types.Base_Text_Type := (others => ' ');
      Local_Test_Details            : Application_Types.Base_Text_Type := (others => ' ');
      Local_Test_Purpose            : Application_Types.Base_Text_Type := (others => ' ');
      Local_Test_Result             : Application_Types.Base_Text_Type := (others => ' ');
      A_Comment                     : Application_Types.Base_Text_Type := (others => ' ');
      Local_Test_Req_ID             : Application_Types.Base_Text_Type := (others => ' ');
      This_Test_Details_Text        : Application_Types.Base_Text_Type := (others => ' ');
      
      local_all_test_results_dumped : Boolean := Application_Types.Boolean_first;
      local_match_found             : Boolean := Application_Types.Boolean_first;
      First_Time_Through            : Boolean := Application_Types.Boolean_first;
      no_more_results               : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of DD4_End_Of_Test
      
      if The_Domain /= Null then
         -- {Failed_Data} is Failed_Tests_Record_Type
         RP_Domain_Types.Ops.Initialise (Failed_Data);
         
         -- {Unsupported_Data} is Unsupported_Tests_Record_Type
         RP_Domain_Types.Ops.Initialise (Unsupported_Data);
         
         -- {Duplicated_Data} is Duplicated_Tests_Record_Type
         RP_Domain_Types.Ops.Initialise (Duplicated_Data);
         
         
         --  find the objects detailing the pass/fail & unsupported data
         
         RP_Rel_R1.Navigate (
            From  => The_Domain,
            Class => Root_Object.RP.PASS.RP_PASS_type'tag,
            To    => Tell_Me_About_The_Passes);
         
         
         RP_Rel_R2.Navigate (
            From  => The_Domain,
            Class => Root_Object.RP.FAIL.RP_FAIL_type'tag,
            To    => Tell_Me_About_The_Failures);
         
         
         RP_Rel_R3.Navigate (
            From  => The_Domain,
            Class => Root_Object.RP.UNSUPPORTED.RP_UNSUPPORTED_type'tag,
            To    => Tell_Me_About_The_Unsupported);
         
         
         Root_Object.Object_List.Clear (
            From => Tell_Me_About_The_Duplicated);
         
         
         RP_Rel_R4.Navigate (
            From  => The_Domain,
            Class => Root_Object.RP.DUPLICATED.RP_DUPLICATED_type'tag,
            To    => Tell_Me_About_The_Duplicated);
         
         Root_Object.Object_List.Clear (
            From => Tell_Me_About_The_Tests);
         
         
         RP_Rel_R8.Navigate (
            From  => The_Domain,
            Class => Root_Object.RP.TD.RP_TD_type'tag,
            To    => Tell_Me_About_The_Tests);
         
         Root_Object.Object_List.Clear (
            From => Tell_Me_About_The_Comments);
         
         
         RP_Rel_R9.Navigate (
            From  => The_Domain,
            Class => Root_Object.RP.SC.RP_SC_type'tag,
            To    => Tell_Me_About_The_Comments);
         Local_Total_Duplicated_Count := 0;
         
         
         --  Dump out the details
         
         Local_Passed                    := Root_Object.RP.PASS.RP_PASS_type(Tell_Me_About_The_Passes.all).Passed_Counter;
         Local_Failed                    := Root_Object.RP.FAIL.RP_FAIL_type(Tell_Me_About_The_Failures.all).Failed_Counter;
         Local_Unsupported               := Root_Object.RP.UNSUPPORTED.RP_UNSUPPORTED_type(Tell_Me_About_The_Unsupported.all).Unsupported_Counter;
         Local_The_Domain_Name           := Root_Object.RP.DD.RP_DD_type(The_Domain.all).Domain_Name;
         local_next_test_number          := 0;
         local_all_test_results_dumped   := False;
         local_match_found               := False;
         domain_name_for_file_handling   := Root_Object.RP.DD.RP_DD_type(The_Domain.all).Domain_Name;
         domain_number_for_file_handling := Root_Object.RP.DD.RP_DD_type(The_Domain.all).Domain_Number;
         
         
         --  Open a new output file for writing the results to. This will only be done for ADA runs.
         --
         -- start of Ada inline code insertion
                  Test_Suite_Text_IO.Open_File_For_Writing(
                Name_Of_File             => domain_name_for_file_handling,
                Unique_Domain_Identifier => domain_number_for_file_handling);
         -- end of Ada inline code insertion
         --
         
         
         --  Loop through all of the tests until all of the tests results have been dumped
         
         loop
            
            --  Get the next test number 
            
            local_next_test_number := local_next_test_number + 1;
            local_match_found      := False;
            
            
            --  Obtain a single instance of the test details and obtain the results for that instance
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => Tell_Me_About_The_Tests);
               
               while (Temp_Entry /= null) loop
                  Each_Test_Result := Temp_Entry.Item;
                  
                  RP_Rel_R6.Navigate (
                     From  => Each_Test_Result,
                     Class => Root_Object.RP.RESULTS.RP_RESULTS_type'tag,
                     To    => Tell_Me_About_The_Results);
                  
                  
                  --  Sitting in this loop is a good place to now retrieve the
                  --  requirement identifiers that may be associated with this test.
                  
                  Root_Object.Object_List.Clear (
                     From => All_The_Requirements);
                  
                  
                  RP_Rel_R7.Navigate (
                     From  => Each_Test_Result,
                     Class => Root_Object.RP.RI.RP_RI_type'tag,
                     To    => All_The_Requirements);
                  
                  How_Many_Requirements := Root_Object.Object_List.Count_Of(All_The_Requirements);
                  
                  
                  --  If results have been found for the current instance 
                  
                  if Tell_Me_About_The_Results /= Null then
                     
                     --  If the reult of the current instance = the current test to be dumped obtain the reults data
                     
                     if Root_Object.RP.RESULTS.RP_RESULTS_type(Tell_Me_About_The_Results.all).The_Number_Of_Test =  local_next_test_number then
                        
                        local_match_found             := True;
                        Local_Test_Number             := Root_Object.RP.RESULTS.RP_RESULTS_type(Tell_Me_About_The_Results.all).The_Number_Of_Test;
                        Local_Test_Domain_Name        := Root_Object.RP.RESULTS.RP_RESULTS_type(Tell_Me_About_The_Results.all).The_Name_Of_The_Domain;
                        Local_Duplicated_Result_Count := Root_Object.RP.RESULTS.RP_RESULTS_type(Tell_Me_About_The_Results.all).The_No_Of_Duplicated_Results;
                        Local_The_Object              := Root_Object.RP.RESULTS.RP_RESULTS_type(Tell_Me_About_The_Results.all).The_Result_Of_Object;
                        Local_Result_Value            := Root_Object.RP.RESULTS.RP_RESULTS_type(Tell_Me_About_The_Results.all).The_Value_Of_The_Result;
                        Local_Test_Details            := Root_Object.RP.RESULTS.RP_RESULTS_type(Tell_Me_About_The_Results.all).Domain_Test_Details;
                        Local_Test_Purpose            := Root_Object.RP.RESULTS.RP_RESULTS_type(Tell_Me_About_The_Results.all).The_Purpose_Of_Test;
                        
                        
                        declare
                           use type Root_Object.Object_List.Node_Access_Type;
                           Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                           Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
                        begin
                           Root_Object.Object_List.Clear (
                              From => Local_Comments);
                           
                           Root_Object.RP.SC.Find (
                              Add_To => Temp_List);
                           
                           Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                              Target_List => Temp_List);
                           
                           while (Temp_Entry /= null) loop
                              
                              if Root_Object.RP.SC.RP_SC_Type(Temp_Entry.Item.all).The_Test_No =  local_next_test_number                                      and then
                                    Root_Object.RP.SC.RP_SC_Type(Temp_Entry.Item.all).Comment_ID  =  Root_Object.RP.DD.RP_DD_type(The_Domain.all).Domain_Number then
                                 
                                 Root_Object.Object_List.Insert (
                                    New_Item => Temp_Entry.Item,
                                    On_To    => Local_Comments);
                                 
                              end if;
                              
                              Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                 Target_List => Temp_List);
                              
                           end loop;
                           
                           Root_Object.Object_List.Destroy_List (
                              Target_List => Temp_List);
                        end;
                        
                        --  If the test passed set the test result to passed
                        
                        if Root_Object.RP.RESULTS.RP_RESULTS_type(Tell_Me_About_The_Results.all).The_Result_Of_Test =  RP_Domain_Types.Passed then
                           
                           Local_Test_Result := "PASSED                          ";
                        else
                           
                           --  If the test failed set the test result to failed
                           
                           if Root_Object.RP.RESULTS.RP_RESULTS_type(Tell_Me_About_The_Results.all).The_Result_Of_Test =  RP_Domain_Types.Failed then
                              Local_Test_Result := "** ** FAILED ** **              ";
                              
                              --  Stash the failed test number to dump out later.
                              --
                              -- start of append members to structure
                              RP_Domain_Types.Ops.Append (
                                 A_Failed_Test_Number => Local_Test_Number, 
                                 To_Structure         => Failed_Data);
                              -- end of append members to structure
                              --
                              
                           else
                              
                              --  If the test failed set the test result to unsupported
                              
                              if Root_Object.RP.RESULTS.RP_RESULTS_type(Tell_Me_About_The_Results.all).The_Result_Of_Test =  RP_Domain_Types.Unsupported then
                                 Local_Test_Result := "UNSUPPORTED                     ";
                                 
                                 -- stash the unsupported test number to dump out later
                                 --
                                 -- start of append members to structure
                                 RP_Domain_Types.Ops.Append (
                                    A_Unsupported_By => Local_Test_Number,
                                    A_Testing_For    => Local_Test_Purpose, 
                                    To_Structure     => Unsupported_Data);
                                 -- end of append members to structure
                                 --
                                 
                              else
                                 
                                 --  Neither fish nor fowl, should NEVER happen.
                                 Local_Test_Result := "UNKNOWN                         ";
                                 
                                 
                                 RP_RP9_Test_Anomalous_Behaviour_Service.RP_RP9_Test_Anomalous_Behaviour (
                                    Anomalous_Test_Number => Local_Test_Number,
                                    Anomalous_Detail      => "UNKNOWN result                  ");
                                 
                              end if;
                              
                           end if;
                           
                        end if;
                        
                        
                        Local_Total_Duplicated_Count := Local_Total_Duplicated_Count + Local_Duplicated_Result_Count;
                        
                        
                        -- stash the duplicated count for this test
                        
                        if Local_Duplicated_Result_Count >  0 then
                           --
                           -- start of append members to structure
                           RP_Domain_Types.Ops.Append (
                              A_Duplicated_Test_Number => Local_Test_Number,
                              A_Duplicated_Test_Count  => Local_Duplicated_Result_Count, 
                              To_Structure             => Duplicated_Data);
                           -- end of append members to structure
                           --
                           
                        end if;
                        
                        --
                        -- start of for loop
                        
                        declare
                           use type Root_Object.Object_List.Node_Access_Type;
                           Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                        begin
                           Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                              Target_List => Local_Comments);
                           
                           while (Temp_Entry /= null) loop
                              Next_Comment := Temp_Entry.Item;
                              
                              A_Comment := Root_Object.RP.SC.RP_SC_type(Next_Comment.all).The_Comment;
                              
                              Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                 Target_List => Local_Comments);
                              
                           end loop; -- end of (Temp_Entry /= null) loop
                           
                        end;
                        -- end of for loop
                        --
                        
                        --
                        -- start of Ada inline code insertion
                        
                                           Test_Suite_Text_IO.Dump_String("");
                                           Test_Suite_Text_IO.Dump_String("---------------------------------------------------------------------------");
                                           Test_Suite_Text_IO.Dump_String("Domain                       " & Local_Test_Domain_Name);
                                           Test_Suite_Text_IO.Dump_String("Object                       " & Local_The_Object);
                                           Test_Suite_Text_IO.Dump_String("Test Number                  " & integer'image(integer(Local_Test_Number )) );
                                           Test_Suite_Text_IO.Dump_String("Duplicated Tests For Domain  " & integer'image(integer(Local_Duplicated_Result_Count )) );
                                           Test_Suite_Text_IO.Dump_String("Test Purpose                 " & Local_Test_Purpose);
                        
                        
                                       -- end of Ada inline code insertion
                        --
                        
                        --
                        -- start of for loop
                        
                        declare
                           use type Root_Object.Object_List.Node_Access_Type;
                           Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                        begin
                           Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                              Target_List => Local_Comments);
                           
                           while (Temp_Entry /= null) loop
                              each_comment := Temp_Entry.Item;
                              A_Comment := Root_Object.RP.SC.RP_SC_type(each_comment.all).The_Comment;
                              
                              --
                              -- start of Ada inline code insertion
                                                    Test_Suite_Text_IO.Dump_String("Comments -                   " & A_Comment);
                                                -- end of Ada inline code insertion
                              --
                              
                              
                              Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                 Target_List => Local_Comments);
                              
                           end loop; -- end of (Temp_Entry /= null) loop
                           
                        end;
                        -- end of for loop
                        --
                        
                        
                        --  Dump out any other specified requirement identifiers.
                        
                        if How_Many_Requirements >  0 then
                           
                           First_Time_Through := True;
                           
                           --
                           -- start of for loop
                           
                           declare
                              use type Root_Object.Object_List.Node_Access_Type;
                              Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                           begin
                              Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                 Target_List => All_The_Requirements);
                              
                              while (Temp_Entry /= null) loop
                                 Individual_Requid := Temp_Entry.Item;
                                 
                                 Local_Test_Req_ID := Root_Object.RP.RI.RP_RI_type(Individual_Requid.all).requid;
                                 
                                 
                                 if First_Time_Through =  True then
                                    --
                                    -- start of Ada inline code insertion
                                                                Test_Suite_Text_IO.Display_Requid ("Requirement Identifier(s)    " , 
                                                                    Local_Test_Req_ID);
                                                             -- end of Ada inline code insertion
                                    --
                                    
                                 else
                                    --
                                    -- start of Ada inline code insertion
                                                                Test_Suite_Text_IO.Display_Requid ("                              " , 
                                                                    Specific_Requid => Local_Test_Req_ID);
                                                             -- end of Ada inline code insertion
                                    --
                                    
                                 end if;
                                 
                                 
                                 First_Time_Through := False;
                                 
                                 
                                 Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                    Target_List => All_The_Requirements);
                                 
                              end loop; -- end of (Temp_Entry /= null) loop
                              
                           end;
                           -- end of for loop
                           --
                           
                        end if;
                        
                        --
                        -- start of Ada inline code insertion
                                          Test_Suite_Text_IO.Dump_String("");
                                          Test_Suite_Text_IO.Dump_String("Result data                  " & Local_Test_Details);
                                          Test_Suite_Text_IO.Dump_String("Test Result                  " & Local_Test_Result & "with " &  
                                              integer'image(integer(Local_Result_Value ))  );
                                       -- end of Ada inline code insertion
                        --
                        
                     end if;
                     
                     
                     --  If all of the tests have been dumped then set the all results dumped flag to TRUE
                     
                     if local_next_test_number >= Root_Object.Object_List.Count_Of(Tell_Me_About_The_Tests) then
                        
                        local_all_test_results_dumped := True;
                        
                     end if;
                     
                  else
                     
                     --  Not found a result for this test
                     
                     RP_RP9_Test_Anomalous_Behaviour_Service.RP_RP9_Test_Anomalous_Behaviour (
                        Anomalous_Test_Number  => Root_Object.RP.TD.RP_TD_type(Each_Test_Result.all).The_Test_No,
                        Anomalous_Detail       => "One or More Results Were Not Fou");
                     
                  end if;
                  
                  
                  --  If a match between the result test number and required test number has been found then break out of the for loop
                  exit when local_match_found =  True;
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => Tell_Me_About_The_Tests);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            --  If all of the reults have been dumped then break out of the loop
            exit when local_all_test_results_dumped =  True;
         end loop;
         
         
         --  If there was some failures found during the run
         
         Total_Number_Of_Tests_Attempted := Local_Passed + Local_Failed      + Local_Unsupported;
         
         --
         -- start of Ada inline code insertion
               Test_Suite_Text_IO.Dump_String("");
               Test_Suite_Text_IO.Dump_String("***************************************************************************");
               Test_Suite_Text_IO.Dump_String("***************************************************************************");
               Test_Suite_Text_IO.Dump_String("");
               Test_Suite_Text_IO.Dump_String("Overall Results for domain " & Local_The_Domain_Name);
               Test_Suite_Text_IO.Dump_String("Total Tests       " & integer'image(integer(Total_Number_Of_Tests_Attempted )) );
               Test_Suite_Text_IO.Dump_String("Passed Tests      " & integer'image(integer(Local_Passed )) );
               Test_Suite_Text_IO.Dump_String("Failed Tests      " & integer'image(integer(Local_Failed )) );
            -- end of Ada inline code insertion
         --
         
         
         if Local_Failed /= 0 then
            --
            -- start of unpacking structure
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
            begin
               RP_Domain_Types.Ops.Go_To_Start (Failed_Data);
               for i in 1 .. RP_Domain_Types.Ops.Count_Of (In_Structure => Failed_Data) loop
                  RP_Domain_Types.Ops.Extract (
                     A_Failed_Test_Number => Local_Failed_Test_Number,
                     From_Structure       => Failed_Data);
                  
                  --
                  -- start of Ada inline code insertion
                              Test_Suite_Text_IO.Dump_String(" failure found in test " & 
                                  integer'image(integer( Local_Failed_Test_Number )) );
                           -- end of Ada inline code insertion
                  --
                  
               end loop; -- end of i in 1 .. RP_Domain_Types.Ops.Count_Of (In_Structure => Failed_Data) loop
               
            end;
            -- end of unpacking structure
            --
            
         end if;
         
         --
         -- start of Ada inline code insertion
            Test_Suite_Text_IO.Dump_String("Unsupported Tests " & 
                integer'image(integer( Local_Unsupported )) );
            -- end of Ada inline code insertion
         --
         
         
         if  RP_Domain_Types.Ops.Count_Of(Unsupported_Data) /= 0 then
            --
            -- start of unpacking structure
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
            begin
               RP_Domain_Types.Ops.Go_To_Start (Unsupported_Data);
               for i in 1 .. RP_Domain_Types.Ops.Count_Of (In_Structure => Unsupported_Data) loop
                  RP_Domain_Types.Ops.Extract (
                     A_Unsupported_By => This_Unsupported_Test_Number,
                     A_Testing_For    => This_Test_Details_Text,
                     From_Structure   => Unsupported_Data);
                  
                  --
                  -- start of Ada inline code insertion
                              Test_Suite_Text_IO.Dump_String(" test " & integer'image(integer( This_Unsupported_Test_Number )) & 
                               " was testing for " & This_Test_Details_Text );
                           -- end of Ada inline code insertion
                  --
                  
               end loop; -- end of i in 1 .. RP_Domain_Types.Ops.Count_Of (In_Structure => Unsupported_Data) loop
               
            end;
            -- end of unpacking structure
            --
            
         end if;
         
         --
         -- start of Ada inline code insertion
            Test_Suite_Text_IO.Dump_String("Total Duplicated Tests  " & 
                integer'image(integer( Local_Total_Duplicated_Count )) );
            -- end of Ada inline code insertion
         --
         
         
         if  RP_Domain_Types.Ops.Count_Of(Duplicated_Data) /= 0 then
            --
            -- start of unpacking structure
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
            begin
               RP_Domain_Types.Ops.Go_To_Start (Duplicated_Data);
               for i in 1 .. RP_Domain_Types.Ops.Count_Of (In_Structure => Duplicated_Data) loop
                  RP_Domain_Types.Ops.Extract (
                     A_Duplicated_Test_Number => This_Duplicated_Test_Number,
                     A_Duplicated_Test_Count  => Number_Of_Duplicated_Results,
                     From_Structure           => Duplicated_Data);
                  
                  
                  if Number_Of_Duplicated_Results >  1 then
                     --
                     -- start of Ada inline code insertion
                                    Test_Suite_Text_IO.Dump_String(" test " & integer'image(integer( This_Duplicated_Test_Number )) & " had " & 
                                        integer'image(integer(Number_Of_Duplicated_Results)) & " duplicated results" );
                                 -- end of Ada inline code insertion
                     --
                     
                  else
                     --
                     -- start of Ada inline code insertion
                                    Test_Suite_Text_IO.Dump_String(" test " & integer'image(integer( This_Duplicated_Test_Number )) & " had " & 
                                        integer'image(integer(Number_Of_Duplicated_Results)) & " duplicated result" );
                                 -- end of Ada inline code insertion
                     --
                     
                  end if;
                  
               end loop; -- end of i in 1 .. RP_Domain_Types.Ops.Count_Of (In_Structure => Duplicated_Data) loop
               
            end;
            -- end of unpacking structure
            --
            
         end if;
         
         --
         -- start of Ada inline code insertion
               Test_Suite_Text_IO.Dump_String("");
               Test_Suite_Text_IO.Dump_String("***************************************************************************");
               Test_Suite_Text_IO.Dump_String("***************************************************************************");
               Test_Suite_Text_IO.Dump_String("");
            -- end of Ada inline code insertion
         --
         
         
         --  Unlink R1, R2 & R3
         
         RP_Rel_R1.Unlink (
            A_Instance => The_Domain,
            B_Instance => Tell_Me_About_The_Passes);
         
         
         Root_Object.RP.PASS.Delete (
            Old_Instance => Tell_Me_About_The_Passes);
         
         RP_Rel_R2.Unlink (
            A_Instance => The_Domain,
            B_Instance => Tell_Me_About_The_Failures);
         
         
         Root_Object.RP.FAIL.Delete (
            Old_Instance => Tell_Me_About_The_Failures);
         
         RP_Rel_R3.Unlink (
            A_Instance => The_Domain,
            B_Instance => Tell_Me_About_The_Unsupported);
         
         
         Root_Object.RP.UNSUPPORTED.Delete (
            Old_Instance => Tell_Me_About_The_Unsupported);
         
         --  Unlink and delete each instance of the duplicated results
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Tell_Me_About_The_Duplicated);
            
            while (Temp_Entry /= null) loop
               each_duplicated_set := Temp_Entry.Item;
               
               RP_Rel_R4.Unlink (
                  A_Instance => The_Domain,
                  B_Instance => each_duplicated_set);
               
               
               Root_Object.RP.DUPLICATED.Delete (
                  Old_Instance => each_duplicated_set);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Tell_Me_About_The_Duplicated);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Tell_Me_About_The_Comments);
            
            while (Temp_Entry /= null) loop
               inst_of_comment := Temp_Entry.Item;
               
               RP_Rel_R9.Unlink (
                  A_Instance => The_Domain,
                  B_Instance => inst_of_comment);
               
               
               Root_Object.RP.SC.Delete (
                  Old_Instance => inst_of_comment);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Tell_Me_About_The_Comments);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         --  Obtain each instance of the test details unlink and delete the results of the 
         --  instance then unlink and delete the test details instance
         
         no_more_results := False;
         
         
         Root_Object.Object_List.Clear (
            From => All_Of_The_Tests);
         
         
         RP_Rel_R8.Navigate (
            From  => The_Domain,
            Class => Root_Object.RP.TD.RP_TD_type'tag,
            To    => All_Of_The_Tests);
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => All_Of_The_Tests);
            
            while (Temp_Entry /= null) loop
               Each_Test := Temp_Entry.Item;
               
               if Each_Test /= Null then
                  
                  RP_Rel_R6.Navigate (
                     From  => Each_Test,
                     Class => Root_Object.RP.RESULTS.RP_RESULTS_type'tag,
                     To    => res);
                  
                  
                  if res /= Null then
                     
                     RP_Rel_R6.Unlink (
                        A_Instance => Each_Test,
                        B_Instance => res);
                     
                     
                     Root_Object.RP.RESULTS.Delete (
                        Old_Instance => res);
                  else
                     
                     --  Couldn't find the results for this test
                     
                     RP_RP9_Test_Anomalous_Behaviour_Service.RP_RP9_Test_Anomalous_Behaviour (
                        Anomalous_Test_Number  => Root_Object.RP.TD.RP_TD_type(Each_Test.all).The_Test_No,
                        Anomalous_Detail       => "One or More Results Were Not Fou");
                     
                  end if;
                  
                  
                  RP_Rel_R8.Unlink (
                     A_Instance => Each_Test,
                     B_Instance => The_Domain);
                  
                  
                  --  any left
                  
                  RP_Rel_R6.Navigate (
                     From  => Each_Test,
                     Class => Root_Object.RP.RESULTS.RP_RESULTS_type'tag,
                     To    => still_res);
                  
                  
                  if still_res /= Null then
                     
                     --  This is technically an error condition
                     --  all outstanding relationships should already have been unlinked
                     --  but they haven't
                     
                     RP_Rel_R6.Unlink (
                        A_Instance => Each_Test,
                        B_Instance => still_res);
                     
                     
                     Root_Object.RP.RESULTS.Delete (
                        Old_Instance => still_res);
                  end if;
                  
                  
                  --  Now sort out the linked in requirement identifier object.
                  
                  Root_Object.Object_List.Clear (
                     From => set_of_requids);
                  
                  
                  RP_Rel_R7.Navigate (
                     From  => Each_Test,
                     Class => Root_Object.RP.RI.RP_RI_type'tag,
                     To    => set_of_requids);
                  --
                  -- start of for loop
                  
                  declare
                     use type Root_Object.Object_List.Node_Access_Type;
                     Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                  begin
                     Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                        Target_List => set_of_requids);
                     
                     while (Temp_Entry /= null) loop
                        each_requid := Temp_Entry.Item;
                        
                        RP_Rel_R7.Unlink (
                           A_Instance => Each_Test,
                           B_Instance => each_requid);
                        
                        
                        Root_Object.RP.RI.Delete (
                           Old_Instance => each_requid);
                        
                        Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                           Target_List => set_of_requids);
                        
                     end loop; -- end of (Temp_Entry /= null) loop
                     
                  end;
                  -- end of for loop
                  --
                  
                  
                  Root_Object.RP.TD.Delete (
                     Old_Instance => Each_Test);
               else
                  
                  --  Couldn't find the Test_Details for this test
                  
                  RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
                     Detail => "One Or More Test Details Were No");
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => All_Of_The_Tests);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         --  closes the open ada file
         --
         -- start of Ada inline code insertion
            Test_Suite_Text_IO.Close_File_For_Writing(
                   Name_Of_File             => domain_name_for_file_handling,
                   Unique_Domain_Identifier => domain_number_for_file_handling);
            -- end of Ada inline code insertion
         --
         
         
         -- If the Test Suite object exists, initiate requirements analysis.
         --  .... and if the current state is 'Waiting', ie. it has been triggered from the
         --  idle state into Waiting by the Scenario 4 being called at the end of a test run.
         The_Requirements_Object := Root_Object.RP.TS.Unconditional_Find_One;
         
         if The_Requirements_Object /= Null then
            
            if Root_Object.RP.TS.RP_TS_type(The_Requirements_Object.all).waiting_state =  True then
               
               declare
                  Pushed_Event : Root_Object.Root_Event_Access_Type;
               begin
                  Pushed_Event := new
                  Root_Object.RP.TS.RP_TS1'(Root_Object.Root_Event_Type with
                     This_Event_Class => Root_Object.RP.TS.TS1,
                     Target_Instance  => The_Requirements_Object);
                  
                  Application_Queue.Push (
                     Item        => Pushed_Event,
                     Target_Fifo => Application_Queue.Application_Queue);
               end;
            end if;
            
         end if;
         
      else
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail           => "Undefined Domain                ");
         
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (set_of_requids);
      Root_Object.Object_List.Destroy_List (All_Of_The_Tests);
      Root_Object.Object_List.Destroy_List (Local_Comments);
      Root_Object.Object_List.Destroy_List (All_The_Requirements);
      Root_Object.Object_List.Destroy_List (Tell_Me_About_The_Comments);
      Root_Object.Object_List.Destroy_List (Tell_Me_About_The_Tests);
      Root_Object.Object_List.Destroy_List (Tell_Me_About_The_Duplicated);
      
   end RP_DD4_End_Of_Test;
   
end RP_DD4_End_Of_Test_Service;

--
-- End of file RP_DD4_End_Of_Test_Service.adb
--
