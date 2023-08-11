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
--* File Name:               RP10_Specify_Requid_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This service shall allow the calling domain specify a requirement identifie
--*                          r for a given domain and test.
--*                          
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
with Root_Object.RP.TS;
with Root_Object.RP.TD;
with Root_Object.RP.DD;

-- List of relationships used
with RP_rel_R12;
with RP_rel_R11;
with RP_rel_R8;

-- List of services used
with RP_RP9_Test_Anomalous_Behaviour_Service;
with RP_RP7_Report_Run_Time_Error_Service;

-- List of domain types used
with RP_Domain_Types;
use type RP_Domain_Types.Requid_Status_Type;
use type RP_Domain_Types.Result_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP10_Specify_Requid_Service is
   
   procedure RP_RP10_Specify_Requid (
      Requid_Domain_Number : in     Application_Types.Base_Integer_Type;
      Requid_Test_Number   : in     Application_Types.Base_Integer_Type;
      Requid_Identifier    : in     Application_Types.Base_Text_Type) is
      
      Matching_Test_Details_Set : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Set_Of_Specified_Requids  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      This_Domain        : Root_Object.Object_Access;
      The_Test           : Root_Object.Object_Access;
      The_Domain_Details : Root_Object.Object_Access;
      The_Test_Suite     : Root_Object.Object_Access;
      A_Requirement      : Root_Object.Object_Access;
      new_requid_met     : Root_Object.Object_Access;
      
      Requid_Domain_Name : Application_Types.Base_Text_Type := (others => ' ');
      
      Match : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of RP10_Specify_Requid
      
      --  The Action for this domain synchronous service is simple.
      --  It requires that a test is already defined, i.e. start test has already been 
      --  sent.  Having established this, link in the new requirement identifier
      --  for that test. There can be many requids associated with a given test.
      This_Domain := Root_Object.RP.DD.Conditional_Find_One;
      while (This_Domain /= null) and then (not (Root_Object.RP.DD.RP_DD_Type(This_Domain.all).Domain_Number =  Requid_Domain_Number) ) loop
         
         This_Domain := This_Domain.Next_Object;
      end loop;
      
      
      -- The_Test = find-one Test_Details where Domain_Number = Requid_Domain_Number &\
      --                                        The_Test_No   = Requid_Test_Number
      
      Root_Object.Object_List.Clear (
         From => Matching_Test_Details_Set);
      
      
      RP_Rel_R8.Navigate (
         From  => This_Domain,
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
            The_Test := Temp_Entry.Item;
            exit when Root_Object.RP.TD.RP_TD_type(The_Test.all).The_Test_No =  Requid_Test_Number;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Matching_Test_Details_Set);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if The_Test /= Null then
         
         RP_Rel_R8.Navigate (
            From  => The_Test,
            Class => Root_Object.RP.DD.RP_DD_type'tag,
            To    => The_Domain_Details);
         
         
         if The_Domain_Details /= Null then
            Requid_Domain_Name := Root_Object.RP.DD.RP_DD_type(The_Domain_Details.all).Domain_Name;
            
            
            --  'tick off' the requid against the listed requids through Test_Suite
            --  and Requirements objects.
            
            Match := False;
            
            The_Test_Suite := Root_Object.RP.TS.Unconditional_Find_One;
            
            if The_Test_Suite /= Null then
               
               --  Grab all the known requirments in this test run
               
               Root_Object.Object_List.Clear (
                  From => Set_Of_Specified_Requids);
               
               
               RP_Rel_R11.Navigate (
                  From  => The_Test_Suite,
                  Class => Root_Object.RP.REQS.RP_REQS_type'tag,
                  To    => Set_Of_Specified_Requids);
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => Set_Of_Specified_Requids);
                  
                  while (Temp_Entry /= null) loop
                     A_Requirement := Temp_Entry.Item;
                     
                     --  If we find what we are looking for, update the test status
                     
                     if Root_Object.RP.REQS.RP_REQS_type(A_Requirement.all).REQUID =  Requid_Identifier then
                        
                        --  This is the first test in the test run to meet this requirement.
                        --  There may well be more.
                        
                        if Root_Object.RP.REQS.RP_REQS_type(A_Requirement.all).Requid_Test_Status =  RP_Domain_Types.Not_Tested then
                           
                           Root_Object.RP.REQS.RP_REQS_type(A_Requirement.all).Requid_Test_Status := RP_Domain_Types.Tested;
                           
                        end if;
                        
                        
                        --  This requirement has already been met, but that is not to say
                        --  that this current tests doesn't also meet the requirement.
                        --  Create a new instance of the requirment met object and link it
                        --  via a 1:M relationship to the All_Reqs. object
                        new_requid_met := Root_Object.RP.RM.Create_Unique;
                        
                        Root_Object.RP.RM.RP_RM_type(new_requid_met.all).Domain_Number := Requid_Domain_Number;
                        Root_Object.RP.RM.RP_RM_type(new_requid_met.all).Domain_Name         := Requid_Domain_Name;
                        Root_Object.RP.RM.RP_RM_type(new_requid_met.all).Meeting_Test_Number := Requid_Test_Number;
                        Root_Object.RP.RM.RP_RM_type(new_requid_met.all).Requid_Test_Result  := RP_Domain_Types.Unknown;
                        
                        RP_Rel_R12.Link (
                           A_Instance => new_requid_met,
                           B_Instance => A_Requirement);
                        
                        
                        Match := True;
                        
                        
                        -- Found the requid
                           exit;
                     end if;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => Set_Of_Specified_Requids);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               
               if (not Match) then
                  
                  RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
                     Detail => "Requirement identifier not speci");
                  
               end if;
               
            end if;
            
         else
            RP_RP9_Test_Anomalous_Behaviour_Service.RP_RP9_Test_Anomalous_Behaviour (
               Anomalous_Test_Number => Requid_Test_Number,
               Anomalous_Detail      => "Domain and Test unlinked        ");
            
         end if;
         
      else
         RP_RP9_Test_Anomalous_Behaviour_Service.RP_RP9_Test_Anomalous_Behaviour (
            Anomalous_Test_Number => Requid_Test_Number,
            Anomalous_Detail      => "Received a requid for unknown te");
         
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Set_Of_Specified_Requids);
      Root_Object.Object_List.Destroy_List (Matching_Test_Details_Set);
      
   end RP_RP10_Specify_Requid;
   
end RP_RP10_Specify_Requid_Service;

--
-- End of file RP_RP10_Specify_Requid_Service.adb
--
