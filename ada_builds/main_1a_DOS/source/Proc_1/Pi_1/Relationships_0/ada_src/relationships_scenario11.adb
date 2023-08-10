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
--* File Name:               Relationships_Scenario11.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Super Sub Tests
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
with Root_Object.Relationships.objSSSL2;
with Root_Object.Relationships.objSSSL1;
with Root_Object.Relationships.objSSL11;
with Root_Object.Relationships.objSSL10;
with Root_Object.Relationships.objSSL9;
with Root_Object.Relationships.objSSL8;
with Root_Object.Relationships.objSSL7;
with Root_Object.Relationships.objSSL6;
with Root_Object.Relationships.objSSL5;
with Root_Object.Relationships.objSSL4;
with Root_Object.Relationships.objSSL3;
with Root_Object.Relationships.objSSL2;
with Root_Object.Relationships.objSSL1;
with Root_Object.Relationships.objSL3;
with Root_Object.Relationships.objSL2;
with Root_Object.Relationships.objSL1;
with Root_Object.Relationships.objK;
with Root_Object.Relationships.objI;
with Root_Object.Relationships.objL;
with Root_Object.Relationships.objH;
with Root_Object.Relationships.TN;

-- List of services used
with Relationships_objH1_Super_Sub_Relationships_Service;

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

   
   procedure Relationships_Scenario11 is
   
      
      SetH : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetL : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetI : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetK : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test  : Root_Object.Object_Access;
      newH     : Root_Object.Object_Access;
      newL     : Root_Object.Object_Access;
      newI     : Root_Object.Object_Access;
      newK     : Root_Object.Object_Access;
      newSL1   : Root_Object.Object_Access;
      newSL2   : Root_Object.Object_Access;
      newSL4   : Root_Object.Object_Access;
      newSSL1  : Root_Object.Object_Access;
      newSSL2  : Root_Object.Object_Access;
      newSSL3  : Root_Object.Object_Access;
      newSSL4  : Root_Object.Object_Access;
      newSSL5  : Root_Object.Object_Access;
      newSSL6  : Root_Object.Object_Access;
      newSSL7  : Root_Object.Object_Access;
      newSSL8  : Root_Object.Object_Access;
      newSSL9  : Root_Object.Object_Access;
      newSSL10 : Root_Object.Object_Access;
      newSSL11 : Root_Object.Object_Access;
      newSSSL1 : Root_Object.Object_Access;
      newSSSL2 : Root_Object.Object_Access;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      Count        : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------
      --  Perform relationship tests via scenario for Super/sub type 
      --  relationships
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
      Test         := Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number;
      Has_Failed   := False;
      Failure_Code := 0;
      
      
      -- --------------------------------------------------------------------
      --  Create instances of objects
      -- --------------------------------------------------------------------
      
      Count := 5;
      
      loop
         
         --  Object_H
         
         newH := Root_Object.Relationships.objH.Create;
         Root_Object.Relationships.objH.Relationships_objH_Type(newH.all).idH     := Count;
         Root_Object.Relationships.objH.Relationships_objH_Type(newH.all).ResultA := 0;
         
         
         --  Object_L
         
         newL := Root_Object.Relationships.objL.Create;
         Root_Object.Relationships.objL.Relationships_objL_Type(newL.all).idL := Count;
         
         
         --  Object_I
         
         newI := Root_Object.Relationships.objI.Create;
         Root_Object.Relationships.objI.Relationships_objI_Type(newI.all).IDI := Count;
         
         
         --  Object_K
         
         newK := Root_Object.Relationships.objK.Create;
         Root_Object.Relationships.objK.Relationships_objK_Type(newK.all).idK := Count;
         
         
         --  Sub_L1
         
         newSL1 := Root_Object.Relationships.objSL1.Create;
         Root_Object.Relationships.objSL1.Relationships_objSL1_Type(newSL1.all).idSL1 := Count;
         
         
         --  Sub_L2
         
         newSL2 := Root_Object.Relationships.objSL2.Create;
         Root_Object.Relationships.objSL2.Relationships_objSL2_Type(newSL2.all).idSL2 := Count;
         
         
         --  Sub_L3
         
         newSL4 := Root_Object.Relationships.objSL3.Create;
         Root_Object.Relationships.objSL3.Relationships_objSL3_Type(newSL4.all).idSL3 := Count;
         
         
         --  Sub_Sub_L1
         
         newSSL1 := Root_Object.Relationships.objSSL1.Create;
         Root_Object.Relationships.objSSL1.Relationships_objSSL1_Type(newSSL1.all).idSSL1 := Count;
         
         
         --  Sub_Sub_L2
         
         newSSL2 := Root_Object.Relationships.objSSL2.Create;
         Root_Object.Relationships.objSSL2.Relationships_objSSL2_Type(newSSL2.all).idSSL2 := Count;
         
         
         --  Sub_Sub_L3
         
         newSSL3 := Root_Object.Relationships.objSSL3.Create;
         Root_Object.Relationships.objSSL3.Relationships_objSSL3_Type(newSSL3.all).idSSL3 := Count;
         
         
         --  Sub_Sub_L4
         
         newSSL4 := Root_Object.Relationships.objSSL4.Create;
         Root_Object.Relationships.objSSL4.Relationships_objSSL4_Type(newSSL4.all).idSSL4 := Count;
         
         
         --  Sub_Sub_L5
         
         newSSL5 := Root_Object.Relationships.objSSL5.Create;
         Root_Object.Relationships.objSSL5.Relationships_objSSL5_Type(newSSL5.all).idSSL5 := Count;
         
         
         --  Sub_Sub_L6
         
         newSSL6 := Root_Object.Relationships.objSSL6.Create;
         Root_Object.Relationships.objSSL6.Relationships_objSSL6_Type(newSSL6.all).idSSL6 := Count;
         
         
         --  Sub_Sub_L7
         
         newSSL7 := Root_Object.Relationships.objSSL7.Create;
         Root_Object.Relationships.objSSL7.Relationships_objSSL7_Type(newSSL7.all).idSSL7 := Count;
         
         
         --  Sub_Sub_L8
         
         newSSL8 := Root_Object.Relationships.objSSL8.Create;
         Root_Object.Relationships.objSSL8.Relationships_objSSL8_Type(newSSL8.all).idSSL8 := Count;
         
         
         --  Sub_Sub_L9
         
         newSSL9 := Root_Object.Relationships.objSSL9.Create;
         Root_Object.Relationships.objSSL9.Relationships_objSSL9_Type(newSSL9.all).idSSL9 := Count;
         
         
         --  Sub_Sub_L10
         
         newSSL10 := Root_Object.Relationships.objSSL10.Create;
         Root_Object.Relationships.objSSL10.Relationships_objSSL10_Type(newSSL10.all).idSSL10 := Count;
         
         
         --  Sub_Sub_L11
         
         newSSL11 := Root_Object.Relationships.objSSL11.Create;
         Root_Object.Relationships.objSSL11.Relationships_objSSL11_Type(newSSL11.all).idSSL11 := Count;
         
         
         --  Sub_Sub_Sub_L1
         
         newSSSL1 := Root_Object.Relationships.objSSSL1.Create;
         Root_Object.Relationships.objSSSL1.Relationships_objSSSL1_Type(newSSSL1.all).idSSSL1 := Count;
         
         
         --  Sub_Sub_Sub_L2
         
         newSSSL2 := Root_Object.Relationships.objSSSL2.Create;
         Root_Object.Relationships.objSSSL2.Relationships_objSSSL2_Type(newSSSL2.all).idSSSL2 := Count;
         
         Count := Count - 1;
         
         exit when Count =  0;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Test that the object instances have been correctly created
      --  Because there are so many objects test just a few
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0101               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objH                            ",
         Purpose         => "Object Instance Creation        ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0620               ");
      
      
      Root_Object.Object_List.Clear (
         From => SetH);
      
      Root_Object.Relationships.objH.Find (
         Add_To => SetH);
      
      
      Root_Object.Object_List.Clear (
         From => SetL);
      
      Root_Object.Relationships.objL.Find (
         Add_To => SetL);
      
      
      Root_Object.Object_List.Clear (
         From => SetI);
      
      Root_Object.Relationships.objI.Find (
         Add_To => SetI);
      
      
      Root_Object.Object_List.Clear (
         From => SetK);
      
      Root_Object.Relationships.objK.Find (
         Add_To => SetK);
      
      
      if Root_Object.Object_List.Count_Of(SetH) =  5 then
         
         if Root_Object.Object_List.Count_Of(SetL) =  5 then
            
            if Root_Object.Object_List.Count_Of(SetI) =  5 then
               
               if Root_Object.Object_List.Count_Of(SetK) /= 5 then
                  
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
            Test_Object_Domain => "objH                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objH                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      --  Perform the Super/Sub type relationships
      -- --------------------------------------------------------------------
      
      Count := 1;
      
      loop
         
         Relationships_objH1_Super_Sub_Relationships_Service.Relationships_objH1_Super_Sub_Relationships (
            Iteration => Count,
            Test      => Test);
         
         Count := Count + 1;
         Test  := Test + 1;
         
         exit when Count =  14;
      end loop;
      
      
      -- --------------------------------------------------------------------
      
      Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetK);
      Root_Object.Object_List.Destroy_List (SetI);
      Root_Object.Object_List.Destroy_List (SetL);
      Root_Object.Object_List.Destroy_List (SetH);
   end Relationships_Scenario11;
   
--
-- End of file Relationships_Scenario11.ada
--
