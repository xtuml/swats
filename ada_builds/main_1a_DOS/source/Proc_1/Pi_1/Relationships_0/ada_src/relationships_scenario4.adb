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
--* File Name:               Relationships_Scenario4.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Middle Object Relationship Tests
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
with Root_Object.Relationships.assMR;
with Root_Object.Relationships.RO;
with Root_Object.Relationships.MO;
with Root_Object.Relationships.LO;
with Root_Object.Relationships.TN;

-- List of services used
with Relationships_MO3_Delete_Relationships_Service;
with Relationships_MO2_Middle_Object_Navigation_Service;
with Relationships_MO1_Create_Relationships_Service;

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

   
   procedure Relationships_Scenario4 is
   
      
      SetL   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetM   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetR   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMRA : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test   : Root_Object.Object_Access;
      newLeft   : Root_Object.Object_Access;
      newMiddle : Root_Object.Object_Access;
      newRight  : Root_Object.Object_Access;
      newMR     : Root_Object.Object_Access;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      Count        : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------
      --  Perform tests via scenario for the Middle_Object relationships
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
      --  Create Left_Object Instances
      
      newLeft := Root_Object.Relationships.LO.Create;
      Root_Object.Relationships.LO.Relationships_LO_Type(newLeft.all).idLO := 1;
      
      
      newLeft := Root_Object.Relationships.LO.Create;
      Root_Object.Relationships.LO.Relationships_LO_Type(newLeft.all).idLO := 2;
      
      
      newLeft := Root_Object.Relationships.LO.Create;
      Root_Object.Relationships.LO.Relationships_LO_Type(newLeft.all).idLO := 3;
      
      
      --  Create Middle_Object Instances
      
      newMiddle := Root_Object.Relationships.MO.Create;
      Root_Object.Relationships.MO.Relationships_MO_Type(newMiddle.all).idMO    := 1;
      Root_Object.Relationships.MO.Relationships_MO_Type(newMiddle.all).ResultA := 0;
      
      
      newMiddle := Root_Object.Relationships.MO.Create;
      Root_Object.Relationships.MO.Relationships_MO_Type(newMiddle.all).idMO    := 3;
      Root_Object.Relationships.MO.Relationships_MO_Type(newMiddle.all).ResultA := 0;
      
      
      newMiddle := Root_Object.Relationships.MO.Create;
      Root_Object.Relationships.MO.Relationships_MO_Type(newMiddle.all).idMO    := 4;
      Root_Object.Relationships.MO.Relationships_MO_Type(newMiddle.all).ResultA := 0;
      
      
      newMiddle := Root_Object.Relationships.MO.Create;
      Root_Object.Relationships.MO.Relationships_MO_Type(newMiddle.all).idMO    := 5;
      Root_Object.Relationships.MO.Relationships_MO_Type(newMiddle.all).ResultA := 0;
      
      
      --  Create Right_Object Instances
      
      newRight := Root_Object.Relationships.RO.Create;
      Root_Object.Relationships.RO.Relationships_RO_Type(newRight.all).idRO := 2;
      
      
      newRight := Root_Object.Relationships.RO.Create;
      Root_Object.Relationships.RO.Relationships_RO_Type(newRight.all).idRO := 4;
      
      
      newRight := Root_Object.Relationships.RO.Create;
      Root_Object.Relationships.RO.Relationships_RO_Type(newRight.all).idRO := 5;
      
      
      --  MR_Assoc
      
      newMR := Root_Object.Relationships.assMR.Create;
      Root_Object.Relationships.assMR.Relationships_assMR_Type(newMR.all).idMR    := 1;
      Root_Object.Relationships.assMR.Relationships_assMR_Type(newMR.all).idMO    := 1;
      
      
      newMR := Root_Object.Relationships.assMR.Create;
      Root_Object.Relationships.assMR.Relationships_assMR_Type(newMR.all).idMR    := 2;
      Root_Object.Relationships.assMR.Relationships_assMR_Type(newMR.all).idMO    := 3;
      
      
      newMR := Root_Object.Relationships.assMR.Create;
      Root_Object.Relationships.assMR.Relationships_assMR_Type(newMR.all).idMR    := 3;
      Root_Object.Relationships.assMR.Relationships_assMR_Type(newMR.all).idMO    := 4;
      
      
      newMR := Root_Object.Relationships.assMR.Create;
      Root_Object.Relationships.assMR.Relationships_assMR_Type(newMR.all).idMR    := 5;
      Root_Object.Relationships.assMR.Relationships_assMR_Type(newMR.all).idMO    := 5;
      
      
      -- --------------------------------------------------------------------
      --  Test that the object instances have been correctly created
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0101               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "MO                              ",
         Purpose         => "Object Instance Creation        ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0620               ");
      
      
      Root_Object.Object_List.Clear (
         From => SetL);
      
      Root_Object.Relationships.LO.Find (
         Add_To => SetL);
      
      
      Root_Object.Object_List.Clear (
         From => SetM);
      
      Root_Object.Relationships.MO.Find (
         Add_To => SetM);
      
      
      Root_Object.Object_List.Clear (
         From => SetR);
      
      Root_Object.Relationships.RO.Find (
         Add_To => SetR);
      
      
      Root_Object.Object_List.Clear (
         From => SetMRA);
      
      Root_Object.Relationships.assMR.Find (
         Add_To => SetMRA);
      
      
      if Root_Object.Object_List.Count_Of(SetL) =  3 then
         
         if Root_Object.Object_List.Count_Of(SetM) =  4 then
            
            if Root_Object.Object_List.Count_Of(SetR) =  3 then
               
               if Root_Object.Object_List.Count_Of(SetMRA) /= 4 then
                  
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
            Test_Object_Domain => "MO                              ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "MO                              ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      -- --------------------------------------------------------------------
      --  Create the relationships
      -- --------------------------------------------------------------------
      --  Initiate the test
      
      Relationships_MO1_Create_Relationships_Service.Relationships_MO1_Create_Relationships (
         Test => Test);
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      --  Perform the navigation tests
      -- --------------------------------------------------------------------
      
      Count := 1;
      
      loop
         
         --  Initiate the test
         
         Relationships_MO2_Middle_Object_Navigation_Service.Relationships_MO2_Middle_Object_Navigation (
            Iteration => Count,
            Test      => Test);
         
         Test  := Test + 1;
         Count := Count + 1;
         
         exit when Count =  19;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Delete the relationships
      -- --------------------------------------------------------------------
      --  Initiate the test
      
      Relationships_MO3_Delete_Relationships_Service.Relationships_MO3_Delete_Relationships (
         Test => Test);
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      
      Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetMRA);
      Root_Object.Object_List.Destroy_List (SetR);
      Root_Object.Object_List.Destroy_List (SetM);
      Root_Object.Object_List.Destroy_List (SetL);
   end Relationships_Scenario4;
   
--
-- End of file Relationships_Scenario4.ada
--
