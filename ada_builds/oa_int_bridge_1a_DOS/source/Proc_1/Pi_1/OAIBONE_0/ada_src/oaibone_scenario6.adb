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
--* File Name:               OAIBONE_Scenario6.ada
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
--* Domain Name              : Open_Architecture_Internal_Bridge_Domain_One
--* Domain Key Letter        : OAIBONE
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

with Gettime;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure OAIBONE_Scenario6 is
   
      
      time_real_local : Application_Types.Base_Float_Type := 1.0;
      
      time_int_local : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      --  GetTime Statements do not appear anywhere in SWATS
      --  This Scenario doesn't do anything but just adds these statements
      --  Uncommented for DOS target examples:
      time_real_local := 0.0;
      
      time_real_local := GETTIME.get_time;
      
      time_int_local := 0;
      
      time_int_local := GETTIME.get_time;
      
      time_real_local := 0.0;
      
      time_real_local := GETTIME.get_time_seconds;
      
      time_int_local := 0;
      
      time_int_local := GETTIME.get_time_seconds;
      
      --  Commented for other target examples:
      -- time_int_local = 0
      -- -$ASL_TIME time_int_local := GETTIME.get_tickcount;
   end OAIBONE_Scenario6;
   
--
-- End of file OAIBONE_Scenario6.ada
--
