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
--* File Name:               Find_and_Sets_Scenario1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Find_And_Sets_Main
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
--* Domain Name              : Find_and_Sets
--* Domain Key Letter        : Find_and_Sets
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Find_and_Sets.objE;
with Root_Object.Find_and_Sets.objA;
with Root_Object.Find_and_Sets.objFS;
with Root_Object.Find_and_Sets.objFM;
with Root_Object.Find_and_Sets.objFSI;

-- List of services used
with Find_and_Sets_objFS1_do_find_set_Service;
with Find_and_Sets_objFM1_do_find_many_Service;
with Find_and_Sets_objFSI2_do_find_only_Service;
with Find_and_Sets_Find_and_Sets1_Increment_Service;
with Find_and_Sets_objFSI1_do_find_one_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Find_and_Sets_Scenario1 is
   
      
      newFSI         : Root_Object.Object_Access;
      newFM          : Root_Object.Object_Access;
      newFS          : Root_Object.Object_Access;
      newA           : Root_Object.Object_Access;
      newE           : Root_Object.Object_Access;
      an_instanceFSI : Root_Object.Object_Access;
      an_instanceFM  : Root_Object.Object_Access;
      an_instanceFS  : Root_Object.Object_Access;
      
      count                : Application_Types.Base_Integer_Type := 1;
      Test                 : Application_Types.Base_Integer_Type := 1;
      Returned_Test_Number : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      -- -------------------------------------------------------------------------
      --  Setup Test Data
      -- -------------------------------------------------------------------------
      --  Create several instances of each control object
      count := 10;
      
      loop
         
         -- Find Single
         
         newFSI := Root_Object.Find_and_Sets.objFSI.Create;
         Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_Type(newFSI.all).idFSI     := count;
         Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_Type(newFSI.all).ResultFSI := 0;
         
         
         -- Find Many
         
         newFM := Root_Object.Find_and_Sets.objFM.Create;
         Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_Type(newFM.all).idFM      := count;
         Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_Type(newFM.all).ResultFM  := 0;
         
         
         -- Find Set
         
         newFS := Root_Object.Find_and_Sets.objFS.Create;
         Root_Object.Find_and_Sets.objFS.Find_and_Sets_objFS_Type(newFS.all).idFS      := count;
         Root_Object.Find_and_Sets.objFS.Find_and_Sets_objFS_Type(newFS.all).ResultFS  := 0;
         
         count := count - 1;
         exit when count =  0;
      end loop;
      
      
      -- Create several instances of Object_A
      count := 10;
      
      loop
         
         newA := Root_Object.Find_and_Sets.objA.Create;
         Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(newA.all).idA       := count;
         Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(newA.all).IntegerA  := count;
         
         count := count - 1;
         
         exit when count =  0;
      end loop;
      
      
      -- Create several instances of Object_E
      
      newE := Root_Object.Find_and_Sets.objE.Create;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).idE       := 1;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerA  := 5;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerB  := 2;
      
      
      newE := Root_Object.Find_and_Sets.objE.Create;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).idE       := 2;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerA  := 4;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerB  := 5;
      
      
      newE := Root_Object.Find_and_Sets.objE.Create;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).idE       := 3;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerA  := 1;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerB  := 1;
      
      
      newE := Root_Object.Find_and_Sets.objE.Create;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).idE       := 4;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerA  := 1;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerB  := 1;
      
      
      newE := Root_Object.Find_and_Sets.objE.Create;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).idE       := 5;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerA  := 2;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerB  := 3;
      
      
      newE := Root_Object.Find_and_Sets.objE.Create;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).idE       := 6;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerA  := 5;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerB  := 1;
      
      
      newE := Root_Object.Find_and_Sets.objE.Create;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).idE       := 7;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerA  := 1;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerB  := 3;
      
      
      newE := Root_Object.Find_and_Sets.objE.Create;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).idE       := 8;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerA  := 2;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerB  := 3;
      
      
      newE := Root_Object.Find_and_Sets.objE.Create;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).idE       := 9;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerA  := 1;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerB  := 2;
      
      
      newE := Root_Object.Find_and_Sets.objE.Create;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).idE       := 10;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerA  := 3;
      Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(newE.all).IntegerB  := 3;
      
      
      --  -------------------------------------------------------------------------
      
      Test := 1;
      
      
      -- -------------------------------------------------------------------------
      --  Find One
      -- -------------------------------------------------------------------------
      an_instanceFSI := Root_Object.Find_and_Sets.objFSI.Conditional_Find_One;
      while (an_instanceFSI /= null) and then (not (Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_Type(an_instanceFSI.all).idFSI     =  1 and then
                                                       Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_Type(an_instanceFSI.all).ResultFSI =  0) ) loop
         
         an_instanceFSI := an_instanceFSI.Next_Object;
      end loop;
      
      
      if an_instanceFSI /= Null then
         
         --  Start the test
         
         Find_and_Sets_objFSI1_do_find_one_Service.Find_and_Sets_objFSI1_do_find_one (
            Test            => Test,
            an_instanceFSI  => an_instanceFSI,
            Returned_Number => Returned_Test_Number);
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Find Single
      -- -------------------------------------------------------------------------
      an_instanceFSI := Root_Object.Find_and_Sets.objFSI.Conditional_Find_One;
      while (an_instanceFSI /= null) and then (not (Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_Type(an_instanceFSI.all).idFSI =  2) ) loop
         
         an_instanceFSI := an_instanceFSI.Next_Object;
      end loop;
      
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Returned_Test_Number,
         Incremented => Test);
      
      
      --  Start the test
      
      Find_and_Sets_objFSI2_do_find_only_Service.Find_and_Sets_objFSI2_do_find_only (
         Test_Number     => Test,
         an_instanceFSI  => an_instanceFSI,
         Returned_Number => Returned_Test_Number);
      
      
      -- -------------------------------------------------------------------------
      --  Find Many
      -- -------------------------------------------------------------------------
      an_instanceFM := Root_Object.Find_and_Sets.objFM.Conditional_Find_One;
      while (an_instanceFM /= null) and then (not (Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_Type(an_instanceFM.all).idFM =  1) ) loop
         
         an_instanceFM := an_instanceFM.Next_Object;
      end loop;
      
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Returned_Test_Number,
         Incremented => Test);
      
      
      --  Start the test
      
      Find_and_Sets_objFM1_do_find_many_Service.Find_and_Sets_objFM1_do_find_many (
         Test_Number     => Test,
         an_instanceFM   => an_instanceFM,
         Returned_Number => Returned_Test_Number);
      
      
      -- -------------------------------------------------------------------------
      --  Find Set
      -- -------------------------------------------------------------------------
      an_instanceFS := Root_Object.Find_and_Sets.objFS.Conditional_Find_One;
      while (an_instanceFS /= null) and then (not (Root_Object.Find_and_Sets.objFS.Find_and_Sets_objFS_Type(an_instanceFS.all).idFS =  1) ) loop
         
         an_instanceFS := an_instanceFS.Next_Object;
      end loop;
      
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Returned_Test_Number,
         Incremented => Test);
      
      
      --  Start the test
      
      Find_and_Sets_objFS1_do_find_set_Service.Find_and_Sets_objFS1_do_find_set (
         Test_Number     => Test,
         an_instanceFS   => an_instanceFS,
         Returned_Number => Returned_Test_Number);
      
   end Find_and_Sets_Scenario1;
   
--
-- End of file Find_and_Sets_Scenario1.ada
--
