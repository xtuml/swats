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
--* File Name:               Events3_Generate_From_Service_Service.adb
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
with Root_Object.Events.objX;

-- List of bridges used
with Events_RPT8_Specify_Requid_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Events_Events3_Generate_From_Service_Service is
   
   procedure Events_Events3_Generate_From_Service (
      Test_No   : in     Application_Types.Base_Integer_Type;
      The_IH_ID : in     Application_Types.Base_Integer_Type) is
      
      The_IH : Root_Object.Object_Access;
      
   begin
   -- start of Events3_Generate_From_Service
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Test_No,
         Requid          => "1241-0000-01-0301               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Bridge                          ",
         Purpose         => "Event from Bridge Function      ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => Test_No,
         The_Requid_Itself  => "1103-0000-01-0711               ");
      
      The_IH := Root_Object.Events.objX.Conditional_Find_One;
      while (The_IH /= null) and then (not (Root_Object.Events.objX.Events_objX_Type(The_IH.all).objX_id =  The_IH_ID) ) loop
         
         The_IH := The_IH.Next_Object;
      end loop;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX1,
            Target_Instance  => The_IH,
            Test_No          => Test_No,
            ASL_Type         => "Sync Service                    ");
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
   end Events_Events3_Generate_From_Service;
   
end Events_Events3_Generate_From_Service_Service;

--
-- End of file Events_Events3_Generate_From_Service_Service.adb
--
