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
--* File Name:               Function_Calls_Scenario4.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Multiple_IH_Parameters_Scenario
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
--* Domain Name              : Function_Calls
--* Domain Key Letter        : Function_Calls
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Function_Calls.BO;
with Root_Object.Function_Calls.OBJTEN;
with Root_Object.Function_Calls.OBJNINE;
with Root_Object.Function_Calls.OBJEIGHT;
with Root_Object.Function_Calls.OBJSEVEN;
with Root_Object.Function_Calls.OBJSIX;
with Root_Object.Function_Calls.OBJFIVE;
with Root_Object.Function_Calls.OBJFOUR;
with Root_Object.Function_Calls.OBJTHREE;
with Root_Object.Function_Calls.OBJTWO;
with Root_Object.Function_Calls.OBJONE;
with Root_Object.Function_Calls.TD;
with Root_Object.Function_Calls.objA;

-- List of services used
with Function_Calls_BO10_Have_Twenty_IH_Parameters_Service;
with Function_Calls_BO9_Have_Ten_IH_Parameters_Service;
with Function_Calls_BO7_Have_Eight_IH_Parameters_Service;
with Function_Calls_BO6_Have_Seven_IH_Parameters_Service;
with Function_Calls_BO5_Have_Six_IH_Parameters_Service;
with Function_Calls_BO4_Have_Five_IH_Parameters_Service;
with Function_Calls_BO3_Have_Four_IH_Parameters_Service;
with Function_Calls_BO2_Have_Three_IH_Parameters_Service;
with Function_Calls_BO1_Have_Two_IH_Parameters_Service;
with Function_Calls_BO12_Have_EIGHT_Same_IH_Parameters_Service;
with Function_Calls_BO11_Have_SEVEN_Same_IH_Parameters_Service;
with Function_Calls_BO8_Have_SIX_Same_IH_Parameters_Service;
with Function_Calls_objA6_Test_Set_Of_IH_Service;

-- List of bridges used
with Function_Calls_RPT3_Test_Failed_Bridge;
with Function_Calls_RPT2_Test_Passed_Bridge;
with Function_Calls_RPT8_Specify_Requid_Bridge;
with Function_Calls_RPT1_Start_Test_Bridge;

