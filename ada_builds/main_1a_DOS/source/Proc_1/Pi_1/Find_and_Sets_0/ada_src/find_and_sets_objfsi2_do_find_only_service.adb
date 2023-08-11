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
--* File Name:               Find_and_Sets_objFSI2_do_find_only_Service.adb
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

-- List of services used
with Find_and_Sets_Find_and_Sets1_Increment_Service;

-- List of bridges used
with Find_and_Sets_RPT2_Test_Passed_Bridge;
with Find_and_Sets_RPT3_Test_Failed_Bridge;
with Find_and_Sets_RPT4_Test_Unsupported_Bridge;
with Find_and_Sets_RPT8_Specify_Requid_Bridge;
with Find_and_Sets_RPT1_Start_Test_Bridge;
with Find_and_Sets_WAW1_What_Env_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Find_and_Sets_objFSI2_do_find_only_Service is
   
   procedure Find_and_Sets_objFSI2_do_find_only (
      Test_Number     : in     Application_Types.Base_Integer_Type;
      an_instanceFSI  : in     Root_Object.Object_Access;
      Returned_Number :    out Application_Types.Base_Integer_Type) is
      
      an_instanceA : Root_Object.Object_Access;
      
      Test : Application_Types.Base_Integer_Type := 1;
      temp : Application_Types.Base_Integer_Type := 1;
      
      Host : Application_Types.Base_Text_Type := (others => ' ');
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objFSI2_do_find_only
      
      -- -------------------------------------------------------------------------
      --  Find-only
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_WAW1_What_Env_Bridge.Find_and_Sets_WAW1_What_Env (
         Env_Text => Host);
      
      Test := Test_Number;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - FIND-ONLY return the first instance of Object A found
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0546               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFSI find only                ",
         Purpose         => "Return first inst with find-only");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1208               ");
      
      
      Has_Failed := False;
      
      --  Perform the test
      
      if Host =  "ISIM                            " then
         
         Find_and_Sets_RPT4_Test_Unsupported_Bridge.Find_and_Sets_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      else
         an_instanceA := Root_Object.Find_and_Sets.objA.Unconditional_Find_One;
         
         --  Check that an instance is returned
         
         if (an_instanceA =  Null) then
            
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objFSI find only                ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -4);
            
            Has_Failed := True;
            
         else
            
            temp := Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI + 10;
            
            
            Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI := temp;
            
            
            Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
               Test_Object_Domain => "objFSI find only                ",
               Test_Number        => Test,
               Test_Value         => temp);
            
         end if;
         
      end if;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - FIND-ONLY WHERE <single condition>, an instance is returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test,
         Incremented => Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0547               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFSI find only                ",
         Purpose         => "a condition an instance ret     ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1209               ");
      
      
      Has_Failed := False;
      
      --  Perform the test
      an_instanceA := Root_Object.Find_and_Sets.objA.Conditional_Find_One;
      while (an_instanceA /= null) and then (not (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).idA =  4) ) loop
         
         an_instanceA := an_instanceA.Next_Object;
      end loop;
      
      
      --  Check that an instance is returned
      
      if (an_instanceA =  Null) or else
         (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(an_instanceA.all).idA /= 4) then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFSI find only                ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
         Has_Failed := True;
      else
         
         if an_instanceFSI =  Null then
            Has_Failed := True;
            
            
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objFSI                          ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -2);
            
         else
            
            temp := Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI + 10;
            
            
            Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI := temp;
            
            
            Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
               Test_Object_Domain => "objFSI find only                ",
               Test_Number        => Test,
               Test_Value         => temp);
            
         end if;
         
      end if;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 -  FIND-ONLY WHERE <only one condition fulfilled>, an instance 
      --            is returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test,
         Incremented => Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0547               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFSI find only                ",
         Purpose         => "a condition an instance ret     ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1209               ");
      
      
      Has_Failed := False;
      
      --  Perform the test
      an_instanceA := Root_Object.Find_and_Sets.objA.Conditional_Find_One;
      while (an_instanceA /= null) and then (not (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).IntegerA =  666 or else
                                                     Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).idA      =  5) ) loop
         
         an_instanceA := an_instanceA.Next_Object;
      end loop;
      
      
      --  Check that an instance is returned
      
      if (an_instanceA =  Null) or else
         (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(an_instanceA.all).idA /= 5) then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFSI find only                ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -2);
         
         Has_Failed := True;
         
      else
         
         temp := Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI + 10;
         
         
         Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI := temp;
         
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFSI find only                ",
            Test_Number        => Test,
            Test_Value         => temp);
         
      end if;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - FIND-ONLY WHERE <multiple conditions fulfilled>, an instance 
      --           is returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test,
         Incremented => Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0547               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFSI find only                ",
         Purpose         => "mult conditions 1 instance ret  ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1209               ");
      
      
      Has_Failed := False;
      
      --  Perform the test
      an_instanceA := Root_Object.Find_and_Sets.objA.Conditional_Find_One;
      while (an_instanceA /= null) and then (not (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).IntegerA =  6 or else
                                                     Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(an_instanceA.all).idA      =  6) ) loop
         
         an_instanceA := an_instanceA.Next_Object;
      end loop;
      
      
      --  Check that an instance is returned
      
      if (an_instanceA =  Null) or else
         (Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(an_instanceA.all).idA /= 6) then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFSI find only                ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -3);
         
         Has_Failed := True;
         
      else
         
         temp := Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI + 10;
         
         
         Root_Object.Find_and_Sets.objFSI.Find_and_Sets_objFSI_type(an_instanceFSI.all).ResultFSI := temp;
         
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFSI find only                ",
            Test_Number        => Test,
            Test_Value         => temp);
         
      end if;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      
      Returned_Number := Test;
      
      
   end Find_and_Sets_objFSI2_do_find_only;
   
end Find_and_Sets_objFSI2_do_find_only_Service;

--
-- End of file Find_and_Sets_objFSI2_do_find_only_Service.adb
--
