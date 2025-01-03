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
--* File Name:               ASL_Mapping_Scenario1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Perform ASL Mapping Tests
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
with Root_Object.ASL_Mapping.NstLOOP;
with Root_Object.ASL_Mapping.NstFOR;
with Root_Object.ASL_Mapping.NstIF;
with Root_Object.ASL_Mapping.objNESTED;
with Root_Object.ASL_Mapping.objLOGIC;
with Root_Object.ASL_Mapping.objSWITCH;
with Root_Object.ASL_Mapping.objLOOP;

-- List of services used
with ASL_Mapping_ASL_Mapping5_Test_Unfeasibly_Large_Object_Service;
with ASL_Mapping_ASL_Mapping15_Check_Identifiers_Service;
with ASL_Mapping_DV1_Default_Vals_In_Object_Service;
with ASL_Mapping_ASL_Mapping14_Check_Continuation_Service;
with ASL_Mapping_ASL_Mapping13_Comment_Checks_Service;
with ASL_Mapping_ASL_Mapping12_And_Or_Checks_Service;
with ASL_Mapping_ASL_Mapping11_Check_Defaults_Service;
with ASL_Mapping_ASL_Mapping10_Check_Base_Types_Service;
with ASL_Mapping_ASL_Mapping9_Check_Parameters_Service;
with ASL_Mapping_ASL_Mapping7_Perform_Attribute_Assignment_Service;
with ASL_Mapping_ASL_Mapping6_Test_Large_Numbers_Service;
with ASL_Mapping_ASL_Mapping2_basic_asl_divide_by_zero_Service;
with ASL_Mapping_ASL_Mapping1_basic_asl_enumeration_Service;
with ASL_Mapping_NstLOOP1_do_nested_loops_Service;
with ASL_Mapping_NstFOR1_do_nested_for_Service;
with ASL_Mapping_NstIF1_do_nested_if_Service;
with ASL_Mapping_objNESTED1_do_nested_tests_Service;
with ASL_Mapping_PROC1_Create_Processor_Service;
with ASL_Mapping_ASL_Mapping8_Create_Processor_Service;
with ASL_Mapping_objLOGIC2_Perform_Attribute_Assignment_Service;
with ASL_Mapping_objLOGIC1_do_arithmetic_and_logic_Service;
with ASL_Mapping_objSWITCH1_do_switch_Service;
with ASL_Mapping_objLOOP1_do_loop_tests_Service;
with ASL_Mapping_objFOR1_do_for_test_Service;
with ASL_Mapping_objIF1_do_if_test_Service;

-- List of bridges used
with ASL_Mapping_RPT5_Test_Text_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_WAW1_What_Env_Bridge;
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

