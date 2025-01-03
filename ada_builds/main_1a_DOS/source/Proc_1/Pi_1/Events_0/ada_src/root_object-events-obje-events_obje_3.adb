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
--* File Name:               Events_objE_3.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state receives the external event that is also sent to the supertype
--*                           object.
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
with Events_RPT8_Specify_Requid_Bridge;
with Events_RPT5_Test_Text_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objE)
   
   procedure Events_objE_3 (Test          : in     Application_Types.Base_Integer_Type;
                            Test_Number   : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      my_super : Root_Object.Object_Access;
      
      temp : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      -- -------------------------------------------------------------------------
      --  SUBTYPE
      -- -------------------------------------------------------------------------
      --  Remember the latest test
      
      Events_Rel_R5.Navigate (
         From  => This_Instance,
         Class => Root_Object.Events.objD.Events_objD_type'tag,
         To    => my_super);
      
      Root_Object.Events.objD.Events_objD_type(my_super.all).latest_test := Test;
      
      
      temp := Root_Object.Events.objD.Events_objD_type(my_super.all).no_of_received_events + 1;
      
      
      Root_Object.Events.objD.Events_objD_type(my_super.all).no_of_received_events := temp;
      
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Root_Object.Events.objE.Events_objE_type(This_Instance.all).Report_Test_No,
         Requid          => "1241-0000-01-0304               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "objE                            ",
         Purpose         => "subtype                         ");
      
      Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
         Test_Number => Root_Object.Events.objE.Events_objE_type(This_Instance.all).Report_Test_No,
         Free_Text   => "Obj E State                     ");
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Event received from supertype object
      -- -------------------------------------------------------------------------
      
      if Test =  1 then
         
         Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
            Requid_Test_Number => Root_Object.Events.objE.Events_objE_type(This_Instance.all).Report_Test_No,
            The_Requid_Itself  => "1241-0000-01-0404               ");
         
         Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
            Requid_Test_Number => Root_Object.Events.objE.Events_objE_type(This_Instance.all).Report_Test_No,
            The_Requid_Itself  => "1241-0000-01-0405               ");
         
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objE.Events_objE_type(This_Instance.all).ResultA + 999;
         
         
         Root_Object.Events.objE.Events_objE_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 2 - Event not passed onto supertype object
      -- -------------------------------------------------------------------------
      
      if Test =  2 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objE.Events_objE_type(This_Instance.all).ResultA + 20;
         
         
         Root_Object.Events.objE.Events_objE_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 3 - The value of attribute 'ResultA' is changed 
      -- -------------------------------------------------------------------------
      
      if Test =  3 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objE.Events_objE_type(This_Instance.all).ResultA + 30;
         
         
         Root_Object.Events.objE.Events_objE_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 4 - The value of attribute 'ResultA' is only changed if an error has
      --           occurred.
      -- -------------------------------------------------------------------------
      
      if Test =  4 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objE.Events_objE_type(This_Instance.all).ResultA + 40;
         
         
         Root_Object.Events.objE.Events_objE_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objE.Events_objE1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objE.objE1,
            Target_Instance  => This_Instance,
            Test_Number      => Test_Number);
         
         Root_Object.Events.objE.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.Events.objE.Process_Queue;
   end Events_objE_3;
   
--
-- End of file Events_objE_3.ada
--
