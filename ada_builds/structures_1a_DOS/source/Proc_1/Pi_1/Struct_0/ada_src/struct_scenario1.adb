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
--* File Name:               Struct_Scenario1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Simple Structure Scenario
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
with Struct_Struct2_Decode_Simple_Structure_Service;
with Struct_SO2_Decode_Simple_Structure_Service;
with Struct_SO1_Create_Simple_Structure_Service;

-- List of bridges used
with Struct_RPT8_Specify_Requid_Bridge;
with Struct_RPT3_Test_Failed_Bridge;
with Struct_RPT2_Test_Passed_Bridge;
with Struct_RPT1_Start_Test_Bridge;

-- List of domain types used
with Struct_Domain_Types;
with Struct_Domain_Types.Ops;
use type Struct_Domain_Types.Simple_Structure_Type;
use type Struct_Domain_Types.Colour_Type;

with Application_Queue;

with Struct_Domain_Types;

with Ada.Text_IO;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Struct_Scenario1 is
   
      
      My_Test_Data            : Root_Object.Object_Access;
      struct_1                : Root_Object.Object_Access;
      struct_2                : Root_Object.Object_Access;
      a_structured_instance_2 : Root_Object.Object_Access;
      struct_3                : Root_Object.Object_Access;
      struct_4                : Root_Object.Object_Access;
      struct_5                : Root_Object.Object_Access;
      
      Empty_Set                   : Struct_Domain_Types.Simple_Structure_Type;
      Returned_Simple_Structure_1 : Struct_Domain_Types.Simple_Structure_Type;
      Returned_Simple_Structure_2 : Struct_Domain_Types.Simple_Structure_Type;
      Simple_Object_Structure_3   : Struct_Domain_Types.Simple_Structure_Type;
      Simple_Object_Structure_4   : Struct_Domain_Types.Simple_Structure_Type;
      Simple_Object_Structure_5   : Struct_Domain_Types.Simple_Structure_Type;
      
      A_First_Local_Real  : Application_Types.Base_Float_Type := 1.0;
      A_Second_Local_Real : Application_Types.Base_Float_Type := 1.0;
      A_Read_Real         : Application_Types.Base_Float_Type := 1.0;
      A_Real_Number       : Application_Types.Base_Float_Type := 1.0;
      
      Test                  : Application_Types.Base_Integer_Type := 1;
      Reported_No_UDT       : Application_Types.Base_Integer_Type := 1;
      Expected_No_UDT       : Application_Types.Base_Integer_Type := 1;
      Naught                : Application_Types.Base_Integer_Type := 1;
      A_First_Local_Number  : Application_Types.Base_Integer_Type := 1;
      One                   : Application_Types.Base_Integer_Type := 1;
      A_Second_Local_Number : Application_Types.Base_Integer_Type := 1;
      Two                   : Application_Types.Base_Integer_Type := 1;
      How_Many              : Application_Types.Base_Integer_Type := 1;
      Counter               : Application_Types.Base_Integer_Type := 1;
      A_Read_Number         : Application_Types.Base_Integer_Type := 1;
      Termination_Condition : Application_Types.Base_Integer_Type := 1;
      
      A_First_Local_String  : Application_Types.Base_Text_Type := (others => ' ');
      A_Second_Local_String : Application_Types.Base_Text_Type := (others => ' ');
      A_Read_String         : Application_Types.Base_Text_Type := (others => ' ');
      
      A_First_Local_Colour  : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      A_Second_Local_Colour : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      A_Read_Colour         : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      
      Test_Has_Passed        : Boolean := Application_Types.Boolean_first;
      A_First_Local_Boolean  : Boolean := Application_Types.Boolean_first;
      A_Second_Local_Boolean : Boolean := Application_Types.Boolean_first;
      Local_Test_Passed      : Boolean := Application_Types.Boolean_first;
      A_Read_Boolean         : Boolean := Application_Types.Boolean_first;
      
   begin
      
      --  Set up scenario test data.
      Test_Has_Passed := False;
      
      My_Test_Data := Root_Object.Struct.TD.Unconditional_Find_One;
      
      Test := Root_Object.Struct.TD.Struct_TD_type(My_Test_Data.all).The_Test_Number;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - Report the number of User Defined Types used
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Reported No UDTs                ",
         Purpose         => "Obtain No of UDTs Used          ");
      
      
      Reported_No_UDT := 0;
      Expected_No_UDT := 0;
      --
      -- start of Ada inline code insertion
                  
                  Reported_No_UDT := Struct_Domain_Types.Types_And_Subtypes_Count;
         -- end of Ada inline code insertion
      --
      
      
      --  This is the hardcoded expected number of user defined types constant.
      --  If any more UDT's are defined for this domain, this counter MUST be set accordingly.
      --  Failure to do this will cause this test to fail in an ADA run.
      Expected_No_UDT := 20;
      
      
      if Reported_No_UDT =  Expected_No_UDT then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "Report No UDTs                  ",
            Test_Number        => Test,
            Test_Value         => Reported_No_UDT);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Report No UDTs                  ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Expected_No_UDT);
         
      end if;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2 -  Setup Test Data
      --            Basic 'APPEND' operation tests 
      --            This test shall prove that a set is created empty.
      -- --------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Simple Scenario                 ",
         Purpose         => "Create empty structure          ");
      
      Struct_RPT8_Specify_Requid_Bridge.Struct_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0117               ");
      
      -- {Empty_Set} is Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Empty_Set);
      
      
      Naught :=  Struct_Domain_Types.Ops.Count_Of(Empty_Set);
      
      
      if Naught =  0 then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "Scenario                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Scenario                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Naught);
         
      end if;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - Add some data into the set.
      -- --------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Simple Scenario                 ",
         Purpose         => "Add first structure to set      ");
      
      Struct_RPT8_Specify_Requid_Bridge.Struct_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0117               ");
      
      A_First_Local_Colour  := Struct_Domain_Types.Red;
      A_Second_Local_Colour := Struct_Domain_Types.Blue;
      
      A_First_Local_Number  := 100;
      A_First_Local_Real    := 100.0;
      A_First_Local_String  := "Hello Good Evening and Welcome  ";
      A_First_Local_Boolean := True;
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_S_Integer    => A_First_Local_Number,
         A_S_Real       => A_First_Local_Real,
         A_S_Text       => A_First_Local_String,
         A_S_Boolean    => A_First_Local_Boolean,
         A_S_Colour     => A_First_Local_Colour, 
         To_Structure   => Empty_Set);
      -- end of append members to structure
      --
      
      
      One :=  Struct_Domain_Types.Ops.Count_Of(Empty_Set);
      
      
      if One =  1 then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "Scenario                        ",
            Test_Number        => Test,
            Test_Value         => One);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Scenario                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => One);
         
      end if;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 4 - Add some more data into the set.
      -- --------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Simple Scenario                 ",
         Purpose         => "Add second structure to set     ");
      
      Struct_RPT8_Specify_Requid_Bridge.Struct_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0117               ");
      
      
      A_Second_Local_Number  := 200;
      A_Second_Local_Real    := 200.0;
      A_Second_Local_String  := "Thankyou and Goodnight          ";
      A_Second_Local_Boolean := False;
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_S_Integer    => A_Second_Local_Number,
         A_S_Real       => A_Second_Local_Real,
         A_S_Text       => A_Second_Local_String,
         A_S_Boolean    => A_Second_Local_Boolean,
         A_S_Colour     => A_Second_Local_Colour, 
         To_Structure   => Empty_Set);
      -- end of append members to structure
      --
      
      
      Two :=  Struct_Domain_Types.Ops.Count_Of(Empty_Set);
      
      
      if Two =  2 then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain => "Scenario                        ",
            Test_Number        => Test,
            Test_Value         => Two);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Scenario                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Two);
         
      end if;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------------
      --  Test 5 -  Read the data back
      --            The Queue is implemented as a FIFO, so read it back as such.
      --            This test will need to change should this implementation ever
      --            change. This test will fail if this happens.
      -- --------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Simple Scenario                 ",
         Purpose         => "Read back structure from set    ");
      
      
      Local_Test_Passed := False;
      How_Many          :=  Struct_Domain_Types.Ops.Count_Of(Empty_Set);
      
      
      if How_Many =  2 then
         
         Counter := 1;
         
         --
         -- start of unpacking structure
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
         begin
            Struct_Domain_Types.Ops.Go_To_Start (Empty_Set);
            for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Empty_Set) loop
               Struct_Domain_Types.Ops.Extract (
                  A_S_Integer      => A_Read_Number,
                  A_S_Real         => A_Read_Real,
                  A_S_Text         => A_Read_String,
                  A_S_Boolean      => A_Read_Boolean,
                  A_S_Colour       => A_Read_Colour,
                  From_Structure   => Empty_Set);
               
               
               if Counter        =  1 and then
                  A_Read_Number  =  A_First_Local_Number  and then
                  A_Read_Real    =  A_First_Local_Real    and then
                  A_Read_String  =  A_First_Local_String  and then
                  A_Read_Boolean =  A_First_Local_Boolean and then
                  A_Read_Colour  =  A_First_Local_Colour  then
                  
                  Local_Test_Passed := True;
                  
               else
                  
                  if Counter           =  2 and then
                     A_Read_Number     =  A_Second_Local_Number  and then
                     A_Read_Real       =  A_Second_Local_Real    and then
                     A_Read_String     =  A_Second_Local_String  and then
                     A_Read_Boolean    =  A_Second_Local_Boolean and then
                     A_Read_Colour     =  A_Second_Local_Colour  and then
                     Local_Test_Passed =  True then
                     
                     Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
                        Test_Object_Domain => "Simple Scenario                 ",
                        Test_Number        => Test,
                        Test_Value         => A_Read_Number);
                     
                  else
                     Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
                        Failed_Domain_Object => "Simple Scenario                 ",
                        Failed_Test_Number   => Test,
                        Failed_Test_Value    => A_Read_Number);
                     
                  end if;
                  
               end if;
               
               
               Counter := Counter + 1;
               
            end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Empty_Set) loop
            
         end;
         -- end of unpacking structure
         --
         
      else
         
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Scenario                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => How_Many);
         
      end if;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------------
      --  Test 6 - Read the data back again
      --           Prove that reading a set of structures does not change it
      -- --------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Simple Scenario                 ",
         Purpose         => "Prove non-destructive read      ");
      
      
      Local_Test_Passed := False;
      How_Many          :=  Struct_Domain_Types.Ops.Count_Of(Empty_Set);
      
      
      if How_Many =  2 then
         
         Counter := 1;
         
         --
         -- start of unpacking structure
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
         begin
            Struct_Domain_Types.Ops.Go_To_Start (Empty_Set);
            for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Empty_Set) loop
               Struct_Domain_Types.Ops.Extract (
                  A_S_Integer      => A_Read_Number,
                  A_S_Real         => A_Read_Real,
                  A_S_Text         => A_Read_String,
                  A_S_Boolean      => A_Read_Boolean,
                  A_S_Colour       => A_Read_Colour,
                  From_Structure   => Empty_Set);
               
               
               if Counter        =  1 and then
                  A_Read_Number  =  A_First_Local_Number  and then
                  A_Read_Real    =  A_First_Local_Real    and then
                  A_Read_String  =  A_First_Local_String  and then
                  A_Read_Boolean =  A_First_Local_Boolean and then
                  A_Read_Colour  =  A_First_Local_Colour  then
                  
                  Local_Test_Passed := True;
                  
               else
                  
                  if Counter           =  2 and then
                     A_Read_Number     =  A_Second_Local_Number  and then
                     A_Read_Real       =  A_Second_Local_Real    and then
                     A_Read_String     =  A_Second_Local_String  and then
                     A_Read_Boolean    =  A_Second_Local_Boolean and then
                     A_Read_Colour     =  A_Second_Local_Colour  and then
                     Local_Test_Passed =  True then
                     
                     Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
                        Test_Object_Domain => "Scenario                        ",
                        Test_Number        => Test,
                        Test_Value         => A_Read_Number);
                     
                  else
                     Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
                        Failed_Domain_Object => "Scenario                        ",
                        Failed_Test_Number   => Test,
                        Failed_Test_Value    => A_Read_Number);
                     
                  end if;
                  
               end if;
               
               
               Counter := Counter + 1;
               
            end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Empty_Set) loop
            
         end;
         -- end of unpacking structure
         --
         
      else
         
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Scenario                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => How_Many);
         
      end if;
      
      
      --  End Test 6
      -- --------------------------------------------------------------------------
      --  Test 7 - Call object based synch service to create a data structure, 
      --           return it and then confirm that it was created correctly.
      --           This test creates a new return list for each test, so the 
      --           structure is always empty when we start.
      -- --------------------------------------------------------------------------
      
      Test := Test + 1;
      Termination_Condition := Test + 5;
      A_Real_Number         := 1.0;
      
      
      --  Create a new structure object.
      -- {Returned_Simple_Structure_1} is Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Returned_Simple_Structure_1);
      
      
      struct_1 := Root_Object.Struct.SO.Create;
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).Reference_SO  := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).Some_Text     := "Construct a structure           ";
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).An_Integer    := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).A_Real        := A_Real_Number;
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).A_Boolean     := True;
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).A_Colour      := Struct_Domain_Types.Green;
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).Current_State := Root_Object.Struct.SO.Idle;
      
      
      Struct_SO1_Create_Simple_Structure_Service.Struct_SO1_Create_Simple_Structure (
         Test                      => Test,
         Object_Instance_Handle    => struct_1,
         Returned_Simple_Structure => Returned_Simple_Structure_1);
      
      
      --  End Test 7
      -- --------------------------------------------------------------------------
      --  Test 8
      -- --------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Struct_SO2_Decode_Simple_Structure_Service.Struct_SO2_Decode_Simple_Structure (
         Test             => Test,
         A_Structure      => Returned_Simple_Structure_1,
         Instance_Handle  => struct_1,
         Final_Entry_Only => False);
      
      
      Root_Object.Struct.SO.Delete (
         Old_Instance => struct_1);
      
      --  End Test 8
      -- --------------------------------------------------------------------------
      --  Test 9 - Call object based synch service to create a data structure, 
      --           return it and then confirm that it was created correctly.
      --           This test uses the same return parameter for all tests, so the 
      --           results are appended on to the old return structure.
      --           This test will examine what happens when an emptied set is 
      --           reused.
      --           The set will be emptied by the Decode_Simple_Structure service, 
      --           and then written to again by the next iteration of the 
      --           Create_Simple_Structure.
      --           It is understood that for WACA 3.0.0 reading the final entry 
      --           from a set will cause that set to be deleted. Subsequent appends
      --           to that set will cause a fatal crash.
      --           This is no longer the case for subsequent issues. However,  the
      --           test still has some relevance, as it proves that structures can 
      --           be partially read from, and then appended to again.
      -- --------------------------------------------------------------------------
      
      Test                  := Test + 1;
      Termination_Condition := Test + 10;
      A_Real_Number         := 1.0;
      
      -- {Returned_Simple_Structure_2} is Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Returned_Simple_Structure_2);
      
      
      loop
         
         --  Create a couple of structured objects
         
         struct_2 := Root_Object.Struct.SO.Create;
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).Reference_SO  := Test;
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).Some_Text     := "Construct a structure           ";
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).An_Integer    := Test;
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).A_Real        := A_Real_Number;
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).A_Boolean     := False;
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).A_Colour      := Struct_Domain_Types.Green;
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).Current_State := Root_Object.Struct.SO.Idle;
         
         a_structured_instance_2 := Root_Object.Struct.SO.Conditional_Find_One;
         while (a_structured_instance_2 /= null) and then (not (Root_Object.Struct.SO.Struct_SO_Type(a_structured_instance_2.all).Reference_SO =  Test) ) loop
            
            a_structured_instance_2 := a_structured_instance_2.Next_Object;
         end loop;
         
         
         --  Create a new structure object each time, otherwise the same
         --  structure will be appended to each iteration.
         
         Struct_SO1_Create_Simple_Structure_Service.Struct_SO1_Create_Simple_Structure (
            Test                      => Test,
            Object_Instance_Handle    => a_structured_instance_2,
            Returned_Simple_Structure => Returned_Simple_Structure_2);
         
         
         Test := Test + 1;
         
         Struct_SO2_Decode_Simple_Structure_Service.Struct_SO2_Decode_Simple_Structure (
            Test             => Test,
            A_Structure      => Returned_Simple_Structure_2,
            Instance_Handle  => a_structured_instance_2,
            Final_Entry_Only => True);
         
         
         --  Delete the object now we've done with it.
         
         Root_Object.Struct.SO.Delete (
            Old_Instance => a_structured_instance_2);
         Test := Test + 1;
         
         exit when Test =  Termination_Condition;
      end loop;
      
      
      --  End Test 9
      -- --------------------------------------------------------------------------
      --  Test 10 - Define a test which passes a single structure to an instance 
      --            through a generated event.
      -- --------------------------------------------------------------------------
      
      A_Real_Number := 1.0;
      
      struct_3 := Root_Object.Struct.SO.Create;
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).Reference_SO  := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).Some_Text     := "generate simple structure       ";
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).An_Integer    := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).A_Real        := A_Real_Number;
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).A_Boolean     := False;
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).A_Colour      := Struct_Domain_Types.Green;
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).Current_State := Root_Object.Struct.SO.Idle;
      
      
      --  Create a simple structure and pass it in to the instance Simple_F1
      -- {Simple_Object_Structure_3} is Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Simple_Object_Structure_3);
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_S_Integer    => Root_Object.Struct.SO.Struct_SO_type(struct_3.all).Reference_SO,
         A_S_Real       => Root_Object.Struct.SO.Struct_SO_type(struct_3.all).A_Real,
         A_S_Text       => Root_Object.Struct.SO.Struct_SO_type(struct_3.all).Some_Text,
         A_S_Boolean    => Root_Object.Struct.SO.Struct_SO_type(struct_3.all).A_Boolean,
         A_S_Colour     => Root_Object.Struct.SO.Struct_SO_type(struct_3.all).A_Colour, 
         To_Structure   => Simple_Object_Structure_3);
      -- end of append members to structure
      --
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Struct.SO.Struct_SO1'(Root_Object.Root_Event_Type with
            This_Event_Class   => Root_Object.Struct.SO.SO1,
            Target_Instance    => struct_3,
            Test               => Test,
            A_Simple_Structure => Simple_Object_Structure_3);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      --  End Test 10
      -- --------------------------------------------------------------------------
      --  Test 11 - Perform the same test again, except this time use a set of 
      --            structures with more than one set in it.
      -- --------------------------------------------------------------------------
      Test          := Test + 1;
      A_Real_Number := 1.0;
      
      
      struct_4 := Root_Object.Struct.SO.Create;
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).Reference_SO  := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).Some_Text     := "generate simple structure       ";
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).An_Integer    := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).A_Real        := A_Real_Number;
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).A_Boolean     := False;
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).A_Colour      := Struct_Domain_Types.Green;
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).Current_State := Root_Object.Struct.SO.Idle;
      
      -- {Simple_Object_Structure_4} is Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Simple_Object_Structure_4);
      
      
      Termination_Condition := 10;
      Counter               := 0;
      
      
      loop
         --
         -- start of append members to structure
         Struct_Domain_Types.Ops.Append (
            A_S_Integer    => Root_Object.Struct.SO.Struct_SO_type(struct_4.all).An_Integer,
            A_S_Real       => Root_Object.Struct.SO.Struct_SO_type(struct_4.all).A_Real,
            A_S_Text       => Root_Object.Struct.SO.Struct_SO_type(struct_4.all).Some_Text,
            A_S_Boolean    => Root_Object.Struct.SO.Struct_SO_type(struct_4.all).A_Boolean,
            A_S_Colour     => Root_Object.Struct.SO.Struct_SO_type(struct_4.all).A_Colour, 
            To_Structure   => Simple_Object_Structure_4);
         -- end of append members to structure
         --
         
         
         Counter := Counter + 1;
         
         exit when Counter =  Termination_Condition;
      end loop;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Struct.SO.Struct_SO1'(Root_Object.Root_Event_Type with
            This_Event_Class   => Root_Object.Struct.SO.SO1,
            Target_Instance    => struct_4,
            Test               => Test,
            A_Simple_Structure => Simple_Object_Structure_4);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      --  End Test 11
      -- --------------------------------------------------------------------------
      --  Test 12 - Pass in the simple structure into a domain based synchronous 
      --            service.
      -- --------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      struct_5 := Root_Object.Struct.SO.Create;
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).Reference_SO  := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).Some_Text     := "Domain based synch service      ";
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).An_Integer    := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).A_Real        := 2.0;
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).A_Boolean     := True;
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).A_Colour      := Struct_Domain_Types.Green;
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).Current_State := Root_Object.Struct.SO.Idle;
      
      -- {Simple_Object_Structure_5} is Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (Simple_Object_Structure_5);
      
      
      Termination_Condition := 10;
      Counter               := 1;
      
      
      loop
         --
         -- start of append members to structure
         Struct_Domain_Types.Ops.Append (
            A_S_Integer    => Root_Object.Struct.SO.Struct_SO_type(struct_5.all).An_Integer,
            A_S_Real       => Root_Object.Struct.SO.Struct_SO_type(struct_5.all).A_Real,
            A_S_Text       => Root_Object.Struct.SO.Struct_SO_type(struct_5.all).Some_Text,
            A_S_Boolean    => Root_Object.Struct.SO.Struct_SO_type(struct_5.all).A_Boolean,
            A_S_Colour     => Root_Object.Struct.SO.Struct_SO_type(struct_5.all).A_Colour, 
            To_Structure   => Simple_Object_Structure_5);
         -- end of append members to structure
         --
         
         
         Counter := Counter + 1;
         
         exit when Termination_Condition =  Counter;
      end loop;
      
      
      --  Invoke domain based synch. service
      
      Struct_Struct2_Decode_Simple_Structure_Service.Struct_Struct2_Decode_Simple_Structure (
         Test                      => Test,
         Simple_Structure          => Simple_Object_Structure_5,
         Object_Instance_Handle_ID => Root_Object.Struct.SO.Struct_SO_type(struct_5.all).Reference_SO);
      
      
      Root_Object.Struct.SO.Delete (
         Old_Instance => struct_5);
      
      --  End Test 12
      -- --------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Root_Object.Struct.TD.Struct_TD_type(My_Test_Data.all).The_Test_Number := Test;
      
   end Struct_Scenario1;
   
--
-- End of file Struct_Scenario1.ada
--
