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
--*  Project Key Letter : OAIB_BSet
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
with OAIBONE_Registration;
with RP_Registration;
with OAIBTWO_Registration;


with Root_Object;
use type Root_Object.Object_Access;


with RP_Scenario2;
with OAIBONE_Scenario4;
with OAIBTWO_Scenario3;
with OAIBONE_Scenario2;
with OAIBONE_Scenario6;
with OAIBONE_Scenario5;
with OAIBTWO_Scenario4;

procedure Scenario_Scheduler is
begin
   --
   -- start of Register all lists and initialise

   OAIBONE_Registration.Register_All;
   RP_Registration.Register_All;
   OAIBTWO_Registration.Register_All;
   
   RP_Scenario2;
   OAIBONE_Scenario4;
   OAIBTWO_Scenario3;
   OAIBONE_Scenario2;
   OAIBONE_Scenario6;
   OAIBONE_Scenario5;
   OAIBTWO_Scenario4;
end Scenario_Scheduler;

--
-- End of file Scenario_Scheduler.ada
--
