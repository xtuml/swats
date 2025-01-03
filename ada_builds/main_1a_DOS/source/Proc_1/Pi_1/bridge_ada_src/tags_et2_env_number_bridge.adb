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
--* File Name:               TAGS_ET2_Env_Number_Bridge.adb
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
with FTE_FTE2_Environment_Number_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body TAGS_ET2_Env_Number_Bridge is
   
   procedure TAGS_ET2_Env_Number (
      Env_Integer :    out Application_Types.Base_Integer_Type) is
      
      Local_Env_Integer : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of ET2_Env_Number
      Local_Env_Integer := 99;
      
--
-- FTE start _____________________________________________v--FTE--v_______________________________________________________start FTE
      
      FTE_FTE2_Environment_Number_Service.FTE_FTE2_Environment_Number (
         Env_Number => Local_Env_Integer);
      
-- FTE end   _____________________________________________^--FTE--^_______________________________________________________end   FTE
--

      
      Env_Integer := Local_Env_Integer;
      
      
   end TAGS_ET2_Env_Number;
   
end TAGS_ET2_Env_Number_Bridge;

--
-- End of file TAGS_ET2_Env_Number_Bridge.adb
--
