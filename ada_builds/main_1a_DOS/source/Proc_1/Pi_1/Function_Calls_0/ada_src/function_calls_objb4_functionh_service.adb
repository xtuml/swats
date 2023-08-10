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
--* File Name:               Function_Calls_objB4_FunctionH_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This function receives no parameters and returns no parameters.
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


package body Function_Calls_objB4_FunctionH_Service is
   
   procedure Function_Calls_objB4_FunctionH is
      
      an_instance_B : Root_Object.Object_Access;
      
      tempA : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of objB4_FunctionH
      an_instance_B := Root_Object.Function_Calls.objB.Conditional_Find_One;
      while (an_instance_B /= null) and then (not (Root_Object.Function_Calls.objB.Function_Calls_objB_Type(an_instance_B.all).ReferenceB =  9) ) loop
         
         an_instance_B := an_instance_B.Next_Object;
      end loop;
      
      
      --  tempA = an_instance_B.ResultA + 10
      tempA := 10;
      
      
      Root_Object.Function_Calls.objB.Function_Calls_objB_type(an_instance_B.all).ResultA := tempA;
      
      
   end Function_Calls_objB4_FunctionH;
   
end Function_Calls_objB4_FunctionH_Service;

--
-- End of file Function_Calls_objB4_FunctionH_Service.adb
--
