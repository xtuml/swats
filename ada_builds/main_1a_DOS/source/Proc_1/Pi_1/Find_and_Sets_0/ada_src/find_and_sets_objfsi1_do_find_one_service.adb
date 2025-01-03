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
--* File Name:               Find_and_Sets_objFSI1_do_find_one_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Not Defined
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
with Root_Object.Find_and_Sets.objFSI;
with Root_Object.Find_and_Sets.objA;
with Root_Object.Find_and_Sets.objB;

-- List of services used
with Find_and_Sets_Find_and_Sets1_Increment_Service;

-- List of bridges used
with Find_and_Sets_RPT2_Test_Passed_Bridge;
with Find_and_Sets_RPT3_Test_Failed_Bridge;
with Find_and_Sets_RPT8_Specify_Requid_Bridge;
with Find_and_Sets_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Find_and_Sets_objFSI1_do_find_one_Service is
   
   procedure Find_and_Sets_objFSI1_do_find_one (
      Test            : in     Application_Types.Base_Integer_Type;
      an_instanceFSI  : in     Root_Object.Object_Access;
      Returned_Number :    out Application_Types.Base_Integer_Type) is
      
      an_instanceB : Root_Object.Object_Access;
      an_instanceA : Root_Object.Object_Access;
      
      Test_Number : Application_Types.Base_Integer_Type := 1;
      temp        : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of objFSI1_do_find_one
      
      -- -------------------------------------------------------------------------
      --  Find-one
      -- -------------------------------------------------------------------------
      Test_Number := Test;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - FIND-ONE, no instance is returned
      --           The object to which the 'FIND' is being performed contains no 
      --           instances
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1103-0000-01-0544               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFSI find one                 ",
         Purpose         => "on no instances                 ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Test_Number,
         The_Requid_Itself  => "1241-0000-01-1206               ");
      
      
      --  Perform the test
      an_instanceB := Root_Object.Find_and_Sets.objB.Unconditional_Find_One;
      
      --  Check that no instance is returned
      
      if an_instanceB /= Null then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFSI find one                 ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => -1);
         
      else
         
         if an_instanceFSI =  Null then
            
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objFSI                          ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -2);
            
         else
            
            temp := Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI + 10;
            
            
            Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI := temp;
            
            
            Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
               Test_Object_Domain => "objFSI find one                 ",
               Test_Number        => Test_Number,
               Test_Value         => temp);
            
         end if;
         
      end if;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - FIND-ONE WHERE, no instance is returned
      --           The object to which the 'FIND' is being performed contains no 
      --           instances
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test_Number,
         Incremented => Test_Number);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1103-0000-01-0545               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFSI find one                 ",
         Purpose         => "on no instances                 ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Test_Number,
         The_Requid_Itself  => "1241-0000-01-1207               ");
      
      
      --  Perform the test
      an_instanceB := Root_Object.Find_and_Sets.objB.Conditional_Find_One;
      while (an_instanceB /= null) and then (not (Root_Object.Find_and_Sets.objB.Find_and_Sets_objB_Type(an_instanceB.all).idB =  1) ) loop
         
         an_instanceB := an_instanceB.Next_Object;
      end loop;
      
      
      --  Check that no instance is returned
      
      if an_instanceB /= Null then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFSI find one                 ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => -3);
         
      else
         
         if an_instanceFSI =  Null then
            
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objFSI                          ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -4);
            
         else
            
            temp := Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI + 10;
            
            
            Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI := temp;
            
            
            Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
               Test_Object_Domain => "objFSI find one                 ",
               Test_Number        => Test_Number,
               Test_Value         => temp);
            
         end if;
         
      end if;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - FIND-ONE WHERE <single condition>, no instance returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test_Number,
         Incremented => Test_Number);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1103-0000-01-0545               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFSI find one                 ",
         Purpose         => "on no instances                 ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Test_Number,
         The_Requid_Itself  => "1241-0000-01-1207               ");
      
      
      --  Perform the test
      an_instanceA := Root_Object.Find_and_Sets.objA.Conditional_Find_One;
      while (an_instanceA /= null) and then (not (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).IntegerA =  666) ) loop
         
         an_instanceA := an_instanceA.Next_Object;
      end loop;
      
      
      --  Check that no instance is returned
      
      if an_instanceA /= Null then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFSI find one                 ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => -3);
         
      else
         
         temp := Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI + 10;
         
         
         Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI := temp;
         
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFSI find one                 ",
            Test_Number        => Test_Number,
            Test_Value         => temp);
         
      end if;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - FIND-ONE WHERE <multiple conditions>, no instance returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test_Number,
         Incremented => Test_Number);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1103-0000-01-0545               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFSI find one                 ",
         Purpose         => "on no instances                 ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Test_Number,
         The_Requid_Itself  => "1241-0000-01-1207               ");
      
      
      --  Perform the test
      an_instanceA := Root_Object.Find_and_Sets.objA.Conditional_Find_One;
      while (an_instanceA /= null) and then (not (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).IntegerA =  666 and then
                                                     Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).idA      =  1) ) loop
         
         an_instanceA := an_instanceA.Next_Object;
      end loop;
      
      
      --  Check that no instance is returned
      
      if an_instanceA /= Null then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFSI find one                 ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => -4);
         
      else
         
         temp := Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI + 10;
         
         
         Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI := temp;
         
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFSI find one                 ",
            Test_Number        => Test_Number,
            Test_Value         => temp);
         
      end if;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 - FIND-ONE, an instance is returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test_Number,
         Incremented => Test_Number);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1103-0000-01-0544               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFSI find one                 ",
         Purpose         => "one instance                    ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Test_Number,
         The_Requid_Itself  => "1241-0000-01-1206               ");
      
      
      --  Perform the test
      an_instanceA := Root_Object.Find_and_Sets.objA.Unconditional_Find_One;
      
      --  Check that an instance is returned
      
      if an_instanceA =  Null then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFSI find one                 ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => -5);
         
      else
         
         temp := Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI + 10;
         
         
         Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI := temp;
         
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFSI find one                 ",
            Test_Number        => Test_Number,
            Test_Value         => temp);
         
      end if;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      --  Test 6 - FIND-ONE WHERE <single condition>, an instance is returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test_Number,
         Incremented => Test_Number);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1103-0000-01-0545               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFSI find one                 ",
         Purpose         => "one instance                    ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Test_Number,
         The_Requid_Itself  => "1241-0000-01-1207               ");
      
      
      --  Perform the test
      an_instanceA := Root_Object.Find_and_Sets.objA.Conditional_Find_One;
      while (an_instanceA /= null) and then (not (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).idA =  1) ) loop
         
         an_instanceA := an_instanceA.Next_Object;
      end loop;
      
      
      --  Check that an instance is returned
      
      if (an_instanceA /= Null) then
         
         if (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(an_instanceA.all).idA /= 1) then
            
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objFSI find one                 ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -6);
            
         else
            
            temp := Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI + 10;
            
            
            Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI := temp;
            
            
            Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
               Test_Object_Domain => "objFSI find one                 ",
               Test_Number        => Test_Number,
               Test_Value         => temp);
            
         end if;
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFSI find one                 ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => -7);
         
      end if;
      
      
      --  End Test 6
      -- -------------------------------------------------------------------------
      --  Test 7 - FIND-ONE WHERE <both conditions are fulfilled>, an instance is 
      --           returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test_Number,
         Incremented => Test_Number);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1103-0000-01-0545               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFSI find one                 ",
         Purpose         => "one instance                    ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Test_Number,
         The_Requid_Itself  => "1241-0000-01-1207               ");
      
      
      --  Perform the test
      an_instanceA := Root_Object.Find_and_Sets.objA.Conditional_Find_One;
      while (an_instanceA /= null) and then (not (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).idA =  1 or else
                                                     Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).idA =  2) ) loop
         
         an_instanceA := an_instanceA.Next_Object;
      end loop;
      
      
      --  Check that an instance is returned
      
      if (an_instanceA /= Null) then
         
         if (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(an_instanceA.all).idA >  2) then
            
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objFSI find one                 ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -8);
            
         else
            
            temp := Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI + 10;
            
            
            Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI := temp;
            
            
            Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
               Test_Object_Domain => "objFSI find one                 ",
               Test_Number        => Test_Number,
               Test_Value         => temp);
            
         end if;
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFSI find one                 ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => -9);
         
      end if;
      
      
      --  End Test 7
      -- -------------------------------------------------------------------------
      --  Test 8 - FIND-ONE WHERE <only one conditions fulfilled>, an instance is 
      --           returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test_Number,
         Incremented => Test_Number);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1103-0000-01-0545               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFSI find one                 ",
         Purpose         => "one instance                    ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Test_Number,
         The_Requid_Itself  => "1241-0000-01-1207               ");
      
      
      --  Perform the test
      an_instanceA := Root_Object.Find_and_Sets.objA.Conditional_Find_One;
      while (an_instanceA /= null) and then (not (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).idA =  3 or else
                                                     Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).idA =  666) ) loop
         
         an_instanceA := an_instanceA.Next_Object;
      end loop;
      
      
      --  Check that an instance is returned
      
      if (an_instanceA /= Null) then
         
         if (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(an_instanceA.all).idA /= 3) then
            
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objFSI find one                 ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -10);
            
         else
            
            temp := Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI + 10;
            
            
            Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI := temp;
            
            
            Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
               Test_Object_Domain => "objFSI find one                 ",
               Test_Number        => Test_Number,
               Test_Value         => temp);
            
         end if;
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFSI find one                 ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => -11);
         
      end if;
      
      
      --  End Test 8
      -- -------------------------------------------------------------------------
      
      Returned_Number := Test_Number;
      
      
   end Find_and_Sets_objFSI1_do_find_one;
   
end Find_and_Sets_objFSI1_do_find_one_Service;

--
-- End of file Find_and_Sets_objFSI1_do_find_one_Service.adb
--
