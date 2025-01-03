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
--*  Project Key Letter : Tags_BSet
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
with FTE_Registration;
with TAGS_Registration;
with RP_Registration;


with Root_Object;
use type Root_Object.Object_Access;


with RP_Scenario3;
with FTE_Scenario1;
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

procedure Scenario_Scheduler is
begin
   --
   -- start of Register all lists and initialise

   FTE_Registration.Register_All;
   TAGS_Registration.Register_All;
   RP_Registration.Register_All;
   
   RP_Scenario3;
   FTE_Scenario1;
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
end Scenario_Scheduler;

--
-- End of file Scenario_Scheduler.ada
--
