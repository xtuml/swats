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
--*  Project Key Letter : Structures_Build_Set
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
with RP_Registration;
with Struct_Registration;


with Root_Object;
use type Root_Object.Object_Access;


with RP_Scenario2;
with FTE_Scenario1;
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

procedure Scenario_Scheduler is
begin
   --
   -- start of Register all lists and initialise

   FTE_Registration.Register_All;
   RP_Registration.Register_All;
   Struct_Registration.Register_All;
   
   RP_Scenario2;
   FTE_Scenario1;
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
end Scenario_Scheduler;

--
-- End of file Scenario_Scheduler.ada
--
