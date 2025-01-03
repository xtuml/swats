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
--* File Name:               Events_GFB1_Generate_Event_Bridge.adb
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
--*  Project Key Letter : Events_BSet
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Events.objX;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Events_GFB1_Generate_Event_Bridge is
   
   procedure Events_GFB1_Generate_Event (
      Test_No   : in     Application_Types.Base_Integer_Type;
      The_IH_ID : in     Application_Types.Base_Integer_Type) is
      
      the_objX : Root_Object.Object_Access;
      
   begin
   -- start of GFB1_Generate_Event
      the_objX := Root_Object.Events.objX.Conditional_Find_One;
      while (the_objX /= null) and then (not (Root_Object.Events.objX.Events_objX_Type(the_objX.all).objX_id =  The_IH_ID) ) loop
         
         the_objX := the_objX.Next_Object;
      end loop;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX1,
            Target_Instance  => the_objX,
            Test_No          => Test_No,
            ASL_Type         => "Bridge                          ");
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
   end Events_GFB1_Generate_Event;
   
end Events_GFB1_Generate_Event_Bridge;

--
-- End of file Events_GFB1_Generate_Event_Bridge.adb
--
