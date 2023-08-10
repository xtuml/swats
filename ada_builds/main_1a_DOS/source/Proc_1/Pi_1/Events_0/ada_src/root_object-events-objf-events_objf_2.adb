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
--* File Name:               Events_objF_2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Proves that an event received by the supertype is polymorphically
--*                           delivered to the second subtype.
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

-- List of bridges used
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objF)
   
   procedure Events_objF_2 (Test          : in     Application_Types.Base_Integer_Type;
                            Test_Number   : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      my_super : Root_Object.Object_Access;
      
      temp : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      -- -----------------------------------------------------------
      --  SUBTYPE
      -- -----------------------------------------------------------
      --  Remember the latest test
      
      Events_Rel_R5.Navigate (
         From  => This_Instance,
         Class => Root_Object.Events.objD.Events_objD_type'tag,
         To    => my_super);
      
      Root_Object.Events.objD.Events_objD_type(my_super.all).latest_test := Test;
      
      
      temp := Root_Object.Events.objD.Events_objD_type(my_super.all).no_of_received_events + 1;
      
      
      Root_Object.Events.objD.Events_objD_type(my_super.all).no_of_received_events := temp;
      
      
      -- -----------------------------------------------------------
      --  Test 5 - Event received from supertype object
      -- -----------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Root_Object.Events.objF.Events_objF_type(This_Instance.all).Report_Test_No,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "objF                            ",
         Purpose         => "subtype                         ");
      
      
      if Test =  5 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objF.Events_objF_type(This_Instance.all).ResultA + 10;
         
         
         Root_Object.Events.objF.Events_objF_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -----------------------------------------------------------
      --  Test 6 - Event not passed onto supertype object
      -- -----------------------------------------------------------
      
      if Test =  6 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objF.Events_objF_type(This_Instance.all).ResultA + 20;
         
         
         Root_Object.Events.objF.Events_objF_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -----------------------------------------------------------
      --  Test 7 - The value of attribute 'ResultA' is changed 
      -- -----------------------------------------------------------
      
      if Test =  7 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objF.Events_objF_type(This_Instance.all).ResultA + 30;
         
         
         Root_Object.Events.objF.Events_objF_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -----------------------------------------------------------
      --  Test 8 - The value of attribute 'ResultA' is only changed 
      --           if an error has occurred.
      -- -----------------------------------------------------------
      
      if Test =  8 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objF.Events_objF_type(This_Instance.all).ResultA + 40;
         
         
         Root_Object.Events.objF.Events_objF_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -----------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objF.Events_objF1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objF.objF1,
            Target_Instance  => This_Instance,
            Test_Number      => Test_Number);
         
         Root_Object.Events.objF.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.Events.objF.Process_Queue;
   end Events_objF_2;
   
--
-- End of file Events_objF_2.ada
--
