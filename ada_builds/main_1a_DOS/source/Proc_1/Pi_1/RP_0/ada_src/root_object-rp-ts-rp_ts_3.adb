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
--* File Name:               RP_TS_3.ada
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
with Root_Object.RP.TS;
with Root_Object.RP.DD;
with Root_Object.RP.RM;
with Root_Object.RP.REQS;

-- List of relationships used
with RP_rel_R10;
with RP_rel_R12;
with RP_rel_R11;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.RP.TS)
   
   procedure RP_TS_3 (This_Instance : in out Root_Object.Object_Access) is
   
      
      Requirements : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Tests        : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Domains      : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      requirement  : Root_Object.Object_Access;
      test         : Root_Object.Object_Access;
      domain_local : Root_Object.Object_Access;
      
      How_Many_Left : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      --  1 Close down analysis of requirements.
      --  2 Unlink and delete from the requirements results
      --  3 Delete self
      --  In the middle of a run. Allow to continue, but without the 
      --  requirements traceability.
      -- Remove all links
      
      Root_Object.Object_List.Clear (
         From => Requirements);
      
      
      RP_Rel_R11.Navigate (
         From  => This_Instance,
         Class => Root_Object.RP.REQS.RP_REQS_type'tag,
         To    => Requirements);
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Requirements);
         
         while (Temp_Entry /= null) loop
            requirement := Temp_Entry.Item;
            
            --  Go from the requirement to the test results that fulfill the requirement
            
            Root_Object.Object_List.Clear (
               From => Tests);
            
            
            RP_Rel_R12.Navigate (
               From  => requirement,
               Class => Root_Object.RP.RM.RP_RM_type'tag,
               To    => Tests);
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => Tests);
               
               while (Temp_Entry /= null) loop
                  test := Temp_Entry.Item;
                  
                  RP_Rel_R12.Unlink (
                     A_Instance => requirement,
                     B_Instance => test);
                  
                  
                  Root_Object.RP.RM.Delete (
                     Old_Instance => test);
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => Tests);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            RP_Rel_R11.Unlink (
               A_Instance => This_Instance,
               B_Instance => requirement);
            
            
            Root_Object.RP.REQS.Delete (
               Old_Instance => requirement);
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Requirements);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      Root_Object.Object_List.Clear (
         From => Domains);
      
      
      RP_Rel_R10.Navigate (
         From  => This_Instance,
         Class => Root_Object.RP.DD.RP_DD_type'tag,
         To    => Domains);
      
      --  Only loop round if there are some domains still existing.
      How_Many_Left := Root_Object.Object_List.Count_Of(Domains);
      
      
      if How_Many_Left /= 0 then
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Domains);
            
            while (Temp_Entry /= null) loop
               domain_local := Temp_Entry.Item;
               
               RP_Rel_R10.Unlink (
                  A_Instance => domain_local,
                  B_Instance => This_Instance);
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Domains);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "Domains still exist             ");
         
      end if;
      
      
      Root_Object.RP.TS.Delete (
         Old_Instance => This_Instance);
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Domains);
      Root_Object.Object_List.Destroy_List (Tests);
      Root_Object.Object_List.Destroy_List (Requirements);
      Root_Object.RP.TS.Process_Queue;
   end RP_TS_3;
   
--
-- End of file RP_TS_3.ada
--
