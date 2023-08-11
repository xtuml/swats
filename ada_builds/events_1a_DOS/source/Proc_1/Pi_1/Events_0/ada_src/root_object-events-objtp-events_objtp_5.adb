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
--* File Name:               Events_objTP_5.ada
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
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT2_Test_Passed_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objTP)
   
   procedure Events_objTP_5 (Test_No       : in     Application_Types.Base_Integer_Type;
                             Text_Input    : in     Application_Types.Base_Text_Type;
                             This_Instance : in out Root_Object.Object_Access) is
   
      
   begin
      
      if Text_Input =  "Text Passed                     " then
         
         Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
            Test_Object_Domain => "Text Input                      ",
            Test_Number        => Test_No,
            Test_Value         => 0);
         
      else
         Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
            Failed_Domain_Object => "Text Input                      ",
            Failed_Test_Number   => Test_No,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objTP.Events_objTP3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objTP.objTP3,
            Target_Instance  => This_Instance);
         
         Root_Object.Events.objTP.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.Events.objTP.Process_Queue;
   end Events_objTP_5;
   
--
-- End of file Events_objTP_5.ada
--
