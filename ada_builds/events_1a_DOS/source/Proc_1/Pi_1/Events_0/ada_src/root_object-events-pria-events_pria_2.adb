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
--* File Name:               Events_PriA_2.ada
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
with Root_Object.Events.PriA;

-- List of services used
with Events_Events5_Dump_Text_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.PriA)
   
   procedure Events_PriA_2 (Test_No       : in     Application_Types.Base_Integer_Type;
                            Index         : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      InstPA : Root_Object.Object_Access;
      
   begin
      InstPA := Root_Object.Events.PriA.Conditional_Find_One;
      while (InstPA /= null) and then (not (Root_Object.Events.PriA.Events_PriA_Type(InstPA.all).A_ID =  1) ) loop
         
         InstPA := InstPA.Next_Object;
      end loop;
      
      
      if Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).Poly_A and then
         Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).Poly_B then
         
         if Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).RefA =  0 then
            Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).RefA := 10;
            
         end if;
         
      end if;
      
      
      Events_Events5_Dump_Text_Service.Events_Events5_Dump_Text (
         The_Text => "Start Event In PriA Triggered   ");
      
      
      if (not Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).Done_It) then
         
         Events_Events5_Dump_Text_Service.Events_Events5_Dump_Text (
            The_Text => "StartB Event In PriA Generated T");
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.PriA.Events_PriA3'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.PriA.PriA3,
               Target_Instance  => InstPA,
               Test_No          => Test_No,
               Index            => 2);
            
            Root_Object.Events.PriA.Push (
               Event  => Pushed_Event);
         end;
         
         Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).Done_It := True;
         
      end if;
      
      
      Events_Events5_Dump_Text_Service.Events_Events5_Dump_Text (
         The_Text         => "Finish Event In PriA Generated T");
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.PriA.Events_PriA2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.PriA.PriA2,
            Target_Instance  => This_Instance,
            Test_No          => Test_No);
         
         Root_Object.Events.PriA.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.Events.PriA.Process_Queue;
   end Events_PriA_2;
   
--
-- End of file Events_PriA_2.ada
--
