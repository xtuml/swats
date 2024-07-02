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
--* File Name:               RP4_Test_Description_Service.adb
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
with Root_Object.RP.RI;
with Root_Object.RP.TD;
with Root_Object.RP.DD;

-- List of relationships used
with RP_rel_R7;
with RP_rel_R8;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;
with RP_RP10_Specify_Requid_Service;
with RP_RP9_Test_Anomalous_Behaviour_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP4_Test_Description_Service is
   
   procedure RP_RP4_Test_Description (
      Write_Test_Number           : in     Application_Types.Base_Integer_Type;
      Write_Requid                : in     Application_Types.Base_Text_Type;
      Write_Invoker_Domain_Name   : in     Application_Types.Base_Text_Type;
      Write_Object                : in     Application_Types.Base_Text_Type;
      Write_Test_Purpose          : in     Application_Types.Base_Text_Type;
      Write_Invoker_Domain_Number : in     Application_Types.Base_Integer_Type) is
      
      Set_Of_Already_Reported_Test_Details : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      The_Domain_Details     : Root_Object.Object_Access;
      Each_Known_Test_Detail : Root_Object.Object_Access;
      The_Test_Details       : Root_Object.Object_Access;
      New_Requid_For_Test    : Root_Object.Object_Access;
      
      the_test_number   : Application_Types.Base_Integer_Type := 1;
      the_domain_number : Application_Types.Base_Integer_Type := 1;
      
      the_domain  : Application_Types.Base_Text_Type := (others => ' ');
      the_purpose : Application_Types.Base_Text_Type := (others => ' ');
      the_object  : Application_Types.Base_Text_Type := (others => ' ');
      the_requid  : Application_Types.Base_Text_Type := (others => ' ');
      
      Found_The_Test_Details : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of RP4_Test_Description
      
      -- match_found = FALSE
      the_domain        := Write_Invoker_Domain_Name;
      the_test_number   := Write_Test_Number;
      the_purpose       := Write_Test_Purpose;
      the_object        := Write_Object;
      the_requid        := Write_Requid;
      the_domain_number := Write_Invoker_Domain_Number;
      
      The_Domain_Details := Root_Object.RP.DD.Conditional_Find_One;
      while (The_Domain_Details /= null) and then (not (Root_Object.RP.DD.RP_DD_Type(The_Domain_Details.all).Domain_Number =  the_domain_number) ) loop
         
         The_Domain_Details := The_Domain_Details.Next_Object;
      end loop;
      
      
      Found_The_Test_Details := False;
      
      if The_Domain_Details /= Null then
         
         --  Have we already got this Test Details?
         
         Root_Object.Object_List.Clear (
            From => Set_Of_Already_Reported_Test_Details);
         
         
         RP_Rel_R8.Navigate (
            From  => The_Domain_Details,
            Class => Root_Object.RP.TD.RP_TD_type'tag,
            To    => Set_Of_Already_Reported_Test_Details);
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Set_Of_Already_Reported_Test_Details);
            
            while (Temp_Entry /= null) loop
               Each_Known_Test_Detail := Temp_Entry.Item;
               
               if Root_Object.RP.TD.RP_TD_type(Each_Known_Test_Detail.all).The_Test_No =  the_test_number then
                  Found_The_Test_Details := True;
                  
                  
                  --  Got another test details for this test
                  
                  RP_RP9_Test_Anomalous_Behaviour_Service.RP_RP9_Test_Anomalous_Behaviour (
                     Anomalous_Test_Number => the_test_number,
                     Anomalous_Detail      => "Duplicated test details received");
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Set_Of_Already_Reported_Test_Details);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         --  Haven't already got this one
         
         if Found_The_Test_Details =  False then
            
            The_Test_Details := Root_Object.RP.TD.Create;
            Root_Object.RP.TD.RP_TD_Type(The_Test_Details.all).Test_Purpose                := the_purpose;
            Root_Object.RP.TD.RP_TD_Type(The_Test_Details.all).Tested_Object               := the_object;
            Root_Object.RP.TD.RP_TD_Type(The_Test_Details.all).The_Test_No                 := the_test_number;
            Root_Object.RP.TD.RP_TD_Type(The_Test_Details.all).Result_Found                := False;
            
            
            --  Create new requirement identifier for test object and link it.
            New_Requid_For_Test := Root_Object.RP.RI.Create_Unique;
            Root_Object.RP.RI.RP_RI_Type(New_Requid_For_Test.all).requid := the_requid;
            
            RP_Rel_R8.Link (
               A_Instance => The_Domain_Details,
               B_Instance => The_Test_Details);
            
            RP_Rel_R7.Link (
               A_Instance => The_Test_Details,
               B_Instance => New_Requid_For_Test);
            
            
            --  Stash the requirement identifier so it can be checked off against the specified
            --  requirements for this test run.
            
            RP_RP10_Specify_Requid_Service.RP_RP10_Specify_Requid (
               Requid_Domain_Number => the_domain_number,
               Requid_Test_Number   => the_test_number,
               Requid_Identifier    => the_requid);
            
         end if;
         
      else
         
         --  Got another test details for this test
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "No domain details reported      ");
         
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Set_Of_Already_Reported_Test_Details);
      
   end RP_RP4_Test_Description;
   
end RP_RP4_Test_Description_Service;

--
-- End of file RP_RP4_Test_Description_Service.adb
--
