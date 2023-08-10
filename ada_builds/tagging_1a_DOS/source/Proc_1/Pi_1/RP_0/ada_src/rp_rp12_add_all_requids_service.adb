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
--* File Name:               RP12_Add_All_Requids_Service.adb
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
with Root_Object.RP.REQS;
with Root_Object.RP.TS;

-- List of relationships used
with RP_rel_R11;

with Application_Types;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP12_Add_All_Requids_Service is
   
   procedure RP_RP12_Add_All_Requids (
      New_Requid : in     Application_Types.Base_Text_Type) is
      
      this_suite      : Root_Object.Object_Access;
      new_requirement : Root_Object.Object_Access;
      
   begin
   -- start of RP12_Add_All_Requids
      
      --  The idea here is that a new requid shall be for the full test suite, however
      --  many domains make it up.
      --  When a start test for a domain is received, it shall be compared against the 
      --  list of requirements for the full test suite.
      --  In this way all specified requirements for a test suite can be 'checked off'
      --  against the known list.
      --  This service allows the specification of a requirement for the test suite.
      this_suite := Root_Object.RP.TS.Unconditional_Find_One;
      
      if this_suite /= Null then
         new_requirement := Root_Object.RP.REQS.Create_Unique;
         Root_Object.RP.REQS.RP_REQS_Type(new_requirement.all).REQUID := New_Requid;
         
         RP_Rel_R11.Link (
            A_Instance => this_suite,
            B_Instance => new_requirement);
         
      end if;
      
      
   end RP_RP12_Add_All_Requids;
   
end RP_RP12_Add_All_Requids_Service;

--
-- End of file RP_RP12_Add_All_Requids_Service.adb
--
