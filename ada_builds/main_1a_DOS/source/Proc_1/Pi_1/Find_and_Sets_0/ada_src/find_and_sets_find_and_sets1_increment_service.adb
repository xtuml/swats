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
--* File Name:               Find_and_Sets1_Increment_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Increment a value by 1
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
--* Domain Name              : Find_and_Sets
--* Domain Key Letter        : Find_and_Sets
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Find_and_Sets_Find_and_Sets1_Increment_Service is
   
   procedure Find_and_Sets_Find_and_Sets1_Increment (
      Incremental : in     Application_Types.Base_Integer_Type;
      Incremented :    out Application_Types.Base_Integer_Type) is
      
   begin
   -- start of Find_and_Sets1_Increment
      
      --  Increment value by and return
      Incremented := Incremental + 1;
      
      
   end Find_and_Sets_Find_and_Sets1_Increment;
   
end Find_and_Sets_Find_and_Sets1_Increment_Service;

--
-- End of file Find_and_Sets_Find_and_Sets1_Increment_Service.adb
--
