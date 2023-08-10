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
--* File Name:               Events_objD_3.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state receives the external event that, also sent to the subtype objec
--*                          t.
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
with Events_RPT5_Test_Text_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objD)
   
   procedure Events_objD_3 (Test          : in     Application_Types.Base_Integer_Type;
                            Test_Number   : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      temp : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      -- -------------------------------------------------------------------------
      --  SUPERTYPE
      -- -------------------------------------------------------------------------
      --  Remember the latest test
      Root_Object.Events.objD.Events_objD_type(This_Instance.all).latest_test := Test;
      
      
      temp := Root_Object.Events.objD.Events_objD_type(This_Instance.all).no_of_received_events + 1;
      
      
      Root_Object.Events.objD.Events_objD_type(This_Instance.all).no_of_received_events := temp;
      
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1241-0000-01-0304               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "objD                            ",
         Purpose         => "Supertype to subtype test       ");
      
      Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
         Test_Number => Test_Number,
         Free_Text   => "Obj D State                     ");
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Event passed onto the subtype object
      -- -------------------------------------------------------------------------
      
      if Test =  1 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA + 9999;
         
         
         Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 2 - The value of attribute 'ResultA' is only changed if an error
      --           occurred.
      -- -------------------------------------------------------------------------
      
      if Test =  2 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA + 20;
         
         
         Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 3 - Event received in supertype object, but not passed onto subtype
      --           since the relationship has not been formalised.
      -- -------------------------------------------------------------------------
      
      if Test =  3 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA + 30;
         
         
         Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 4 - Event received in supertype object, but not passed onto subtype 
      --           object, since the subtype object may not receive the event.
      -- -------------------------------------------------------------------------
      
      if Test =  4 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA + 40;
         
         
         Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 5 - Event passed onto the subtype object
      -- -------------------------------------------------------------------------
      
      if Test =  5 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA + 10;
         
         
         Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 6 - The value of attribute 'ResultA' is only changed if an error
      --           occurred.
      -- -------------------------------------------------------------------------
      
      if Test =  6 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA + 20;
         
         
         Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 7 - Event received in supertype object.
      -- -------------------------------------------------------------------------
      
      if Test =  7 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA + 30;
         
         
         Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 8 - Event received in supertype object, but not passed onto subtype 
      --           object, since the subtype object may not receive the event.
      -- -------------------------------------------------------------------------
      
      if Test =  8 then
         
         --  Change the value of attribute 'ResultA'
         
         temp := Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA + 40;
         
         
         Root_Object.Events.objD.Events_objD_type(This_Instance.all).ResultA := temp;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objD.Events_objD1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objD.objD1,
            Target_Instance  => This_Instance,
            Test_Number      => Test_Number);
         
         Root_Object.Events.objD.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      
      -- -------------------------------------------------------------------------
      Root_Object.Events.objD.Process_Queue;
   end Events_objD_3;
   
--
-- End of file Events_objD_3.ada
--
