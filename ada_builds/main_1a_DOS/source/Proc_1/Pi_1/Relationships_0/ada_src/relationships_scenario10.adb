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
--* File Name:               Relationships_Scenario10.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Many to Many Assoc Tests
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
with Root_Object.Relationships.OBJEF;
with Root_Object.Relationships.objF;
with Root_Object.Relationships.objE;
with Root_Object.Relationships.TN;

-- List of services used
with Relationships_objE3_Delete_Relationships_Service;
with Relationships_objE2_ObjE_Navigation_Service;
with Relationships_objE1_Create_Relationships_Service;

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

   
   procedure Relationships_Scenario10 is
   
      
      SetE  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetF  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetEF : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test : Root_Object.Object_Access;
      newE    : Root_Object.Object_Access;
      newF    : Root_Object.Object_Access;
      newEF   : Root_Object.Object_Access;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      Count        : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------
      --  Perform relationships tests for Mc:Mc navigation
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
      --  Create a few instance of Objects E, F and EF
      -- --------------------------------------------------------------------
      
      Count := 5;
      
      loop
         
         --  Object_E
         
         newE := Root_Object.Relationships.objE.Create;
         Root_Object.Relationships.objE.Relationships_objE_Type(newE.all).idE     := Count;
         Root_Object.Relationships.objE.Relationships_objE_Type(newE.all).ResultA := 0;
         
         
         --  Object_F
         
         newF := Root_Object.Relationships.objF.Create;
         Root_Object.Relationships.objF.Relationships_objF_Type(newF.all).idF := Count;
         
         
         --  Object_EF
         
         newEF := Root_Object.Relationships.OBJEF.Create;
         Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(newEF.all).idEF := Count;
         
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
         Invoking_Object => "objE                            ",
         Purpose         => "Object Instance Creation        ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0620               ");
      
      
      Root_Object.Object_List.Clear (
         From => SetE);
      
      Root_Object.Relationships.objE.Find (
         Add_To => SetE);
      
      
      Root_Object.Object_List.Clear (
         From => SetF);
      
      Root_Object.Relationships.objF.Find (
         Add_To => SetF);
      
      
      Root_Object.Object_List.Clear (
         From => SetEF);
      
      Root_Object.Relationships.OBJEF.Find (
         Add_To => SetEF);
      
      
      if Root_Object.Object_List.Count_Of(SetE) =  5 then
         
         if Root_Object.Object_List.Count_Of(SetF) =  5 then
            
            if Root_Object.Object_List.Count_Of(SetEF) /= 5 then
               
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
            Test_Object_Domain => "objE                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objE                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      -- --------------------------------------------------------------------
      --  Create the relationships
      -- --------------------------------------------------------------------
      --  Initiate the test
      
      Relationships_objE1_Create_Relationships_Service.Relationships_objE1_Create_Relationships (
         Test => Test);
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      --  Perform the navigation tests
      -- --------------------------------------------------------------------
      
      Count := 1;
      
      loop
         
         --  Initiate the test
         
         Relationships_objE2_ObjE_Navigation_Service.Relationships_objE2_ObjE_Navigation (
            Iteration => Count,
            Test      => Test);
         
         Test  := Test + 1;
         Count := Count + 1;
         
         exit when Count =  23;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Delete the relationships
      -- --------------------------------------------------------------------
      --  Initiate the test
      
      Relationships_objE3_Delete_Relationships_Service.Relationships_objE3_Delete_Relationships (
         Test => Test);
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      
      Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetEF);
      Root_Object.Object_List.Destroy_List (SetF);
      Root_Object.Object_List.Destroy_List (SetE);
   end Relationships_Scenario10;
   
--
-- End of file Relationships_Scenario10.ada
--
