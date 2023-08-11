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
--* File Name:               Creation_Deletion_objTS1_verify_deletion_Service.adb
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
--* Domain Name              : Creation_Deletion
--* Domain Key Letter        : Creation_Deletion
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Creation_Deletion.objTS;

-- List of bridges used
with Creation_Deletion_RPT2_Test_Passed_Bridge;
with Creation_Deletion_RPT3_Test_Failed_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Creation_Deletion_objTS1_verify_deletion_Service is
   
   procedure Creation_Deletion_objTS1_verify_deletion (
      Test : in     Application_Types.Base_Integer_Type) is
      
      an_instanceTS : Root_Object.Object_Access;
      
   begin
   -- start of objTS1_verify_deletion
      
      -- -------------------------------------------------------------------------
      --  Verify instance deletion
      -- -------------------------------------------------------------------------
      --  Set the fault flag, set to TRUE if a fault has been identified
      -- -------------------------------------------------------------------------
      --  Test 1
      -- -------------------------------------------------------------------------
      --  Attempt to find the deleted instance
      an_instanceTS := Root_Object.Creation_Deletion.objTS.Conditional_Find_One;
      while (an_instanceTS /= null) and then (not (Root_Object.Creation_Deletion.objTS.Creation_Deletion_objTS_Type(an_instanceTS.all).ReferenceTS =  Test) ) loop
         
         an_instanceTS := an_instanceTS.Next_Object;
      end loop;
      
      
      --  Check that the instance was deleted
      
      if an_instanceTS /= Null then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objTS                           ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
      else
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objTS                           ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test complete
      
   end Creation_Deletion_objTS1_verify_deletion;
   
end Creation_Deletion_objTS1_verify_deletion_Service;

--
-- End of file Creation_Deletion_objTS1_verify_deletion_Service.adb
--
