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
--* File Name:               Events_objJ_4.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state receives an external event that is passed onto its related
--*                           subtype object.
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

-- List of bridges used
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objJ)
   
   procedure Events_objJ_4 (Test_Number   : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      temp : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      -- -----------------------------------------------------------
      --  SUPERTYPE
      -- -----------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Root_Object.Events.objJ.Events_objJ_type(This_Instance.all).ReferenceJ,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "ObjJ                            ",
         Purpose         => "Supertype J                     ");
      
      temp := Root_Object.Events.objJ.Events_objJ_type(This_Instance.all).action_count - 1;
      
      
      Root_Object.Events.objJ.Events_objJ_type(This_Instance.all).action_count := temp;
      
      
      temp := Root_Object.Events.objJ.Events_objJ_type(This_Instance.all).ResultJ + 70;
      
      
      Root_Object.Events.objJ.Events_objJ_type(This_Instance.all).ResultJ := temp;
      
      
      -- -----------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objJ.Events_objJ2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objJ.objJ2,
            Target_Instance  => This_Instance,
            Test_Number      => Test_Number);
         
         Root_Object.Events.objJ.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.Events.objJ.Process_Queue;
   end Events_objJ_4;
   
--
-- End of file Events_objJ_4.ada
--
