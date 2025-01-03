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
--* File Name:               Function_Calls11_Call_B_Service.adb
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

-- List of services used
with Function_Calls_Function_Calls10_Call_A_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_Function_Calls11_Call_B_Service is
   
   procedure Function_Calls_Function_Calls11_Call_B (
      Input_Value  : in     Application_Types.Base_Integer_Type;
      Output_Value :    out Application_Types.Base_Integer_Type) is
      
      temp : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of Function_Calls11_Call_B
      temp         := Input_Value;
      temp         := temp + 1;
      Output_Value := temp;
      
      
      Function_Calls_Function_Calls10_Call_A_Service.Function_Calls_Function_Calls10_Call_A (
         Input_Value  => temp,
         Output_Value => Output_Value);
      
      
   end Function_Calls_Function_Calls11_Call_B;
   
end Function_Calls_Function_Calls11_Call_B_Service;

--
-- End of file Function_Calls_Function_Calls11_Call_B_Service.adb
--
