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
--* File Name:               Creation_Deletion_objA1_do_sync_create_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Perform object service to test synchronous create operation.
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
--* Domain Name              : Creation_Deletion
--* Domain Key Letter        : Creation_Deletion
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Creation_Deletion.objA;

-- List of bridges used
with Creation_Deletion_RPT4_Test_Unsupported_Bridge;
with Creation_Deletion_RPT3_Test_Failed_Bridge;
with Creation_Deletion_RPT2_Test_Passed_Bridge;
with Creation_Deletion_RPT8_Specify_Requid_Bridge;
with Creation_Deletion_RPT1_Start_Test_Bridge;

-- List of domain types used
with Creation_Deletion_Domain_Types;
use type Creation_Deletion_Domain_Types.Base_Colour;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Creation_Deletion_objA1_do_sync_create_Service is
   
   procedure Creation_Deletion_objA1_do_sync_create (
      Test_Number          : in     Application_Types.Base_Integer_Type;
      Returned_Test_Number :    out Application_Types.Base_Integer_Type) is
      
      new_instanceA : Root_Object.Object_Access;
      InstA         : Root_Object.Object_Access;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objA1_do_sync_create
      
      -- -------------------------------------------------------------------------
      --  Do Sync Create
      --  The ASL translator shall support the following base types for attributes
      --  of objects, parameters and local variables:
      --  Real, Integer, Boolean, Text, Instance Handles and set of instance 
      --  handles
      --  1103-0000-01-0311
      --  The ASL <create ... with> statement to create an instance of an object
      --  with attributes shall be supported
      --  1103-0000-01-0511
      -- -------------------------------------------------------------------------
      --  Set the Has_Failed flag, TRUE if a fault has been identified
      Has_Failed := False;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Create, specifing all attributes
      -- -------------------------------------------------------------------------
      
      Test := Test_Number;
      
      
      --  Invoke terminator to call report domain
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objA                            ",
         Purpose         => "Do_sync_create specifying all at");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0101               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0109               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0118               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0311               ");
      
      
      --  NB. Absolute time is not supported.
      --      Neither is date.
      --  Perform creation
      
      new_instanceA := Root_Object.Creation_Deletion.objA.Create;
      Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_Type(new_instanceA.all).ReferenceA           := Test;
      Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_Type(new_instanceA.all).IntegerA             := 1;
      Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_Type(new_instanceA.all).TextA                := "Verify                          ";
      Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_Type(new_instanceA.all).ColourA              := Creation_Deletion_Domain_Types.Red;
      
      
      --  Check that the instance contains the correct data
      InstA := Root_Object.Creation_Deletion.objA.Conditional_Find_One;
      while (InstA /= null) and then (not (Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_Type(InstA.all).ReferenceA =  Test) ) loop
         
         InstA := InstA.Next_Object;
      end loop;
      
      
      if InstA /= Null then
         
         if Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_type(InstA.all).ReferenceA =  Test then
            
            if Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_type(InstA.all).TextA =  "Verify                          " then
               
               if Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_type(InstA.all).ColourA /= Creation_Deletion_Domain_Types.Red then
                  
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
      
      
      if (not Has_Failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objA                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objA                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - Create, specifing all attributes
      -- -------------------------------------------------------------------------
      --  Invoke terminator to call report domain
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objA                            ",
         Purpose         => "Sync Create multi attribute writ");
      
      
      --  Fault_Flag = FALSE
      --  Perform creation
      --    new_instanceA = create Object_A with ReferenceA = Test  &\
      --                                         IntegerA = 1       &\
      --                                         TextA = "Verify"   &\
      --                                         ColourA = 'Red'
      --  Check that the instance contains the correct data
      --    an_instanceA = find-one Object_A where ReferenceA = Test
      --  Multiple attribute write
      --    xI = 2
      --    xR = Test
      --    xS = "Test 2 A"
      --    xC = 'Green'   
      --    an_instanceA.[ReferenceA, IntegerA, TextA, ColourA] = [xR, xI, xS, xC]
      --    an_instanceA.[ReferenceA, IntegerA, TextA, ColourA] = [xR, xI, xS, 'Green']
      --    aID = an_instanceA.ReferenceA
      --    anI = an_instanceA.IntegerA
      --    aS  = an_instanceA.TextA
      --    aC  = an_instanceA.ColourA
      --    if aID = Test then
      --       if anI = 2 then
      --          if aS = "Test 2 A" then
      --             if aC != 'Green' then
      --                Fault_Flag = TRUE
      --             endif
      --          else
      --             Fault_Flag = TRUE
      --          endif
      --       else
      --          Fault_Flag = TRUE
      --       endif
      --    else
      --       Fault_Flag = TRUE
      --    endif
      -- if !Fault_Flag then
      --    [] = RPT2:Test_Passed["objA", Test, 0]
      -- else
      --    [] = RPT3:Test_Failed["objA", Test, -20]
      -- endif
      
      Creation_Deletion_RPT4_Test_Unsupported_Bridge.Creation_Deletion_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - Create, Only specifing the preferred identifier
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objA                            ",
         Purpose         => "Sync create specifying only pref");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0101               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0109               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0118               ");
      
      
      --  Perform creation
      
      new_instanceA := Root_Object.Creation_Deletion.objA.Create;
      Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_Type(new_instanceA.all).ReferenceA := Test;
      
      
      --  Check that the instance contains the correct data
      InstA := Root_Object.Creation_Deletion.objA.Conditional_Find_One;
      while (InstA /= null) and then (not (Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_Type(InstA.all).ReferenceA =  Test) ) loop
         
         InstA := InstA.Next_Object;
      end loop;
      
      
      if Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_type(InstA.all).ReferenceA /= Test then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objA                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objA                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      
      Returned_Test_Number := Test;
      
      
   end Creation_Deletion_objA1_do_sync_create;
   
end Creation_Deletion_objA1_do_sync_create_Service;

--
-- End of file Creation_Deletion_objA1_do_sync_create_Service.adb
--
