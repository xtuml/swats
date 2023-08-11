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
--* File Name:               TAGS_TT4_A_Tagged_Dummy_Terminator_Two_Bridge.adb
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
--*  Project Key Letter : Tagged_and_Bagged_Build_Set
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


package body TAGS_TT4_A_Tagged_Dummy_Terminator_Two_Bridge is
   
   procedure TAGS_TT4_A_Tagged_Dummy_Terminator_Two (
      Input_Two  : in     Application_Types.Base_Integer_Type;
      Output_Two :    out Application_Types.Base_Integer_Type) is
      
      local_value : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of TT4_A_Tagged_Dummy_Terminator_Two
      
      -- -----------------
      --  @@TAGS-01-0022 -
      -- -----------------
      local_value := 1234;
      local_value := Input_Two;
      Output_Two  := local_value;
      
      
   end TAGS_TT4_A_Tagged_Dummy_Terminator_Two;
   
end TAGS_TT4_A_Tagged_Dummy_Terminator_Two_Bridge;

--
-- End of file TAGS_TT4_A_Tagged_Dummy_Terminator_Two_Bridge.adb
--
