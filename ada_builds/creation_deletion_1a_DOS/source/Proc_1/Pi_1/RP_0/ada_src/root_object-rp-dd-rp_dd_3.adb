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
--* File Name:               RP_DD_3.ada
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
with Root_Object.RP.TD;
with Root_Object.RP.DUPLICATED;
with Root_Object.RP.UNSUPPORTED;
with Root_Object.RP.FAIL;
with Root_Object.RP.PASS;

-- List of relationships used
with RP_rel_R10;
with RP_rel_R8;
with RP_rel_R4;
with RP_rel_R3;
with RP_rel_R2;
with RP_rel_R1;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.RP.DD)
   
   procedure RP_DD_3 (This_Instance : in out Root_Object.Object_Access) is
   
      
      Set_Of_Dupes : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Set_Of_Tests : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      A_Pass       : Root_Object.Object_Access;
      A_Fail       : Root_Object.Object_Access;
      Supp         : Root_Object.Object_Access;
      Traceability : Root_Object.Object_Access;
      
   begin
      
      --  Check to see if all instances of objects linked to this object
      --  have been removed.
      
      RP_Rel_R1.Navigate (
         From  => This_Instance,
         Class => Root_Object.RP.PASS.RP_PASS_type'tag,
         To    => A_Pass);
      
      
      RP_Rel_R2.Navigate (
         From  => This_Instance,
         Class => Root_Object.RP.FAIL.RP_FAIL_type'tag,
         To    => A_Fail);
      
      
      RP_Rel_R3.Navigate (
         From  => This_Instance,
         Class => Root_Object.RP.UNSUPPORTED.RP_UNSUPPORTED_type'tag,
         To    => Supp);
      
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Dupes);
      
      
      RP_Rel_R4.Navigate (
         From  => This_Instance,
         Class => Root_Object.RP.DUPLICATED.RP_DUPLICATED_type'tag,
         To    => Set_Of_Dupes);
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Tests);
      
      
      RP_Rel_R8.Navigate (
         From  => This_Instance,
         Class => Root_Object.RP.TD.RP_TD_type'tag,
         To    => Set_Of_Tests);
      
      --  If we are collecting Traceability data for this domain, unlink it
      --  but DO NOT delete it, otherwise all data would be lost.
      
      RP_Rel_R10.Navigate (
         From  => This_Instance,
         Class => Root_Object.RP.TS.RP_TS_type'tag,
         To    => Traceability);
      
      
      if Traceability /= Null then
         
         RP_Rel_R10.Unlink (
            A_Instance => This_Instance,
            B_Instance => Traceability);
         
      end if;
      
      
      if A_Pass /= Null then
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "Pass result instance still exist");
         
      else
         
         if A_Fail /= Null then
            
            RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
               Detail => "Fail result instance still exist");
            
         else
            
            if Supp /= Null then
               
               RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
                  Detail => "Unsupported result instance stil");
               
            else
               
               if Root_Object.Object_List.Count_Of(Set_Of_Dupes) /= 0 then
                  
                  RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
                     Detail => "Duplicated result instance still");
                  
               else
                  
                  if Root_Object.Object_List.Count_Of(Set_Of_Tests) /= 0 then
                     
                     RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
                        Detail => "Results instance still exists   ");
                     
                  else
                     
                     Root_Object.RP.DD.Delete (
                        Old_Instance => This_Instance);
                  end if;
                  
               end if;
               
            end if;
            
         end if;
         
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Set_Of_Tests);
      Root_Object.Object_List.Destroy_List (Set_Of_Dupes);
      Root_Object.RP.DD.Process_Queue;
   end RP_DD_3;
   
--
-- End of file RP_DD_3.ada
--
