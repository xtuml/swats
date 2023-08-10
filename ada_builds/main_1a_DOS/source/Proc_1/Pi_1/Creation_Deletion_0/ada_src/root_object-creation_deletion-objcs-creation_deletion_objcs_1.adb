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
--* File Name:               Creation_Deletion_objCS_1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies the following:
--*                           
--*                           	[1] Instance creation in a creation state.
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
with Root_Object.Creation_Deletion.objCS;

-- List of bridges used
with Creation_Deletion_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Creation_Deletion.objCS)
   
   procedure Creation_Deletion_objCS_1 (Test          : in     Application_Types.Base_Integer_Type;
                                        This_Instance : in out Root_Object.Object_Access) is
   
      
      newCS : Root_Object.Object_Access;
      
   begin
      
      -- -------------------------------------------------------------------------
      -- Creation state
      -- -------------------------------------------------------------------------
      -- Creation of an instance in a creation state
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "null requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objCS                           ",
         Purpose         => "Creation State                  ");
      
      
      -- Create an instance of an object
      
      newCS := Root_Object.Creation_Deletion.objCS.Create;
      Root_Object.Creation_Deletion.objCS.Creation_Deletion_objCS_Type(newCS.all).ReferenceCS   := Test;
      Root_Object.Creation_Deletion.objCS.Creation_Deletion_objCS_Type(newCS.all).ResultCS      := 0;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Creation_Deletion.objCS.Creation_Deletion_objCS4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Creation_Deletion.objCS.objCS4,
            Target_Instance  => newCS,
            Test             => Test);
         
         Root_Object.Creation_Deletion.objCS.Push (
            Event  => Pushed_Event);
      end;
      
      -- End Test 1
      -- -------------------------------------------------------------------------
      Root_Object.Creation_Deletion.objCS.Process_Queue;
   end Creation_Deletion_objCS_1;
   
--
-- End of file Creation_Deletion_objCS_1.ada
--