-- List of domain types used
with ASL_Mapping_Domain_Types;
use type ASL_Mapping_Domain_Types.Enum;
use type ASL_Mapping_Domain_Types.Processor_Id_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure ASL_Mapping_Scenario1 is
   
      
      SetF : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      newLOOP                : Root_Object.Object_Access;
      an_instanceLOOP        : Root_Object.Object_Access;
      newSWITCH              : Root_Object.Object_Access;
      an_instanceLOGIC       : Root_Object.Object_Access;
      newNESTED              : Root_Object.Object_Access;
      an_instanceNESTED_IF   : Root_Object.Object_Access;
      newNstFOR              : Root_Object.Object_Access;
      an_instanceNESTED_LOOP : Root_Object.Object_Access;
      objIf1                 : Root_Object.Object_Access;
      objIf2                 : Root_Object.Object_Access;
      objIf3                 : Root_Object.Object_Access;
      objIf4                 : Root_Object.Object_Access;
      objIf5                 : Root_Object.Object_Access;
      objIf6                 : Root_Object.Object_Access;
      objIf7                 : Root_Object.Object_Access;
      objIf8                 : Root_Object.Object_Access;
      objIf9                 : Root_Object.Object_Access;
      objIf10                : Root_Object.Object_Access;
      InstF                  : Root_Object.Object_Access;
      
      Start_Test_Value : Application_Types.Base_Integer_Type := 1;
      temp             : Application_Types.Base_Integer_Type := 1;
      Count            : Application_Types.Base_Integer_Type := 1;
      A_Small_Number   : Application_Types.Base_Integer_Type := 1;
      Test_Var         : Application_Types.Base_Integer_Type := 1;
      Total            : Application_Types.Base_Integer_Type := 1;
      
      Host : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
      
      --  ---------------------------------------------------------------------------
      --  Peform IF tests
      --  ---------------------------------------------------------------------------
      Start_Test_Value := 1;
      
      
      ASL_Mapping_objIF1_do_if_test_Service.ASL_Mapping_objIF1_do_if_test (
         Test_Start => Start_Test_Value,
         Final_Test => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Perform FOR tests
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_objFOR1_do_for_test_Service.ASL_Mapping_objFOR1_do_for_test (
         Test_Start => Start_Test_Value,
         Final_Test => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Perform LOOP tests
      --  Create several instance of the Object_LOOP
      --  ---------------------------------------------------------------------------
      
      temp := 1;
      
      loop
         
         newLOOP := Root_Object.ASL_Mapping.objLOOP.Create;
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_Type(newLOOP.all).ReferenceLOOP := temp;
         Root_Object.ASL_Mapping.objLOOP.ASL_Mapping_objLOOP_Type(newLOOP.all).ResultA       := 0;
         
         temp := temp + 1;
         exit when temp >  5;
      end loop;
      
      
      --  Invoke as an object based synch. serv.
      --  Start verification
      an_instanceLOOP := Root_Object.ASL_Mapping.objLOOP.Unconditional_Find_One;
      
      ASL_Mapping_objLOOP1_do_loop_tests_Service.ASL_Mapping_objLOOP1_do_loop_tests (
         an_instanceLOOP => an_instanceLOOP,
         Test_Start      => Start_Test_Value,
         Final_Test      => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Perform SWITCH tests
      --  ---------------------------------------------------------------------------
      temp := 1;
      
      --  Define ONE instance of Object_SWITCH
      
      newSWITCH := Root_Object.ASL_Mapping.objSWITCH.Create;
      Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_Type(newSWITCH.all).ReferenceSWITCH := temp;
      Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_Type(newSWITCH.all).IntegerAttr     := 1;
      Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_Type(newSWITCH.all).ResultA         := 0;
      
      
      --  Define TWO instance of Object_SWITCH with IntegerAttr = 2
      
      loop
         
         newSWITCH := Root_Object.ASL_Mapping.objSWITCH.Create;
         Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_Type(newSWITCH.all).ReferenceSWITCH := temp;
         Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_Type(newSWITCH.all).IntegerAttr     := 2;
         Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_Type(newSWITCH.all).ResultA         := 0;
         
         temp := temp + 1;
         exit when temp =  3;
      end loop;
      
      
      --  Define THREE instance of Object_SWITCH with IntegerAttr = 3
      
      loop
         
         newSWITCH := Root_Object.ASL_Mapping.objSWITCH.Create;
         Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_Type(newSWITCH.all).ReferenceSWITCH := temp;
         Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_Type(newSWITCH.all).IntegerAttr     := 3;
         Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_Type(newSWITCH.all).ResultA         := 0;
         
         temp := temp + 1;
         exit when temp =  6;
      end loop;
      
      
      --  Define FOUR instance of Object_SWITCH with IntegerAttr = 4
      --  During TEST1 these instances of Object_SWITCH should not be affected.
      
      loop
         
         newSWITCH := Root_Object.ASL_Mapping.objSWITCH.Create;
         Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_Type(newSWITCH.all).ReferenceSWITCH := temp;
         Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_Type(newSWITCH.all).IntegerAttr     := 4;
         Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_Type(newSWITCH.all).ResultA         := 0;
         
         temp := temp + 1;
         exit when temp =  10;
      end loop;
      
      
      ASL_Mapping_objSWITCH1_do_switch_Service.ASL_Mapping_objSWITCH1_do_switch (
         Test_Start => Start_Test_Value,
         Final_Test => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Perform ARITHMETIC/LOGIC tests
      --  ---------------------------------------------------------------------------
      --  Define ONE instance of Object_LOGIC
      --  Date and Time attributes not supported by S/W architecture
      --                                     TimeAttr = 14:45:34         &\
      --                                     DateAttr = 1996.03.02       &\
      
      an_instanceLOGIC := Root_Object.ASL_Mapping.objLOGIC.Create;
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(an_instanceLOGIC.all).ReferenceLOGIC  := 1;
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(an_instanceLOGIC.all).IntegerAttr     := 0;
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(an_instanceLOGIC.all).EnumerationAttr := ASL_Mapping_Domain_Types.Richard;
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(an_instanceLOGIC.all).BooleanAttr     := True;
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(an_instanceLOGIC.all).ResultA         := 0;
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(an_instanceLOGIC.all).TextAttr        := "Verification                    ";
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(an_instanceLOGIC.all).RealAttr        := 0.0;
      
      
      ASL_Mapping_objLOGIC1_do_arithmetic_and_logic_Service.ASL_Mapping_objLOGIC1_do_arithmetic_and_logic (
         an_instanceLOGIC => an_instanceLOGIC,
         Test_Start       => Start_Test_Value,
         Final_Test       => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Check that attribute assignment happens correctly in an object service
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_objLOGIC2_Perform_Attribute_Assignment_Service.ASL_Mapping_objLOGIC2_Perform_Attribute_Assignment (
         Test_Start => Start_Test_Value,
         Final_Test => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  As above, but for an active object.
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_ASL_Mapping8_Create_Processor_Service.ASL_Mapping_ASL_Mapping8_Create_Processor (
         Test_Start         => Start_Test_Value,
         Processor_Id_Local => ASL_Mapping_Domain_Types.CCA,
         Final_Test         => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  As above, but for an active object.
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_PROC1_Create_Processor_Service.ASL_Mapping_PROC1_Create_Processor (
         Test_Start         => Start_Test_Value,
         Processor_Id_Local => ASL_Mapping_Domain_Types.TCA,
         Final_Test         => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Perform NESTED tests
      --  ---------------------------------------------------------------------------
      --  Create several instances of the Object_NESTED
      temp := 1;
      
      loop
         
         newNESTED := Root_Object.ASL_Mapping.objNESTED.Create;
         Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_Type(newNESTED.all).ReferenceNESTED := temp;
         Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_Type(newNESTED.all).ResultA         := 0;
         Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_Type(newNESTED.all).ResultB         := 0;
         
         temp := temp + 1;
         
         
         --  Tests performed on these instances would have pushed
         --  the final result out of range of defined base_integer_type
         --  range of +- 2000. So reduce number of instances to 4.
         exit when temp >  5;
      end loop;
      
      
      ASL_Mapping_objNESTED1_do_nested_tests_Service.ASL_Mapping_objNESTED1_do_nested_tests (
         Test_Start => Start_Test_Value,
         Final_Test => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Perform NESTED IF tests
      --  ---------------------------------------------------------------------------
      --  Nest IF statements, without logical conditions.
      
      an_instanceNESTED_IF := Root_Object.ASL_Mapping.NstIF.Create;
      Root_Object.ASL_Mapping.NstIF.ASL_Mapping_NstIF_Type(an_instanceNESTED_IF.all).ReferenceNstIF  := 1;
      Root_Object.ASL_Mapping.NstIF.ASL_Mapping_NstIF_Type(an_instanceNESTED_IF.all).ResultA         := 0;
      
      
      --  Start the test
      
      ASL_Mapping_NstIF1_do_nested_if_Service.ASL_Mapping_NstIF1_do_nested_if (
         an_instanceNESTED_IF => an_instanceNESTED_IF,
         Test_Start           => Start_Test_Value,
         Final_Test           => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Perform NESTED FOR tests
      --  ---------------------------------------------------------------------------
      --  Nest FOR statements.
      
      Count := 1;
      
      loop
         
         newNstFOR := Root_Object.ASL_Mapping.NstFOR.Create;
         Root_Object.ASL_Mapping.NstFOR.ASL_Mapping_NstFOR_Type(newNstFOR.all).ReferenceNstFOR := Count;
         Root_Object.ASL_Mapping.NstFOR.ASL_Mapping_NstFOR_Type(newNstFOR.all).ResultA         := 0;
         
         Count := Count + 1;
         
         exit when Count =  6;
      end loop;
      
      
      --  Start the test
      
      ASL_Mapping_NstFOR1_do_nested_for_Service.ASL_Mapping_NstFOR1_do_nested_for (
         Test_Start => Start_Test_Value,
         Final_Test => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Perform NESTED LOOP tests
      --  ---------------------------------------------------------------------------
      --  Nest LOOP statements.
      
      an_instanceNESTED_LOOP := Root_Object.ASL_Mapping.NstLOOP.Create;
      Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_Type(an_instanceNESTED_LOOP.all).ReferenceNstLOOP := 1;
      Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_Type(an_instanceNESTED_LOOP.all).ResultA          := 0;
      
      
      --  Start the test
      
      ASL_Mapping_NstLOOP1_do_nested_loops_Service.ASL_Mapping_NstLOOP1_do_nested_loops (
         an_instanceNESTED_LOOP => an_instanceNESTED_LOOP,
         Test_Start             => Start_Test_Value,
         Final_Test             => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Perform BASIC ASL tests
      --  ---------------------------------------------------------------------------
      --  basic ASL operations by function call
      --  Start the test
      
      ASL_Mapping_ASL_Mapping1_basic_asl_enumeration_Service.ASL_Mapping_ASL_Mapping1_basic_asl_enumeration (
         Test_Start => Start_Test_Value,
         Final_Test => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Divide by zero tests
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_ASL_Mapping2_basic_asl_divide_by_zero_Service.ASL_Mapping_ASL_Mapping2_basic_asl_divide_by_zero (
         Test_Start => Start_Test_Value,
         Final_Test => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Overflow underflow tests
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_ASL_Mapping6_Test_Large_Numbers_Service.ASL_Mapping_ASL_Mapping6_Test_Large_Numbers (
         Start_Test_Number  => Start_Test_Value,
         Finish_Test_Number => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Check that attribute assignment happens correctly in a domain service
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_ASL_Mapping7_Perform_Attribute_Assignment_Service.ASL_Mapping_ASL_Mapping7_Perform_Attribute_Assignment (
         Test_Start => Start_Test_Value,
         Final_Test => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Peramater order tests
      --  ---------------------------------------------------------------------------
      
      A_Small_Number := 1;
      
      
      ASL_Mapping_ASL_Mapping9_Check_Parameters_Service.ASL_Mapping_ASL_Mapping9_Check_Parameters (
         Test               => Start_Test_Value,
         The_Subtract_Param => A_Small_Number,
         Returning_No       => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Base types checks
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_ASL_Mapping10_Check_Base_Types_Service.ASL_Mapping_ASL_Mapping10_Check_Base_Types (
         Test         => Start_Test_Value,
         Returning_No => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Default values checks
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_ASL_Mapping11_Check_Defaults_Service.ASL_Mapping_ASL_Mapping11_Check_Defaults (
         Test         => Start_Test_Value,
         Returning_No => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  AND and OR checks
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_ASL_Mapping12_And_Or_Checks_Service.ASL_Mapping_ASL_Mapping12_And_Or_Checks (
         Test_No      => Start_Test_Value,
         Returning_No => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --   Comment checks
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_ASL_Mapping13_Comment_Checks_Service.ASL_Mapping_ASL_Mapping13_Comment_Checks (
         Test_No      => Start_Test_Value,
         Returning_No => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Statment continuation checks
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_ASL_Mapping14_Check_Continuation_Service.ASL_Mapping_ASL_Mapping14_Check_Continuation (
         Test_No      => Start_Test_Value,
         Returning_No => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Attribute default values checks
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_DV1_Default_Vals_In_Object_Service.ASL_Mapping_DV1_Default_Vals_In_Object (
         Test         => Start_Test_Value,
         Returning_No => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Test identifying and non-identifying attributes
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_ASL_Mapping15_Check_Identifiers_Service.ASL_Mapping_ASL_Mapping15_Check_Identifiers (
         Test_No      => Start_Test_Value,
         Returning_No => Start_Test_Value);
      
      
      --  ---------------------------------------------------------------------------
      --  Test that Native C inserts work correctly
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Start_Test_Value,
         Requid          => "1103-0000-01-1211               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Native inline code              ",
         Purpose         => "C Inline code                   ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Start_Test_Value,
         The_Requid_Itself  => "1101-0000-01-0109               ");
      
      ASL_Mapping_WAW1_What_Env_Bridge.ASL_Mapping_WAW1_What_Env (
         Env_Text => Host);
      
      
      Test_Var := 0;
      
      
      if Host =  "ISIM                            " then
         
         if Test_Var =  100 then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "C Inline code                   ",
               Test_Number        => Start_Test_Value,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "C Inline code                   ",
               Failed_Test_Number   => Start_Test_Value,
               Failed_Test_Value    => Test_Var);
            
         end if;
         
      else
         
         if Test_Var =  0 then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "C Inline code                   ",
               Test_Number        => Start_Test_Value,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "C Inline code                   ",
               Failed_Test_Number   => Start_Test_Value,
               Failed_Test_Value    => Test_Var);
            
         end if;
         
      end if;
      
      
      Start_Test_Value := Start_Test_Value + 1;
      
      
      --  ---------------------------------------------------------------------------
      --  Test that native Ada code works correctly
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Start_Test_Value,
         Requid          => "1103-0000-01-1212               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Native inline code              ",
         Purpose         => "Ada Inline code                 ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Start_Test_Value,
         The_Requid_Itself  => "1101-0000-01-0108               ");
      
      
      Test_Var := 0;
      
      --
      -- start of Ada inline code insertion
            Test_Var := 100;
         -- end of Ada inline code insertion
      --
      
      
      if Host =  "ISIM                            " then
         
         if Test_Var =  0 then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "C Inline code                   ",
               Test_Number        => Start_Test_Value,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "C Inline code                   ",
               Failed_Test_Number   => Start_Test_Value,
               Failed_Test_Value    => Test_Var);
            
         end if;
         
      else
         
         if Test_Var =  100 then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "Ada Inline code                 ",
               Test_Number        => Start_Test_Value,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "Ada Inline code                 ",
               Failed_Test_Number   => Start_Test_Value,
               Failed_Test_Value    => Test_Var);
            
         end if;
         
      end if;
      
      
      Start_Test_Value := Start_Test_Value + 1;
      
      
      --  ---------------------------------------------------------------------------
      --  Check that iteration over sets works correctly
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Start_Test_Value,
         Requid          => "1241-0000-01-1201               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "ASL Support                     ",
         Purpose         => "Iteration over a set            ");
      
      
      objIf1 := Root_Object.ASL_Mapping.objIF.Create;
      Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(objIf1.all).ReferenceIF := 100;
      
      
      objIf2 := Root_Object.ASL_Mapping.objIF.Create;
      Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(objIf2.all).ReferenceIF := 101;
      
      
      objIf3 := Root_Object.ASL_Mapping.objIF.Create;
      Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(objIf3.all).ReferenceIF := 102;
      
      
      objIf4 := Root_Object.ASL_Mapping.objIF.Create;
      Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(objIf4.all).ReferenceIF := 103;
      
      
      objIf5 := Root_Object.ASL_Mapping.objIF.Create;
      Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(objIf5.all).ReferenceIF := 104;
      
      
      objIf6 := Root_Object.ASL_Mapping.objIF.Create;
      Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(objIf6.all).ReferenceIF := 105;
      
      
      objIf7 := Root_Object.ASL_Mapping.objIF.Create;
      Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(objIf7.all).ReferenceIF := 106;
      
      
      objIf8 := Root_Object.ASL_Mapping.objIF.Create;
      Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(objIf8.all).ReferenceIF := 107;
      
      
      objIf9 := Root_Object.ASL_Mapping.objIF.Create;
      Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(objIf9.all).ReferenceIF := 108;
      
      
      objIf10 := Root_Object.ASL_Mapping.objIF.Create;
      Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(objIf10.all).ReferenceIF := 109;
      
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => SetF);
         
         Root_Object.ASL_Mapping.objIF.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.ASL_Mapping.objIF.ASL_Mapping_objIF_Type(Temp_Entry.Item.all).ReferenceIF >= 100 then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => SetF);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      Total := Root_Object.Object_List.Count_Of(SetF);
      Count := 0;
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => SetF);
         
         while (Temp_Entry /= null) loop
            InstF := Temp_Entry.Item;
            Count := Count + 1;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => SetF);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if Total =  Count then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Iteration over set              ",
            Test_Number        => Start_Test_Value,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Iteration over set              ",
            Failed_Test_Number   => Start_Test_Value,
            Failed_Test_Value    => Count);
         
      end if;
      
      
      Start_Test_Value := Start_Test_Value + 1;
      
      --  ---------------------------------------------------------------------------
      --  Create unique - This is proved by inspecting the relevant WACA generated 
      --                  code
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Start_Test_Value,
         Requid          => "1241-0000-01-1213               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "ASL Support                     ",
         Purpose         => "Create Unique                   ");
      
      ASL_Mapping_RPT5_Test_Text_Bridge.ASL_Mapping_RPT5_Test_Text (
         Test_Number => Start_Test_Value,
         Free_Text   => "Proved by inspection            ");
      
      ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
         Test_Object_Domain => "Create_Unique                   ",
         Test_Number        => Start_Test_Value,
         Test_Value         => 0);
      
      Start_Test_Value := Start_Test_Value + 1;
      
      
      --  ---------------------------------------------------------------------------
      --  Perform tests on an unfeasibly large object
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_ASL_Mapping5_Test_Unfeasibly_Large_Object_Service.ASL_Mapping_ASL_Mapping5_Test_Unfeasibly_Large_Object (
         Start_Test_Number  => Start_Test_Value,
         Finish_Test_Number => Start_Test_Value);
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetF);
   end ASL_Mapping_Scenario1;
   
--
-- End of file ASL_Mapping_Scenario1.ada
--
