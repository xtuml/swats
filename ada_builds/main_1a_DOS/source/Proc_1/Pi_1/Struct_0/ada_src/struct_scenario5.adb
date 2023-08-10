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
--* File Name:               Struct_Scenario5.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Nested Structure Scenario
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
--* Domain Name              : Structures
--* Domain Key Letter        : Struct
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Struct.TD;

-- List of services used
with Struct_Struct7_Decode_Three_Level_Nested_Structure_Service;

-- List of bridges used
with Struct_RPT3_Test_Failed_Bridge;
with Struct_RPT2_Test_Passed_Bridge;
with Struct_RPT1_Start_Test_Bridge;

-- List of domain types used
with Struct_Domain_Types;
with Struct_Domain_Types.Ops;
use type Struct_Domain_Types.Third_Nested_Structure_Type;
use type Struct_Domain_Types.Second_Nested_Structure_Type;
use type Struct_Domain_Types.First_Nested_Structure_Type;
use type Struct_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Struct_Scenario5 is
   
      
      My_Test_Data : Root_Object.Object_Access;
      
      The_Third_Structure       : Struct_Domain_Types.Third_Nested_Structure_Type;
      The_Second_Structure      : Struct_Domain_Types.Second_Nested_Structure_Type;
      The_First_Structure       : Struct_Domain_Types.First_Nested_Structure_Type;
      The_Next_First_Structure  : Struct_Domain_Types.First_Nested_Structure_Type;
      The_Next_Second_Structure : Struct_Domain_Types.Second_Nested_Structure_Type;
      The_Next_Third_Structure  : Struct_Domain_Types.Third_Nested_Structure_Type;
      This_First_Structure      : Struct_Domain_Types.First_Nested_Structure_Type;
      This_Second_Structure     : Struct_Domain_Types.Second_Nested_Structure_Type;
      
      local_test_number     : Application_Types.Base_Integer_Type := 1;
      Zero                  : Application_Types.Base_Integer_Type := 1;
      One                   : Application_Types.Base_Integer_Type := 1;
      Two                   : Application_Types.Base_Integer_Type := 1;
      Three                 : Application_Types.Base_Integer_Type := 1;
      termination_condition : Application_Types.Base_Integer_Type := 1;
      how_many              : Application_Types.Base_Integer_Type := 1;
      
      The_Colour : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      
   begin
      My_Test_Data := Root_Object.Struct.TD.Unconditional_Find_One;
      local_test_number := Root_Object.Struct.TD.Struct_TD_type(My_Test_Data.all).The_Test_Number;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - Create a nested stucture containing another structure which in 
      --           turn contains another structure. Pass it into a domain based 
      --           synchronous service for decoding.
      -- --------------------------------------------------------------------------
      
      Zero  := 0;
      One   := 1;
      Two   := 2;
      Three := 3;
      
      The_Colour := Struct_Domain_Types.Blue;
      -- {The_Third_Structure} is Third_Nested_Structure_Type
      Struct_Domain_Types.Ops.Initialise (The_Third_Structure);
      
      -- {The_Second_Structure} is Second_Nested_Structure_Type
      Struct_Domain_Types.Ops.Initialise (The_Second_Structure);
      
      -- {The_First_Structure} is First_Nested_Structure_Type
      Struct_Domain_Types.Ops.Initialise (The_First_Structure);
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_Third_Nested_Integer => Three,
         A_The_Holy_Grail       => The_Colour, 
         To_Structure           => The_Third_Structure);
      -- end of append members to structure
      --
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_Third_Nested_Structure => The_Third_Structure,
         A_Third_Nested_Integer   => Two, 
         To_Structure             => The_Second_Structure);
      -- end of append members to structure
      --
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_Second_Nested_Structure => The_Second_Structure,
         A_First_Nested_Integer    => One, 
         To_Structure              => The_First_Structure);
      -- end of append members to structure
      --
      
      
      Struct_Struct7_Decode_Three_Level_Nested_Structure_Service.Struct_Struct7_Decode_Three_Level_Nested_Structure (
         Test                      => local_test_number,
         Three_Level_Nest          => The_First_Structure,
         Two_Level_Nest            => The_Second_Structure,
         One_Level_Nest            => The_Third_Structure,
         Given_First_Level_Number  => One,
         How_Many_In_First         => One,
         Given_Second_Level_Number => Two,
         How_Many_In_Second        => One,
         Given_Third_Level_Number  => Three,
         How_Many_In_Third         => One,
         Given_Third_Level_Colour  => The_Colour);
      
      
      local_test_number := local_test_number + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2 
      -- --------------------------------------------------------------------------
      -- {The_Next_First_Structure} is First_Nested_Structure_Type
      Struct_Domain_Types.Ops.Initialise (The_Next_First_Structure);
      
      -- {The_Next_Second_Structure} is Second_Nested_Structure_Type
      Struct_Domain_Types.Ops.Initialise (The_Next_Second_Structure);
      
      -- {The_Next_Third_Structure} is Third_Nested_Structure_Type
      Struct_Domain_Types.Ops.Initialise (The_Next_Third_Structure);
      
      
      termination_condition := Three;
      
      loop
         --
         -- start of append members to structure
         Struct_Domain_Types.Ops.Append (
            A_Third_Nested_Integer => Three,
            A_The_Holy_Grail       => The_Colour, 
            To_Structure           => The_Next_Third_Structure);
         -- end of append members to structure
         --
         
         termination_condition := termination_condition - 1;
         exit when termination_condition =  Zero;
      end loop;
      
      termination_condition := Three;
      
      loop
         --
         -- start of append members to structure
         Struct_Domain_Types.Ops.Append (
            A_Third_Nested_Structure => The_Next_Third_Structure,
            A_Third_Nested_Integer   => Two, 
            To_Structure             => The_Next_Second_Structure);
         -- end of append members to structure
         --
         
         termination_condition := termination_condition - 1;
         exit when termination_condition =  Zero;
      end loop;
      
      termination_condition := Three;
      
      loop
         --
         -- start of append members to structure
         Struct_Domain_Types.Ops.Append (
            A_Second_Nested_Structure => The_Next_Second_Structure,
            A_First_Nested_Integer    => One, 
            To_Structure              => The_Next_First_Structure);
         -- end of append members to structure
         --
         
         termination_condition := termination_condition - 1;
         
         exit when termination_condition =  Zero;
      end loop;
      
      
      Struct_Struct7_Decode_Three_Level_Nested_Structure_Service.Struct_Struct7_Decode_Three_Level_Nested_Structure (
         Test                      => local_test_number,
         Three_Level_Nest          => The_Next_First_Structure,
         Two_Level_Nest            => The_Next_Second_Structure,
         One_Level_Nest            => The_Next_Third_Structure,
         Given_First_Level_Number  => One,
         How_Many_In_First         => Three,
         Given_Second_Level_Number => Two,
         How_Many_In_Second        => Three,
         Given_Third_Level_Number  => Three,
         How_Many_In_Third         => Three,
         Given_Third_Level_Colour  => The_Colour);
      
      
      local_test_number := local_test_number + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - create a Beasty test. This is where a primitve component of the
      --           structure is defined, and the sub (nested) structure component 
      --           is null.
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => local_test_number,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Complex nested structures       ",
         Purpose         => "contains a null structure       ");
      
      -- {This_First_Structure} is First_Nested_Structure_Type
      Struct_Domain_Types.Ops.Initialise (This_First_Structure);
      
      -- {This_Second_Structure} is Second_Nested_Structure_Type
      Struct_Domain_Types.Ops.Initialise (This_Second_Structure);
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_Second_Nested_Structure => This_Second_Structure,
         A_First_Nested_Integer    => One, 
         To_Structure              => This_First_Structure);
      -- end of append members to structure
      --
      
      
      how_many :=  Struct_Domain_Types.Ops.Count_Of(This_First_Structure);
      
      
      if how_many =  1 then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain      => "null structure                  ",
            Test_Number             => local_test_number,
            Test_Value              => 0);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "null_structure                  ",
            Failed_Test_Number   => local_test_number,
            Failed_Test_Value    => how_many);
         
      end if;
      
      
      local_test_number := local_test_number + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      
      Root_Object.Struct.TD.Struct_TD_type(My_Test_Data.all).The_Test_Number := local_test_number;
      
   end Struct_Scenario5;
   
--
-- End of file Struct_Scenario5.ada
--
