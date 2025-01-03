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
--* File Name:               Events_objCD_2.ada
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
with Root_Object.Events.objCD;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objCD)
   
   procedure Events_objCD_2 (Test_No       : in     Application_Types.Base_Integer_Type;
                             Deleted       : in     Boolean;
                             This_Instance : in out Root_Object.Object_Access) is
   
      
      newCD : Root_Object.Object_Access;
      
      temp : Application_Types.Base_Integer_Type := 1;
      
   begin
      newCD := Root_Object.Events.objCD.Conditional_Find_One;
      while (newCD /= null) and then (not (Root_Object.Events.objCD.Events_objCD_Type(newCD.all).idCD =  1) ) loop
         
         newCD := newCD.Next_Object;
      end loop;
      
      temp := Root_Object.Events.objCD.Events_objCD_type(newCD.all).CDTotal;
      temp := temp + 10;
      
      
      Root_Object.Events.objCD.Events_objCD_type(newCD.all).CDTotal := temp;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objCD.Events_objCD2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objCD.objCD2,
            Target_Instance  => This_Instance,
            Test_No          => Test_No,
            Deleted          => Deleted);
         
         Root_Object.Events.objCD.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.Events.objCD.Process_Queue;
   end Events_objCD_2;
   
--
-- End of file Events_objCD_2.ada
--
