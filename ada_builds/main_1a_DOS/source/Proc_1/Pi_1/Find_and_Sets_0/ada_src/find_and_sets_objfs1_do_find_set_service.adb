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
--* File Name:               Find_and_Sets_objFS1_do_find_set_Service.adb
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
with Root_Object.Find_and_Sets.objFS;
with Root_Object.Find_and_Sets.objA;

-- List of services used
with Find_and_Sets_Find_and_Sets1_Increment_Service;

-- List of bridges used
with Find_and_Sets_RPT4_Test_Unsupported_Bridge;
with Find_and_Sets_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Find_and_Sets_objFS1_do_find_set_Service is
   
   procedure Find_and_Sets_objFS1_do_find_set (
      Test_Number     : in     Application_Types.Base_Integer_Type;
      an_instanceFS   : in     Root_Object.Object_Access;
      Returned_Number :    out Application_Types.Base_Integer_Type) is
      
      setA : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      Test          : Application_Types.Base_Integer_Type := 1;
      Returned_Test : Application_Types.Base_Integer_Type := 1;
      
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objFS1_do_find_set
      Test := Test_Number;
      
      
      -- -------------------------------------------------------------------------
      --  Find on sets of instance handles
      -- -------------------------------------------------------------------------
      --  Create an initial set to perform the tests upon
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => setA);
         
         Root_Object.Find_and_Sets.objA.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA >  5 then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => setA);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      -- -------------------------------------------------------------------------
      --  Test 1 - find-one
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFS                           ",
         Purpose         => "find one on set                 ");
      
      
      has_failed := False;
      
      -- Perform the test
      --  an_instanceA = find-one {setA}
      -- Check the an instance is returned
      --  if an_instanceA = UNDEFINED then
      
      Find_and_Sets_RPT4_Test_Unsupported_Bridge.Find_and_Sets_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      --  else
      --    if an_instanceA.idA < 6 then
      --       [] = RPT3:Test_Failed["objFS", Test,-1]
      --       has_failed = TRUE
      --    else
      --       temp = an_instanceFS.ResultFS + 10
      --       an_instanceFS.ResultFS = temp
      --       [] = RPT2:Test_Passed["objFS", Test,temp]
      --    endif
      --  endif
      -- -------------------------------------------------------------------------
      --  Test 2 - find-one where
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test,
         Incremented => Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFS                           ",
         Purpose         => "find one  on set where          ");
      
      has_failed := False;
      
      --  Perform the test
      --  an_instanceA = find-one {setA} where idA > 8
      --  Check the an instance is returned
      --  if an_instanceA = UNDEFINED then
      
      Find_and_Sets_RPT4_Test_Unsupported_Bridge.Find_and_Sets_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      --  else
      --    if an_instanceA.idA < 9 then
      --       [] = RPT3:Test_Failed["objFS", Test,-2]
      --       has_failed = TRUE
      --    else
      --       temp = an_instanceFS.ResultFS + 10
      --       an_instanceFS.ResultFS = temp
      --       [] = RPT2:Test_Passed["objFS", Test,temp]
      --    endif
      --  endif
      -- -------------------------------------------------------------------------
      --  Test 3 - find-only
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test,
         Incremented => Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFS                           ",
         Purpose         => "find  on set only               ");
      
      has_failed := False;
      
      --  Perform the test
      --  an_instanceA = find-only {setA} where idA = 6
      --  Check the an instance is returned
      --  if an_instanceA = UNDEFINED then
      
      Find_and_Sets_RPT4_Test_Unsupported_Bridge.Find_and_Sets_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      --  else
      --    if an_instanceA.idA != 6 then
      --       [] = RPT3:Test_Failed["objFS", Test,-3]
      --       has_failed = TRUE
      --    else
      --       temp = an_instanceFS.ResultFS + 10
      --       an_instanceFS.ResultFS = temp
      --       [] = RPT2:Test_Passed["objFS", Test,temp]
      --    endif
      --  endif
      -- -------------------------------------------------------------------------
      --  Test 4 - find where, using a single condition
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test,
         Incremented => Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFS                           ",
         Purpose         => "find on set where single conditi");
      
      has_failed := False;
      
      --  Perform the test
      --  {subsetA} = find {setA} where idA > 7
      --  Check that the set contains some instances and that it contains the
      --  correct instances
      --  if countof {subsetA} = 0 then
      
      Find_and_Sets_RPT4_Test_Unsupported_Bridge.Find_and_Sets_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      --  else
      --    if countof {subsetA} != 3 then
      --       [] = RPT3:Test_Failed["objFS", Test,-4]
      --       has_failed = TRUE
      --    else
      --  Check each instance that is returned
      --  countA = 0
      --       countB = 0
      --       countC = 0
      --       for each_instanceA in {subsetA} do
      --          if each_instanceA.idA = 8 then
      --             countA = countA + 1
      --          else
      --             if each_instanceA.idA = 9 then
      --                countB = countB + 1
      --             else
      --                if each_instanceA.idA = 10 then
      --                   countC = countC + 1
      --                else
      --                   [] = RPT3:Test_Failed["objFS", Test,-5]
      --                   has_failed = TRUE
      --                endif
      --             endif
      --          endif
      --       endfor
      -- Check counter values
      --       if (countA != 1)|(countB != 1)|(countC != 1) then
      --          [] = RPT3:Test_Failed["objFS", Test,-6]
      --          has_failed = TRUE
      --       else
      --          temp = an_instanceFS.ResultFS + 10
      --          an_instanceFS.ResultFS = temp
      --       endif
      --       if !has_failed then
      --          [] = RPT2:Test_Passed["objFS", Test,0]
      --       endif
      --    endif
      -- endif
      -- -------------------------------------------------------------------------
      -- Test 5
      -- find where, using multiple conditions
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Test,
         Incremented => Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFS                           ",
         Purpose         => "find on set where multiple condi");
      
      has_failed := False;
      
      
      -- Perform the test
      --  {subsetA} = find {setA} where idA > 8 | idA = 4 | idA = 6
      --  if countof {subsetA} = 0 then
      
      Find_and_Sets_RPT4_Test_Unsupported_Bridge.Find_and_Sets_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      --  else
      -- Check that the set contains some instances and that it contains the
      -- correct instances
      --    if countof {subsetA} != 3 then
      --       [] = RPT3:Test_Failed["objFS", Test,-7]
      --       has_failed = TRUE
      --    else
      -- Check each instance that is returned
      --       countA = 0
      --       countB = 0
      --       countC = 0
      --       for each_instanceA in {subsetA} do
      --          if each_instanceA.idA = 6 then
      --             countA = countA + 1
      --          else
      --             if each_instanceA.idA = 9 then
      --                countB = countB + 1
      --             else
      --                if each_instanceA.idA = 10 then
      --                   countC = countC + 1
      --                else
      --                   [] = RPT3:Test_Failed["objFS", Test,-8]
      --                   has_failed = TRUE
      --                endif
      --             endif
      --          endif
      --       endfor
      -- Check counter values
      --       if (countA != 1)|(countB != 1)|(countC != 1) then
      --          [] = RPT3:Test_Failed["objFS", Test,-9]
      --          has_failed = TRUE
      --       else
      --          temp = an_instanceFS.ResultFS + 10
      --          an_instanceFS.ResultFS = temp
      --       endif
      --       if !has_failed then
      --          [] = RPT2:Test_Passed["objFS", Test,0]
      --       endif
      --    endif
      --  endif
      -- -------------------------------------------------------------------------
      
      Returned_Test := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (setA);
      
   end Find_and_Sets_objFS1_do_find_set;
   
end Find_and_Sets_objFS1_do_find_set_Service;

--
-- End of file Find_and_Sets_objFS1_do_find_set_Service.adb
--
