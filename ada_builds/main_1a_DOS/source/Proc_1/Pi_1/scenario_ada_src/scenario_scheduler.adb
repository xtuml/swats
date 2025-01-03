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
--* File Name:               Scenario_Scheduler.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
-- Description              Not Defined
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
--*  Project Key Letter : Main_BSet
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of registrations used
with ASL_Mapping_Registration;
with SBTWO_Registration;
with DomainB_Registration;
with UDT_Registration;
with TAGS_Registration;
with Function_Calls_Registration;
with DomainA_Registration;
with TT_Registration;
with SBONE_Registration;
with FTE_Registration;
with Creation_Deletion_Registration;
with Events_Registration;
with RP_Registration;
with Relationships_Registration;
with Struct_Registration;
with Find_and_Sets_Registration;


with Root_Object;
use type Root_Object.Object_Access;


with RP_Scenario3;
with FTE_Scenario1;
with ASL_Mapping_Scenario2;
with ASL_Mapping_Scenario1;
with ASL_Mapping_Scenario3;
with DomainA_Scenario10;
with DomainB_Scenario3;
with DomainA_Scenario1;
with DomainB_Scenario1;
with DomainA_Scenario2;
with DomainA_Scenario3;
with DomainA_Scenario4;
with DomainA_Scenario5;
with DomainA_Scenario12;
with DomainA_Scenario13;
with DomainB_Scenario5;
with DomainA_Scenario6;
with DomainA_Scenario7;
with DomainA_Scenario8;
with DomainB_Scenario2;
with DomainA_Scenario9;
with DomainA_Scenario14;
with DomainA_Scenario15;
with DomainA_Scenario11;
with DomainB_Scenario4;
with Creation_Deletion_Scenario2;
with Creation_Deletion_Scenario1;
with Creation_Deletion_Scenario3;
with Find_and_Sets_Scenario2;
with Find_and_Sets_Scenario1;
with Find_and_Sets_Scenario3;
with SBONE_Scenario4;
with SBTWO_Scenario3;
with SBONE_Scenario3;
with SBONE_Scenario2;
with SBONE_Scenario1;
with SBONE_Scenario5;
with SBTWO_Scenario4;
with Function_Calls_Scenario2;
with Function_Calls_Scenario1;
with Function_Calls_Scenario4;
with Function_Calls_Scenario3;
with UDT_Scenario2;
with UDT_Scenario1;
with UDT_Scenario4;
with UDT_Scenario7;
with UDT_Scenario6;
with UDT_Scenario8;
with UDT_Scenario9;
with UDT_Scenario10;
with UDT_Scenario3;
with TAGS_Scenario1;
with TAGS_Scenario2;
with TAGS_Scenario3;
with TAGS_Scenario4;
with TAGS_Scenario7;
with TAGS_Scenario8;
with TAGS_Scenario9;
with TAGS_Scenario10;
with TAGS_Scenario11;
with TAGS_Scenario6;
with TAGS_Scenario12;
with Struct_Scenario6;
with Struct_Scenario1;
with Struct_Scenario2;
with Struct_Scenario3;
with Struct_Scenario4;
with Struct_Scenario5;
with Struct_Scenario10;
with Struct_Scenario11;
with Struct_Scenario12;
with Struct_Scenario7;
with Relationships_Scenario2;
with Relationships_Scenario8;
with Relationships_Scenario9;
with Relationships_Scenario10;
with Relationships_Scenario11;
with Relationships_Scenario12;
with Relationships_Scenario1;
with Relationships_Scenario5;
with Relationships_Scenario4;
with Relationships_Scenario6;
with Relationships_Scenario7;
with Relationships_Scenario3;
with Events_Scenario2;
with Events_Scenario4;
with Events_Scenario1;
with Events_Scenario3;
with Events_Scenario6;
with TT_Scenario1;

procedure Scenario_Scheduler is
begin
   --
   -- start of Register all lists and initialise

   ASL_Mapping_Registration.Register_All;
   SBTWO_Registration.Register_All;
   DomainB_Registration.Register_All;
   UDT_Registration.Register_All;
   TAGS_Registration.Register_All;
   Function_Calls_Registration.Register_All;
   DomainA_Registration.Register_All;
   TT_Registration.Register_All;
   SBONE_Registration.Register_All;
   FTE_Registration.Register_All;
   Creation_Deletion_Registration.Register_All;
   Events_Registration.Register_All;
   RP_Registration.Register_All;
   Relationships_Registration.Register_All;
   Struct_Registration.Register_All;
   Find_and_Sets_Registration.Register_All;
   
   RP_Scenario3;
   FTE_Scenario1;
   ASL_Mapping_Scenario2;
   ASL_Mapping_Scenario1;
   ASL_Mapping_Scenario3;
   DomainA_Scenario10;
   DomainB_Scenario3;
   DomainA_Scenario1;
   DomainB_Scenario1;
   DomainA_Scenario2;
   DomainA_Scenario3;
   DomainA_Scenario4;
   DomainA_Scenario5;
   DomainA_Scenario12;
   DomainA_Scenario13;
   DomainB_Scenario5;
   DomainA_Scenario6;
   DomainA_Scenario7;
   DomainA_Scenario8;
   DomainB_Scenario2;
   DomainA_Scenario9;
   DomainA_Scenario14;
   DomainA_Scenario15;
   DomainA_Scenario11;
   DomainB_Scenario4;
   Creation_Deletion_Scenario2;
   Creation_Deletion_Scenario1;
   Creation_Deletion_Scenario3;
   Find_and_Sets_Scenario2;
   Find_and_Sets_Scenario1;
   Find_and_Sets_Scenario3;
   SBONE_Scenario4;
   SBTWO_Scenario3;
   SBONE_Scenario3;
   SBONE_Scenario2;
   SBONE_Scenario1;
   SBONE_Scenario5;
   SBTWO_Scenario4;
   Function_Calls_Scenario2;
   Function_Calls_Scenario1;
   Function_Calls_Scenario4;
   Function_Calls_Scenario3;
   UDT_Scenario2;
   UDT_Scenario1;
   UDT_Scenario4;
   UDT_Scenario7;
   UDT_Scenario6;
   UDT_Scenario8;
   UDT_Scenario9;
   UDT_Scenario10;
   UDT_Scenario3;
   TAGS_Scenario1;
   TAGS_Scenario2;
   TAGS_Scenario3;
   TAGS_Scenario4;
   TAGS_Scenario7;
   TAGS_Scenario8;
   TAGS_Scenario9;
   TAGS_Scenario10;
   TAGS_Scenario11;
   TAGS_Scenario6;
   TAGS_Scenario12;
   Struct_Scenario6;
   Struct_Scenario1;
   Struct_Scenario2;
   Struct_Scenario3;
   Struct_Scenario4;
   Struct_Scenario5;
   Struct_Scenario10;
   Struct_Scenario11;
   Struct_Scenario12;
   Struct_Scenario7;
   Relationships_Scenario2;
   Relationships_Scenario8;
   Relationships_Scenario9;
   Relationships_Scenario10;
   Relationships_Scenario11;
   Relationships_Scenario12;
   Relationships_Scenario1;
   Relationships_Scenario5;
   Relationships_Scenario4;
   Relationships_Scenario6;
   Relationships_Scenario7;
   Relationships_Scenario3;
   Events_Scenario2;
   Events_Scenario4;
   Events_Scenario1;
   Events_Scenario3;
   Events_Scenario6;
   TT_Scenario1;
end Scenario_Scheduler;

--
-- End of file Scenario_Scheduler.ada
--
