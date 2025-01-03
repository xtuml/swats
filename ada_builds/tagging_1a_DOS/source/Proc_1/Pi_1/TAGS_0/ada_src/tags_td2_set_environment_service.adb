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
--* File Name:               TAGS_TD2_Set_Environment_Service.adb
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
--* Domain Name              : Tagging
--* Domain Key Letter        : TAGS
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.TAGS.TD;

-- List of bridges used
with TAGS_ET2_Env_Number_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body TAGS_TD2_Set_Environment_Service is
   
   procedure TAGS_TD2_Set_Environment (
      Input_Test_Data  : in     Root_Object.Object_Access;
      Output_Test_Data :    out Root_Object.Object_Access) is
      
      Local_Input : Root_Object.Object_Access;
      
      Environment_Variable : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of TD2_Set_Environment
      Local_Input := Input_Test_Data;
      
      
      --  Call terminator bridge
      
      TAGS_ET2_Env_Number_Bridge.TAGS_ET2_Env_Number (
         Env_Integer => Environment_Variable);
      
      
      Root_Object.TAGS.TD.TAGS_TD_type(Local_Input.all).Number := Environment_Variable;
      
      
      Output_Test_Data := Local_Input;
      
      
   end TAGS_TD2_Set_Environment;
   
end TAGS_TD2_Set_Environment_Service;

--
-- End of file TAGS_TD2_Set_Environment_Service.adb
--
