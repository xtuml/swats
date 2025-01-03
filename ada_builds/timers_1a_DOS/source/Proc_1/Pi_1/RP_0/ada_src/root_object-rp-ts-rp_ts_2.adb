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
--* File Name:               RP_TS_2.ada
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
with Root_Object.RP.RM;
with Root_Object.RP.REQS;

-- List of relationships used
with RP_rel_R12;
with RP_rel_R11;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;

-- List of domain types used
with RP_Domain_Types;
use type RP_Domain_Types.Requid_Status_Type;
use type RP_Domain_Types.Result_Type;

with Test_Suite_Text_IO;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.RP.TS)
   
   procedure RP_TS_2 (This_Instance : in out Root_Object.Object_Access) is
   
      
      All_Requirements : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Satisfying_Tests : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      A_Requirement : Root_Object.Object_Access;
      A_Test        : Root_Object.Object_Access;
      
      How_Many_Requirements : Application_Types.Base_Integer_Type := 1;
      The_Test              : Application_Types.Base_Integer_Type := 1;
      
      Current_Reqid     : Application_Types.Base_Text_Type := (others => ' ');
      The_Domain        : Application_Types.Base_Text_Type := (others => ' ');
      Local_Requid_Text : Application_Types.Base_Text_Type := (others => ' ');
      
      The_Result    : RP_Domain_Types.Result_Type          := RP_Domain_Types.Result_Type_first;
      Requid_Status : RP_Domain_Types.Requid_Status_Type   := RP_Domain_Types.Requid_Status_Type_first;
      
   begin
      Root_Object.RP.TS.RP_TS_type(This_Instance.all).waiting_state := False;
      
      
      --  Open up a file in the ADA run time system to stash results into.
      --
      -- start of Ada inline code insertion
               Test_Suite_Text_IO.Open_File_For_Writing(
                Name_Of_File             => "Requirements_Analysis",
                Unique_Domain_Identifier => 999);
      -- end of Ada inline code insertion
      --
      
      
      --  Navigate to all the reported requirements
      
      Root_Object.Object_List.Clear (
         From => All_Requirements);
      
      
      RP_Rel_R11.Navigate (
         From  => This_Instance,
         Class => Root_Object.RP.REQS.RP_REQS_type'tag,
         To    => All_Requirements);
      
      How_Many_Requirements := Root_Object.Object_List.Count_Of(All_Requirements);
      Current_Reqid         := "                                ";
      The_Domain            := "                                ";
      The_Test              := 0;
      
      The_Result := RP_Domain_Types.Unknown;
      
      if How_Many_Requirements >  0 then
         
         --  Step through each reqirement, navigating across to the set of
         --  test results that test that requirement.
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => All_Requirements);
            
            while (Temp_Entry /= null) loop
               A_Requirement := Temp_Entry.Item;
               
               Current_Reqid     := Root_Object.RP.REQS.RP_REQS_type(A_Requirement.all).REQUID;
               Local_Requid_Text := Root_Object.RP.REQS.RP_REQS_type(A_Requirement.all).Requid_Text;
               Requid_Status     := Root_Object.RP.REQS.RP_REQS_type(A_Requirement.all).Requid_Test_Status;
               
               
               if Requid_Status =  RP_Domain_Types.Tested then
                  --
                  -- start of Ada inline code insertion
                               Test_Suite_Text_IO.Dump_String("Requirement " & Current_Reqid & "has been tested by the following ");
                           -- end of Ada inline code insertion
                  --
                  
                  
                  --  Navigate to the set containing the domain and test details that met this requirement
                  
                  Root_Object.Object_List.Clear (
                     From => Satisfying_Tests);
                  
                  
                  RP_Rel_R12.Navigate (
                     From  => A_Requirement,
                     Class => Root_Object.RP.RM.RP_RM_type'tag,
                     To    => Satisfying_Tests);
                  --
                  -- start of for loop
                  
                  declare
                     use type Root_Object.Object_List.Node_Access_Type;
                     Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                  begin
                     Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                        Target_List => Satisfying_Tests);
                     
                     while (Temp_Entry /= null) loop
                        A_Test := Temp_Entry.Item;
                        
                        --  Dump out the requirements and the tests that prove them
                        
                        The_Domain := Root_Object.RP.RM.RP_RM_type(A_Test.all).Domain_Name;
                        The_Test   := Root_Object.RP.RM.RP_RM_type(A_Test.all).Meeting_Test_Number;
                        The_Result := Root_Object.RP.RM.RP_RM_type(A_Test.all).Requid_Test_Result;
                        
                        
                        if The_Result =  RP_Domain_Types.Passed then
                           --
                           -- start of Ada inline code insertion
                                              Test_Suite_Text_IO.Dump_String("Domain " & The_Domain & "Test Number " & Application_Types.Base_Integer_Type'image(The_Test) & ", Passed" );
                                          -- end of Ada inline code insertion
                           --
                           
                        else
                           
                           if The_Result =  RP_Domain_Types.Failed then
                              --
                              -- start of Ada inline code insertion
                                                    Test_Suite_Text_IO.Dump_String("Domain " & The_Domain & "Test Number " & Application_Types.Base_Integer_Type'image(The_Test) & ", Failed" );
                                                -- end of Ada inline code insertion
                              --
                              
                           else
                              
                              if The_Result =  RP_Domain_Types.Unsupported then
                                 --
                                 -- start of Ada inline code insertion
                                                          Test_Suite_Text_IO.Dump_String("Domain " & The_Domain & "Test Number " & Application_Types.Base_Integer_Type'image(The_Test) & ", Unsupported" );
                                                      -- end of Ada inline code insertion
                                 --
                                 
                              else
                                 --
                                 -- start of Ada inline code insertion
                                                          Test_Suite_Text_IO.Dump_String("Domain " & The_Domain & "Test Number " & Application_Types.Base_Integer_Type'image(The_Test) & ", Unknown" );
                                                      -- end of Ada inline code insertion
                                 --
                                 
                                 
                                 RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
                                    Detail => "Requirement has an UNKNOWN resul");
                                 
                              end if;
                              
                           end if;
                           
                        end if;
                        
                        
                        Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                           Target_List => Satisfying_Tests);
                        
                     end loop; -- end of (Temp_Entry /= null) loop
                     
                  end;
                  -- end of for loop
                  --
                  
               else
                  
                  --  Requirement has not been tested.
                  --
                  -- start of Ada inline code insertion
                               Test_Suite_Text_IO.Dump_String("Requirement " & Current_Reqid & "has been not been tested in this run");
                           -- end of Ada inline code insertion
                  --
                  
               end if;
               
               --
               -- start of Ada inline code insertion
                         Test_Suite_Text_IO.Dump_String("------------------------------------------------------------");
                     -- end of Ada inline code insertion
               --
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => All_Requirements);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
      else
         
         --  No reported requirements found
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "No requirements found           ");
         
         --
         -- start of Ada inline code insertion
                Test_Suite_Text_IO.Dump_String("No requirements identifiers specified");
            -- end of Ada inline code insertion
         --
         
      end if;
      
      --
      -- start of Ada inline code insertion
         Test_Suite_Text_IO.Close_File_For_Writing(
                Name_Of_File             => "Requirements_Analysis",
                Unique_Domain_Identifier => 999);
      -- end of Ada inline code insertion
      --
      
      
      --  Terminate and tidy up.
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.RP.TS.RP_TS2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.RP.TS.TS2,
            Target_Instance  => This_Instance);
         
         Root_Object.RP.TS.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Satisfying_Tests);
      Root_Object.Object_List.Destroy_List (All_Requirements);
      Root_Object.RP.TS.Process_Queue;
   end RP_TS_2;
   
--
-- End of file RP_TS_2.ada
--