-- List of domain types used
with Function_Calls_Domain_Types;
with Function_Calls_Domain_Types.Ops;
use type Function_Calls_Domain_Types.Structure_For_IH;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Function_Calls_Scenario4 is
   
      
      Set_Of_ObjectA : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      individual_IH : Root_Object.Object_Access;
      newA          : Root_Object.Object_Access;
      my_test       : Root_Object.Object_Access;
      One           : Root_Object.Object_Access;
      Two           : Root_Object.Object_Access;
      Three         : Root_Object.Object_Access;
      Four          : Root_Object.Object_Access;
      Five          : Root_Object.Object_Access;
      Six           : Root_Object.Object_Access;
      Seven         : Root_Object.Object_Access;
      Eight         : Root_Object.Object_Access;
      Nine          : Root_Object.Object_Access;
      Ten           : Root_Object.Object_Access;
      One_A         : Root_Object.Object_Access;
      One_B         : Root_Object.Object_Access;
      One_C         : Root_Object.Object_Access;
      One_D         : Root_Object.Object_Access;
      One_E         : Root_Object.Object_Access;
      One_F         : Root_Object.Object_Access;
      One_G         : Root_Object.Object_Access;
      One_H         : Root_Object.Object_Access;
      Pass_Them_In  : Root_Object.Object_Access;
      
      A_Structure       : Function_Calls_Domain_Types.Structure_For_IH;
      Another_Structure : Function_Calls_Domain_Types.Structure_For_IH;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      Result_Value : Application_Types.Base_Integer_Type := 1;
      
      Result : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- -------------------------------------------------------------------------
      --  Test 1
      -- -------------------------------------------------------------------------
      
      Root_Object.Object_List.Clear (
         From => Set_Of_ObjectA);
      
      Root_Object.Function_Calls.objA.Find (
         Add_To => Set_Of_ObjectA);
      
      -- {A_Structure} is Structure_For_IH
      Function_Calls_Domain_Types.Ops.Initialise (A_Structure);
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Set_Of_ObjectA);
         
         while (Temp_Entry /= null) loop
            individual_IH := Temp_Entry.Item;
            --
            -- start of append members to structure
            Function_Calls_Domain_Types.Ops.Append (
               A_An_Instance_Handle => individual_IH, 
               To_Structure         => A_Structure);
            -- end of append members to structure
            --
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Set_Of_ObjectA);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      Function_Calls_objA6_Test_Set_Of_IH_Service.Function_Calls_objA6_Test_Set_Of_IH (
         Set_Of_IH          => A_Structure,
         Single             => False,
         Testing_For_What   => "Testing multi IH in service para");
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2
      -- -------------------------------------------------------------------------
      
      newA := Root_Object.Function_Calls.objA.Create;
      Root_Object.Function_Calls.objA.Function_Calls_objA_Type(newA.all).ReferenceA    := 999;
      Root_Object.Function_Calls.objA.Function_Calls_objA_Type(newA.all).ResultA       := 0;
      Root_Object.Function_Calls.objA.Function_Calls_objA_Type(newA.all).Current_State := Root_Object.Function_Calls.objA.Idle;
      
      -- {Another_Structure} is Structure_For_IH
      Function_Calls_Domain_Types.Ops.Initialise (Another_Structure);
      
      --
      -- start of append members to structure
      Function_Calls_Domain_Types.Ops.Append (
         A_An_Instance_Handle => newA, 
         To_Structure         => Another_Structure);
      -- end of append members to structure
      --
      
      
      Function_Calls_objA6_Test_Set_Of_IH_Service.Function_Calls_objA6_Test_Set_Of_IH (
         Set_Of_IH          => Another_Structure,
         Single             => True,
         Testing_For_What   => "Testing single IH in service par");
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      my_test := Root_Object.Function_Calls.TD.Unconditional_Find_One;
      Test := Root_Object.Function_Calls.TD.Function_Calls_TD_type(my_test.all).The_Test_Number;
      
      --  Pass up to eight instance handles into an object based synchronous service
      
      One := Root_Object.Function_Calls.OBJONE.Create;
      Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_Type(One.all).Attribute_One := 1;
      
      
      Two := Root_Object.Function_Calls.OBJTWO.Create;
      Root_Object.Function_Calls.OBJTWO.Function_Calls_OBJTWO_Type(Two.all).Attribute_Two := 2;
      
      
      Three := Root_Object.Function_Calls.OBJTHREE.Create;
      Root_Object.Function_Calls.OBJTHREE.Function_Calls_OBJTHREE_Type(Three.all).Attribute_Three := 3;
      
      
      Four := Root_Object.Function_Calls.OBJFOUR.Create;
      Root_Object.Function_Calls.OBJFOUR.Function_Calls_OBJFOUR_Type(Four.all).Attribute_Four := 4;
      
      
      Five := Root_Object.Function_Calls.OBJFIVE.Create;
      Root_Object.Function_Calls.OBJFIVE.Function_Calls_OBJFIVE_Type(Five.all).Attribute_Five := 5;
      
      
      Six := Root_Object.Function_Calls.OBJSIX.Create;
      Root_Object.Function_Calls.OBJSIX.Function_Calls_OBJSIX_Type(Six.all).Attribute_Six := 6;
      
      
      Seven := Root_Object.Function_Calls.OBJSEVEN.Create;
      Root_Object.Function_Calls.OBJSEVEN.Function_Calls_OBJSEVEN_Type(Seven.all).Attribute_Seven := 7;
      
      
      Eight := Root_Object.Function_Calls.OBJEIGHT.Create;
      Root_Object.Function_Calls.OBJEIGHT.Function_Calls_OBJEIGHT_Type(Eight.all).Attribute_Eight := 8;
      
      
      Nine := Root_Object.Function_Calls.OBJNINE.Create;
      Root_Object.Function_Calls.OBJNINE.Function_Calls_OBJNINE_Type(Nine.all).Attribute_Nine := 9;
      
      
      Ten := Root_Object.Function_Calls.OBJTEN.Create;
      Root_Object.Function_Calls.OBJTEN.Function_Calls_OBJTEN_Type(Ten.all).Attribute_Ten := 10;
      
      
      One_A := Root_Object.Function_Calls.OBJONE.Create;
      Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_Type(One_A.all).Attribute_One := 1;
      
      
      One_B := Root_Object.Function_Calls.OBJONE.Create;
      Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_Type(One_B.all).Attribute_One := 2;
      
      
      One_C := Root_Object.Function_Calls.OBJONE.Create;
      Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_Type(One_C.all).Attribute_One := 3;
      
      
      One_D := Root_Object.Function_Calls.OBJONE.Create;
      Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_Type(One_D.all).Attribute_One := 4;
      
      
      One_E := Root_Object.Function_Calls.OBJONE.Create;
      Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_Type(One_E.all).Attribute_One := 5;
      
      
      One_F := Root_Object.Function_Calls.OBJONE.Create;
      Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_Type(One_F.all).Attribute_One := 6;
      
      
      One_G := Root_Object.Function_Calls.OBJONE.Create;
      Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_Type(One_G.all).Attribute_One := 7;
      
      
      One_H := Root_Object.Function_Calls.OBJONE.Create;
      Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_Type(One_H.all).Attribute_One := 8;
      
      
      Pass_Them_In := Root_Object.Function_Calls.BO.Create;
      Root_Object.Function_Calls.BO.Function_Calls_BO_Type(Pass_Them_In.all).Big_Attribute := Test;
      
      
      -- -------------------------------------------------------------------------
      --  Test 3
      -- -------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0805               ",
         Invoking_Domain => "Functions_Calls                 ",
         Invoking_Object => "Multiple IH                     ",
         Purpose         => "Pass in SIX same IH parameters  ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1031               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0138               ");
      
      Function_Calls_BO8_Have_SIX_Same_IH_Parameters_Service.Function_Calls_BO8_Have_SIX_Same_IH_Parameters (
         Param1        => One_A,
         Param2        => One_B,
         Param3        => One_C,
         Param4        => One_D,
         Param5        => One_E,
         Param6        => One_F,
         Has_It_Passed => Result,
         What_With     => Result_Value);
      
      
      if Result =  True then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Pass in lots of IH parameters   ",
            Test_Number        => Test,
            Test_Value         => Result_Value);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Pass in lots of IH parameters   ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Result_Value);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4
      -- -------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1101-0000-01-0138               ",
         Invoking_Domain => "Functions_Calls                 ",
         Invoking_Object => "Multiple IH                     ",
         Purpose         => "Pass in SEVEN same IH parameters");
      
      Function_Calls_BO11_Have_SEVEN_Same_IH_Parameters_Service.Function_Calls_BO11_Have_SEVEN_Same_IH_Parameters (
         Param1        => One_A,
         Param2        => One_B,
         Param3        => One_C,
         Param4        => One_D,
         Param5        => One_E,
         Param6        => One_F,
         Param7        => One_G,
         Has_It_Passed => Result,
         What_With     => Result_Value);
      
      
      if Result =  True then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Pass in lots of IH parameters   ",
            Test_Number        => Test,
            Test_Value         => Result_Value);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Pass in lots of IH parameters   ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Result_Value);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 
      -- -------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1101-0000-01-0138               ",
         Invoking_Domain => "Functions_Calls                 ",
         Invoking_Object => "Multiple IH                     ",
         Purpose         => "Pass in EIGHT same IH parameters");
      
      Function_Calls_BO12_Have_EIGHT_Same_IH_Parameters_Service.Function_Calls_BO12_Have_EIGHT_Same_IH_Parameters (
         Param1        => One_A,
         Param2        => One_B,
         Param3        => One_C,
         Param4        => One_D,
         Param5        => One_E,
         Param6        => One_F,
         Param7        => One_G,
         Param8        => One_H,
         Has_It_Passed => Result,
         What_With     => Result_Value);
      
      
      if Result =  True then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Pass in lots of IH parameters   ",
            Test_Number        => Test,
            Test_Value         => Result_Value);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Pass in lots of IH parameters   ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Result_Value);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      --  Test 6 - Different Parameters...
      -- -------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0805               ",
         Invoking_Domain => "Functions_Calls                 ",
         Invoking_Object => "Multiple IH                     ",
         Purpose         => "Pass in two IH parameters       ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1031               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0138               ");
      
      Function_Calls_BO1_Have_Two_IH_Parameters_Service.Function_Calls_BO1_Have_Two_IH_Parameters (
         Param1        => One,
         Param2        => Two,
         Has_It_Passed => Result,
         What_With     => Result_Value);
      
      
      if Result =  True then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Pass in lots of IH parameters   ",
            Test_Number        => Test,
            Test_Value         => Result_Value);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Pass in lots of IH parameters   ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Result_Value);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 6
      -- -------------------------------------------------------------------------
      --  Test 7
      -- -------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0805               ",
         Invoking_Domain => "Functions_Calls                 ",
         Invoking_Object => "Multiple IH                     ",
         Purpose         => "Pass in three IH parameters     ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1031               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0138               ");
      
      Function_Calls_BO2_Have_Three_IH_Parameters_Service.Function_Calls_BO2_Have_Three_IH_Parameters (
         Param1        => One,
         Param2        => Two,
         Param3        => Three,
         Has_It_Passed => Result,
         What_With     => Result_Value);
      
      
      if Result =  True then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Pass in lots of IH parameters   ",
            Test_Number        => Test,
            Test_Value         => Result_Value);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Pass in lots of IH parameters   ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Result_Value);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 7
      -- -------------------------------------------------------------------------
      --  Test 8
      -- -------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0805               ",
         Invoking_Domain => "Functions_Calls                 ",
         Invoking_Object => "Multiple IH                     ",
         Purpose         => "Pass in four IH parameters      ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1031               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0138               ");
      
      Function_Calls_BO3_Have_Four_IH_Parameters_Service.Function_Calls_BO3_Have_Four_IH_Parameters (
         Param1        => One,
         Param2        => Two,
         Param3        => Three,
         Param4        => Four,
         Has_It_Passed => Result,
         What_With     => Result_Value);
      
      
      if Result =  True then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Pass in lots of IH parameters   ",
            Test_Number        => Test,
            Test_Value         => Result_Value);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Pass in lots of IH parameters   ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Result_Value);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 8
      -- -------------------------------------------------------------------------
      --  Test 9
      -- -------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0805               ",
         Invoking_Domain => "Functions_Calls                 ",
         Invoking_Object => "Multiple IH                     ",
         Purpose         => "Pass in five IH parameters      ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1031               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0138               ");
      
      Function_Calls_BO4_Have_Five_IH_Parameters_Service.Function_Calls_BO4_Have_Five_IH_Parameters (
         Param1        => One,
         Param2        => Two,
         Param3        => Three,
         Param4        => Four,
         Param5        => Five,
         Has_It_Passed => Result,
         What_With     => Result_Value);
      
      
      if Result =  True then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Pass in lots of IH parameters   ",
            Test_Number        => Test,
            Test_Value         => Result_Value);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Pass in lots of IH parameters   ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Result_Value);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 9
      -- -------------------------------------------------------------------------
      --  Test 10
      -- -------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0805               ",
         Invoking_Domain => "Functions_Calls                 ",
         Invoking_Object => "Multiple IH                     ",
         Purpose         => "Pass in six IH parameters       ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1031               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0138               ");
      
      Function_Calls_BO5_Have_Six_IH_Parameters_Service.Function_Calls_BO5_Have_Six_IH_Parameters (
         Param1        => One,
         Param2        => Two,
         Param3        => Three,
         Param4        => Four,
         Param5        => Five,
         Param6        => Six,
         Has_It_Passed => Result,
         What_With     => Result_Value);
      
      
      if Result =  True then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Pass in lots of IH parameters   ",
            Test_Number        => Test,
            Test_Value         => Result_Value);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Pass in lots of IH parameters   ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Result_Value);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 10
      -- -------------------------------------------------------------------------
      --  Test 11
      -- -------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0805               ",
         Invoking_Domain => "Functions_Calls                 ",
         Invoking_Object => "Multiple IH                     ",
         Purpose         => "Pass in seven IH parameters     ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1031               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0138               ");
      
      Function_Calls_BO6_Have_Seven_IH_Parameters_Service.Function_Calls_BO6_Have_Seven_IH_Parameters (
         Param1        => One,
         Param2        => Two,
         Param3        => Three,
         Param4        => Four,
         Param5        => Five,
         Param6        => Six,
         Param7        => Seven,
         Has_It_Passed => Result,
         What_With     => Result_Value);
      
      
      if Result =  True then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Pass in lots of IH parameters   ",
            Test_Number        => Test,
            Test_Value         => Result_Value);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Pass in lots of IH parameters   ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Result_Value);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 11
      -- -------------------------------------------------------------------------
      --  Test 12
      -- -------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0805               ",
         Invoking_Domain => "Functions_Calls                 ",
         Invoking_Object => "Multiple IH                     ",
         Purpose         => "Pass in eight IH parameters     ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1031               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0138               ");
      
      Function_Calls_BO7_Have_Eight_IH_Parameters_Service.Function_Calls_BO7_Have_Eight_IH_Parameters (
         Param1        => One,
         Param2        => Two,
         Param3        => Three,
         Param4        => Four,
         Param5        => Five,
         Param6        => Six,
         Param7        => Seven,
         Param8        => Eight,
         Has_It_Passed => Result,
         What_With     => Result_Value);
      
      
      if Result =  True then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Pass in lots of IH parameters   ",
            Test_Number        => Test,
            Test_Value         => Result_Value);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Pass in lots of IH parameters   ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Result_Value);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 12
      -- -------------------------------------------------------------------------
      --  Test 13
      -- -------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0805               ",
         Invoking_Domain => "Functions_Calls                 ",
         Invoking_Object => "Multiple IH                     ",
         Purpose         => "Pass in 10 IH parameters        ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1031               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0138               ");
      
      Function_Calls_BO9_Have_Ten_IH_Parameters_Service.Function_Calls_BO9_Have_Ten_IH_Parameters (
         Param1        => One,
         Param2        => Two,
         Param3        => Three,
         Param4        => Four,
         Param5        => Five,
         Param6        => Six,
         Param7        => Seven,
         Param8        => Eight,
         Param9        => Nine,
         Param10       => Ten,
         Has_It_Passed => Result,
         What_With     => Result_Value);
      
      
      if Result =  True then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Pass in lots of IH parameters   ",
            Test_Number        => Test,
            Test_Value         => Result_Value);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Pass in lots of IH parameters   ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Result_Value);
         
      end if;
      
      Test := Test + 1;
      
      --  End Test 13
      -- -------------------------------------------------------------------------
      --  Test 14
      -- -------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0805               ",
         Invoking_Domain => "Functions_Calls                 ",
         Invoking_Object => "Multiple IH                     ",
         Purpose         => "Pass in 20 IH parameters        ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1031               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0138               ");
      
      Function_Calls_BO10_Have_Twenty_IH_Parameters_Service.Function_Calls_BO10_Have_Twenty_IH_Parameters (
         Param1        => One,
         Param2        => Two,
         Param3        => Three,
         Param4        => Four,
         Param5        => Five,
         Param6        => Six,
         Param7        => Seven,
         Param8        => Eight,
         Param9        => Nine,
         Param10       => Ten,
         Param11       => One,
         Param12       => Two,
         Param13       => Three,
         Param14       => Four,
         Param15       => Five,
         Param16       => Six,
         Param17       => Seven,
         Param18       => Eight,
         Param19       => Nine,
         Param20       => Ten,
         Has_It_Passed => Result,
         What_With     => Result_Value);
      
      
      if Result =  True then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Pass in lots of IH parameters   ",
            Test_Number        => Test,
            Test_Value         => Result_Value);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Pass in lots of IH parameters   ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Result_Value);
         
      end if;
      
      Test := Test + 1;
      
      
      --  End Test 14
      -- -------------------------------------------------------------------------
      
      Root_Object.Function_Calls.TD.Function_Calls_TD_type(my_test.all).The_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Set_Of_ObjectA);
   end Function_Calls_Scenario4;
   
--
-- End of file Function_Calls_Scenario4.ada
--
