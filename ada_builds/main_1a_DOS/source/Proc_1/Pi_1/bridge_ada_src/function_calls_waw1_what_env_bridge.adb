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
--* File Name:               Function_Calls_WAW1_What_Env_Bridge.adb
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
--*  Project Key Letter : Main_BSet
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of services used
with FTE_FTE1_Environment_String_Service;

with Application_Types;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_WAW1_What_Env_Bridge is
   
   procedure Function_Calls_WAW1_What_Env (
      Env_Text :    out Application_Types.Base_Text_Type) is
      
      Local_Env_Text : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of WAW1_What_Env
      Local_Env_Text := "                                ";
      
--
-- FTE start _____________________________________________v--FTE--v_______________________________________________________start FTE
      
      FTE_FTE1_Environment_String_Service.FTE_FTE1_Environment_String (
         This_Environment => Local_Env_Text);
      
-- FTE end   _____________________________________________^--FTE--^_______________________________________________________end   FTE
--

      
      Env_Text := Local_Env_Text;
      
      
   end Function_Calls_WAW1_What_Env;
   
end Function_Calls_WAW1_What_Env_Bridge;

--
-- End of file Function_Calls_WAW1_What_Env_Bridge.adb
--
