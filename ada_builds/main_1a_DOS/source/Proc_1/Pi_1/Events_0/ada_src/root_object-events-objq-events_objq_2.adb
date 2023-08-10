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
--* File Name:               Events_objQ_2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description               event to this subtype.
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
with Root_Object.Events.objP;

-- List of relationships used
with Events_rel_R4;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objQ)
   
   procedure Events_objQ_2 (Test          : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      my_super : Root_Object.Object_Access;
      
      temp : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      -- -----------------------------------------------------------
      --  SUBTYPE
      -- -----------------------------------------------------------
      --  Remember the latest test
      
      Events_Rel_R4.Navigate (
         From  => This_Instance,
         Class => Root_Object.Events.objP.Events_objP_type'tag,
         To    => my_super);
      
      Root_Object.Events.objP.Events_objP_type(my_super.all).latest_test := Test;
      
      
      temp := Root_Object.Events.objP.Events_objP_type(my_super.all).number_of_received_events + 1;
      
      
      Root_Object.Events.objP.Events_objP_type(my_super.all).number_of_received_events := temp;
      
      
      -- -----------------------------------------------------------
      --  Test 1 - Event received from supertype object
      -- -----------------------------------------------------------
      --  [] = RPT1:Start_Test[Test, "1241-0000-01-0405", "Events", "objQ", "subtype"]
      --  Change the value of attribute 'ResultQ'
      
      temp := Root_Object.Events.objQ.Events_objQ_type(This_Instance.all).Result_Q + 
      Root_Object.Events.objQ.Events_objQ_type(This_Instance.all).Value_To_Add;
      
      
      Root_Object.Events.objQ.Events_objQ_type(This_Instance.all).Result_Q := temp;
      
      
      temp := Root_Object.Events.objP.Events_objP_type(my_super.all).Result_P + Root_Object.Events.objQ.Events_objQ_type(This_Instance.all).Value_To_Add;
      
      
      Root_Object.Events.objP.Events_objP_type(my_super.all).Result_P := temp;
      
      
      -- -----------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objQ.Events_objQ1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objQ.objQ1,
            Target_Instance  => This_Instance);
         
         Root_Object.Events.objQ.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.Events.objQ.Process_Queue;
   end Events_objQ_2;
   
--
-- End of file Events_objQ_2.ada
--
