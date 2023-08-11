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
--* File Name:               Relationships_Scenario1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Composed Relationships Tests
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
with Root_Object.Relationships.objR;
with Root_Object.Relationships.objQ;
with Root_Object.Relationships.objP;
with Root_Object.Relationships.TN;

-- List of services used
with Relationships_objP1_ObjP_Navigation_Service;

-- List of bridges used
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Relationships_Scenario1 is
   
      
      SetP : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetQ : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetR : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test : Root_Object.Object_Access;
      newP    : Root_Object.Object_Access;
      newQ    : Root_Object.Object_Access;
      newR    : Root_Object.Object_Access;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      Count        : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------
      --  Composed relationships tests
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
      --  Create the object instances for Objects P, Q and R
      -- --------------------------------------------------------------------
      
      Count := 0;
      
      loop
         Count := Count + 1;
         
         
         -- Object_P
         
         newP := Root_Object.Relationships.objP.Create;
         Root_Object.Relationships.objP.Relationships_objP_Type(newP.all).idP     := Count;
         Root_Object.Relationships.objP.Relationships_objP_Type(newP.all).ResultA := 0;
         
         
         -- Object_Q
         
         newQ := Root_Object.Relationships.objQ.Create;
         Root_Object.Relationships.objQ.Relationships_objQ_Type(newQ.all).idQ := Count;
         
         
         -- Object_R
         
         newR := Root_Object.Relationships.objR.Create;
         Root_Object.Relationships.objR.Relationships_objR_Type(newR.all).idR := Count;
         
         exit when Count =  5;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Test that the objects have been correctly created
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0620               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objP                            ",
         Purpose         => "Object Instance Creation        ");
      
      
      Root_Object.Object_List.Clear (
         From => SetP);
      
      Root_Object.Relationships.objP.Find (
         Add_To => SetP);
      
      
      Root_Object.Object_List.Clear (
         From => SetQ);
      
      Root_Object.Relationships.objQ.Find (
         Add_To => SetQ);
      
      
      Root_Object.Object_List.Clear (
         From => SetR);
      
      Root_Object.Relationships.objR.Find (
         Add_To => SetR);
      
      
      if Root_Object.Object_List.Count_Of(SetP) =  5 then
         
         if Root_Object.Object_List.Count_Of(SetQ) =  5 then
            
            if Root_Object.Object_List.Count_Of(SetR) /= 5 then
               
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
            Test_Object_Domain => "objP                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objP                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------   
      --  Perform the navigations
      -- --------------------------------------------------------------------
      
      Count := 1;
      
      loop
         
         Relationships_objP1_ObjP_Navigation_Service.Relationships_objP1_ObjP_Navigation (
            Test => Test);
         
         Count := Count + 1;
         Test  := Test + 1;
         
         exit when Count =  3;
      end loop;
      
      
      -- --------------------------------------------------------------------
      
      Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetR);
      Root_Object.Object_List.Destroy_List (SetQ);
      Root_Object.Object_List.Destroy_List (SetP);
   end Relationships_Scenario1;
   
--
-- End of file Relationships_Scenario1.ada
--
