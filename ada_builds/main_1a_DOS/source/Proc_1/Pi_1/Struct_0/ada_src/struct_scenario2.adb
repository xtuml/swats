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
--* File Name:               Struct_Scenario2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Complex Structure Scenario
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

-- List of bridges used
with Struct_RPT3_Test_Failed_Bridge;
with Struct_RPT2_Test_Passed_Bridge;
with Struct_RPT1_Start_Test_Bridge;

-- List of domain types used
with Struct_Domain_Types;
with Struct_Domain_Types.Ops;
use type Struct_Domain_Types.UDT_Structure_Type;
use type Struct_Domain_Types.Complex_UDT_Structure_Type;
use type Struct_Domain_Types.Colour_Type;
use type Struct_Domain_Types.UDT_Real_Type;
use type Struct_Domain_Types.UDT_Integer_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Struct_Scenario2 is
   
      
      My_Test_Data : Root_Object.Object_Access;
      
      Outer_Set                             : Struct_Domain_Types.Complex_UDT_Structure_Type;
      Inner_Set                             : Struct_Domain_Types.UDT_Structure_Type;
      New_Inner_Set                         : Struct_Domain_Types.UDT_Structure_Type;
      decoded_inner_structure               : Struct_Domain_Types.UDT_Structure_Type;
      empty_decoded_inner_structure         : Struct_Domain_Types.UDT_Structure_Type;
      fresh_decoded_inner_structure         : Struct_Domain_Types.UDT_Structure_Type;
      another_fresh_decoded_inner_structure : Struct_Domain_Types.UDT_Structure_Type;
      First_Outer_Set                       : Struct_Domain_Types.Complex_UDT_Structure_Type;
      Second_Outer_Set                      : Struct_Domain_Types.Complex_UDT_Structure_Type;
      Common_Inner_Set                      : Struct_Domain_Types.UDT_Structure_Type;
      First_Inner_Set                       : Struct_Domain_Types.UDT_Structure_Type;
      Second_Inner_Set                      : Struct_Domain_Types.UDT_Structure_Type;
      Empty_Structure                       : Struct_Domain_Types.UDT_Structure_Type;
      Outer_Structure                       : Struct_Domain_Types.Complex_UDT_Structure_Type;
      
      local_real : Application_Types.Base_Float_Type := 1.0;
      
      Test                             : Application_Types.Base_Integer_Type := 1;
      Zero                             : Application_Types.Base_Integer_Type := 1;
      Nought                           : Application_Types.Base_Integer_Type := 1;
      local_integer                    : Application_Types.Base_Integer_Type := 1;
      local_basic_integer              : Application_Types.Base_Integer_Type := 1;
      number_in_inner_set              : Application_Types.Base_Integer_Type := 1;
      number_in_outer_set              : Application_Types.Base_Integer_Type := 1;
      number_in_both_structures        : Application_Types.Base_Integer_Type := 1;
      total_value                      : Application_Types.Base_Integer_Type := 1;
      this_basic_integer               : Application_Types.Base_Integer_Type := 1;
      A_Counter                        : Application_Types.Base_Integer_Type := 1;
      Passed_Count                     : Application_Types.Base_Integer_Type := 1;
      Number_In_This_Set               : Application_Types.Base_Integer_Type := 1;
      Total_Number_Of_Inner_Structures : Application_Types.Base_Integer_Type := 1;
      Inner_Count                      : Application_Types.Base_Integer_Type := 1;
      First_Total_Count                : Application_Types.Base_Integer_Type := 1;
      Second_Total_Count               : Application_Types.Base_Integer_Type := 1;
      Number_In_Outer_Structures       : Application_Types.Base_Integer_Type := 1;
      Number_In_Empty_Structure        : Application_Types.Base_Integer_Type := 1;
      
      local_colour       : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      this_integer       : Struct_Domain_Types.UDT_Integer_Type  := Struct_Domain_Types.UDT_Integer_Type_first;
      this_real          : Struct_Domain_Types.UDT_Real_Type     := Struct_Domain_Types.UDT_Real_Type_first;
      this_colour        : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      this_inner_integer : Struct_Domain_Types.UDT_Integer_Type  := Struct_Domain_Types.UDT_Integer_Type_first;
      this_inner_real    : Struct_Domain_Types.UDT_Real_Type     := Struct_Domain_Types.UDT_Real_Type_first;
      inner_integer      : Struct_Domain_Types.UDT_Integer_Type  := Struct_Domain_Types.UDT_Integer_Type_first;
      inner_real         : Struct_Domain_Types.UDT_Real_Type     := Struct_Domain_Types.UDT_Real_Type_first;
      
   begin
      My_Test_Data := Root_Object.Struct.TD.Unconditional_Find_One;
      Test := Root_Object.Struct.TD.Struct_TD_type(My_Test_Data.all).The_Test_Number;
      Zero := 0;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Complex Scenario                ",
         Purpose         => "Create empty structure          ");
      
      -- {Outer_Set} is Complex_UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Outer_Set);
      
      
      Nought :=  Struct_Domain_Types.Ops.Count_Of(Outer_Set);
      
      
      if Nought =  Zero then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "Create empty structure          ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Create empty structure          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Nought);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2 - Add some data into the set.
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Complex Scenario                ",
         Purpose         => "Add data into structure         ");
      
      
      local_integer       := 10;
      local_real          := 10.0;
      local_basic_integer := 101;
      local_colour := Struct_Domain_Types.Red;
      -- {Inner_Set} is UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Inner_Set);
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_An_Integer   => local_integer,
         A_A_Real       => local_real, 
         To_Structure   => Inner_Set);
      -- end of append members to structure
      --
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_A_Top_Integer   => local_integer,
         A_A_Top_Real      => local_real,
         A_A_UDT_Structure => Inner_Set,
         A_Basic_Integer   => local_basic_integer,
         A_A_Colour        => local_colour, 
         To_Structure      => Outer_Set);
      -- end of append members to structure
      --
      
      number_in_inner_set :=  Struct_Domain_Types.Ops.Count_Of(Inner_Set);
      number_in_outer_set :=  Struct_Domain_Types.Ops.Count_Of(Outer_Set);
      
      
      if number_in_inner_set =  1 then
         
         if number_in_outer_set =  1 then
            
            Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
               Test_Object_Domain => "Add data into structure         ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
               Failed_Domain_Object => "Add data into structure         ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => number_in_outer_set);
            
         end if;
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Add data into structure         ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => number_in_inner_set);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - Add a second entry into both sets
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Complex Scenario                ",
         Purpose         => "Add more data into inner and out");
      
      
      local_integer       := 20;
      local_real          := 20.0;
      local_basic_integer := 201;
      local_colour := Struct_Domain_Types.Blue;
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_An_Integer   => local_integer,
         A_A_Real       => local_real, 
         To_Structure   => Inner_Set);
      -- end of append members to structure
      --
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_A_Top_Integer   => local_integer,
         A_A_Top_Real      => local_real,
         A_A_UDT_Structure => Inner_Set,
         A_Basic_Integer   => local_basic_integer,
         A_A_Colour        => local_colour, 
         To_Structure      => Outer_Set);
      -- end of append members to structure
      --
      
      number_in_inner_set :=  Struct_Domain_Types.Ops.Count_Of(Inner_Set);
      number_in_outer_set :=  Struct_Domain_Types.Ops.Count_Of(Outer_Set);
      
      
      if number_in_inner_set =  2 then
         
         if number_in_outer_set =  2 then
            
            Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
               Test_Object_Domain => "Add more data into structure    ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
               Failed_Domain_Object => "Add more data into structure    ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => number_in_outer_set);
            
         end if;
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Add more data into structure    ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => number_in_inner_set);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --   Test 4 - Add a new inner set into position 3 of the outer set.
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Complex Scenario                ",
         Purpose         => "Add new inner structure into out");
      
      
      local_integer       := 30;
      local_real          := 30.0;
      local_basic_integer := 301;
      local_colour := Struct_Domain_Types.Green;
      -- {New_Inner_Set} is UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (New_Inner_Set);
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_An_Integer   => local_integer,
         A_A_Real       => local_real, 
         To_Structure   => New_Inner_Set);
      -- end of append members to structure
      --
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_A_Top_Integer   => local_integer,
         A_A_Top_Real      => local_real,
         A_A_UDT_Structure => New_Inner_Set,
         A_Basic_Integer   => local_basic_integer,
         A_A_Colour        => local_colour, 
         To_Structure      => Outer_Set);
      -- end of append members to structure
      --
      
      number_in_inner_set :=  Struct_Domain_Types.Ops.Count_Of(New_Inner_Set);
      number_in_outer_set :=  Struct_Domain_Types.Ops.Count_Of(Outer_Set);
      
      
      if number_in_inner_set =  1 then
         
         if number_in_outer_set =  3 then
            
            Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
               Test_Object_Domain => "Add more data into structure    ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
               Failed_Domain_Object => "Add more data into structure    ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => number_in_outer_set);
            
         end if;
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Add more data into structure    ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => number_in_inner_set);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------------
      --  Test 5 - Decode all sets of structures
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Complex Scenario                ",
         Purpose         => "Decode structures               ");
      
      -- {decoded_inner_structure} is UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (decoded_inner_structure);
      
      
      number_in_both_structures := 0;
      total_value               := 0;
      number_in_outer_set       :=  Struct_Domain_Types.Ops.Count_Of(Outer_Set);
      number_in_both_structures := number_in_outer_set;
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (Outer_Set);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Outer_Set) loop
            Struct_Domain_Types.Ops.Extract (
               A_A_Top_Integer   => this_integer,
               A_A_Top_Real      => this_real,
               A_A_UDT_Structure => decoded_inner_structure,
               A_Basic_Integer   => this_basic_integer,
               A_A_Colour        => this_colour,
               From_Structure    => Outer_Set);
            
            total_value               := total_value + this_integer;
            number_in_inner_set       :=  Struct_Domain_Types.Ops.Count_Of(decoded_inner_structure);
            number_in_both_structures := number_in_inner_set + number_in_both_structures;
            
            --
            -- start of unpacking structure
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
            begin
               Struct_Domain_Types.Ops.Go_To_Start (decoded_inner_structure);
               for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => decoded_inner_structure) loop
                  Struct_Domain_Types.Ops.Extract (
                     A_An_Integer     => this_inner_integer,
                     A_A_Real         => this_inner_real,
                     From_Structure   => decoded_inner_structure);
                  
                  
                  total_value := total_value + this_inner_integer;
                  
               end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => decoded_inner_structure) loop
               
            end;
            -- end of unpacking structure
            --
            
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Outer_Set) loop
         
      end;
      -- end of unpacking structure
      --
      
      
      if total_value =  130 then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "Decode structures               ",
            Test_Number        => Test,
            Test_Value         => number_in_both_structures);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Decode structures               ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => number_in_both_structures);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------------
      --  Test 6 - Since we are no longer labouring under the destructive read 
      --           restrictions, it would be prudent to check that all structures 
      --           are still current in all sets.
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Complex Scenario                ",
         Purpose         => "And again                       ");
      
      -- {empty_decoded_inner_structure} is UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (empty_decoded_inner_structure);
      
      
      number_in_both_structures := 0;
      total_value               := 0;
      number_in_outer_set       :=  Struct_Domain_Types.Ops.Count_Of(Outer_Set);
      number_in_both_structures := number_in_outer_set;
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (Outer_Set);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Outer_Set) loop
            Struct_Domain_Types.Ops.Extract (
               A_A_Top_Integer   => this_integer,
               A_A_Top_Real      => this_real,
               A_A_UDT_Structure => empty_decoded_inner_structure,
               A_Basic_Integer   => this_basic_integer,
               A_A_Colour        => this_colour,
               From_Structure    => Outer_Set);
            
            total_value               := total_value + this_integer;
            number_in_inner_set       :=  Struct_Domain_Types.Ops.Count_Of(empty_decoded_inner_structure);
            number_in_both_structures := number_in_inner_set + number_in_both_structures;
            
            --
            -- start of unpacking structure
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
            begin
               Struct_Domain_Types.Ops.Go_To_Start (empty_decoded_inner_structure);
               for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => empty_decoded_inner_structure) loop
                  Struct_Domain_Types.Ops.Extract (
                     A_An_Integer     => this_inner_integer,
                     A_A_Real         => this_inner_real,
                     From_Structure   => empty_decoded_inner_structure);
                  
                  
                  total_value := total_value + this_inner_integer;
                  
               end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => empty_decoded_inner_structure) loop
               
            end;
            -- end of unpacking structure
            --
            
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Outer_Set) loop
         
      end;
      -- end of unpacking structure
      --
      
      
      if total_value =  130 then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "And again                       ",
            Test_Number        => Test,
            Test_Value         => number_in_both_structures);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "And again                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => number_in_both_structures);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 6
      -- --------------------------------------------------------------------------
      --  Test 7 - Having established how sets of structures are contained in a set 
      --           of structures, examine how the data is held, deep or shallow 
      --           copy. To achieve this, the test shall add on entry the the inner 
      --           & outer sets to check how that addition has affected the other 
      --           sets in the outer set that point to it.
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Complex Scenario                ",
         Purpose         => "Deep or shallow copy            ");
      
      
      local_integer       := 40;
      local_real          := 40.0;
      local_basic_integer := 401;
      
      local_colour := Struct_Domain_Types.Red;
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_An_Integer   => local_integer,
         A_A_Real       => local_real, 
         To_Structure   => Inner_Set);
      -- end of append members to structure
      --
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_A_Top_Integer   => local_integer,
         A_A_Top_Real      => local_real,
         A_A_UDT_Structure => Inner_Set,
         A_Basic_Integer   => local_basic_integer,
         A_A_Colour        => local_colour, 
         To_Structure      => Outer_Set);
      -- end of append members to structure
      --
      
      
      --  Having added a third entry onto the inner and and a fourth to the outer set, 
      --  have a look to see if the earlier entries in the outer set point to the latest version 
      --  of the inner set, ie. outer_set(1).{inner_set} = inner_set(4). If this is the case then 
      --  we have a shallow copy, otherwise if outer_set(1).{inner_set] = inner_set(1) then we have a deep copy.
      --  A deep copy is what is required here.
      -- {fresh_decoded_inner_structure} is UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (fresh_decoded_inner_structure);
      
      
      A_Counter    := 0;
      Passed_Count := 0;
      
      -- {fresh_decoded_inner_structure} is UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (fresh_decoded_inner_structure);
      
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (Outer_Set);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Outer_Set) loop
            Struct_Domain_Types.Ops.Extract (
               A_A_Top_Integer   => this_integer,
               A_A_Top_Real      => this_real,
               A_A_UDT_Structure => fresh_decoded_inner_structure,
               A_Basic_Integer   => this_basic_integer,
               A_A_Colour        => this_colour,
               From_Structure    => Outer_Set);
            
            
            A_Counter          := A_Counter + 1;
            Number_In_This_Set :=  Struct_Domain_Types.Ops.Count_Of(fresh_decoded_inner_structure);
            
            
            if A_Counter          =  1 and then
               Number_In_This_Set =  1 then
               
               Passed_Count := Passed_Count + 1;
            else
               
               if A_Counter          =  2 and then
                  Number_In_This_Set =  2 then
                  Passed_Count := Passed_Count + 1;
               else
                  
                  if A_Counter          =  3 and then
                     Number_In_This_Set =  1 then
                     Passed_Count := Passed_Count + 1;
                     
                  else
                     
                     if A_Counter          =  4 and then
                        Number_In_This_Set =  3 then
                        
                        Passed_Count        := Passed_Count + 1;
                     end if;
                     
                  end if;
                  
               end if;
               
            end if;
            
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Outer_Set) loop
         
      end;
      -- end of unpacking structure
      --
      
      number_in_outer_set :=  Struct_Domain_Types.Ops.Count_Of(Outer_Set);
      
      
      --  This test has proved that first structure of the outer set of structures contains the inner set(a)  
      --  with 1 structure and that the second structure of the outer set contains the inner set(a) with two 
      --  structures, the third structure of the outer set contains a new inner set(b) with one structure and 
      --  finally, the fourth structure of the outer set contains the inner set (a) now with three structures.
      --  Exactly as it was set up.
      --  A shallow copy would have shown that the first structure in the outer set had an 
      --  inner structure with three structures.
      
      if Passed_Count =  number_in_outer_set then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "DEEP copy                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "SHALLOW copy                    ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Passed_Count);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 7
      -- --------------------------------------------------------------------------
      --  Test 8 - Having proved that each outer set contains the requisite number 
      --           of inner sets, now show that the inner set is actually the inner
      --           set we expected to see.
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Complex Scenario                ",
         Purpose         => "Compare contents of inner and ou");
      
      -- {another_fresh_decoded_inner_structure} is UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (another_fresh_decoded_inner_structure);
      
      
      A_Counter                        := 0;
      Total_Number_Of_Inner_Structures := 0;
      Inner_Count                      := 0;
      Passed_Count                     := 0;
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (Outer_Set);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Outer_Set) loop
            Struct_Domain_Types.Ops.Extract (
               A_A_Top_Integer   => this_integer,
               A_A_Top_Real      => this_real,
               A_A_UDT_Structure => another_fresh_decoded_inner_structure,
               A_Basic_Integer   => this_basic_integer,
               A_A_Colour        => this_colour,
               From_Structure    => Outer_Set);
            
            Inner_Count                      := 0;
            A_Counter                        := A_Counter + 1;
            Number_In_This_Set               :=  Struct_Domain_Types.Ops.Count_Of(another_fresh_decoded_inner_structure);
            Total_Number_Of_Inner_Structures := Total_Number_Of_Inner_Structures + Number_In_This_Set;
            
            --
            -- start of unpacking structure
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
            begin
               Struct_Domain_Types.Ops.Go_To_Start (another_fresh_decoded_inner_structure);
               for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => another_fresh_decoded_inner_structure) loop
                  Struct_Domain_Types.Ops.Extract (
                     A_An_Integer     => inner_integer,
                     A_A_Real         => inner_real,
                     From_Structure   => another_fresh_decoded_inner_structure);
                  
                  
                  Inner_Count := Inner_Count + 1;
                  
                  
                  if A_Counter          =  1 and then
                     Number_In_This_Set =  1 then
                     
                     if Inner_Count   =  1 and then
                     (inner_integer =  10 and then
                     inner_real    =  10.0) then
                        
                        Passed_Count := Passed_Count + 1;
                     end if;
                     
                  else
                     
                     if A_Counter          =  2 and then
                        Number_In_This_Set =  2 then
                        
                        if (Inner_Count   =  1 and then
                        (inner_integer =  10 and then
                        inner_real    =  10.0)) or else
                        (Inner_Count   =  2 and then
                        (inner_integer =  20 and then
                        inner_real    =  20.0)) then
                           Passed_Count := Passed_Count + 1;
                        end if;
                        
                     else
                        
                        if A_Counter          =  3 and then
                           Number_In_This_Set =  1 then
                           
                           if Inner_Count   =  1 and then
                           (inner_integer =  30 and then
                           inner_real    =  30.0) then
                              Passed_Count := Passed_Count + 1;
                           end if;
                           
                        else
                           
                           if A_Counter          =  4 and then
                              Number_In_This_Set =  3 then
                              
                              if (Inner_Count   =  1 and then
                              (inner_integer =  10 and then
                              inner_real    =  10.0)) or else
                              (Inner_Count   =  2 and then
                              (inner_integer =  20 and then
                              inner_real    =  20.0)) or else
                              (Inner_Count   =  3 and then
                              (inner_integer =  40 and then
                              inner_real    =  40.0)) then
                                 Passed_Count := Passed_Count + 1;
                                 
                              end if;
                              
                           end if;
                           
                        end if;
                        
                     end if;
                     
                  end if;
                  
               end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => another_fresh_decoded_inner_structure) loop
               
            end;
            -- end of unpacking structure
            --
            
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Outer_Set) loop
         
      end;
      -- end of unpacking structure
      --
      
      
      if Passed_Count =  Total_Number_Of_Inner_Structures then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "DEEP copy                       ",
            Test_Number        => Test,
            Test_Value         => Total_Number_Of_Inner_Structures);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "SHALLOW copy                    ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Passed_Count);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 8
      -- --------------------------------------------------------------------------
      --  Test 9 - Show what happens when two outer structures point to the same 
      --           inner stucture.
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Complex Scenario                ",
         Purpose         => "Compare contents of outer struct");
      
      -- {First_Outer_Set} is Complex_UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (First_Outer_Set);
      
      -- {Second_Outer_Set} is Complex_UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Second_Outer_Set);
      
      -- {Common_Inner_Set} is UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Common_Inner_Set);
      
      
      local_integer       := 10;
      local_real          := 10.0;
      local_basic_integer := 101;
      local_colour := Struct_Domain_Types.Red;
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_An_Integer   => local_integer,
         A_A_Real       => local_real, 
         To_Structure   => Common_Inner_Set);
      -- end of append members to structure
      --
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_A_Top_Integer   => local_integer,
         A_A_Top_Real      => local_real,
         A_A_UDT_Structure => Common_Inner_Set,
         A_Basic_Integer   => local_basic_integer,
         A_A_Colour        => local_colour, 
         To_Structure      => First_Outer_Set);
      -- end of append members to structure
      --
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_A_Top_Integer   => local_integer,
         A_A_Top_Real      => local_real,
         A_A_UDT_Structure => Common_Inner_Set,
         A_Basic_Integer   => local_basic_integer,
         A_A_Colour        => local_colour, 
         To_Structure      => Second_Outer_Set);
      -- end of append members to structure
      --
      
      
      --  Now add a new structure to the common inner set
      local_integer       := 20;
      local_real          := 20.0;
      local_basic_integer := 201;
      local_colour := Struct_Domain_Types.Blue;
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_An_Integer   => local_integer,
         A_A_Real       => local_real, 
         To_Structure   => Common_Inner_Set);
      -- end of append members to structure
      --
      
      
      --  Add this new set of structures to the second outer set, but not the first.
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_A_Top_Integer   => local_integer,
         A_A_Top_Real      => local_real,
         A_A_UDT_Structure => Common_Inner_Set,
         A_Basic_Integer   => local_basic_integer,
         A_A_Colour        => local_colour, 
         To_Structure      => Second_Outer_Set);
      -- end of append members to structure
      --
      
      
      --  Now add a new structure to the inner set
      local_integer       := 30;
      local_real          := 30.0;
      local_basic_integer := 301;
      
      local_colour := Struct_Domain_Types.Green;
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_An_Integer   => local_integer,
         A_A_Real       => local_real, 
         To_Structure   => Common_Inner_Set);
      -- end of append members to structure
      --
      
      
      --  Add this new set of structures to the first outer set, but not the second
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_A_Top_Integer   => local_integer,
         A_A_Top_Real      => local_real,
         A_A_UDT_Structure => Common_Inner_Set,
         A_Basic_Integer   => local_basic_integer,
         A_A_Colour        => local_colour, 
         To_Structure      => First_Outer_Set);
      -- end of append members to structure
      --
      
      
      --  So, what we have is two outer sets of structures, both with a common first inner set, but different second inner
      --  structures.
      -- {First_Inner_Set} is UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (First_Inner_Set);
      
      
      First_Total_Count := 0;
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (First_Outer_Set);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => First_Outer_Set) loop
            Struct_Domain_Types.Ops.Extract (
               A_A_Top_Integer   => this_integer,
               A_A_Top_Real      => this_real,
               A_A_UDT_Structure => First_Inner_Set,
               A_Basic_Integer   => this_basic_integer,
               A_A_Colour        => this_colour,
               From_Structure    => First_Outer_Set);
            
            First_Total_Count := First_Total_Count + this_integer;
            --
            -- start of unpacking structure
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
            begin
               Struct_Domain_Types.Ops.Go_To_Start (First_Inner_Set);
               for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => First_Inner_Set) loop
                  Struct_Domain_Types.Ops.Extract (
                     A_An_Integer     => inner_integer,
                     A_A_Real         => inner_real,
                     From_Structure   => First_Inner_Set);
                  
                  First_Total_Count := First_Total_Count + inner_integer;
                  
               end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => First_Inner_Set) loop
               
            end;
            -- end of unpacking structure
            --
            
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => First_Outer_Set) loop
         
      end;
      -- end of unpacking structure
      --
      
      -- {Second_Inner_Set} is UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Second_Inner_Set);
      
      
      Second_Total_Count := 0;
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (Second_Outer_Set);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Second_Outer_Set) loop
            Struct_Domain_Types.Ops.Extract (
               A_A_Top_Integer   => this_integer,
               A_A_Top_Real      => this_real,
               A_A_UDT_Structure => Second_Inner_Set,
               A_Basic_Integer   => this_basic_integer,
               A_A_Colour        => this_colour,
               From_Structure    => Second_Outer_Set);
            
            Second_Total_Count := Second_Total_Count + this_integer;
            --
            -- start of unpacking structure
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
            begin
               Struct_Domain_Types.Ops.Go_To_Start (Second_Inner_Set);
               for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Second_Inner_Set) loop
                  Struct_Domain_Types.Ops.Extract (
                     A_An_Integer     => inner_integer,
                     A_A_Real         => inner_real,
                     From_Structure   => Second_Inner_Set);
                  
                  Second_Total_Count := Second_Total_Count + inner_integer;
                  
               end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Second_Inner_Set) loop
               
            end;
            -- end of unpacking structure
            --
            
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Second_Outer_Set) loop
         
      end;
      -- end of unpacking structure
      --
      
      
      if First_Total_Count  =  110 and then
         Second_Total_Count =  70 then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "DEEP copy                       ",
            Test_Number        => Test,
            Test_Value         => Total_Number_Of_Inner_Structures);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "SHALLOW copy                    ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => First_Total_Count);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 9
      -- --------------------------------------------------------------------------
      --  Test 10
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Complex Scenario                ",
         Purpose         => "Append an empty structure       ");
      
      
      --  Append an empty simple structures to a outer structure.
      -- {Empty_Structure} is UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Empty_Structure);
      
      -- {Outer_Structure} is Complex_UDT_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Outer_Structure);
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_A_Top_Integer   => local_integer,
         A_A_Top_Real      => local_real,
         A_A_UDT_Structure => Empty_Structure,
         A_Basic_Integer   => local_basic_integer,
         A_A_Colour        => local_colour, 
         To_Structure      => Outer_Structure);
      -- end of append members to structure
      --
      
      
      Number_In_Outer_Structures :=  Struct_Domain_Types.Ops.Count_Of(Outer_Structure);
      Number_In_Empty_Structure  :=  Struct_Domain_Types.Ops.Count_Of(Empty_Structure);
      
      
      if Number_In_Outer_Structures =  1 and then
         Number_In_Empty_Structure  =  0 then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "Append empty structure to comple",
            Test_Number        => Test,
            Test_Value         => Number_In_Empty_Structure);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Append empty structure to comple",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Number_In_Empty_Structure);
         
      end if;
      
      
      -- --------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Root_Object.Struct.TD.Struct_TD_type(My_Test_Data.all).The_Test_Number := Test;
      
   end Struct_Scenario2;
   
--
-- End of file Struct_Scenario2.ada
--
