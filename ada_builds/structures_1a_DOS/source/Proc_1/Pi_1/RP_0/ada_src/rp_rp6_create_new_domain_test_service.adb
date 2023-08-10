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
--* File Name:               RP6_Create_New_Domain_Test_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This service shall create a unique object for reporting a test pass or fail
--*                          .
--*                           It shall report its' own unique identifer to the invoking domain, returned
--*                           via the bridge. This is so that the reporting domain can specify which obj
--*                          ect to report into. There can be more than one object in existance at any o
--*                          ne time. THis is due to the way the event queue is asynchronous, and servic
--*                          e invocations are sysnchronous.
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
with Root_Object.RP.TS;
with Root_Object.RP.DUPLICATED;
with Root_Object.RP.UNSUPPORTED;
with Root_Object.RP.FAIL;
with Root_Object.RP.PASS;
with Root_Object.RP.DD;

-- List of relationships used
with RP_rel_R4;
with RP_rel_R3;
with RP_rel_R2;
with RP_rel_R1;
with RP_rel_R10;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP6_Create_New_Domain_Test_Service is
   
   procedure RP_RP6_Create_New_Domain_Test (
      Invoker_Domain_Name      : in     Application_Types.Base_Text_Type;
      Domain_Unique_Identifier :    out Application_Types.Base_Integer_Type) is
      
      new_domain_test : Root_Object.Object_Access;
      new_pass        : Root_Object.Object_Access;
      new_fail        : Root_Object.Object_Access;
      new_unsupported : Root_Object.Object_Access;
      new_duplicated  : Root_Object.Object_Access;
      The_Test_Suite  : Root_Object.Object_Access;
      
      Unique_ID : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of RP6_Create_New_Domain_Test
      
      --  Create new domain test
      new_domain_test := Root_Object.RP.DD.Create_Unique;
      Root_Object.RP.DD.RP_DD_Type(new_domain_test.all).Domain_Name              := Invoker_Domain_Name;
      Root_Object.RP.DD.RP_DD_Type(new_domain_test.all).Last_Reported_Test_Number  := 0;
      Root_Object.RP.DD.RP_DD_Type(new_domain_test.all).Current_State            := Root_Object.RP.DD.Idle;
      
      
      new_pass := Root_Object.RP.PASS.Create;
      Root_Object.RP.PASS.RP_PASS_Type(new_pass.all).Passed_Counter := 0;
      
      
      new_fail := Root_Object.RP.FAIL.Create;
      Root_Object.RP.FAIL.RP_FAIL_Type(new_fail.all).Failed_Counter := 0;
      
      
      new_unsupported := Root_Object.RP.UNSUPPORTED.Create;
      Root_Object.RP.UNSUPPORTED.RP_UNSUPPORTED_Type(new_unsupported.all).Unsupported_Counter := 0;
      
      
      new_duplicated := Root_Object.RP.DUPLICATED.Create;
      Root_Object.RP.DUPLICATED.RP_DUPLICATED_Type(new_duplicated.all).Duplicated_Test_Count := 0;
      
      
      --  if the Test Suite object has been created, link it to this domain details
      The_Test_Suite := Root_Object.RP.TS.Unconditional_Find_One;
      
      if The_Test_Suite /= Null then
         RP_Rel_R10.Link (
            A_Instance => new_domain_test,
            B_Instance => The_Test_Suite);
         
      end if;
      
      RP_Rel_R1.Link (
         A_Instance => new_domain_test,
         B_Instance => new_pass);
      
      RP_Rel_R2.Link (
         A_Instance => new_domain_test,
         B_Instance => new_fail);
      
      RP_Rel_R3.Link (
         A_Instance => new_domain_test,
         B_Instance => new_unsupported);
      
      RP_Rel_R4.Link (
         A_Instance => new_domain_test,
         B_Instance => new_duplicated);
      
      Unique_ID                := Root_Object.RP.DD.RP_DD_type(new_domain_test.all).Domain_Number;
      Domain_Unique_Identifier := Unique_ID;
      
      
   end RP_RP6_Create_New_Domain_Test;
   
end RP_RP6_Create_New_Domain_Test_Service;

--
-- End of file RP_RP6_Create_New_Domain_Test_Service.adb
--
