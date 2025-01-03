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
--*  Project Key Letter : UDT_BSet
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
with UDT_Registration;
with FTE_Registration;
with RP_Registration;


with Root_Object;
use type Root_Object.Object_Access;


with RP_Scenario3;
with FTE_Scenario1;
with UDT_Scenario2;
with UDT_Scenario1;
with UDT_Scenario4;
with UDT_Scenario7;
with UDT_Scenario6;
with UDT_Scenario8;
with UDT_Scenario9;
with UDT_Scenario10;
with UDT_Scenario3;

procedure Scenario_Scheduler is
begin
   --
   -- start of Register all lists and initialise

   UDT_Registration.Register_All;
   FTE_Registration.Register_All;
   RP_Registration.Register_All;
   
   RP_Scenario3;
   FTE_Scenario1;
   UDT_Scenario2;
   UDT_Scenario1;
   UDT_Scenario4;
   UDT_Scenario7;
   UDT_Scenario6;
   UDT_Scenario8;
   UDT_Scenario9;
   UDT_Scenario10;
   UDT_Scenario3;
end Scenario_Scheduler;

--
-- End of file Scenario_Scheduler.ada
--
