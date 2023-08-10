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
--* File Name:               Events_TE_2.ada
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

-- List of bridges used
with Events_RPT8_Specify_Requid_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.TE)
   
   procedure Events_TE_2 (Test_No       : in     Application_Types.Base_Integer_Type;
                          This_Instance : in out Root_Object.Object_Access) is
   
      
      temp : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Test_No,
         Requid          => "1241-0000-01-0210               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "State                           ",
         Purpose         => "Ignore Event                    ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => Test_No,
         The_Requid_Itself  => "1241-0000-01-0207               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => Test_No,
         The_Requid_Itself  => "1241-0000-01-0208               ");
      
      temp := Root_Object.Events.TE.Events_TE_type(This_Instance.all).Result;
      temp := temp + 10;
      
      
      Root_Object.Events.TE.Events_TE_type(This_Instance.all).Result := temp;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.TE.Events_TE1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.TE.TE1,
            Target_Instance  => This_Instance,
            Test_No          => Test_No);
         
         Root_Object.Events.TE.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.TE.Events_TE3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.TE.TE3,
            Target_Instance  => This_Instance,
            Test_No          => Test_No,
            Effect_Type      => "Ignored                         ");
         
         Root_Object.Events.TE.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.Events.TE.Process_Queue;
   end Events_TE_2;
   
--
-- End of file Events_TE_2.ada
--
