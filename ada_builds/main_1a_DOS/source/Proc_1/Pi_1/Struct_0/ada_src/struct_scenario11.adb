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
--* File Name:               Struct_Scenario11.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Structures_are_Cleared
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
with Root_Object.Struct.SO;
with Root_Object.Struct.TD;

-- List of bridges used
with Struct_RPT2_Test_Passed_Bridge;
with Struct_RPT3_Test_Failed_Bridge;
with Struct_RPT1_Start_Test_Bridge;

-- List of domain types used
with Struct_Domain_Types;
with Struct_Domain_Types.Ops;
use type Struct_Domain_Types.Structure_and_IH_Type;
use type Struct_Domain_Types.Simple_Structure_Type;
use type Struct_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Struct_Scenario11 is
   
      
      my_test                : Root_Object.Object_Access;
      A_Structured_Object_IH : Root_Object.Object_Access;
      
      Simple_Destructive_Structure           : Struct_Domain_Types.Simple_Structure_Type;
      Structure_And_IH_Destructive_Structure : Struct_Domain_Types.Structure_and_IH_Type;
      
      The_Real : Application_Types.Base_Float_Type := 1.0;
      
      Test_Number          : Application_Types.Base_Integer_Type := 1;
      Number_Of_Iterations : Application_Types.Base_Integer_Type := 1;
      Number_Of_Appends    : Application_Types.Base_Integer_Type := 1;
      The_Integer          : Application_Types.Base_Integer_Type := 1;
      Little_Bean_Counter  : Application_Types.Base_Integer_Type := 1;
      Big_Bean_Counter     : Application_Types.Base_Integer_Type := 1;
      How_Many_Now         : Application_Types.Base_Integer_Type := 1;
      Result_Value         : Application_Types.Base_Integer_Type := 1;
      
      The_Text : Application_Types.Base_Text_Type := (others => ' ');
      
      The_Colour : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      
      The_Boolean     : Boolean := Application_Types.Boolean_first;
      Test_Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------------
      --  These series of tests ensure that although there is no way of deleting a 
      --  structure once it is in existance, we can at least reduce the structure 
      --  back to being empty when necessary.
      -- --------------------------------------------------------------------------
      my_test := Root_Object.Struct.TD.Unconditional_Find_One;
      Test_Number := Root_Object.Struct.TD.Struct_TD_type(my_test.all).The_Test_Number;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - Create a Structure and append to it.
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Structures cleared              ",
         Purpose         => "Structures memory usage test    ");
      
      -- {Simple_Destructive_Structure} is Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Simple_Destructive_Structure);
      
      
      --  Blunder round a loop ten thousand times, adding fifty structures into 
      --  the set of structure. This should give an indication of whether WACA 
      --  returns the freed space back to the heap after the structure is 
      --  redeclared.
      --  NB. Use the Performance Meter in the Windows NT task manager
      --      to monitor memory usage.
      
      Number_Of_Iterations := 10000;
      Number_Of_Appends    := 50;
      
      
      --  Test data section
      
      The_Integer := Test_Number;
      The_Real    := 0.99;
      The_Text    := "How big?                        ";
      The_Boolean := False;
      
      The_Colour := Struct_Domain_Types.Blue;
      
      Little_Bean_Counter := 0;
      Big_Bean_Counter    := 0;
      Test_Has_Failed     := False;
      
      loop
         Little_Bean_Counter := 0;
         
         loop
            --
            -- start of append members to structure
            Struct_Domain_Types.Ops.Append (
               A_S_Integer    => The_Integer,
               A_S_Real       => The_Real,
               A_S_Text       => The_Text,
               A_S_Boolean    => The_Boolean,
               A_S_Colour     => The_Colour, 
               To_Structure   => Simple_Destructive_Structure);
            -- end of append members to structure
            --
            
            exit when Little_Bean_Counter =  Number_Of_Appends;
            Little_Bean_Counter := Little_Bean_Counter + 1;
            
         end loop;
         
         
         --  Redeclare the structure, effectively removing the fully defined
         --  structure and resetting it to zero size.
         -- {Simple_Destructive_Structure} is Simple_Structure_Type
         Struct_Domain_Types.Ops.Initialise (Simple_Destructive_Structure);
         
         
         --  If the structure has not been cleaned up, bail out. There is
         --  no point continuing.
         
         How_Many_Now :=  Struct_Domain_Types.Ops.Count_Of(Simple_Destructive_Structure);
         
         
         if How_Many_Now /= 0 then
            
            Test_Has_Failed := True;
            
               exit;
         end if;
         
         exit when Big_Bean_Counter =  Number_Of_Iterations;
         
         Big_Bean_Counter := Big_Bean_Counter + 1;
         
      end loop;
      
      
      if Test_Has_Failed then
         
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Structures not cleared up       ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => Big_Bean_Counter);
         
      else
         
         Result_Value := Little_Bean_Counter * Big_Bean_Counter;
         
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "Structures cleared              ",
            Test_Number        => Test_Number,
            Test_Value         => Result_Value);
         
      end if;
      
      
      Test_Number := Test_Number + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Structures cleared              ",
         Purpose         => "Reuse Structure name with differ");
      
      
      Little_Bean_Counter := 0;
      Big_Bean_Counter    := 1;
      
      -- {Simple_Destructive_Structure} is Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Simple_Destructive_Structure);
      
      
      --  Blunder round a loop two times, adding two hundred and fifty thousand
      --  structures into the set of structure. This should give an indication of 
      --  whether WACA returns the freed space back to the heap after the structure 
      --  is redeclared.
      --  NB. Use the Performance Meter in the Windows NT task manager
      --      to monitor memory usage.
      
      Number_Of_Iterations := 2;
      Number_Of_Appends    := 250000;
      
      
      --  Test data section
      
      The_Integer := Test_Number;
      The_Real    := 0.99;
      The_Text    := "Different structure type        ";
      The_Boolean := False;
      
      The_Colour := Struct_Domain_Types.Blue;
      
      Test_Has_Failed := False;
      
      
      loop
         
         Little_Bean_Counter := 0;
         
         loop
            --
            -- start of append members to structure
            Struct_Domain_Types.Ops.Append (
               A_S_Integer    => The_Integer,
               A_S_Real       => The_Real,
               A_S_Text       => The_Text,
               A_S_Boolean    => The_Boolean,
               A_S_Colour     => The_Colour, 
               To_Structure   => Simple_Destructive_Structure);
            -- end of append members to structure
            --
            
            exit when Little_Bean_Counter =  Number_Of_Appends;
            Little_Bean_Counter := Little_Bean_Counter + 1;
            
         end loop;
         
         
         --  Redeclare the structure, effectively removing the fully defined
         --  structure and resetting it to zero size. This test differs from 
         --  the previous in that the type of the structure has changed, and 
         --  the number of appends and iterations have swapped values!
         --  Due to a WACA limitation (and ADA95 if we are honest) the reuse
         --  of a named definition for a different type is precluded.
         -- {Simple_Destructive_Structure} is Simple_Structure_Type
         Struct_Domain_Types.Ops.Initialise (Simple_Destructive_Structure);
         
         
         --  If the structure has not been cleaned up, bail out. There is
         --  no point continuing.
         
         How_Many_Now :=  Struct_Domain_Types.Ops.Count_Of(Simple_Destructive_Structure);
         
         
         if How_Many_Now /= 0 then
            
            Test_Has_Failed := True;
            
               exit;
         end if;
         
         exit when Big_Bean_Counter =  Number_Of_Iterations;
         
         Big_Bean_Counter := Big_Bean_Counter + 1;
         
      end loop;
      
      
      if Test_Has_Failed then
         
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Structures not cleared up       ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => Big_Bean_Counter);
         
      else
         
         Result_Value := Little_Bean_Counter * Big_Bean_Counter;
         
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "Structures cleared              ",
            Test_Number        => Test_Number,
            Test_Value         => Result_Value);
         
      end if;
      
      
      Test_Number := Test_Number + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - Now try a similar test on a structure containing an instance 
      --           handle.
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1241-0000-01-1216               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Structures cleared              ",
         Purpose         => "Structures with IH memory usage ");
      
      -- {Structure_And_IH_Destructive_Structure} is Structure_and_IH_Type
      Struct_Domain_Types.Ops.Initialise (Structure_And_IH_Destructive_Structure);
      
      
      --  Blunder round a loop ten thousand times, adding fifty
      --  structures into the set of structure. This should give an 
      --  indication of whether WACA returns the freed space back
      --  to the heap after the structure is redeclared.
      --  NB. Use the Performance Meter in the Windows NT task manager
      --      to monitor memory usage.
      
      Number_Of_Iterations := 10000;
      Number_Of_Appends    := 50;
      
      
      A_Structured_Object_IH := Root_Object.Struct.SO.Create;
      Root_Object.Struct.SO.Struct_SO_Type(A_Structured_Object_IH.all).Reference_SO  := Test_Number;
      Root_Object.Struct.SO.Struct_SO_Type(A_Structured_Object_IH.all).An_Integer    := Test_Number;
      Root_Object.Struct.SO.Struct_SO_Type(A_Structured_Object_IH.all).A_Real        := 99.99;
      Root_Object.Struct.SO.Struct_SO_Type(A_Structured_Object_IH.all).Some_Text     := "Some Text                       ";
      Root_Object.Struct.SO.Struct_SO_Type(A_Structured_Object_IH.all).A_Boolean     := False;
      Root_Object.Struct.SO.Struct_SO_Type(A_Structured_Object_IH.all).A_Colour      := Struct_Domain_Types.Green;
      Root_Object.Struct.SO.Struct_SO_Type(A_Structured_Object_IH.all).Current_State := Root_Object.Struct.SO.Idle;
      
      
      --  Test data section
      
      Little_Bean_Counter := 0;
      Big_Bean_Counter    := 0;
      Test_Has_Failed     := False;
      
      loop
         Little_Bean_Counter := 0;
         
         loop
            --
            -- start of append members to structure
            Struct_Domain_Types.Ops.Append (
               A_A_Defined_IH => A_Structured_Object_IH, 
               To_Structure   => Structure_And_IH_Destructive_Structure);
            -- end of append members to structure
            --
            
            exit when Little_Bean_Counter =  Number_Of_Appends;
            Little_Bean_Counter := Little_Bean_Counter + 1;
            
         end loop;
         
         
         --  Redeclare the structure, effectively removing the fully defined
         --  structure and resetting it to zero size.
         -- {Structure_And_IH_Destructive_Structure} is Structure_and_IH_Type
         Struct_Domain_Types.Ops.Initialise (Structure_And_IH_Destructive_Structure);
         
         
         --  If the structure has not been cleaned up, bail out. There is
         --  no point continuing.
         
         How_Many_Now :=  Struct_Domain_Types.Ops.Count_Of(Structure_And_IH_Destructive_Structure);
         
         
         if How_Many_Now /= 0 then
            
            Test_Has_Failed := True;
            
               exit;
         end if;
         
         exit when Big_Bean_Counter =  Number_Of_Iterations;
         
         Big_Bean_Counter := Big_Bean_Counter + 1;
         
      end loop;
      
      
      if Test_Has_Failed then
         
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Structures not cleared up       ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => Big_Bean_Counter);
         
      else
         
         Result_Value := Little_Bean_Counter * Big_Bean_Counter;
         
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "Structures cleared              ",
            Test_Number        => Test_Number,
            Test_Value         => Result_Value);
         
      end if;
      
      
      Test_Number := Test_Number + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      
      Root_Object.Struct.TD.Struct_TD_type(my_test.all).The_Test_Number := Test_Number;
      
   end Struct_Scenario11;
   
--
-- End of file Struct_Scenario11.ada
--
