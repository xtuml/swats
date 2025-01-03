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
--* File Name:               Find_and_Sets6_FindAllTest_Service.adb
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

-- List of objects used
with Root_Object.Find_and_Sets.objAO;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Find_and_Sets_Find_and_Sets6_FindAllTest_Service is
   
   procedure Find_and_Sets_Find_and_Sets6_FindAllTest (
      noInst :    out Application_Types.Base_Integer_Type) is
      
      setAO : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      InstCount : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of Find_and_Sets6_FindAllTest
      
      Root_Object.Object_List.Clear (
         From => setAO);
      
      Root_Object.Find_and_Sets.objAO.Find (
         Add_To => setAO);
      
      InstCount := 0;
      InstCount := Root_Object.Object_List.Count_Of(setAO);
      noInst    := InstCount;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (setAO);
      
   end Find_and_Sets_Find_and_Sets6_FindAllTest;
   
end Find_and_Sets_Find_and_Sets6_FindAllTest_Service;

--
-- End of file Find_and_Sets_Find_and_Sets6_FindAllTest_Service.adb
--
