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
--* File Name:               Struct_Scenario10.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Test_IH_In_Structures
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

-- List of services used
with Struct_Struct1_Receive_Structure_IH_Service;

-- List of bridges used
with Struct_ET1_Env_String_Bridge;

-- List of domain types used
with Struct_Domain_Types;
with Struct_Domain_Types.Ops;
use type Struct_Domain_Types.Structure_and_IH_Type;
use type Struct_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Struct_Scenario10 is
   
      
      my_test      : Root_Object.Object_Access;
      Primary_SO   : Root_Object.Object_Access;
      Secondary_SO : Root_Object.Object_Access;
      Next_SO      : Root_Object.Object_Access;
      
      The_First_Structure : Struct_Domain_Types.Structure_and_IH_Type;
      Next_Structure      : Struct_Domain_Types.Structure_and_IH_Type;
      Delete_Structure    : Struct_Domain_Types.Structure_and_IH_Type;
      
      Test_Number                : Application_Types.Base_Integer_Type := 1;
      Local_Copy_Of_IH_Identifer : Application_Types.Base_Integer_Type := 1;
      bean_counter               : Application_Types.Base_Integer_Type := 1;
      SO_ID                      : Application_Types.Base_Integer_Type := 1;
      
      Environment : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
      my_test := Root_Object.Struct.TD.Unconditional_Find_One;
      
      Struct_ET1_Env_String_Bridge.Struct_ET1_Env_String (
         Env_Text => Environment);
      
      Test_Number := Root_Object.Struct.TD.Struct_TD_type(my_test.all).The_Test_Number;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - First test in the sequence.
      --           Create a Structured Object and append it to a structure.
      -- --------------------------------------------------------------------------
      Primary_SO := Root_Object.Struct.SO.Create_Unique;
      Root_Object.Struct.SO.Struct_SO_Type(Primary_SO.all).An_Integer    := Test_Number;
      Root_Object.Struct.SO.Struct_SO_Type(Primary_SO.all).A_Real        := 1.0;
      Root_Object.Struct.SO.Struct_SO_Type(Primary_SO.all).Some_Text     := "No text                         ";
      Root_Object.Struct.SO.Struct_SO_Type(Primary_SO.all).A_Boolean     := True;
      Root_Object.Struct.SO.Struct_SO_Type(Primary_SO.all).A_Colour      := Struct_Domain_Types.Red;
      Root_Object.Struct.SO.Struct_SO_Type(Primary_SO.all).Current_State := Root_Object.Struct.SO.Idle;
      
      
      --  Take a copy of the preferred attribute for later use.
      
      Local_Copy_Of_IH_Identifer := Root_Object.Struct.SO.Struct_SO_type(Primary_SO.all).Reference_SO;
      
      -- {The_First_Structure} is Structure_and_IH_Type
      Struct_Domain_Types.Ops.Initialise (The_First_Structure);
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_A_Defined_IH => Primary_SO, 
         To_Structure   => The_First_Structure);
      -- end of append members to structure
      --
      
      
      Struct_Struct1_Receive_Structure_IH_Service.Struct_Struct1_Receive_Structure_IH (
         This_Test_Number        => Test_Number,
         Input_Structure         => The_First_Structure,
         Number_Of_Elements      => 1,
         Unique_Identifier_Of_IH => Root_Object.Struct.SO.Struct_SO_type(Primary_SO.all).Reference_SO,
         Testing_For             => "Single instance in structure    ");
      
      
      Test_Number := Test_Number + 1;
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2 - Do the same test again, on the same data to prove that it has 
      --           not been corrupted and/or modified. Use the previously stored 
      --           value to compare against.
      -- --------------------------------------------------------------------------
      
      Struct_Struct1_Receive_Structure_IH_Service.Struct_Struct1_Receive_Structure_IH (
         This_Test_Number        => Test_Number,
         Input_Structure         => The_First_Structure,
         Number_Of_Elements      => 1,
         Unique_Identifier_Of_IH => Local_Copy_Of_IH_Identifer,
         Testing_For             => "Second bite at Single instance i");
      
      Test_Number := Test_Number + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - Create a second Structured Object and append it to a structure.
      -- --------------------------------------------------------------------------
      Secondary_SO := Root_Object.Struct.SO.Create_Unique;
      Root_Object.Struct.SO.Struct_SO_Type(Secondary_SO.all).An_Integer    := Test_Number;
      Root_Object.Struct.SO.Struct_SO_Type(Secondary_SO.all).A_Real        := 2.0;
      Root_Object.Struct.SO.Struct_SO_Type(Secondary_SO.all).Some_Text     := "No text                         ";
      Root_Object.Struct.SO.Struct_SO_Type(Secondary_SO.all).A_Boolean     := True;
      Root_Object.Struct.SO.Struct_SO_Type(Secondary_SO.all).A_Colour      := Struct_Domain_Types.Red;
      Root_Object.Struct.SO.Struct_SO_Type(Secondary_SO.all).Current_State := Root_Object.Struct.SO.Idle;
      
      
      --  Take a copy of the preferred attribute for later use.
      
      Local_Copy_Of_IH_Identifer := Root_Object.Struct.SO.Struct_SO_type(Secondary_SO.all).Reference_SO;
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_A_Defined_IH => Secondary_SO, 
         To_Structure   => The_First_Structure);
      -- end of append members to structure
      --
      
      
      Struct_Struct1_Receive_Structure_IH_Service.Struct_Struct1_Receive_Structure_IH (
         This_Test_Number        => Test_Number,
         Input_Structure         => The_First_Structure,
         Number_Of_Elements      => 2,
         Unique_Identifier_Of_IH => Root_Object.Struct.SO.Struct_SO_type(Secondary_SO.all).Reference_SO,
         Testing_For             => "Second instance in structure    ");
      
      
      Test_Number := Test_Number + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 4 - Do the same test again, on the same data to prove that it has 
      --           not been corrupted and/or modified. Use the previously stored 
      --           value to compare against.
      -- --------------------------------------------------------------------------
      
      Struct_Struct1_Receive_Structure_IH_Service.Struct_Struct1_Receive_Structure_IH (
         This_Test_Number        => Test_Number,
         Input_Structure         => The_First_Structure,
         Number_Of_Elements      => 2,
         Unique_Identifier_Of_IH => Local_Copy_Of_IH_Identifer,
         Testing_For             => "Second bite at Second instance i");
      
      
      --  End Test 4
      -- --------------------------------------------------------------------------
      --  Test 5 - Send an empty structure to the target function. This may be 
      --           required as a target function could return a non-empty structure
      -- --------------------------------------------------------------------------
      -- Test_Number = Test_Number + 1
      --  UNSUPPORTED 
      --  Clear up, but delete {The_First_Structure} operation is not implemented in ASL.
      --  So, create a new structure over the old one.
      --  This test ensures that redeclaring the structure clears it out completely.
      --  {The_First_Structure} is Structure_and_IH_Type
      --  {Returned_Structure}  is Structure_and_IH_Type
      --  [{Returned_Structure}] = Struct3::Receive_Empty_Structure_IH [Test_Number, {The_First_Structure}, \
      --     Primary_SO, "Pass in empty structure, return full"]
      -- --------------------------------------------------------------------------
      --  Using the return from the previous test, check to see that the return parameter has been
      --  created and silled out as expected.
      --  UNSUPPORTED due to previous test
      -- Test_Number = Test_Number + 1
      -- [] = Struct1::Receive_Structure_IH [Test_Number, {Returned_Structure}, 1, \
      --    Primary_SO.Reference_SO, "Previously returned structure is ok"]
      -- --------------------------------------------------------------------------
      --  Series of tests
      -- --------------------------------------------------------------------------
      
      bean_counter := 1;
      
      -- {Next_Structure} is Structure_and_IH_Type
      Struct_Domain_Types.Ops.Initialise (Next_Structure);
      
      
      loop
         
         Test_Number := Test_Number + 1;
         
         Next_SO := Root_Object.Struct.SO.Create_Unique;
         Root_Object.Struct.SO.Struct_SO_Type(Next_SO.all).An_Integer    := Test_Number;
         Root_Object.Struct.SO.Struct_SO_Type(Next_SO.all).A_Real        := 1.0;
         Root_Object.Struct.SO.Struct_SO_Type(Next_SO.all).Some_Text     := "No text                         ";
         Root_Object.Struct.SO.Struct_SO_Type(Next_SO.all).A_Boolean     := True;
         Root_Object.Struct.SO.Struct_SO_Type(Next_SO.all).A_Colour      := Struct_Domain_Types.Red;
         Root_Object.Struct.SO.Struct_SO_Type(Next_SO.all).Current_State := Root_Object.Struct.SO.Idle;
         
         --
         -- start of append members to structure
         Struct_Domain_Types.Ops.Append (
            A_A_Defined_IH => Next_SO, 
            To_Structure   => Next_Structure);
         -- end of append members to structure
         --
         
         
         Struct_Struct1_Receive_Structure_IH_Service.Struct_Struct1_Receive_Structure_IH (
            This_Test_Number        => Test_Number,
            Input_Structure         => Next_Structure,
            Number_Of_Elements      => bean_counter,
            Unique_Identifier_Of_IH => Root_Object.Struct.SO.Struct_SO_type(Next_SO.all).Reference_SO,
            Testing_For             => "Many instances in structure     ");
         
         
         bean_counter := bean_counter + 1;
         exit when bean_counter >  5;
      end loop;
      
      
      -- --------------------------------------------------------------------------
      --  Next series of tests. Let's see what happens when the structure is deleted after it is appended.
      --  This test will make sure that the data is copied into the target structure, and not just passed
      --  by reference.
      -- --------------------------------------------------------------------------
      bean_counter := 1;
      
      -- {Delete_Structure} is Structure_and_IH_Type
      Struct_Domain_Types.Ops.Initialise (Delete_Structure);
      
      
      loop
         
         Test_Number := Test_Number + 1;
         
         
         --  Resuse the Next_SO data name.
         Next_SO := Root_Object.Struct.SO.Create_Unique;
         Root_Object.Struct.SO.Struct_SO_Type(Next_SO.all).An_Integer    := Test_Number;
         Root_Object.Struct.SO.Struct_SO_Type(Next_SO.all).A_Real        := 1.0;
         Root_Object.Struct.SO.Struct_SO_Type(Next_SO.all).Some_Text     := "No text                         ";
         Root_Object.Struct.SO.Struct_SO_Type(Next_SO.all).A_Boolean     := True;
         Root_Object.Struct.SO.Struct_SO_Type(Next_SO.all).A_Colour      := Struct_Domain_Types.Red;
         Root_Object.Struct.SO.Struct_SO_Type(Next_SO.all).Current_State := Root_Object.Struct.SO.Idle;
         
         
         SO_ID := Root_Object.Struct.SO.Struct_SO_type(Next_SO.all).Reference_SO;
         
         --
         -- start of append members to structure
         Struct_Domain_Types.Ops.Append (
            A_A_Defined_IH => Next_SO, 
            To_Structure   => Delete_Structure);
         -- end of append members to structure
         --
         
         
         Struct_Struct1_Receive_Structure_IH_Service.Struct_Struct1_Receive_Structure_IH (
            This_Test_Number        => Test_Number,
            Input_Structure         => Delete_Structure,
            Number_Of_Elements      => bean_counter,
            Unique_Identifier_Of_IH => SO_ID,
            Testing_For             => "Structure fully copied          ");
         
         
         --  Deleting the instance object before it is passed into the function call as a component of the structure
         --  causes I-Sim grief. It appears that a shallow copy is taken, ie. it is passed by reference. To prove this
         --  delete the instance object and then do the same test again.
         
         if Environment =  "WACA                            " then
            
            Root_Object.Struct.SO.Delete (
               Old_Instance => Next_SO);
         end if;
         
         
         Test_Number := Test_Number + 1;
         
         
         Struct_Struct1_Receive_Structure_IH_Service.Struct_Struct1_Receive_Structure_IH (
            This_Test_Number        => Test_Number,
            Input_Structure         => Delete_Structure,
            Number_Of_Elements      => bean_counter,
            Unique_Identifier_Of_IH => SO_ID,
            Testing_For             => "Structure fully copied          ");
         
         
         bean_counter := bean_counter + 1;
         
         exit when bean_counter >  5;
      end loop;
      
      
      --  Delete structure is not supported by ASL or WACA, although it will compile.
      --  Run_Time crash in I-SIM awaits the unwary.
      --  delete {Next_Structure}
      -- --------------------------------------------------------------------------
      --  Tidy up and finish this sequence of tests.
      -- --------------------------------------------------------------------------
      
      Test_Number := Test_Number + 1;
      
      
      Root_Object.Struct.TD.Struct_TD_type(my_test.all).The_Test_Number := Test_Number;
      
   end Struct_Scenario10;
   
--
-- End of file Struct_Scenario10.ada
--
