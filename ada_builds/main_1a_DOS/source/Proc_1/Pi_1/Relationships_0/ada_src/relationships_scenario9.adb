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
--* File Name:               Relationships_Scenario9.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          One to Many Assoc Tests
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
with Root_Object.Relationships.objDO;
with Root_Object.Relationships.objO;
with Root_Object.Relationships.objD;
with Root_Object.Relationships.objC;
with Root_Object.Relationships.TN;

-- List of services used
with Relationships_objD4_Delete_Instances_Service;
with Relationships_objD3_Delete_Relationships_Service;
with Relationships_objD2_ObjD_Navigation_Service;
with Relationships_objD1_Create_Relationships_Service;

-- List of bridges used
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT8_Specify_Requid_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

-- List of domain types used
with Relationships_Domain_Types;
use type Relationships_Domain_Types.Colour;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Relationships_Scenario9 is
   
      
      SetC  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetD  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetDO : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetO  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test : Root_Object.Object_Access;
      newC    : Root_Object.Object_Access;
      newD    : Root_Object.Object_Access;
      newO    : Root_Object.Object_Access;
      newDO   : Root_Object.Object_Access;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      Count        : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------
      --  Perform relationships tests for 1c:Mc navigation
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
      --  Create a few instances of Objects C, D, DO and O
      -- --------------------------------------------------------------------
      
      Count := 5;
      
      loop
         
         --  Object_C
         
         newC := Root_Object.Relationships.objC.Create;
         Root_Object.Relationships.objC.Relationships_objC_Type(newC.all).idC := Count;
         
         
         --  Object_D
         
         newD := Root_Object.Relationships.objD.Create;
         Root_Object.Relationships.objD.Relationships_objD_Type(newD.all).idD         := Count;
         Root_Object.Relationships.objD.Relationships_objD_Type(newD.all).ResultA     := 0;
         Root_Object.Relationships.objD.Relationships_objD_Type(newD.all).Colour_Of_D := Relationships_Domain_Types.Red;
         
         
         --  Object_O
         
         newO := Root_Object.Relationships.objO.Create;
         Root_Object.Relationships.objO.Relationships_objO_Type(newO.all).idO := Count;
         
         
         --  Object_DO
         
         newDO := Root_Object.Relationships.objDO.Create;
         Root_Object.Relationships.objDO.Relationships_objDO_Type(newDO.all).idDO        := Count;
         Root_Object.Relationships.objDO.Relationships_objDO_Type(newDO.all).idO         := 
            Root_Object.Relationships.objO.Relationships_objO_type(newO.all).idO;
         
         Count := Count - 1;
         
         exit when Count =  0;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Create an object or two that already exist.
      -- --------------------------------------------------------------------
      
      newD := Root_Object.Relationships.objD.Create;
      Root_Object.Relationships.objD.Relationships_objD_Type(newD.all).idD         := 5;
      Root_Object.Relationships.objD.Relationships_objD_Type(newD.all).ResultA     := 0;
      Root_Object.Relationships.objD.Relationships_objD_Type(newD.all).Colour_Of_D := Relationships_Domain_Types.Black;
      
      
      newD := Root_Object.Relationships.objD.Create;
      Root_Object.Relationships.objD.Relationships_objD_Type(newD.all).idD         := 5;
      Root_Object.Relationships.objD.Relationships_objD_Type(newD.all).ResultA     := 0;
      Root_Object.Relationships.objD.Relationships_objD_Type(newD.all).Colour_Of_D := Relationships_Domain_Types.Red;
      
      
      -- --------------------------------------------------------------------
      --  Test that all the objects have be correctly created
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0101               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objD                            ",
         Purpose         => "Object Instance Creation        ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0620               ");
      
      
      Root_Object.Object_List.Clear (
         From => SetC);
      
      Root_Object.Relationships.objC.Find (
         Add_To => SetC);
      
      
      Root_Object.Object_List.Clear (
         From => SetD);
      
      Root_Object.Relationships.objD.Find (
         Add_To => SetD);
      
      
      Root_Object.Object_List.Clear (
         From => SetDO);
      
      Root_Object.Relationships.objDO.Find (
         Add_To => SetDO);
      
      
      Root_Object.Object_List.Clear (
         From => SetO);
      
      Root_Object.Relationships.objO.Find (
         Add_To => SetO);
      
      
      if Root_Object.Object_List.Count_Of(SetC) =  5 then
         
         if Root_Object.Object_List.Count_Of(SetD) =  7 then
            
            if Root_Object.Object_List.Count_Of(SetDO) =  5 then
               
               if Root_Object.Object_List.Count_Of(SetO) /= 5 then
                  
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
         
      else
         Has_Failed := True;
         Failure_Code := -40;
         
      end if;
      
      
      if Has_Failed =  False then
         
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      -- --------------------------------------------------------------------
      --  Create the relationships
      -- --------------------------------------------------------------------
      --  Initiate the test
      
      Relationships_objD1_Create_Relationships_Service.Relationships_objD1_Create_Relationships (
         Test => Test);
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      --  Perform the navigation tests
      -- --------------------------------------------------------------------
      
      Count := 1;
      
      loop
         
         --  Initiate the test
         
         Relationships_objD2_ObjD_Navigation_Service.Relationships_objD2_ObjD_Navigation (
            Iteration => Count,
            Test      => Test);
         
         Test  := Test + 1;
         Count := Count + 1;
         
         exit when Count =  30;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Delete the relationships
      -- --------------------------------------------------------------------
      --  Initiate the test
      
      Relationships_objD3_Delete_Relationships_Service.Relationships_objD3_Delete_Relationships (
         Test => Test);
      
      
      Test := Test + 1;
      
      -- --------------------------------------------------------------------
      --  Delete the unlinked instances
      -- --------------------------------------------------------------------
      --  Initiate the test
      
      Relationships_objD4_Delete_Instances_Service.Relationships_objD4_Delete_Instances (
         Test => Test);
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      
      Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetO);
      Root_Object.Object_List.Destroy_List (SetDO);
      Root_Object.Object_List.Destroy_List (SetD);
      Root_Object.Object_List.Destroy_List (SetC);
   end Relationships_Scenario9;
   
--
-- End of file Relationships_Scenario9.ada
--
