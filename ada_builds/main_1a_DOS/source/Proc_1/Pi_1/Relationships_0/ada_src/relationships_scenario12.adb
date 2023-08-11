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
--* File Name:               Relationships_Scenario12.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Reflexive Tests
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
--* Domain Name              : Relationships
--* Domain Key Letter        : Relationships
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Relationships.objG;
with Root_Object.Relationships.TN;

-- List of services used
with Relationships_objG4_Many_To_Many_Reflexive_Service;
with Relationships_objG3_One_To_Many_Reflexive_Service;
with Relationships_objG2_One_To_One_Reflexive_Service;

-- List of bridges used
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT8_Specify_Requid_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Relationships_Scenario12 is
   
      
      SetG : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test : Root_Object.Object_Access;
      newG    : Root_Object.Object_Access;
      
      Test  : Application_Types.Base_Integer_Type := 1;
      Count : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      -- --------------------------------------------------------------------
      --  Perform Reflexive 1c:1c and Reflexive 1c:Mc tests
      --  
      --  The architecture shall support the creation of new object instances
      --  at application start and during execution
      --  1241-0000-01-0101
      --  The mapping shall be provided for the ASL create statment, 
      --  including the extension which allows some or all atributes to be 
      --  specified
      --  1241-0000-01-0102
      --  The architecture shall support the specification of initial 
      --  relationship instance populations in scenario files
      --  1241-0000-01-0620
      -- --------------------------------------------------------------------
      my_test := Root_Object.Relationships.TN.Unconditional_Find_One;
      Test := Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number;
      
      
      -- --------------------------------------------------------------------
      --  Create the object instances
      -- --------------------------------------------------------------------
      
      Count := 10;
      
      loop
         
         --  Object_G
         
         newG := Root_Object.Relationships.objG.Create;
         Root_Object.Relationships.objG.Relationships_objG_Type(newG.all).idG     := Count;
         Root_Object.Relationships.objG.Relationships_objG_Type(newG.all).ResultA := 0;
         
         Count := Count - 1;
         
         exit when Count =  0;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Test that all the objects have be correctly created
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0101               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objG                            ",
         Purpose         => "Object Instance Creation        ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0620               ");
      
      
      Root_Object.Object_List.Clear (
         From => SetG);
      
      Root_Object.Relationships.objG.Find (
         Add_To => SetG);
      
      
      if Root_Object.Object_List.Count_Of(SetG) =  10 then
         
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "objG                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objG                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      --  Reflexive 1c:1c tests
      -- --------------------------------------------------------------------
      
      Count := 1;
      
      loop
         
         --  Initiate the test
         
         Relationships_objG2_One_To_One_Reflexive_Service.Relationships_objG2_One_To_One_Reflexive (
            Iteration => Count,
            Test      => Test);
         
         Count := Count + 1;
         Test  := Test + 1;
         exit when Count =  23;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Reflexive 1c:Mc tests
      -- --------------------------------------------------------------------
      Count := 1;
      
      loop
         
         --  Initiate the test
         
         Relationships_objG3_One_To_Many_Reflexive_Service.Relationships_objG3_One_To_Many_Reflexive (
            Iteration => Count,
            Test      => Test);
         
         Count := Count + 1;
         Test  := Test + 1;
         
         exit when Count =  16;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Mc:Mc reflexive navigation
      --  Not currently supported by the WACA
      -- --------------------------------------------------------------------
      --  Initiate the test
      
      Relationships_objG4_Many_To_Many_Reflexive_Service.Relationships_objG4_Many_To_Many_Reflexive (
         Test => Test);
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      
      Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetG);
   end Relationships_Scenario12;
   
--
-- End of file Relationships_Scenario12.ada
--
