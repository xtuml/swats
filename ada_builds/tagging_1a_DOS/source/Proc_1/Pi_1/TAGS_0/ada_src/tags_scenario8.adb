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
--* File Name:               TAGS_Scenario8.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Perform_Terminator_Tag_Tests
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

-- List of services used
with TAGS_TD1_Call_Tagged_Terminators_Service;

-- List of bridges used
with TAGS_UT2_An_Untagged_Project_Terminator_Bridge;
with TAGS_UT1_An_Untagged_Local_Terminator_Bridge;
with TAGS_RPT4_Test_Unsupported_Bridge;
with TAGS_RPT2_Test_Passed_Bridge;
with TAGS_RPT3_Test_Failed_Bridge;
with TAGS_RPT8_Specify_Requid_Bridge;
with TAGS_RPT1_Start_Test_Bridge;

-- List of hard coded Ada95 packages used
with TT;

-- List of domain types used
with TAGS_Domain_Types;
use type TAGS_Domain_Types.Environment_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure TAGS_Scenario8 is
   
      
      My_Test : Root_Object.Object_Access;
      
      The_Test_Number        : Application_Types.Base_Integer_Type := 1;
      Local_Input_Parameter  : Application_Types.Base_Integer_Type := 1;
      Local_Output_Parameter : Application_Types.Base_Integer_Type := 1;
      
      Where_Are_We : TAGS_Domain_Types.Environment_Type     := TAGS_Domain_Types.Environment_Type_first;
      
      This_Result : Boolean := Application_Types.Boolean_first;
      
   begin
      
      --  Perform calls to tagged terminator and untagged terminator
      My_Test := Root_Object.TAGS.TD.Unconditional_Find_One;
      The_Test_Number := Root_Object.TAGS.TD.TAGS_TD_type(My_Test.all).Number;
      Where_Are_We    := Root_Object.TAGS.TD.TAGS_TD_type(My_Test.all).Environment;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - Call tagged local terminator
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-1111               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Terminators                     ",
         Purpose         => "Tagged locally defined          ");
      
      TAGS_RPT8_Specify_Requid_Bridge.TAGS_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1101-0000-01-0112               ");
      
      
      Local_Input_Parameter  := 1;
      Local_Output_Parameter := 0;
      
      
      TT.A_Tagged_Local_Terminator (
         Incoming_Parameter_1 => Local_Input_Parameter,
         Outgoing_Parameter_1 => Local_Output_Parameter);
      
      
      if Where_Are_We =  TAGS_Domain_Types.WACA then
         
         if Local_Output_Parameter =  Local_Input_Parameter then
            
            TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
               Failed_Domain_Object => "Tagged locally defined          ",
               Failed_Test_Number   => The_Test_Number,
               Failed_Test_Value    => -1);
            
         else
            TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
               Test_Object_Domain => "Tagged locally defined          ",
               Test_Number        => The_Test_Number,
               Test_Value         => 0);
            
         end if;
         
      else
         TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
            Unsupported_Test_Number => The_Test_Number);
         
      end if;
      
      
      The_Test_Number := The_Test_Number + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2 - Call tagged project terminator
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-1111               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Terminators                     ",
         Purpose         => "Untagged local defined          ");
      
      
      Local_Input_Parameter  := 1;
      Local_Output_Parameter := 0;
      
      
      TAGS_UT1_An_Untagged_Local_Terminator_Bridge.TAGS_UT1_An_Untagged_Local_Terminator (
         Incoming_Parameter_2 => Local_Input_Parameter,
         Outgoing_Parameter_2 => Local_Output_Parameter);
      
      
      if Where_Are_We =  TAGS_Domain_Types.WACA then
         
         if Local_Output_Parameter /= Local_Input_Parameter then
            
            TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
               Failed_Domain_Object => "Untagged local defined          ",
               Failed_Test_Number   => The_Test_Number,
               Failed_Test_Value    => Local_Output_Parameter);
            
         else
            TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
               Test_Object_Domain => "Untagged local defined          ",
               Test_Number        => The_Test_Number,
               Test_Value         => 0);
            
         end if;
         
      else
         TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
            Unsupported_Test_Number => The_Test_Number);
         
      end if;
      
      
      The_Test_Number := The_Test_Number + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - Call local untagged terminator
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-1111               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Terminators                     ",
         Purpose         => "Tagged project defined          ");
      
      TAGS_RPT8_Specify_Requid_Bridge.TAGS_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1101-0000-01-0112               ");
      
      
      Local_Input_Parameter  := 1;
      Local_Output_Parameter := 0;
      
      
      TT.A_Tagged_Project_Terminator (
         Incoming_Parameter_3 => Local_Input_Parameter,
         Outgoing_Parameter_3 => Local_Output_Parameter);
      
      
      if Where_Are_We =  TAGS_Domain_Types.WACA then
         
         if Local_Output_Parameter =  Local_Input_Parameter then
            
            TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
               Failed_Domain_Object => "Tagged project defined          ",
               Failed_Test_Number   => The_Test_Number,
               Failed_Test_Value    => Local_Output_Parameter);
            
         else
            TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
               Test_Object_Domain => "Tagged project defined          ",
               Test_Number        => The_Test_Number,
               Test_Value         => 0);
            
         end if;
         
      else
         TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
            Unsupported_Test_Number => The_Test_Number);
         
      end if;
      
      
      The_Test_Number := The_Test_Number + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 4 - Call untagged project terminator
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-1111               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Terminators                     ",
         Purpose         => "Untagged project defined        ");
      
      
      Local_Input_Parameter  := 1;
      Local_Output_Parameter := 0;
      
      
      TAGS_UT2_An_Untagged_Project_Terminator_Bridge.TAGS_UT2_An_Untagged_Project_Terminator (
         Incoming_Parameter_4 => Local_Input_Parameter,
         Outgoing_Parameter_4 => Local_Output_Parameter);
      
      
      if Where_Are_We =  TAGS_Domain_Types.WACA then
         
         if Local_Output_Parameter /= Local_Input_Parameter then
            
            TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
               Failed_Domain_Object => "Untagged project defined        ",
               Failed_Test_Number   => The_Test_Number,
               Failed_Test_Value    => -1);
            
         else
            TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
               Test_Object_Domain => "Untagged project defined        ",
               Test_Number        => The_Test_Number,
               Test_Value         => 0);
            
         end if;
         
      else
         TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
            Unsupported_Test_Number => The_Test_Number);
         
      end if;
      
      
      The_Test_Number := The_Test_Number + 1;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------------
      --  Test 5
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-1111               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Terminators                     ",
         Purpose         => "Two tagged called from untagged ");
      
      
      This_Result := False;
      
      
      TAGS_TD1_Call_Tagged_Terminators_Service.TAGS_TD1_Call_Tagged_Terminators (
         Two_Tags_Result => This_Result);
      
      
      if Where_Are_We =  TAGS_Domain_Types.WACA then
         
         if This_Result =  False then
            
            TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
               Failed_Domain_Object => "Two tagged called from untagged ",
               Failed_Test_Number   => The_Test_Number,
               Failed_Test_Value    => -1);
            
         else
            TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
               Test_Object_Domain => "Two tagged called from untagged ",
               Test_Number        => The_Test_Number,
               Test_Value         => 0);
            
         end if;
         
      else
         TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
            Unsupported_Test_Number => The_Test_Number);
         
      end if;
      
      
      The_Test_Number := The_Test_Number + 1;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(My_Test.all).Number := The_Test_Number;
      
   end TAGS_Scenario8;
   
--
-- End of file TAGS_Scenario8.ada
--
