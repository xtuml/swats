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
--* File Name:               RP13_Requirement_Tracker_Service.adb
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
with Root_Object.RP.TS;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;

-- List of domain types used
with RP_Domain_Types;
use type RP_Domain_Types.Result_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP13_Requirement_Tracker_Service is
   
   procedure RP_RP13_Requirement_Tracker (
      Updated_Domain_ID   : in     Application_Types.Base_Integer_Type;
      Updated_Test_Number : in     Application_Types.Base_Integer_Type;
      Updated_Result      : in     RP_Domain_Types.Result_Type) is
      
      The_Match : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      Requid_Tracker : Root_Object.Object_Access;
      each_match     : Root_Object.Object_Access;
      
   begin
   -- start of RP13_Requirement_Tracker
      Requid_Tracker := Root_Object.RP.TS.Unconditional_Find_One;
      
      if Requid_Tracker /= Null then
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
         begin
            Root_Object.Object_List.Clear (
               From => The_Match);
            
            Root_Object.RP.RM.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.RP.RM.RP_RM_Type(Temp_Entry.Item.all).Domain_Number       =  Updated_Domain_ID   and then
                     Root_Object.RP.RM.RP_RM_Type(Temp_Entry.Item.all).Meeting_Test_Number =  Updated_Test_Number then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => The_Match);
                  
               end if;
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Temp_List);
               
            end loop;
            
            Root_Object.Object_List.Destroy_List (
               Target_List => Temp_List);
         end;
         
         if Root_Object.Object_List.Count_Of(The_Match) /= 0 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => The_Match);
               
               while (Temp_Entry /= null) loop
                  each_match := Temp_Entry.Item;
                  
                  if Root_Object.RP.RM.RP_RM_type(each_match.all).Requid_Test_Result =  RP_Domain_Types.Unknown then
                     Root_Object.RP.RM.RP_RM_type(each_match.all).Requid_Test_Result := Updated_Result;
                     
                  else
                     
                     RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
                        Detail => "Requirement already reported for");
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => The_Match);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            --    The_Match = find-one Requirement_Met where Domain_Number = Updated_Domain_ID &\
            --       Meeting_Test_Number = Updated_Test_Number
            --    if The_Match != UNDEFINED then
            --       if The_Match.Requid_Test_Result = 'Unknown' then
            --          The_Match.Requid_Test_Result = Updated_Result
            --       else
            --          [] = RP7::Report_Run_Time_Error["Requirement already reported for this domain and test"]
            --       endif   
            --  Temporarily ignore this for the moment. Reinstate it later.
            --    else
            --       [] = RP7::Report_Run_Time_Error["Can't find the matching requirement"]
         end if;
         
         -- else
         --  If it is not here, then we are not tracking requirements in this
         --  This is not an error condition, so ignore.
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (The_Match);
      
   end RP_RP13_Requirement_Tracker;
   
end RP_RP13_Requirement_Tracker_Service;

--
-- End of file RP_RP13_Requirement_Tracker_Service.adb
--
