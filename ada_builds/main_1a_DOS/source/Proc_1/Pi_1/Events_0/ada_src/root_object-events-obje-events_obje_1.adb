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
--* File Name:               Events_objE_1.ada
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
with Root_Object.Events.objD;

-- List of relationships used
with Events_rel_R5;

-- List of services used
with Events_objVERPOL1_verify_polymorphic_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objE)
   
   procedure Events_objE_1 (Test_Number   : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      my_super : Root_Object.Object_Access;
      
      temp : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      --  in this state check that all the events have been processed and then verify 
      --  the result
      
      Events_Rel_R5.Navigate (
         From  => This_Instance,
         Class => Root_Object.Events.objD.Events_objD_type'tag,
         To    => my_super);
      
      
      if Root_Object.Events.objD.Events_objD_type(my_super.all).no_of_received_events =  2 then
         
         Events_objVERPOL1_verify_polymorphic_Service.Events_objVERPOL1_verify_polymorphic (
            Object         => "Object E                        ",
            Test_Reference => Root_Object.Events.objE.Events_objE_type(This_Instance.all).ReferenceE,
            Test_Number    => Test_Number);
         
         
         --    [] = objVERPOL1:verify_polymorphic[ "Object E", my_super.latest_test, Test_Number ]
         temp := Root_Object.Events.objD.Events_objD_type(my_super.all).no_of_received_events + 1;
         
         
         Root_Object.Events.objD.Events_objD_type(my_super.all).no_of_received_events := temp;
         
      end if;
      
      Root_Object.Events.objE.Process_Queue;
   end Events_objE_1;
   
--
-- End of file Events_objE_1.ada
--
