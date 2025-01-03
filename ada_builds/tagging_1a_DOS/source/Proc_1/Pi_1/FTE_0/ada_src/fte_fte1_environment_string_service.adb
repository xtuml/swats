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
--* File Name:               FTE1_Environment_String_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This domain based synch service shall return a text string indicating the 
--*                           environment under which this system is executing.
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
--* Domain Name              : Find_The_Environment
--* Domain Key Letter        : FTE
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.FTE.ENV;

with Application_Types;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body FTE_FTE1_Environment_String_Service is
   
   procedure FTE_FTE1_Environment_String (
      This_Environment :    out Application_Types.Base_Text_Type) is
      
      My_Env : Root_Object.Object_Access;
      
   begin
   -- start of FTE1_Environment_String
      My_Env := Root_Object.FTE.ENV.Unconditional_Find_One;
      
      if My_Env /= Null then
         This_Environment := Root_Object.FTE.ENV.FTE_ENV_type(My_Env.all).Where_Are_We;
      else
         This_Environment := "Null Environment                ";
         
      end if;
      
      
   end FTE_FTE1_Environment_String;
   
end FTE_FTE1_Environment_String_Service;

--
-- End of file FTE_FTE1_Environment_String_Service.adb
--
