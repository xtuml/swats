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
--* File Name:               OAIBONE_Scenario2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          First Set of Tests
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
--* Domain Name              : Open_Architecture_Internal_Bridge_Domain_One
--* Domain Key Letter        : OAIBONE
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.OAIBONE.SBD;
with Root_Object.OAIBONE.TD;

-- List of bridges used
with OAIBONE_RPT3_Test_Failed_Bridge;
with OAIBONE_RPT2_Test_Passed_Bridge;
with OAIBONE_IITGWO1_Across_The_Great_Divide_Bridge;
with OAIBONE_RPT1_Start_Test_Bridge;

-- List of domain types used
with OAIBONE_Domain_Types;
with OAIBONE_Domain_Types.Ops;
use type OAIBONE_Domain_Types.Source_Structure_Type;
use type OAIBONE_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure OAIBONE_Scenario2 is
   
      
      my_test      : Root_Object.Object_Access;
      Object_One   : Root_Object.Object_Access;
      Object_Two   : Root_Object.Object_Access;
      Object_Three : Root_Object.Object_Access;
      
      Source_Structure_One   : OAIBONE_Domain_Types.Source_Structure_Type;
      Source_Structure_Two   : OAIBONE_Domain_Types.Source_Structure_Type;
      Source_Structure_Three : OAIBONE_Domain_Types.Source_Structure_Type;
      Returned_Structure_1   : OAIBONE_Domain_Types.Source_Structure_Type;
      Returned_Structure_2   : OAIBONE_Domain_Types.Source_Structure_Type;
      Returned_Structure_3   : OAIBONE_Domain_Types.Source_Structure_Type;
      
      Test                  : Application_Types.Base_Integer_Type := 1;
      Elements_In_Structure : Application_Types.Base_Integer_Type := 1;
      
      Result : Boolean := Application_Types.Boolean_first;
      
   begin
      my_test := Root_Object.OAIBONE.TD.Unconditional_Find_One;
      
      --  Define a local data structure to be passed via a bridge
      --  into a destination domain.
      -- {Source_Structure_One} is Source_Structure_Type
      OAIBONE_Domain_Types.Ops.Initialise (Source_Structure_One);
      
      -- {Source_Structure_Two} is Source_Structure_Type
      OAIBONE_Domain_Types.Ops.Initialise (Source_Structure_Two);
      
      -- {Source_Structure_Three} is Source_Structure_Type
      OAIBONE_Domain_Types.Ops.Initialise (Source_Structure_Three);
      
      -- {Returned_Structure_1} is Source_Structure_Type
      OAIBONE_Domain_Types.Ops.Initialise (Returned_Structure_1);
      
      -- {Returned_Structure_2} is Source_Structure_Type
      OAIBONE_Domain_Types.Ops.Initialise (Returned_Structure_2);
      
      -- {Returned_Structure_3} is Source_Structure_Type
      OAIBONE_Domain_Types.Ops.Initialise (Returned_Structure_3);
      
      Test := Root_Object.OAIBONE.TD.OAIBONE_TD_type(my_test.all).This_Test_Number;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1
      -- --------------------------------------------------------------------------
      
      OAIBONE_RPT1_Start_Test_Bridge.OAIBONE_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "OAIBONE                         ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Send 1 structure to bridge      ");
      
      
      Object_One := Root_Object.OAIBONE.SBD.Create;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_One.all).Reference   := Test;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_One.all).The_Integer := 1;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_One.all).The_Real    := 2.0;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_One.all).The_String  := "three                           ";
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_One.all).The_Colour  := OAIBONE_Domain_Types.Red;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_One.all).The_Boolean := False;
      
      --
      -- start of append members to structure
      OAIBONE_Domain_Types.Ops.Append (
         A_Source_Integer => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Integer,
         A_Source_Real    => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Real,
         A_Source_Text    => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_String,
         A_Source_Boolean => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Boolean,
         A_Source_Colour  => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Colour, 
         To_Structure     => Source_Structure_One);
      -- end of append members to structure
      --
      
      
      Elements_In_Structure := 1;
      
      
      --  Pass this lot into the bridge.
      
      Result := False;
      
      
      OAIBONE_IITGWO1_Across_The_Great_Divide_Bridge.OAIBONE_IITGWO1_Across_The_Great_Divide (
         Test                  => Test,
         A_Structure_To_Send   => Source_Structure_One,
         Control_Integer       => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Integer,
         Control_Real          => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Real,
         Control_String        => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_String,
         Control_Enum          => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Colour,
         Control_Boolean       => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Boolean,
         Elements_In_Structure => Elements_In_Structure,
         Result                => Result,
         A_Structure_To_Return => Returned_Structure_1);
      
      
      if Result =  True then
         
         OAIBONE_RPT2_Test_Passed_Bridge.OAIBONE_RPT2_Test_Passed (
            Test_Object_Domain => "OAIBONE Source 1 Structure sent ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         OAIBONE_RPT3_Test_Failed_Bridge.OAIBONE_RPT3_Test_Failed (
            Failed_Domain_Object => "OAIBONE Source 1 Structure sent ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      OAIBONE_RPT1_Start_Test_Bridge.OAIBONE_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "OAIBONE                         ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Send 2 structures to bridge     ");
      
      
      Object_Two := Root_Object.OAIBONE.SBD.Create;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_Two.all).Reference   := Test;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_Two.all).The_Integer := 4;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_Two.all).The_Real    := 5.0;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_Two.all).The_String  := "six                             ";
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_Two.all).The_Colour  := OAIBONE_Domain_Types.Blue;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_Two.all).The_Boolean := True;
      
      --
      -- start of append members to structure
      OAIBONE_Domain_Types.Ops.Append (
         A_Source_Integer => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Integer,
         A_Source_Real    => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Real,
         A_Source_Text    => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_String,
         A_Source_Boolean => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Boolean,
         A_Source_Colour  => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Colour, 
         To_Structure     => Source_Structure_Two);
      -- end of append members to structure
      --
      
      --
      -- start of append members to structure
      OAIBONE_Domain_Types.Ops.Append (
         A_Source_Integer => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_Integer,
         A_Source_Real    => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_Real,
         A_Source_Text    => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_String,
         A_Source_Boolean => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_Boolean,
         A_Source_Colour  => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_Colour, 
         To_Structure     => Source_Structure_Two);
      -- end of append members to structure
      --
      
      
      Elements_In_Structure := 2;
      
      
      --  Pass this lot into the bridge.
      
      Result := False;
      
      
      OAIBONE_IITGWO1_Across_The_Great_Divide_Bridge.OAIBONE_IITGWO1_Across_The_Great_Divide (
         Test                  => Test,
         A_Structure_To_Send   => Source_Structure_Two,
         Control_Integer       => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_Integer,
         Control_Real          => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_Real,
         Control_String        => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_String,
         Control_Enum          => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_Colour,
         Control_Boolean       => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_Boolean,
         Elements_In_Structure => Elements_In_Structure,
         Result                => Result,
         A_Structure_To_Return => Returned_Structure_2);
      
      
      if Result =  True then
         
         OAIBONE_RPT2_Test_Passed_Bridge.OAIBONE_RPT2_Test_Passed (
            Test_Object_Domain => "OAIBONE Source 2 Structures sent",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         OAIBONE_RPT3_Test_Failed_Bridge.OAIBONE_RPT3_Test_Failed (
            Failed_Domain_Object => "OAIBONE Source 2 Structures sent",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3
      -- --------------------------------------------------------------------------
      
      OAIBONE_RPT1_Start_Test_Bridge.OAIBONE_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "OAIBONE                         ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Send 3 structures to bridge     ");
      
      
      Object_Three := Root_Object.OAIBONE.SBD.Create;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_Three.all).Reference   := Test;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_Three.all).The_Integer := 7;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_Three.all).The_Real    := 8.0;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_Three.all).The_String  := "nine                            ";
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_Three.all).The_Colour  := OAIBONE_Domain_Types.Blue;
      Root_Object.OAIBONE.SBD.OAIBONE_SBD_Type(Object_Three.all).The_Boolean := True;
      
      --
      -- start of append members to structure
      OAIBONE_Domain_Types.Ops.Append (
         A_Source_Integer => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Integer,
         A_Source_Real    => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Real,
         A_Source_Text    => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_String,
         A_Source_Boolean => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Boolean,
         A_Source_Colour  => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_One.all).The_Colour, 
         To_Structure     => Source_Structure_Three);
      -- end of append members to structure
      --
      
      --
      -- start of append members to structure
      OAIBONE_Domain_Types.Ops.Append (
         A_Source_Integer => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_Integer,
         A_Source_Real    => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_Real,
         A_Source_Text    => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_String,
         A_Source_Boolean => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_Boolean,
         A_Source_Colour  => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Two.all).The_Colour, 
         To_Structure     => Source_Structure_Three);
      -- end of append members to structure
      --
      
      --
      -- start of append members to structure
      OAIBONE_Domain_Types.Ops.Append (
         A_Source_Integer => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Three.all).The_Integer,
         A_Source_Real    => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Three.all).The_Real,
         A_Source_Text    => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Three.all).The_String,
         A_Source_Boolean => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Three.all).The_Boolean,
         A_Source_Colour  => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Three.all).The_Colour, 
         To_Structure     => Source_Structure_Three);
      -- end of append members to structure
      --
      
      
      Elements_In_Structure := 3;
      
      
      --  Pass this lot into the bridge.
      
      Result := False;
      
      
      OAIBONE_IITGWO1_Across_The_Great_Divide_Bridge.OAIBONE_IITGWO1_Across_The_Great_Divide (
         Test                  => Test,
         A_Structure_To_Send   => Source_Structure_Three,
         Control_Integer       => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Three.all).The_Integer,
         Control_Real          => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Three.all).The_Real,
         Control_String        => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Three.all).The_String,
         Control_Enum          => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Three.all).The_Colour,
         Control_Boolean       => Root_Object.OAIBONE.SBD.OAIBONE_SBD_type(Object_Three.all).The_Boolean,
         Elements_In_Structure => Elements_In_Structure,
         Result                => Result,
         A_Structure_To_Return => Returned_Structure_3);
      
      
      if Result =  True then
         
         OAIBONE_RPT2_Test_Passed_Bridge.OAIBONE_RPT2_Test_Passed (
            Test_Object_Domain => "OAIBONE Source 3 Structures sent",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         OAIBONE_RPT3_Test_Failed_Bridge.OAIBONE_RPT3_Test_Failed (
            Failed_Domain_Object => "OAIBONE Source 3 Structures sent",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 4
      -- --------------------------------------------------------------------------
      --  [] = RPT1:Start_Test[Test,"Null Requid", "OAIBONE", "Scenario", "Struct IH to bridge"]
      --  {Decomposed_Struct} is VSD_Struct
      --  ValA = 0
      --  ValB = 0
      --  ValC = 0
      --  ValD = 0
      --  Simple_ObjA = create Very_Simple_Data_Object with Object_Reference_VSD  = 1 &\
      --  Object_Simple_Integer = 1 &\
      --  Object_Simple_Real    = 1.0
      --  Simple_ObjB = create Very_Simple_Data_Object with Object_Reference_VSD  = 2 &\
      --  Object_Simple_Integer = 2 &\
      --  Object_Simple_Real    = 2.0
      --  Simple_ObjC = create Very_Simple_Data_Object with Object_Reference_VSD  = 3 &\
      --  Object_Simple_Integer = 3 &\
      --  Object_Simple_Real    = 3.0
      --  [{Decomposed_Struct}] = IITGWO4:The_IH_Struct_Across_Bridge[Simple_ObjA, Simple_ObjB, Simple_ObjC]
      --  for [A_Ref, A_Int, A_Real] in {Decomposed_Struct} do
      --  if A_Ref = 1 then
      --  if A_Int = 1 then
      --  if A_Real = 1.0 then
      --  ValA = 10
      --  else
      --  ValA = -10
      --  endif
      --  else
      --  ValA = -11
      --  endif
      --  else
      --  if A_Ref = 2 then
      --  if A_Int = 2 then
      --  if A_Real = 2.0 then
      --  ValB = 20
      --  else
      --  ValB = -20
      --  endif
      --  else
      --  ValB = -21
      --  endif
      --  else
      --  if A_Ref = 3 then
      --  if A_Int = 3 then
      --  if A_Real = 3.0 then
      --  ValC = 30
      --  else
      --  ValC = -3
      --  endif
      --  else
      --  ValC = -31
      --  endif
      --  else
      --  ValD = -40
      --  endif
      --  endif
      --  endif
      --  endfor
      --  if ValA = 10 and ValB = 20 and ValC = 30 and ValD = 0 then
      --  [] = RPT2:Test_Passed["OAIBONE Struct IH to bridge", Test, 0]
      --  else
      --  [] = RPT3:Test_Failed["OAIBONE Struct IH to bridge", Test, -10]
      --  endif
      --  Test = Test + 1
      --  End Test 4
      -- --------------------------------------------------------------------------
      
      Root_Object.OAIBONE.TD.OAIBONE_TD_type(my_test.all).This_Test_Number := Test;
      
   end OAIBONE_Scenario2;
   
--
-- End of file OAIBONE_Scenario2.ada
--
