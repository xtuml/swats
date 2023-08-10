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
--* File Name:               Events_objEDATA_4.ada
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
with Events_RPT2_Test_Passed_Bridge;
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objEDATA)
   
   procedure Events_objEDATA_4 (A             : in     Application_Types.Base_Integer_Type;
                                B             : in     Application_Types.Base_Integer_Type;
                                Test          : in     Application_Types.Base_Integer_Type;
                                Test_Number   : in     Application_Types.Base_Integer_Type;
                                This_Instance : in out Root_Object.Object_Access) is
   
      
      temp : Application_Types.Base_Integer_Type := 1;
      
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Events Data                     ",
         Purpose         => "State 2 reception               ");
      
      
      --  Test 2
      
      if Test =  2 then
         has_failed := False;
         
         if (A /= 1) or else
            (B /= 2) then
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Events.objEDATA.Events_objEDATA1'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Events.objEDATA.objEDATA1,
                  Target_Instance  => This_Instance);
               
               Root_Object.Events.objEDATA.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Event verification state 2      ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -1);
            
            has_failed := True;
            
         else
            
            temp := Root_Object.Events.objEDATA.Events_objEDATA_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Events.objEDATA.Events_objEDATA_type(This_Instance.all).ResultA := temp;
            
         end if;
         
         
         --  Check that the attribute 'ResultA' was manipulated correctly
         
         if Root_Object.Events.objEDATA.Events_objEDATA_type(This_Instance.all).ResultA /= 10 then
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Events.objEDATA.Events_objEDATA1'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Events.objEDATA.objEDATA1,
                  Target_Instance  => This_Instance);
               
               Root_Object.Events.objEDATA.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Event verification state 2      ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -2);
            
            
            has_failed := True;
            
         else
            
            temp := Root_Object.Events.objEDATA.Events_objEDATA_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Events.objEDATA.Events_objEDATA_type(This_Instance.all).ResultA := temp;
            
         end if;
         
      end if;
      
      
      if (not has_failed) then
         
         Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
            Test_Object_Domain => "Event verification state 2      ",
            Test_Number        => Test_Number,
            Test_Value         => temp);
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.objEDATA.Events_objEDATA2'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.objEDATA.objEDATA2,
               Target_Instance  => This_Instance);
            
            Root_Object.Events.objEDATA.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      Root_Object.Events.objEDATA.Process_Queue;
   end Events_objEDATA_4;
   
--
-- End of file Events_objEDATA_4.ada
--
