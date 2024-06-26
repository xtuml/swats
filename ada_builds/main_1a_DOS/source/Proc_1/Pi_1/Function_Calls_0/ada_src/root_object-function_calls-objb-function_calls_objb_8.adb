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
--* File Name:               Function_Calls_objB_8.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Creation State.
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
--* Domain Name              : Function_Calls
--* Domain Key Letter        : Function_Calls
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Function_Calls.objB;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Function_Calls.objB)
   
   procedure Function_Calls_objB_8 (Test_Case_ID  : in     Application_Types.Base_Integer_Type;
                                    This_Instance : in out Root_Object.Object_Access) is
   
      
      new_object_B : Root_Object.Object_Access;
      
   begin
      
      -- an_instance_B = find-one Object_B where ReferenceB = Test_Case_ID
      -- generate objB3:Start(Test_Case_ID) to an_instance_B
      
      new_object_B := Root_Object.Function_Calls.objB.Create;
      Root_Object.Function_Calls.objB.Function_Calls_objB_Type(new_object_B.all).ReferenceB    := Test_Case_ID;
      Root_Object.Function_Calls.objB.Function_Calls_objB_Type(new_object_B.all).ResultA       := 0;
      Root_Object.Function_Calls.objB.Function_Calls_objB_Type(new_object_B.all).Current_State := Root_Object.Function_Calls.objB.Initial;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Function_Calls.objB.Function_Calls_objB6'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Function_Calls.objB.objB6,
            Target_Instance  => new_object_B,
            Test_Case_ID     => Test_Case_ID);
         
         Root_Object.Function_Calls.objB.Push (
            Event  => Pushed_Event);
      end;
      Root_Object.Function_Calls.objB.Process_Queue;
   end Function_Calls_objB_8;
   
--
-- End of file Function_Calls_objB_8.ada
--
