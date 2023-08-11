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
--* File Name:               ASL_Mapping_objFOR1_do_for_test_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Function to do the FOR tests.
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
--* Domain Name              : ASL_Mapping
--* Domain Key Letter        : ASL_Mapping
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.ASL_Mapping.objFOR;

-- List of bridges used
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_objFOR1_do_for_test_Service is
   
   procedure ASL_Mapping_objFOR1_do_for_test (
      Test_Start : in     Application_Types.Base_Integer_Type;
      Final_Test :    out Application_Types.Base_Integer_Type) is
      
      all_instances_of_FOR : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      newFOR        : Root_Object.Object_Access;
      each_instance : Root_Object.Object_Access;
      
      Count              : Application_Types.Base_Integer_Type := 1;
      Test               : Application_Types.Base_Integer_Type := 1;
      last_failed_result : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objFOR1_do_for_test
      
      -- -------------------------------------------------------------------------
      --  FOR Tests
      --  The ASL <for> loop statement shall be supported
      --  1103-0000-01-0431
      --  Break from and ASL <for> loop statement shall be supported
      --  1103-0000-01-0432
      -- -------------------------------------------------------------------------
      -- -------------------------------------------------------------------------
      -- Create several instances of the Object_FOR
      -- -------------------------------------------------------------------------
      Count      := 1;
      Has_Failed := False;
      
      
      loop
         newFOR := Root_Object.ASL_Mapping.objFOR.Create_Unique;
         Root_Object.ASL_Mapping.objFOR.ASL_Mapping_objFOR_Type(newFOR.all).ResultA := 0;
         
         
         Count := Count + 1;
         
         exit when Count >  5;
      end loop;
      
      
      Test := Test_Start;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - FOR instance count
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0431               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objFOR                          ",
         Purpose         => "FOR instance count              ");
      
      
      Count := 0;
      
      
      Root_Object.Object_List.Clear (
         From => all_instances_of_FOR);
      
      Root_Object.ASL_Mapping.objFOR.Find (
         Add_To => all_instances_of_FOR);
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instances_of_FOR);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            Root_Object.ASL_Mapping.objFOR.ASL_Mapping_objFOR_type(each_instance.all).ResultA := 10;
            
            
            Count := Count + 1;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instances_of_FOR);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      --  Verify that the total number of instance affect was FIVE.
      
      if Count /= 5 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objFOR                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Count);
         
         
         Has_Failed := True;
         
      else
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objFOR                          ",
            Test_Number        => Test,
            Test_Value         => Count);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - FOR with BREAKIF
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0431               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objFOR                          ",
         Purpose         => "FOR with BREAKIF                ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0432               ");
      
      
      Count := 0;
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instances_of_FOR);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            Root_Object.ASL_Mapping.objFOR.ASL_Mapping_objFOR_type(each_instance.all).ResultA := 20;
            
            
            Count := Count + 1;
            
            exit when Count =  2;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instances_of_FOR);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      --  Verify that the total number of instance affect was TWO.
      
      if Count /= 2 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objFOR                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Count);
         
         
         Has_Failed := True;
         
      else
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objFOR                          ",
            Test_Number        => Test,
            Test_Value         => Count);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - FOR with BREAK, break after affecting one instance
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0431               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objFOR                          ",
         Purpose         => "Break after once instance       ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0432               ");
      
      
      Count := 0;
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instances_of_FOR);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            Root_Object.ASL_Mapping.objFOR.ASL_Mapping_objFOR_type(each_instance.all).ResultA := 30;
            
            
            Count := Count + 1;
            
               exit;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instances_of_FOR);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      --  Verify that the total number of instance affect was ONE.
      
      if Count /= 1 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objFOR                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Count);
         
         
         Has_Failed := True;
         
      else
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objFOR                          ",
            Test_Number        => Test,
            Test_Value         => Count);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - FOR with BREAK, break before affecting any instance
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0431               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objFOR                          ",
         Purpose         => "FOR test break before affecting ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0432               ");
      
      
      Count := 0;
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instances_of_FOR);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
               exit;
            
            Root_Object.ASL_Mapping.objFOR.ASL_Mapping_objFOR_type(each_instance.all).ResultA := 40;
            
            
            Count := Count + 1;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instances_of_FOR);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      --  Verify that the total number of instance affect was ZERO.
      
      if Count /= 0 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objFOR                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Count);
         
         
         Has_Failed := True;
         
      else
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objFOR                          ",
            Test_Number        => Test,
            Test_Value         => Count);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Verify FOR with BREAK, break before affecting any instance
      --  Test 4.1
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0431               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objFOR                          ",
         Purpose         => "FOR test verify test            ");
      
      
      --  Verify that the attribute Result1 does not equal 40.
      
      Has_Failed         := False;
      last_failed_result := 0;
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instances_of_FOR);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            if Root_Object.ASL_Mapping.objFOR.ASL_Mapping_objFOR_type(each_instance.all).ResultA =  40 then
               Has_Failed         := True;
               last_failed_result := Root_Object.ASL_Mapping.objFOR.ASL_Mapping_objFOR_type(each_instance.all).ResultA;
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instances_of_FOR);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objFOR                          ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objFOR                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => last_failed_result);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      --  Test 6 - FOR with BREAKIF inside another logical statement
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0431               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objFOR                          ",
         Purpose         => "BREAKIF inside a logical stateme");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0432               ");
      
      
      Count := 0;
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instances_of_FOR);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            if Count /= 3 then
               exit when Count >  2;
            end if;
            
            
            Root_Object.ASL_Mapping.objFOR.ASL_Mapping_objFOR_type(each_instance.all).ResultA := 50;
            
            
            Count := Count + 1;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instances_of_FOR);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      --  Verify that the total number of instance affect was FOUR.
      
      if Count /= 4 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objFOR                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Count);
         
         
         Has_Failed := True;
         
      else
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "ObjFOR                          ",
            Test_Number        => Test,
            Test_Value         => Count);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 6
      -- -------------------------------------------------------------------------
      --  Test 7 - FOR with BREAK inside another logical statement
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0431               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objFOR                          ",
         Purpose         => "BREAKIF inside another logical s");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0432               ");
      
      
      Count := 0;
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instances_of_FOR);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            if Count =  3 then
                  exit;
            end if;
            
            
            Root_Object.ASL_Mapping.objFOR.ASL_Mapping_objFOR_type(each_instance.all).ResultA := 60;
            
            
            Count := Count + 1;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instances_of_FOR);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      --  Verify that the total number of instance affect was THREE.
      
      if Count /= 3 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objFOR                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Count);
         
         
         Has_Failed := True;
         
      else
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objFOR                          ",
            Test_Number        => Test,
            Test_Value         => Count);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 7
      -- -------------------------------------------------------------------------
      --  Test 8 - After a FOR loop check that the loop variable is still valid
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objFOR                          ",
         Purpose         => "FOR loop check variable is still");
      
      
      --  Check that the previously used loop variable is still valid
      
      if each_instance =  Null then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objFOR                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
         
         Has_Failed := True;
         
      else
         
         Root_Object.ASL_Mapping.objFOR.ASL_Mapping_objFOR_type(each_instance.all).ResultA := 70;
         
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objFOR                          ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.objFOR.ASL_Mapping_objFOR_type(each_instance.all).ResultA);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 8
      -- -------------------------------------------------------------------------
      
      Final_Test := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (all_instances_of_FOR);
      
   end ASL_Mapping_objFOR1_do_for_test;
   
end ASL_Mapping_objFOR1_do_for_test_Service;

--
-- End of file ASL_Mapping_objFOR1_do_for_test_Service.adb
--
