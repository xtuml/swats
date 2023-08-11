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
--* File Name:               TAGS_TD1_Call_Tagged_Terminators_Service.adb
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

-- List of hard coded Ada95 packages used
with TT;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body TAGS_TD1_Call_Tagged_Terminators_Service is
   
   procedure TAGS_TD1_Call_Tagged_Terminators (
      Two_Tags_Result :    out Boolean) is
      
      Output_From_One : Application_Types.Base_Integer_Type := 1;
      Input_To_One    : Application_Types.Base_Integer_Type := 1;
      Output_From_Two : Application_Types.Base_Integer_Type := 1;
      Input_To_Two    : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of TD1_Call_Tagged_Terminators
      Output_From_One := 0;
      Input_To_One    := 99;
      Output_From_Two := 0;
      Input_To_Two    := 99;
      
      --  Call Two tagged handcoded terminators in this bridge
      
      TT.A_Tagged_Dummy_Terminator_One (
         Mickey_Mouse_Input_One  => Input_To_One,
         Minnie_Mouse_Output_One => Output_From_One);
      
      
      TT.A_Tagged_Dummy_Terminator_Two (
         Input_Two  => Input_To_Two,
         Output_Two => Output_From_Two);
      
      
      if Output_From_One =  Input_To_One or else
         Output_From_Two =  Input_To_Two then
         Two_Tags_Result := False;
      else
         Two_Tags_Result := True;
         
      end if;
      
      
   end TAGS_TD1_Call_Tagged_Terminators;
   
end TAGS_TD1_Call_Tagged_Terminators_Service;

--
-- End of file TAGS_TD1_Call_Tagged_Terminators_Service.adb
--
