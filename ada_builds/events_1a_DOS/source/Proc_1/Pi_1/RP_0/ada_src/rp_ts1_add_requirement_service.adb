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
--* File Name:               RP_TS1_Add_Requirement_Service.adb
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
with Root_Object.RP.REQS;

-- List of relationships used
with RP_rel_R11;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;

-- List of domain types used
with RP_Domain_Types;
use type RP_Domain_Types.Requid_Status_Type;

with Application_Types;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_TS1_Add_Requirement_Service is
   
   procedure RP_TS1_Add_Requirement (
      New_Requid      : in     Application_Types.Base_Text_Type;
      New_Requid_Text : in     Application_Types.Base_Text_Type) is
      
      Exists                 : Root_Object.Object_Access;
      Me                     : Root_Object.Object_Access;
      The_New_Requirement_id : Root_Object.Object_Access;
      
   begin
   -- start of TS1_Add_Requirement
      
      --  Specify a requirement identifier that must be met by this test suite
      Exists := Root_Object.RP.REQS.Conditional_Find_One;
      while (Exists /= null) and then (not (Root_Object.RP.REQS.RP_REQS_Type(Exists.all).REQUID =  New_Requid) ) loop
         
         Exists := Exists.Next_Object;
      end loop;
      
      Me := Root_Object.RP.TS.Unconditional_Find_One;
      
      if Me /= Null then
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "Test Suite not configured for re");
         
      else
         
         if Exists /= Null then
            
            RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
               Detail => "Requid already specified        ");
            
         else
            The_New_Requirement_id := Root_Object.RP.REQS.Create_Unique;
            Root_Object.RP.REQS.RP_REQS_Type(The_New_Requirement_id.all).REQUID          := New_Requid;
            Root_Object.RP.REQS.RP_REQS_Type(The_New_Requirement_id.all).Requid_Test_Status    := RP_Domain_Types.Not_Tested;
            Root_Object.RP.REQS.RP_REQS_Type(The_New_Requirement_id.all).Requid_Text     := New_Requid_Text;
            
            RP_Rel_R11.Link (
               A_Instance => Me,
               B_Instance => The_New_Requirement_id);
            
         end if;
         
      end if;
      
      
   end RP_TS1_Add_Requirement;
   
end RP_TS1_Add_Requirement_Service;

--
-- End of file RP_TS1_Add_Requirement_Service.adb
--
