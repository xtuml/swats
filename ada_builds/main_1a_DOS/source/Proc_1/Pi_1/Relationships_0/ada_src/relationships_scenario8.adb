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
--* File Name:               Relationships_Scenario8.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          One to One Tests
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
with Root_Object.Relationships.objM;
with Root_Object.Relationships.objB;
with Root_Object.Relationships.objA;
with Root_Object.Relationships.TN;

-- List of services used
with Relationships_objB3_Delete_Relationships_Service;
with Relationships_objB2_ObjB_Navigation_Service;
with Relationships_objB1_Create_Relationships_Service;

-- List of bridges used
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT8_Specify_Requid_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Relationships_Scenario8 is
   
      
      SetA : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetB : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetM : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test : Root_Object.Object_Access;
      newA    : Root_Object.Object_Access;
      newB    : Root_Object.Object_Access;
      newM    : Root_Object.Object_Access;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      Count        : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------
      --  Perform relationships tests for 1c:1c navigation
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
      Test       := Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number;
      Has_Failed := False;
      
      
      -- --------------------------------------------------------------------
      --  Create a few instances of Objects A, B and M
      -- --------------------------------------------------------------------
      
      Count := 5;
      
      loop
         
         --  Object_A
         
         newA := Root_Object.Relationships.objA.Create;
         Root_Object.Relationships.objA.Relationships_objA_Type(newA.all).idA := Count;
         
         
         --  Object_B
         
         newB := Root_Object.Relationships.objB.Create;
         Root_Object.Relationships.objB.Relationships_objB_Type(newB.all).idB     := Count;
         Root_Object.Relationships.objB.Relationships_objB_Type(newB.all).ResultA := 0;
         
         
         --  Object_M
         
         newM := Root_Object.Relationships.objM.Create;
         Root_Object.Relationships.objM.Relationships_objM_Type(newM.all).idM := Count;
         
         Count := Count - 1;
         
         exit when Count =  0;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Test that the objects have been correctly created
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0101               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objB                            ",
         Purpose         => "Object Instance Creation        ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0620               ");
      
      
      Root_Object.Object_List.Clear (
         From => SetA);
      
      Root_Object.Relationships.objA.Find (
         Add_To => SetA);
      
      
      Root_Object.Object_List.Clear (
         From => SetB);
      
      Root_Object.Relationships.objB.Find (
         Add_To => SetB);
      
      
      Root_Object.Object_List.Clear (
         From => SetM);
      
      Root_Object.Relationships.objM.Find (
         Add_To => SetM);
      
      
      if Root_Object.Object_List.Count_Of(SetA) =  5 then
         
         if Root_Object.Object_List.Count_Of(SetB) =  5 then
            
            if Root_Object.Object_List.Count_Of(SetM) /= 5 then
               
               Has_Failed   := True;
               Failure_Code := -10;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -20;
         end if;
         
      else
         Has_Failed := True;
         Failure_Code := -30;
         
      end if;
      
      
      if Has_Failed =  False then
         
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "objB                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objB                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      -- --------------------------------------------------------------------
      --  Create the relationships
      -- --------------------------------------------------------------------
      --  Initiate the test
      
      Relationships_objB1_Create_Relationships_Service.Relationships_objB1_Create_Relationships (
         Test => Test);
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      --  Perform the navigation tests
      -- --------------------------------------------------------------------
      
      Count := 1;
      
      loop
         
         --  Initiate the test
         
         Relationships_objB2_ObjB_Navigation_Service.Relationships_objB2_ObjB_Navigation (
            Iteration => Count,
            Test      => Test);
         
         Count := Count + 1;
         Test  := Test + 1;
         
         exit when Count =  15;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Delete the relationship tests
      -- --------------------------------------------------------------------
      --  Initiate the test
      
      Relationships_objB3_Delete_Relationships_Service.Relationships_objB3_Delete_Relationships (
         Test => Test);
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      
      Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetM);
      Root_Object.Object_List.Destroy_List (SetB);
      Root_Object.Object_List.Destroy_List (SetA);
   end Relationships_Scenario8;
   
--
-- End of file Relationships_Scenario8.ada
--
