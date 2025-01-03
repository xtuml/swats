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
--* File Name:               Struct_Scenario3.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Simple Type Linked Structure Scenario
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
with Struct_Struct4_Decode_Simple_TL_Structure_Service;
with Struct_SO6_Decode_Simple_TL_Structure_Service;
with Struct_SO5_Create_Simple_TL_Structure_Service;

-- List of bridges used
with Struct_RPT3_Test_Failed_Bridge;
with Struct_RPT2_Test_Passed_Bridge;
with Struct_RPT1_Start_Test_Bridge;

-- List of domain types used
with Struct_Domain_Types;
with Struct_Domain_Types.Ops;
use type Struct_Domain_Types.Type_Linked_Simple_Structure_Type;
use type Struct_Domain_Types.Colour_Type;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Struct_Scenario3 is
   
      
      My_Test_Data            : Root_Object.Object_Access;
      struct_1                : Root_Object.Object_Access;
      struct_2                : Root_Object.Object_Access;
      a_structured_instance_2 : Root_Object.Object_Access;
      struct_3                : Root_Object.Object_Access;
      struct_4                : Root_Object.Object_Access;
      struct_5                : Root_Object.Object_Access;
      
      TL_Empty_Set                   : Struct_Domain_Types.Type_Linked_Simple_Structure_Type;
      TL_Returned_Simple_Structure_1 : Struct_Domain_Types.Type_Linked_Simple_Structure_Type;
      TL_Returned_Simple_Structure_2 : Struct_Domain_Types.Type_Linked_Simple_Structure_Type;
      TL_Simple_Object_Structure_3   : Struct_Domain_Types.Type_Linked_Simple_Structure_Type;
      TL_Simple_Object_Structure_4   : Struct_Domain_Types.Type_Linked_Simple_Structure_Type;
      TL_Simple_Object_Structure_5   : Struct_Domain_Types.Type_Linked_Simple_Structure_Type;
      
      A_First_Local_Real  : Application_Types.Base_Float_Type := 1.0;
      A_Second_Local_Real : Application_Types.Base_Float_Type := 1.0;
      A_Read_Real         : Application_Types.Base_Float_Type := 1.0;
      A_Real_Number       : Application_Types.Base_Float_Type := 1.0;
      
      Test                  : Application_Types.Base_Integer_Type := 1;
      Naught                : Application_Types.Base_Integer_Type := 1;
      A_First_Local_Number  : Application_Types.Base_Integer_Type := 1;
      One                   : Application_Types.Base_Integer_Type := 1;
      A_Second_Local_Number : Application_Types.Base_Integer_Type := 1;
      Two                   : Application_Types.Base_Integer_Type := 1;
      Counter               : Application_Types.Base_Integer_Type := 1;
      A_Read_Number         : Application_Types.Base_Integer_Type := 1;
      How_Many              : Application_Types.Base_Integer_Type := 1;
      Termination_Condition : Application_Types.Base_Integer_Type := 1;
      
      A_First_Local_String  : Application_Types.Base_Text_Type := (others => ' ');
      A_Second_Local_String : Application_Types.Base_Text_Type := (others => ' ');
      A_Read_String         : Application_Types.Base_Text_Type := (others => ' ');
      
      A_First_Local_Boolean  : Boolean := Application_Types.Boolean_first;
      A_Second_Local_Boolean : Boolean := Application_Types.Boolean_first;
      Local_Test_Passed      : Boolean := Application_Types.Boolean_first;
      A_Read_Boolean         : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------------
      --  Setup Test Data
      --  TYPE LINKED Simple Structures
      -- --------------------------------------------------------------------------
      My_Test_Data := Root_Object.Struct.TD.Unconditional_Find_One;
      Test := Root_Object.Struct.TD.Struct_TD_type(My_Test_Data.all).The_Test_Number;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - Basic 'APPEND' operation tests
      --           This test shall prove that a set is created empty.
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Create empty TL structure       ");
      
      -- {TL_Empty_Set} is Type_Linked_Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (TL_Empty_Set);
      
      
      Naught :=  Struct_Domain_Types.Ops.Count_Of(TL_Empty_Set);
      
      
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
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2 - Add some data into the set
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Add first TL structure to set   ");
      
      
      A_First_Local_Number  := 100;
      A_First_Local_Real    := 100.0;
      A_First_Local_String  := "Hello Good Evening and Welcome  ";
      A_First_Local_Boolean := True;
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_TLS_Integer  => A_First_Local_Number,
         A_TLS_Real     => A_First_Local_Real,
         A_TLS_Text     => A_First_Local_String,
         A_TLS_Boolean  => A_First_Local_Boolean, 
         To_Structure   => TL_Empty_Set);
      -- end of append members to structure
      --
      
      
      One :=  Struct_Domain_Types.Ops.Count_Of(TL_Empty_Set);
      
      
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
      
      
      Test := Test + 1;
      
      
      --  End  Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - Add some more data into the set.
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Add second TL structure to set  ");
      
      
      A_Second_Local_Number  := 200;
      A_Second_Local_Real    := 200.0;
      A_Second_Local_String  := "Thankyou and Goodnight          ";
      A_Second_Local_Boolean := False;
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_TLS_Integer  => A_Second_Local_Number,
         A_TLS_Real     => A_Second_Local_Real,
         A_TLS_Text     => A_Second_Local_String,
         A_TLS_Boolean  => A_Second_Local_Boolean, 
         To_Structure   => TL_Empty_Set);
      -- end of append members to structure
      --
      
      
      Two :=  Struct_Domain_Types.Ops.Count_Of(TL_Empty_Set);
      
      
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
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 4 - Read the data back
      --           The Queue is implemented as a FIFO, so read it back as such.
      --           This test will need to change should this implementation ever
      --           change. This test will fail if this happens.
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Read back TL structure from set ");
      
      
      Counter           := 1;
      Local_Test_Passed := False;
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (TL_Empty_Set);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => TL_Empty_Set) loop
            Struct_Domain_Types.Ops.Extract (
               A_TLS_Integer    => A_Read_Number,
               A_TLS_Real       => A_Read_Real,
               A_TLS_Text       => A_Read_String,
               A_TLS_Boolean    => A_Read_Boolean,
               From_Structure   => TL_Empty_Set);
            
            
            if Counter        =  1 and then
               A_Read_Number  =  A_First_Local_Number  and then
               A_Read_Real    =  A_First_Local_Real    and then
               A_Read_String  =  A_First_Local_String  and then
               A_Read_Boolean =  A_First_Local_Boolean then
               Local_Test_Passed := True;
               
            else
               
               if Counter           =  2 and then
                  A_Read_Number     =  A_Second_Local_Number  and then
                  A_Read_Real       =  A_Second_Local_Real    and then
                  A_Read_String     =  A_Second_Local_String  and then
                  A_Read_Boolean    =  A_Second_Local_Boolean and then
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
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => TL_Empty_Set) loop
         
      end;
      -- end of unpacking structure
      --
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------------
      --  Test 5 - Read the data back again
      --           Prove that reading a set of structures does not change it
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Prove non-destructive read      ");
      
      
      Local_Test_Passed := False;
      How_Many          :=  Struct_Domain_Types.Ops.Count_Of(TL_Empty_Set);
      
      
      if How_Many =  2 then
         
         Counter := 1;
         
         --
         -- start of unpacking structure
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
         begin
            Struct_Domain_Types.Ops.Go_To_Start (TL_Empty_Set);
            for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => TL_Empty_Set) loop
               Struct_Domain_Types.Ops.Extract (
                  A_TLS_Integer    => A_Read_Number,
                  A_TLS_Real       => A_Read_Real,
                  A_TLS_Text       => A_Read_String,
                  A_TLS_Boolean    => A_Read_Boolean,
                  From_Structure   => TL_Empty_Set);
               
               
               if Counter        =  1 and then
                  A_Read_Number  =  A_First_Local_Number  and then
                  A_Read_Real    =  A_First_Local_Real    and then
                  A_Read_String  =  A_First_Local_String  and then
                  A_Read_Boolean =  A_First_Local_Boolean then
                  
                  Local_Test_Passed := True;
                  
               else
                  
                  if Counter           =  2 and then
                     A_Read_Number     =  A_Second_Local_Number  and then
                     A_Read_Real       =  A_Second_Local_Real    and then
                     A_Read_String     =  A_Second_Local_String  and then
                     A_Read_Boolean    =  A_Second_Local_Boolean and then
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
               
            end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => TL_Empty_Set) loop
            
         end;
         -- end of unpacking structure
         --
         
      else
         
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Scenario                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => How_Many);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------------
      --  Test 6 - Call object based synch service to create a data structure, 
      --           return it and then confirm that it was created correctly.
      --           This test creates a new return list for each test, so the 
      --           structure is always empty when we start.
      -- --------------------------------------------------------------------------
      
      A_Real_Number := 1.0;
      
      
      --  Create a new structure object.
      -- {TL_Returned_Simple_Structure_1} is Type_Linked_Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (TL_Returned_Simple_Structure_1);
      
      
      struct_1 := Root_Object.Struct.SO.Create;
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).Reference_SO  := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).Some_Text     := "Construct a structure           ";
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).An_Integer    := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).A_Real        := A_Real_Number;
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).A_Boolean     := True;
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).A_Colour      := Struct_Domain_Types.Red;
      Root_Object.Struct.SO.Struct_SO_Type(struct_1.all).Current_State := Root_Object.Struct.SO.Idle;
      
      
      Struct_SO5_Create_Simple_TL_Structure_Service.Struct_SO5_Create_Simple_TL_Structure (
         Test                      => Test,
         Object_Instance_Handle    => struct_1,
         Returned_Simple_Structure => TL_Returned_Simple_Structure_1);
      
      
      Test := Test + 1;
      
      Struct_SO6_Decode_Simple_TL_Structure_Service.Struct_SO6_Decode_Simple_TL_Structure (
         Test             => Test,
         A_Structure      => TL_Returned_Simple_Structure_1,
         Instance_Handle  => struct_1,
         Final_Entry_Only => False);
      
      
      Root_Object.Struct.SO.Delete (
         Old_Instance => struct_1);
      Test := Test + 1;
      
      
      --  End Test 6
      -- --------------------------------------------------------------------------
      --  Test 7 - Call object based synch service to create a data structure, 
      --           return it and then confirm that it was created correctly.
      --           This test uses the same return parameter for all tests, so the 
      --           results are appended on to the old return structure.
      --           This test will examine what happens when an emptied set is 
      --           reused.
      --           The set will be emptied by the Decode_Simple_Structure service, 
      --           and then written to again by the next iteration of the 
      --           Create_Simple_Structure.
      --           It is understood that reading the final entry from a set will 
      --           cause that set to be deleted. Subsequent appends to that set will
      --           cause a fatal crash.
      --           To avoid this, ensure that the final entry of a set is never read 
      --           from.
      --           This will prove that a set may be written to again after it has 
      --           been partially read from.
      -- --------------------------------------------------------------------------
      
      Termination_Condition := Test + 10;
      A_Real_Number         := 1.0;
      
      -- {TL_Returned_Simple_Structure_2} is Type_Linked_Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (TL_Returned_Simple_Structure_2);
      
      
      loop
         
         --  Create a couple of structured objects
         
         struct_2 := Root_Object.Struct.SO.Create;
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).Reference_SO  := Test;
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).Some_Text     := "Construct a structure           ";
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).An_Integer    := Test;
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).A_Real        := A_Real_Number;
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).A_Boolean     := False;
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).A_Colour      := Struct_Domain_Types.Red;
         Root_Object.Struct.SO.Struct_SO_Type(struct_2.all).Current_State := Root_Object.Struct.SO.Idle;
         
         a_structured_instance_2 := Root_Object.Struct.SO.Conditional_Find_One;
         while (a_structured_instance_2 /= null) and then (not (Root_Object.Struct.SO.Struct_SO_Type(a_structured_instance_2.all).Reference_SO =  Test) ) loop
            
            a_structured_instance_2 := a_structured_instance_2.Next_Object;
         end loop;
         
         
         --  Create a new structure object each time, otherwise the same
         --  structure will be appended to each iteration.
         
         Struct_SO5_Create_Simple_TL_Structure_Service.Struct_SO5_Create_Simple_TL_Structure (
            Test                      => Test,
            Object_Instance_Handle    => a_structured_instance_2,
            Returned_Simple_Structure => TL_Returned_Simple_Structure_2);
         
         
         Test := Test + 1;
         
         Struct_SO6_Decode_Simple_TL_Structure_Service.Struct_SO6_Decode_Simple_TL_Structure (
            Test             => Test,
            A_Structure      => TL_Returned_Simple_Structure_2,
            Instance_Handle  => a_structured_instance_2,
            Final_Entry_Only => True);
         
         
         --  Delete the object now we've done with it.
         
         Root_Object.Struct.SO.Delete (
            Old_Instance => a_structured_instance_2);
         Test := Test + 1;
         
         exit when Test =  Termination_Condition;
      end loop;
      
      
      --  End Test 7
      -- --------------------------------------------------------------------------
      --  Test 8 - Define a test which passes a single structure to an instance 
      --           through a generated event.
      -- --------------------------------------------------------------------------
      
      A_Real_Number := 1.0;
      
      
      struct_3 := Root_Object.Struct.SO.Create;
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).Reference_SO  := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).Some_Text     := "generate simple structure       ";
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).An_Integer    := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).A_Real        := A_Real_Number;
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).A_Boolean     := False;
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).A_Colour      := Struct_Domain_Types.Red;
      Root_Object.Struct.SO.Struct_SO_Type(struct_3.all).Current_State := Root_Object.Struct.SO.Idle;
      
      
      --  Create a simple structure and pass it in to the instance Simple_F1
      -- {TL_Simple_Object_Structure_3} is Type_Linked_Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (TL_Simple_Object_Structure_3);
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_TLS_Integer  => Root_Object.Struct.SO.Struct_SO_type(struct_3.all).Reference_SO,
         A_TLS_Real     => Root_Object.Struct.SO.Struct_SO_type(struct_3.all).A_Real,
         A_TLS_Text     => Root_Object.Struct.SO.Struct_SO_type(struct_3.all).Some_Text,
         A_TLS_Boolean  => Root_Object.Struct.SO.Struct_SO_type(struct_3.all).A_Boolean, 
         To_Structure   => TL_Simple_Object_Structure_3);
      -- end of append members to structure
      --
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Struct.SO.Struct_SO5'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Struct.SO.SO5,
            Target_Instance  => struct_3,
            Test             => Test,
            A_TL_Structure   => TL_Simple_Object_Structure_3);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test := Test + 1;
      
      
      --  End Test 8
      -- --------------------------------------------------------------------------
      --  Test 9 - Perform the same test again, except this time use a set of 
      --           structures with more than one set in it.
      -- --------------------------------------------------------------------------
      
      A_Real_Number := 1.0;
      
      
      struct_4 := Root_Object.Struct.SO.Create;
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).Reference_SO  := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).Some_Text     := "generate simple structure       ";
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).An_Integer    := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).A_Real        := A_Real_Number;
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).A_Boolean     := False;
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).A_Colour      := Struct_Domain_Types.Red;
      Root_Object.Struct.SO.Struct_SO_Type(struct_4.all).Current_State := Root_Object.Struct.SO.Idle;
      
      -- {TL_Simple_Object_Structure_4} is Type_Linked_Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (TL_Simple_Object_Structure_4);
      
      
      Termination_Condition := 10;
      Counter               := 0;
      
      
      loop
         --
         -- start of append members to structure
         Struct_Domain_Types.Ops.Append (
            A_TLS_Integer  => Root_Object.Struct.SO.Struct_SO_type(struct_4.all).An_Integer,
            A_TLS_Real     => Root_Object.Struct.SO.Struct_SO_type(struct_4.all).A_Real,
            A_TLS_Text     => Root_Object.Struct.SO.Struct_SO_type(struct_4.all).Some_Text,
            A_TLS_Boolean  => Root_Object.Struct.SO.Struct_SO_type(struct_4.all).A_Boolean, 
            To_Structure   => TL_Simple_Object_Structure_4);
         -- end of append members to structure
         --
         
         
         Counter := Counter + 1;
         
         exit when Counter =  Termination_Condition;
      end loop;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Struct.SO.Struct_SO5'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Struct.SO.SO5,
            Target_Instance  => struct_4,
            Test             => Test,
            A_TL_Structure   => TL_Simple_Object_Structure_4);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test := Test + 1;
      
      
      --  End Test 9
      -- ---------------------------------------------------------------------------
      --  Test 10 - Pass in the simple structure into a domain based synchronous service.
      -- --------------------------------------------------------------------------
      
      struct_5 := Root_Object.Struct.SO.Create;
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).Reference_SO  := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).Some_Text     := "Domain based synch service      ";
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).An_Integer    := Test;
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).A_Real        := 2.0;
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).A_Boolean     := True;
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).A_Colour      := Struct_Domain_Types.Red;
      Root_Object.Struct.SO.Struct_SO_Type(struct_5.all).Current_State := Root_Object.Struct.SO.Idle;
      
      -- {TL_Simple_Object_Structure_5} is Type_Linked_Simple_Structure_Type
      Struct_Domain_Types.Ops.Initialise (TL_Simple_Object_Structure_5);
      
      
      Termination_Condition := 10;
      Counter               := 1;
      
      
      loop
         --
         -- start of append members to structure
         Struct_Domain_Types.Ops.Append (
            A_TLS_Integer  => Root_Object.Struct.SO.Struct_SO_type(struct_5.all).An_Integer,
            A_TLS_Real     => Root_Object.Struct.SO.Struct_SO_type(struct_5.all).A_Real,
            A_TLS_Text     => Root_Object.Struct.SO.Struct_SO_type(struct_5.all).Some_Text,
            A_TLS_Boolean  => Root_Object.Struct.SO.Struct_SO_type(struct_5.all).A_Boolean, 
            To_Structure   => TL_Simple_Object_Structure_5);
         -- end of append members to structure
         --
         
         
         Counter := Counter + 1;
         
         exit when Termination_Condition =  Counter;
      end loop;
      
      
      --  Invoke domain based synch. service
      
      Struct_Struct4_Decode_Simple_TL_Structure_Service.Struct_Struct4_Decode_Simple_TL_Structure (
         Test                      => Test,
         Simple_Structure          => TL_Simple_Object_Structure_5,
         Object_Instance_Handle_ID => Root_Object.Struct.SO.Struct_SO_type(struct_5.all).Reference_SO);
      
      
      Root_Object.Struct.SO.Delete (
         Old_Instance => struct_5);
      
      --  End Test 10
      -- --------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Root_Object.Struct.TD.Struct_TD_type(My_Test_Data.all).The_Test_Number := Test;
      
   end Struct_Scenario3;
   
--
-- End of file Struct_Scenario3.ada
--
