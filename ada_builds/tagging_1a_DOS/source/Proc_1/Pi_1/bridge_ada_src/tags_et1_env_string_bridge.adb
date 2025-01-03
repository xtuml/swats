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
--* File Name:               TAGS_ET1_Env_String_Bridge.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          @@TAGS-01-0007
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
--*  Project Key Letter : Tags_BSet
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


package body TAGS_ET1_Env_String_Bridge is
   
   procedure TAGS_ET1_Env_String (
      Env_Text :    out Application_Types.Base_Text_Type) is
      
      Local_Env_Text : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of ET1_Env_String
      Local_Env_Text := "                                ";
      
--
-- FTE start _____________________________________________v--FTE--v_______________________________________________________start FTE
      
      FTE_FTE1_Environment_String_Service.FTE_FTE1_Environment_String (
         This_Environment => Local_Env_Text);
      
-- FTE end   _____________________________________________^--FTE--^_______________________________________________________end   FTE
--

      
      Env_Text := Local_Env_Text;
      
      
   end TAGS_ET1_Env_String;
   
end TAGS_ET1_Env_String_Bridge;

--
-- End of file TAGS_ET1_Env_String_Bridge.adb
--
