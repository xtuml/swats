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
--* File Name:               Function_Calls_objB3_FunctionG_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This function receives an input parameter but does not return a parameter t
--*                          o the calling function.
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

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_objB3_FunctionG_Service is
   
   procedure Function_Calls_objB3_FunctionG (
      InputA : in     Root_Object.Object_Access;
      InputB : in     Application_Types.Base_Integer_Type) is
      
      tempA : Root_Object.Object_Access;
      
      tempB : Application_Types.Base_Integer_Type := 1;
      tempC : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of objB3_FunctionG
      tempA := InputA;
      tempB := InputB;
      
      if Root_Object.Function_Calls.objB.Function_Calls_objB_type(tempA.all).ReferenceB /= tempB then
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Function_Calls.objB.Function_Calls_objB1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Function_Calls.objB.objB1,
               Target_Instance  => tempA);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      else
         
         --  tempC = tempA.ResultA + 10
         tempC := 10;
         
         
         Root_Object.Function_Calls.objB.Function_Calls_objB_type(tempA.all).ResultA := tempC;
         
      end if;
      
      
   end Function_Calls_objB3_FunctionG;
   
end Function_Calls_objB3_FunctionG_Service;

--
-- End of file Function_Calls_objB3_FunctionG_Service.adb
--
