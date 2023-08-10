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
--* File Name:               Relationships_Scenario5.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Perform Nav to Set
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
with Root_Object.Relationships.MFR;
with Root_Object.Relationships.MRA;
with Root_Object.Relationships.MR;
with Root_Object.Relationships.M;
with Root_Object.Relationships.FL;
with Root_Object.Relationships.TN;

-- List of services used
with Relationships_M3_Delete_Relationships_Service;
with Relationships_M2_Middle_Navigation_Service;
with Relationships_M1_Create_Relationships_Service;

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

   
   procedure Relationships_Scenario5 is
   
      
      SetL   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetM   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetR   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMRA : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMFR : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test     : Root_Object.Object_Access;
      One_Left    : Root_Object.Object_Access;
      One_Middle  : Root_Object.Object_Access;
      One_Right   : Root_Object.Object_Access;
      Two_Right   : Root_Object.Object_Access;
      Three_Right : Root_Object.Object_Access;
      One_MRA     : Root_Object.Object_Access;
      Two_MRA     : Root_Object.Object_Access;
      One_MFR     : Root_Object.Object_Access;
      Two_MFR     : Root_Object.Object_Access;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      Count        : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------
      --  Perform navigation from a single instance to a set of instances via 
      --  another single set.
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
      
      One_Left := Root_Object.Relationships.FL.Create;
      Root_Object.Relationships.FL.Relationships_FL_Type(One_Left.all).Left_Identifier := 1;
      Root_Object.Relationships.FL.Relationships_FL_Type(One_Left.all).Left_Data       := 0;
      
      
      One_Middle := Root_Object.Relationships.M.Create;
      Root_Object.Relationships.M.Relationships_M_Type(One_Middle.all).Middle_Identifier := 1;
      Root_Object.Relationships.M.Relationships_M_Type(One_Middle.all).Middle_Data       := 0;
      
      
      One_Right := Root_Object.Relationships.MR.Create;
      Root_Object.Relationships.MR.Relationships_MR_Type(One_Right.all).Right_Identifier  := 1;
      Root_Object.Relationships.MR.Relationships_MR_Type(One_Right.all).Right_Data        := 0;
      
      
      Two_Right := Root_Object.Relationships.MR.Create;
      Root_Object.Relationships.MR.Relationships_MR_Type(Two_Right.all).Right_Identifier  := 2;
      Root_Object.Relationships.MR.Relationships_MR_Type(Two_Right.all).Right_Data        := 0;
      
      
      Three_Right := Root_Object.Relationships.MR.Create;
      Root_Object.Relationships.MR.Relationships_MR_Type(Three_Right.all).Right_Identifier  := 3;
      Root_Object.Relationships.MR.Relationships_MR_Type(Three_Right.all).Right_Data        := 0;
      
      
      One_MRA := Root_Object.Relationships.MRA.Create;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(One_MRA.all).MRA_Identifier    := 1;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(One_MRA.all).MRA_Data          := 0;
      
      
      Two_MRA := Root_Object.Relationships.MRA.Create;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(Two_MRA.all).MRA_Identifier    := 2;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(Two_MRA.all).MRA_Data          := 0;
      
      
      One_MFR := Root_Object.Relationships.MFR.Create;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(One_MFR.all).MFR_Identifier    := 1;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(One_MFR.all).MFR_Data          := 0;
      
      
      Two_MFR := Root_Object.Relationships.MFR.Create;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(Two_MFR.all).MFR_Identifier    := 2;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(Two_MFR.all).MFR_Data          := 0;
      
      
      -- --------------------------------------------------------------------
      --  Test that the object instances have been correctly created
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0101               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "Middle                          ",
         Purpose         => "Object Instance Creation        ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0620               ");
      
      
      Root_Object.Object_List.Clear (
         From => SetL);
      
      Root_Object.Relationships.FL.Find (
         Add_To => SetL);
      
      
      Root_Object.Object_List.Clear (
         From => SetM);
      
      Root_Object.Relationships.M.Find (
         Add_To => SetM);
      
      
      Root_Object.Object_List.Clear (
         From => SetR);
      
      Root_Object.Relationships.MR.Find (
         Add_To => SetR);
      
      
      Root_Object.Object_List.Clear (
         From => SetMRA);
      
      Root_Object.Relationships.MRA.Find (
         Add_To => SetMRA);
      
      
      Root_Object.Object_List.Clear (
         From => SetMFR);
      
      Root_Object.Relationships.MFR.Find (
         Add_To => SetMFR);
      
      
      if Root_Object.Object_List.Count_Of(SetL) =  1 then
         
         if Root_Object.Object_List.Count_Of(SetM) =  1 then
            
            if Root_Object.Object_List.Count_Of(SetR) =  3 then
               
               if Root_Object.Object_List.Count_Of(SetMRA) =  2 then
                  
                  if Root_Object.Object_List.Count_Of(SetMFR) /= 2 then
                     
                     Has_Failed   := True;
                     Failure_Code := Root_Object.Object_List.Count_Of(SetMRA);
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
         
      else
         Has_Failed := True;
         Failure_Code := -50;
         
      end if;
      
      
      if Has_Failed =  False then
         
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "Middle                          ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "Middle                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      -- --------------------------------------------------------------------
      --  Create the relationships
      -- --------------------------------------------------------------------
      
      Relationships_M1_Create_Relationships_Service.Relationships_M1_Create_Relationships (
         Test => Test);
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      --  Perform the navigation tests
      -- --------------------------------------------------------------------
      
      Count := 1;
      
      loop
         
         Relationships_M2_Middle_Navigation_Service.Relationships_M2_Middle_Navigation (
            Iteration => Count,
            Test      => Test);
         
         Test  := Test + 1;
         Count := Count + 1;
         
         exit when Count =  15;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Delete the relationships
      -- --------------------------------------------------------------------
      
      Relationships_M3_Delete_Relationships_Service.Relationships_M3_Delete_Relationships (
         Test => Test);
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      
      Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetMFR);
      Root_Object.Object_List.Destroy_List (SetMRA);
      Root_Object.Object_List.Destroy_List (SetR);
      Root_Object.Object_List.Destroy_List (SetM);
      Root_Object.Object_List.Destroy_List (SetL);
   end Relationships_Scenario5;
   
--
-- End of file Relationships_Scenario5.ada
--
