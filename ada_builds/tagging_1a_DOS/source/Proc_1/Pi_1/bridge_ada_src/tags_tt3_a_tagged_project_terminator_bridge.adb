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
--* File Name:               TAGS_TT3_A_Tagged_Project_Terminator_Bridge.adb
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

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body TAGS_TT3_A_Tagged_Project_Terminator_Bridge is
   
   procedure TAGS_TT3_A_Tagged_Project_Terminator (
      Incoming_Parameter_3 : in     Application_Types.Base_Integer_Type;
      Outgoing_Parameter_3 :    out Application_Types.Base_Integer_Type) is
      
      Local_Integer : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of TT3_A_Tagged_Project_Terminator
      
      -- -----------------
      --  @@TAGS-01-0021 -
      -- -----------------
      Local_Integer        := Incoming_Parameter_3;
      Outgoing_Parameter_3 := Local_Integer;
      
      
   end TAGS_TT3_A_Tagged_Project_Terminator;
   
end TAGS_TT3_A_Tagged_Project_Terminator_Bridge;

--
-- End of file TAGS_TT3_A_Tagged_Project_Terminator_Bridge.adb
--
