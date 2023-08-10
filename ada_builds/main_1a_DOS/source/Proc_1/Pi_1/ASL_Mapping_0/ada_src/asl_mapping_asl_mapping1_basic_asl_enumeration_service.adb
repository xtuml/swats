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
--* File Name:               ASL_Mapping1_basic_asl_enumeration_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This function test basic ASL operations on base types and enumerated types.
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
--* Domain Name              : ASL_Mapping
--* Domain Key Letter        : ASL_Mapping
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.ASL_Mapping.objIF;

-- List of bridges used
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

-- List of domain types used
with ASL_Mapping_Domain_Types;
with ASL_Mapping_Domain_Types.Ops;
use type ASL_Mapping_Domain_Types.Simple_Structure_Type;
use type ASL_Mapping_Domain_Types.Enum;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_ASL_Mapping1_basic_asl_enumeration_Service is
   
   procedure ASL_Mapping_ASL_Mapping1_basic_asl_enumeration (
      Test_Start : in     Application_Types.Base_Integer_Type;
      Final_Test :    out Application_Types.Base_Integer_Type) is
      
      Control_Instance_Handle : Root_Object.Object_Access;
      
      Simple_Structure : ASL_Mapping_Domain_Types.Simple_Structure_Type;
      
      a_real       : Application_Types.Base_Float_Type := 1.0;
      other_real   : Application_Types.Base_Float_Type := 1.0;
      Control_Real : Application_Types.Base_Float_Type := 1.0;
      Local_Real   : Application_Types.Base_Float_Type := 1.0;
      
      Test            : Application_Types.Base_Integer_Type := 1;
      an_int          : Application_Types.Base_Integer_Type := 1;
      other_int       : Application_Types.Base_Integer_Type := 1;
      Failure_Code    : Application_Types.Base_Integer_Type := 1;
      Control_Integer : Application_Types.Base_Integer_Type := 1;
      Local_Integer   : Application_Types.Base_Integer_Type := 1;
      
      some_alpha_text        : Application_Types.Base_Text_Type := (others => ' ');
      lower_case_text        : Application_Types.Base_Text_Type := (others => ' ');
      some_numeric_text      : Application_Types.Base_Text_Type := (others => ' ');
      an_asterisk            : Application_Types.Base_Text_Type := (others => ' ');
      an_at                  : Application_Types.Base_Text_Type := (others => ' ');
      a_minus                : Application_Types.Base_Text_Type := (others => ' ');
      an_equals              : Application_Types.Base_Text_Type := (others => ' ');
      a_plus                 : Application_Types.Base_Text_Type := (others => ' ');
      an_underscore          : Application_Types.Base_Text_Type := (others => ' ');
      a_slash                : Application_Types.Base_Text_Type := (others => ' ');
      a_question             : Application_Types.Base_Text_Type := (others => ' ');
      a_fullstop             : Application_Types.Base_Text_Type := (others => ' ');
      a_comma                : Application_Types.Base_Text_Type := (others => ' ');
      an_ampersand           : Application_Types.Base_Text_Type := (others => ' ');
      left_bracket           : Application_Types.Base_Text_Type := (others => ' ');
      right_bracket          : Application_Types.Base_Text_Type := (others => ' ');
      a_colon                : Application_Types.Base_Text_Type := (others => ' ');
      a_tilda                : Application_Types.Base_Text_Type := (others => ' ');
      a_pipe                 : Application_Types.Base_Text_Type := (others => ' ');
      an_exclamation         : Application_Types.Base_Text_Type := (others => ' ');
      a_single_quote         : Application_Types.Base_Text_Type := (others => ' ');
      a_left_tick            : Application_Types.Base_Text_Type := (others => ' ');
      a_power_operator       : Application_Types.Base_Text_Type := (others => ' ');
      a_left_square_bracket  : Application_Types.Base_Text_Type := (others => ' ');
      a_rigt_square_bracket  : Application_Types.Base_Text_Type := (others => ' ');
      a_left_curly_bracket   : Application_Types.Base_Text_Type := (others => ' ');
      a_right_curley_bracket : Application_Types.Base_Text_Type := (others => ' ');
      a_hash                 : Application_Types.Base_Text_Type := (others => ' ');
      other_text             : Application_Types.Base_Text_Type := (others => ' ');
      Control_String         : Application_Types.Base_Text_Type := (others => ' ');
      Local_String           : Application_Types.Base_Text_Type := (others => ' ');
      
      an_enum      : ASL_Mapping_Domain_Types.Enum            := ASL_Mapping_Domain_Types.Enum_first;
      Control_Enum : ASL_Mapping_Domain_Types.Enum            := ASL_Mapping_Domain_Types.Enum_first;
      Local_Enum   : ASL_Mapping_Domain_Types.Enum            := ASL_Mapping_Domain_Types.Enum_first;
      
      Has_Failed      : Boolean := Application_Types.Boolean_first;
      a_bool          : Boolean := Application_Types.Boolean_first;
      other_bool      : Boolean := Application_Types.Boolean_first;
      Control_Boolean : Boolean := Application_Types.Boolean_first;
      Local_Boolean   : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of ASL_Mapping1_basic_asl_enumeration
      
      --  -------------------------------------------------------------------------------------------
      --  The ASL <switch> statement shall be supported
      --  1103-0000-01-0411
      --  The ASL shall support user defined types
      --  1103-0000-01-0312
      --  -------------------------------------------------------------------------------------------
      --  -------------------------------------------------------------------------------------------
      --  TEST 1 - Check to ensure that local variables are correctly assigned
      --  -------------------------------------------------------------------------------------------
      Test := Test_Start;
      
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0311               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Basic ASL DBSS                  ",
         Purpose         => "Local variable assignment       ");
      
      
      Has_Failed := False;
      an_int     := 1;
      a_real     := 2.3;
      
      
      --  Check that 32 characters can handled
      
      some_alpha_text   := "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEF";
      lower_case_text   := "abcdefghijklmnopqrstuvwxyzabcdef";
      some_numeric_text := "12345678901234567890123456789012";
      
      
      --  Check that all characters are permitted.
      
      an_asterisk            := "*                               ";
      an_at                  := "@                               ";
      a_minus                := "-                               ";
      an_equals              := "=                               ";
      a_plus                 := "+                               ";
      an_underscore          := "_                               ";
      a_slash                := "/                               ";
      a_question             := "?                               ";
      a_fullstop             := ".                               ";
      a_comma                := ",                               ";
      an_ampersand           := "&                               ";
      left_bracket           := "(                               ";
      right_bracket          := ")                               ";
      a_colon                := ":                               ";
      a_tilda                := "~                               ";
      a_pipe                 := "|                               ";
      an_exclamation         := "!                               ";
      a_single_quote         := "'                               ";
      a_left_tick            := "`                               ";
      a_power_operator       := "^                               ";
      a_left_square_bracket  := "[                               ";
      a_rigt_square_bracket  := "]                               ";
      a_left_curly_bracket   := "{                               ";
      a_right_curley_bracket := "}                               ";
      a_hash                 := "#                               ";
      
      
      --  Multiple line comment not supported by WACA. Uncomment if this changes
      --    -{
      --      The following are not permitted : 
      --      a_backslash    = "\"
      --      a_percent      = ""
      --      a_semi_colon   = ";"
      --    }-
      
      a_bool     := False;
      other_int  := an_int;
      other_real := a_real;
      other_text := some_alpha_text;
      other_bool := a_bool;
      
      
      if an_int =  other_int then
         
         if a_real =  other_real then
            
            if a_bool =  other_bool then
               
               if some_alpha_text /= other_text then
                  
                  Has_Failed   := True;
                  Failure_Code := -10;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -20;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -30;
         end if;
         
      else
         Has_Failed := True;
         Failure_Code := -40;
         
      end if;
      
      
      if Has_Failed then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Basic ASL                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      --  -------------------------------------------------------------------------------------------
      --  TEST 2 - Check that enumerated types are being used correctly
      --  -------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0312               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Basic ASL DBSS                  ",
         Purpose         => "Enumerated Types                ");
      
      
      Has_Failed := False;
      an_enum := ASL_Mapping_Domain_Types.John;
      
      case an_enum is
         when ASL_Mapping_Domain_Types.John =>
            Has_Failed := False;
            
         
         when ASL_Mapping_Domain_Types.Richard =>
            
            Has_Failed   := True;
            Failure_Code := -10;
         
         when others =>
            Has_Failed   := True;
            Failure_Code := -20;
            
         
      end case;
      
      
      if Has_Failed then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Basic ASL                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      --  -------------------------------------------------------------------------------------------
      --  TEST 3 - Check that enumerated types are being used correctly
      --  -------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0312               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Basic ASL DBSS                  ",
         Purpose         => "Enumerated Types                ");
      
      
      Has_Failed := False;
      
      an_enum := ASL_Mapping_Domain_Types.Richard;
      
      case an_enum is
         when ASL_Mapping_Domain_Types.John =>
            
            Has_Failed   := True;
            Failure_Code := -10;
            
         
         when ASL_Mapping_Domain_Types.Richard =>
            
            Has_Failed := False;
            
         
         when others =>
            
            Has_Failed   := True;
            Failure_Code := -20;
            
         
      end case; -- end of case an_enum
      
      
      if Has_Failed then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Basic ASL                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      --  -------------------------------------------------------------------------------------------
      --  TEST 4 enumerated types
      --  -------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0312               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Basic ASL DBSS                  ",
         Purpose         => "Enumerated Types                ");
      
      
      Has_Failed := False;
      
      an_enum := ASL_Mapping_Domain_Types.Goran;
      
      case an_enum is
         when ASL_Mapping_Domain_Types.John =>
            
            Has_Failed   := True;
            Failure_Code := -10;
         
         when ASL_Mapping_Domain_Types.Richard =>
            Has_Failed   := True;
            Failure_Code := -20;
            
         
         when others =>
            
            Has_Failed := False;
            
         
      end case; -- end of case an_enum
      
      
      if Has_Failed then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Basic ASL                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Basic ASL                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      --  -------------------------------------------------------------------------------------------
      --  Test 5 - Simple structure assignment
      --  -------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Basic ASL DBSS                  ",
         Purpose         => "Simple structure                ");
      
      
      Has_Failed   := False;
      Failure_Code := -10;
      
      -- {Simple_Structure} is Simple_Structure_Type
      ASL_Mapping_Domain_Types.Ops.Initialise (Simple_Structure);
      
      
      Control_Integer := 10;
      Control_Real    := 10.0;
      Control_String  := "Ten                             ";
      Control_Boolean := True;
      
      Control_Enum := ASL_Mapping_Domain_Types.Richard;
      Control_Instance_Handle := Root_Object.ASL_Mapping.objIF.Unconditional_Find_One;
      --
      -- start of append members to structure
      ASL_Mapping_Domain_Types.Ops.Append (
         A_Simple_Int     => Control_Integer,
         A_Simple_Real    => Control_Real,
         A_Simple_String  => Control_String,
         A_Simple_Boolean => Control_Boolean,
         A_Simple_Enum    => Control_Enum, 
         To_Structure     => Simple_Structure);
      -- end of append members to structure
      --
      
      
      --  Perform a test when unpacking the structure.
      --  Note that instance handles may not be compared.
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         ASL_Mapping_Domain_Types.Ops.Go_To_Start (Simple_Structure);
         for i in 1 .. ASL_Mapping_Domain_Types.Ops.Count_Of (In_Structure => Simple_Structure) loop
            ASL_Mapping_Domain_Types.Ops.Extract (
               A_Simple_Int     => Local_Integer,
               A_Simple_Real    => Local_Real,
               A_Simple_String  => Local_String,
               A_Simple_Boolean => Local_Boolean,
               A_Simple_Enum    => Local_Enum,
               From_Structure   => Simple_Structure);
            
            
            if Local_Integer =  Control_Integer then
               
               if Local_Real =  Control_Real then
                  
                  if Local_String =  Control_String then
                     
                     if Local_Boolean =  Control_Boolean then
                        
                        if Local_Enum /= Control_Enum then
                           
                           Has_Failed   := True;
                           Failure_Code := -10;
                        end if;
                        
                     else
                        Has_Failed := True;
                        Failure_Code := -20;
                     end if;
                     
                  else
                     Has_Failed := True;
                     Failure_Code := -30;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -40;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -50;
               
            end if;
            
         end loop; -- end of i in 1 .. ASL_Mapping_Domain_Types.Ops.Count_Of (In_Structure => Simple_Structure) loop
         
      end;
      -- end of unpacking structure
      --
      
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Simple structure                ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Simple_Structure                ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------------
      
      Final_Test := Test;
      
      
   end ASL_Mapping_ASL_Mapping1_basic_asl_enumeration;
   
end ASL_Mapping_ASL_Mapping1_basic_asl_enumeration_Service;

--
-- End of file ASL_Mapping_ASL_Mapping1_basic_asl_enumeration_Service.adb
--
