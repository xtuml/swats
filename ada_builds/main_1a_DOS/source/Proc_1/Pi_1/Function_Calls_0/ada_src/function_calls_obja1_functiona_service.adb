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
--* File Name:               Function_Calls_objA1_FunctionA_Service.adb
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
with Root_Object.Function_Calls.objA;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_objA1_FunctionA_Service is
   
   procedure Function_Calls_objA1_FunctionA (
      InputA  : in     Application_Types.Base_Integer_Type;
      OutputA :    out Application_Types.Base_Integer_Type) is
      
      an_instance_A : Root_Object.Object_Access;
      
      temp : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of objA1_FunctionA
      an_instance_A := Root_Object.Function_Calls.objA.Conditional_Find_One;
      while (an_instance_A /= null) and then (not (Root_Object.Function_Calls.objA.Function_Calls_objA_Type(an_instance_A.all).ReferenceA =  1) ) loop
         
         an_instance_A := an_instance_A.Next_Object;
      end loop;
      
      
      if InputA /= 0 then
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Function_Calls.objA.Function_Calls_objA1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Function_Calls.objA.objA1,
               Target_Instance  => an_instance_A);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      else
         temp := Root_Object.Function_Calls.objA.Function_Calls_objA_type(an_instance_A.all).ResultA + 10;
         
         
         Root_Object.Function_Calls.objA.Function_Calls_objA_type(an_instance_A.all).ResultA := temp;
      end if;
      
      OutputA := InputA + 10;
      
      
   end Function_Calls_objA1_FunctionA;
   
end Function_Calls_objA1_FunctionA_Service;

--
-- End of file Function_Calls_objA1_FunctionA_Service.adb
--
