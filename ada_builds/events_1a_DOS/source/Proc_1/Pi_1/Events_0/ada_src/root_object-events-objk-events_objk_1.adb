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
--* File Name:               Events_objK_1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Idle state.
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
--* Domain Name              : Events
--* Domain Key Letter        : Events
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Events.objJ;

-- List of relationships used
with Events_rel_R7;

-- List of services used
with Events_objVERPOL1_verify_polymorphic_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objK)
   
   procedure Events_objK_1 (Test_Number   : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      my_super : Root_Object.Object_Access;
      
   begin
      
      -- -----------------------------------------------------------
      --  In this state check that all the events have been processed 
      --  and then verify the result
      -- -----------------------------------------------------------
      
      Events_Rel_R7.Navigate (
         From  => This_Instance,
         Class => Root_Object.Events.objJ.Events_objJ_type'tag,
         To    => my_super);
      
      
      if Root_Object.Events.objJ.Events_objJ_type(my_super.all).action_count <= 0 then
         
         Events_objVERPOL1_verify_polymorphic_Service.Events_objVERPOL1_verify_polymorphic (
            Object         => "Object K                        ",
            Test_Reference => Root_Object.Events.objK.Events_objK_type(This_Instance.all).ReferenceK,
            Test_Number    => Root_Object.Events.objK.Events_objK_type(This_Instance.all).ReferenceK);
         
      end if;
      
      Root_Object.Events.objK.Process_Queue;
   end Events_objK_1;
   
--
-- End of file Events_objK_1.ada
--
