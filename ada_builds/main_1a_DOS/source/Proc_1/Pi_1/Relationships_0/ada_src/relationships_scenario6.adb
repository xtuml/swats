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
--* File Name:               Relationships_Scenario6.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Test Relationships For Left Many
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
with Root_Object.Relationships.objBM;
with Root_Object.Relationships.objLMRM;
with Root_Object.Relationships.objRM;
with Root_Object.Relationships.objLM;
with Root_Object.Relationships.TN;

-- List of services used
with Relationships_objLM3_Delete_Relationships_Service;
with Relationships_objLM2_Left_Many_Navigation_Service;
with Relationships_objLM1_Create_Relationships_Service;

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

   
   procedure Relationships_Scenario6 is
   
      
      SetLM   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetRM   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetLMRM : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetBM   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test       : Root_Object.Object_Access;
      newLeftMany   : Root_Object.Object_Access;
      newRightMany  : Root_Object.Object_Access;
      newLMRM       : Root_Object.Object_Access;
      newBottomMany : Root_Object.Object_Access;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      Count        : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------
      --  Perform tests via scenario for the Left_Many relationships
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
      --  Create the instances
      -- --------------------------------------------------------------------
      --  Create Left_Many Instances
      
      newLeftMany := Root_Object.Relationships.objLM.Create;
      Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).idLM    := 1;
      Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).ResultA := 0;
      
      
      newLeftMany := Root_Object.Relationships.objLM.Create;
      Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).idLM    := 2;
      Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).ResultA := 0;
      
      
      newLeftMany := Root_Object.Relationships.objLM.Create;
      Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).idLM    := 3;
      Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).ResultA := 0;
      
      
      newLeftMany := Root_Object.Relationships.objLM.Create;
      Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).idLM    := 10;
      Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).ResultA := 0;
      
      
      newLeftMany := Root_Object.Relationships.objLM.Create;
      Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).idLM    := 11;
      Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).ResultA := 0;
      
      
      newLeftMany := Root_Object.Relationships.objLM.Create;
      Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).idLM    := 12;
      Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).ResultA := 0;
      
      
      --  Create Right_Many Instances
      
      newRightMany := Root_Object.Relationships.objRM.Create;
      Root_Object.Relationships.objRM.Relationships_objRM_Type(newRightMany.all).idRM := 1;
      
      
      newRightMany := Root_Object.Relationships.objRM.Create;
      Root_Object.Relationships.objRM.Relationships_objRM_Type(newRightMany.all).idRM := 2;
      
      
      newRightMany := Root_Object.Relationships.objRM.Create;
      Root_Object.Relationships.objRM.Relationships_objRM_Type(newRightMany.all).idRM := 3;
      
      
      newRightMany := Root_Object.Relationships.objRM.Create;
      Root_Object.Relationships.objRM.Relationships_objRM_Type(newRightMany.all).idRM := 10;
      
      
      newRightMany := Root_Object.Relationships.objRM.Create;
      Root_Object.Relationships.objRM.Relationships_objRM_Type(newRightMany.all).idRM := 11;
      
      
      newRightMany := Root_Object.Relationships.objRM.Create;
      Root_Object.Relationships.objRM.Relationships_objRM_Type(newRightMany.all).idRM := 12;
      
      
      --  Create Associative Instances.
      --  Note this takes consiscence of how they will be linked in LM1:Create_Relationships
      
      newLMRM := Root_Object.Relationships.objLMRM.Create;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLMRM  := 2;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLM    := 1;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idRM    := 1;
      
      
      newLMRM := Root_Object.Relationships.objLMRM.Create;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLMRM  := 3;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLM    := 1;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idRM    := 3;
      
      
      newLMRM := Root_Object.Relationships.objLMRM.Create;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLMRM  := 4;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLM    := 3;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idRM    := 1;
      
      
      newLMRM := Root_Object.Relationships.objLMRM.Create;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLMRM  := 5;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLM    := 2;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idRM    := 2;
      
      
      newLMRM := Root_Object.Relationships.objLMRM.Create;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLMRM  := 8;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLM    := 11;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idRM    := 11;
      
      
      newLMRM := Root_Object.Relationships.objLMRM.Create;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLMRM  := 9;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLM    := 12;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idRM    := 11;
      
      
      newLMRM := Root_Object.Relationships.objLMRM.Create;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLMRM  := 10;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLM    := 10;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idRM    := 10;
      
      
      newLMRM := Root_Object.Relationships.objLMRM.Create;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLMRM  := 11;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLM    := 10;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idRM    := 11;
      
      
      newLMRM := Root_Object.Relationships.objLMRM.Create;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLMRM  := 12;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idLM    := 10;
      Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRM.all).idRM    := 12;
      
      
      --  Create Bottom_Many Instance
      
      newBottomMany := Root_Object.Relationships.objBM.Create;
      Root_Object.Relationships.objBM.Relationships_objBM_Type(newBottomMany.all).idBM := 1;
      
      
      newBottomMany := Root_Object.Relationships.objBM.Create;
      Root_Object.Relationships.objBM.Relationships_objBM_Type(newBottomMany.all).idBM := 3;
      
      
      newBottomMany := Root_Object.Relationships.objBM.Create;
      Root_Object.Relationships.objBM.Relationships_objBM_Type(newBottomMany.all).idBM := 4;
      
      
      newBottomMany := Root_Object.Relationships.objBM.Create;
      Root_Object.Relationships.objBM.Relationships_objBM_Type(newBottomMany.all).idBM := 5;
      
      
      newBottomMany := Root_Object.Relationships.objBM.Create;
      Root_Object.Relationships.objBM.Relationships_objBM_Type(newBottomMany.all).idBM := 10;
      
      
      -- --------------------------------------------------------------------
      --  Test that the instances have been correctly created
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0101               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objLM                           ",
         Purpose         => "Object Instance Creation        ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0620               ");
      
      
      Root_Object.Object_List.Clear (
         From => SetLM);
      
      Root_Object.Relationships.objLM.Find (
         Add_To => SetLM);
      
      
      Root_Object.Object_List.Clear (
         From => SetRM);
      
      Root_Object.Relationships.objRM.Find (
         Add_To => SetRM);
      
      
      Root_Object.Object_List.Clear (
         From => SetLMRM);
      
      Root_Object.Relationships.objLMRM.Find (
         Add_To => SetLMRM);
      
      
      Root_Object.Object_List.Clear (
         From => SetBM);
      
      Root_Object.Relationships.objBM.Find (
         Add_To => SetBM);
      
      
      if Root_Object.Object_List.Count_Of(SetLM) =  6 then
         
         if Root_Object.Object_List.Count_Of(SetRM) =  6 then
            
            if Root_Object.Object_List.Count_Of(SetLMRM) =  9 then
               
               if Root_Object.Object_List.Count_Of(SetBM) /= 5 then
                  
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
            Test_Object_Domain => "objLM                           ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objLM                           ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      -- --------------------------------------------------------------------
      --  Create the relationships
      -- --------------------------------------------------------------------
      --  Initiate the test
      
      Relationships_objLM1_Create_Relationships_Service.Relationships_objLM1_Create_Relationships (
         Test => Test);
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      --  Perform the navigation tests
      -- --------------------------------------------------------------------
      
      Count := 1;
      
      loop
         
         --  Initiate the test
         
         Relationships_objLM2_Left_Many_Navigation_Service.Relationships_objLM2_Left_Many_Navigation (
            Iteration => Count,
            Test      => Test);
         
         Test  := Test + 1;
         Count := Count + 1;
         
         exit when Count =  11;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Delete the relationships
      -- --------------------------------------------------------------------
      --  Initiate the test
      
      Relationships_objLM3_Delete_Relationships_Service.Relationships_objLM3_Delete_Relationships (
         Test => Test);
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      
      Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetBM);
      Root_Object.Object_List.Destroy_List (SetLMRM);
      Root_Object.Object_List.Destroy_List (SetRM);
      Root_Object.Object_List.Destroy_List (SetLM);
   end Relationships_Scenario6;
   
--
-- End of file Relationships_Scenario6.ada
--
