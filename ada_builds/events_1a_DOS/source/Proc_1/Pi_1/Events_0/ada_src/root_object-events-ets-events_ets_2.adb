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
--* File Name:               Events_ETS_2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies the following:
--*                           
--*                           	
--*                           [1] That an event is placed onto the top of the
--*                               event queue and acted upon before any other
--*                               events to the same instance.
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

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.ETS)
   
   procedure Events_ETS_2 (Test          : in     Application_Types.Base_Integer_Type;
                           This_Instance : in out Root_Object.Object_Access) is
   
      
   begin
      
      -- --------------------------------------------------------------------
      -- Generate event to self
      -- --------------------------------------------------------------------
      -- Test 1
      
      if Test =  1 then
         
         -- Generate event to self
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.ETS.Events_ETS4'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.ETS.ETS4,
               Target_Instance  => This_Instance,
               Test             => Test);
            
            Root_Object.Events.ETS.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      
      -- --------------------------------------------------------------------
      Root_Object.Events.ETS.Process_Queue;
   end Events_ETS_2;
   
--
-- End of file Events_ETS_2.ada
--
