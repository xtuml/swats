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
--* File Name:               Events_CP_2.ada
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

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.CP)
   
   procedure Events_CP_2 (Start_Val     : in     Application_Types.Base_Integer_Type;
                          This_Instance : in out Root_Object.Object_Access) is
   
      
      temp : Application_Types.Base_Integer_Type := 1;
      
      Its_Done : Boolean := Application_Types.Boolean_first;
      
   begin
      
      if Start_Val <  10 then
         temp := Start_Val;
         temp := Start_Val + 1;
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.CP.Events_CP1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.CP.CP1,
               Target_Instance  => This_Instance,
               Start_Val        => temp);
            
            Root_Object.Events.CP.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         Its_Done := True;
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.CP.Events_CP2'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.CP.CP2,
               Target_Instance  => This_Instance,
               Start_Val        => Start_Val,
               Got_To_End       => Its_Done);
            
            Root_Object.Events.CP.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      Root_Object.Events.CP.Process_Queue;
   end Events_CP_2;
   
--
-- End of file Events_CP_2.ada
--
