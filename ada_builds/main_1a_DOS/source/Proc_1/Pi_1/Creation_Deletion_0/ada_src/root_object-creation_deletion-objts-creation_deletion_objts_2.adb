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
--* File Name:               Creation_Deletion_objTS_2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies the following:
--*                           
--*                           	[1] Deletion of own instance
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

-- List of services used
with Creation_Deletion_objTS1_verify_deletion_Service;

-- List of bridges used
with Creation_Deletion_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Creation_Deletion.objTS)
   
   procedure Creation_Deletion_objTS_2 (This_Instance : in out Root_Object.Object_Access) is
   
      
      Test : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      -- -------------------------------------------------------------------------
      --  Deletion in a termination state
      -- -------------------------------------------------------------------------
      --  The following ASL is valid for all tests
      Test := Root_Object.Creation_Deletion.objTS.Creation_Deletion_objTS_type(This_Instance.all).ReferenceTS;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0206               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Termination State               ",
         Purpose         => "Deletion test                   ");
      
      
      --  Delete the current instance
      
      Root_Object.Creation_Deletion.objTS.Delete (
         Old_Instance => This_Instance);
      
      --  verify the deletion was sucessful
      
      Creation_Deletion_objTS1_verify_deletion_Service.Creation_Deletion_objTS1_verify_deletion (
         Test => Test);
      
      
      -- -------------------------------------------------------------------------
      Root_Object.Creation_Deletion.objTS.Process_Queue;
   end Creation_Deletion_objTS_2;
   
--
-- End of file Creation_Deletion_objTS_2.ada
--
