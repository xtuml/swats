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
--* File Name:               Events_BTD1_Into_Creation_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Cause transition into creation state, for subsequent deletion
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
with Root_Object.Events.BTD;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Events_BTD1_Into_Creation_Service is
   
   procedure Events_BTD1_Into_Creation (
      Test        : in     Application_Types.Base_Integer_Type;
      Test_Number : in     Application_Types.Base_Integer_Type) is
      
      newBTD : Root_Object.Object_Access;
      
      Identity : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of BTD1_Into_Creation
      
      -- Create an instance
      Identity := 100 + Test;
      
      
      newBTD := Root_Object.Events.BTD.Create;
      Root_Object.Events.BTD.Events_BTD_Type(newBTD.all).idBTD       := Identity;
      Root_Object.Events.BTD.Events_BTD_Type(newBTD.all).ResultA     := 0;
      Root_Object.Events.BTD.Events_BTD_Type(newBTD.all).Current_State   := Root_Object.Events.BTD.Creation_state;
      
      
      -- Generate this instance
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.BTD.Events_BTD5'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.BTD.BTD5,
            Target_Instance  => newBTD,
            Test             => Test,
            Test_Number      => Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      -- -------------------------------------------------------------------------
      
   end Events_BTD1_Into_Creation;
   
end Events_BTD1_Into_Creation_Service;

--
-- End of file Events_BTD1_Into_Creation_Service.adb
--
