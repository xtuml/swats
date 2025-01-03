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
--* File Name:               ASL_Mapping_objNESTED1_do_nested_tests_Service.adb
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
with Root_Object.ASL_Mapping.objNESTED;

-- List of bridges used
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_objNESTED1_do_nested_tests_Service is
   
   procedure ASL_Mapping_objNESTED1_do_nested_tests (
      Test_Start : in     Application_Types.Base_Integer_Type;
      Final_Test :    out Application_Types.Base_Integer_Type) is
      
      all_instances_of_NESTED : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      all_instance_of_NESTED  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      each_instance         : Root_Object.Object_Access;
      an_instance_of_NESTED : Root_Object.Object_Access;
      
      Test   : Application_Types.Base_Integer_Type := 1;
      countA : Application_Types.Base_Integer_Type := 1;
      countB : Application_Types.Base_Integer_Type := 1;
      countC : Application_Types.Base_Integer_Type := 1;
      temp   : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objNESTED1_do_nested_tests
      
      -- -------------------------------------------------------------------------
      --  Test 1 - This test verifies the mapping of nested ASL statements into 
      --           the application langauge.
      --           The nature of the nested statements means that the LOOP 
      --           statement is encountered 5 times. The following paragraphs 
      --           indicate what data is written into attribute 'ResultB' each 
      --           time the LOOP statement is encountered.
      --           The instances affected the first time the LOOP statement is 
      --           encountered are 5, 4, and 3, hence the atttribute 'ResultB' has 
      --           the value 1, 2 and 3 written into it.
      --           The instances affected the second time the LOOP statement is 
      --           encountered are 2 and 1, hence the atttribute 'ResultB' has the 
      --           value 1 and 2 written into it.
      --           Thereafter the attribute 'ResultB' is unaffected.
      -- -------------------------------------------------------------------------
      Test := Test_Start;
      
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0441               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objNESTED                       ",
         Purpose         => "Nested logic                    ");
      
      
      Has_Failed := False;
      
      
      -- ----------------------------------------------------------------------
      --  Ensure that each instance of the attributes ResultA and ResultB are 
      --  set to zero
      -- ----------------------------------------------------------------------
      
      Root_Object.Object_List.Clear (
         From => all_instances_of_NESTED);
      
      Root_Object.ASL_Mapping.objNESTED.Find (
         Add_To => all_instances_of_NESTED);
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instances_of_NESTED);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultA := 0;
            Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultB := 0;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instances_of_NESTED);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      -- ----------------------------------------------------------------------
      --  FOR, IF, LOOP with BREAKIF affecting the LOOP statement.
      --  The FOR statement will cause the attribute ResultA for all instances 
      --  to be set to the value of countA.
      --  The LOOP statement will cause the attribute ResulB to be set to the 
      --  value of countB.
      -- ----------------------------------------------------------------------
      
      countA := 0;
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instances_of_NESTED);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            if Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultA =  0 then
               
               Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultA := countA;
               
               
               countB := 1;
               
               
               loop
                  an_instance_of_NESTED := Root_Object.ASL_Mapping.objNESTED.Conditional_Find_One;
                  while (an_instance_of_NESTED /= null) and then (not (Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_Type(an_instance_of_NESTED.all).ResultB
                      =  0) ) loop
                     
                     an_instance_of_NESTED := an_instance_of_NESTED.Next_Object;
                  end loop;
                  
                  
                  if an_instance_of_NESTED /= Null then
                     
                     Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(an_instance_of_NESTED.all).ResultB := countB;
                     
                  end if;
                  
                  
                  countB := countB + 1;
                  
                  exit when countB =  4;
               end loop;
               
               
               --  Verify the BREAKIF statement.
               
               if countB /= 4 then
                  
                  Has_Failed := True;
               end if;
               
            end if;
            
            countA := countA + 1;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instances_of_NESTED);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      --  Verify that all instances in Object_NESTED where affected
      
      if countA =  5 then
         
         if (not Has_Failed) then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objNESTED                       ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objNESTED                       ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objNESTED                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -20);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - This test verifies the mapping of nested ASL statements into 
      --           the application language.
      --           The nature of the nested statements means that the LOOP 
      --           statement is encountered 5 times, Each time a value is written 
      --           into attribute 'ResultA'.
      --           A value is written into a different instance of attribute 
      --           'ResultB' until the BREAK statement is encountered within the 
      --           LOOP statement, i.e. the LOOP will break after one pass.
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0441               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objNESTED                       ",
         Purpose         => "Loop breaks after one pass      ");
      
      
      Has_Failed := False;
      
      
      -- ----------------------------------------------------------------------
      --  Ensure that each instance of attributes ResultA and ResultB are set 
      --  to zero.
      -- ----------------------------------------------------------------------
      
      Root_Object.Object_List.Clear (
         From => all_instances_of_NESTED);
      
      Root_Object.ASL_Mapping.objNESTED.Find (
         Add_To => all_instances_of_NESTED);
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instances_of_NESTED);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultA := 0;
            Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultB := 0;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instances_of_NESTED);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      -- ----------------------------------------------------------------------
      --  FOR, IF, LOOP with BREAK affecting the LOOP statement
      --  The FOR statement will cause attribute ResultA for each instance to 
      --  be set to the value of countA.
      --  The LOOP statement will cause the attribute ResultB to be set to the
      --  value of countB.
      --  The BREAK statement ensures that only one instances is affected at
      --  one time.
      -- ----------------------------------------------------------------------
      
      countA := 0;
      countC := 0;
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instances_of_NESTED);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            if Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultA =  0 then
               
               Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultA := countA;
               
               
               countB := 0;
               
               
               loop
                  an_instance_of_NESTED := Root_Object.ASL_Mapping.objNESTED.Conditional_Find_One;
                  while (an_instance_of_NESTED /= null) and then (not (Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_Type(an_instance_of_NESTED.all).ResultB
                      =  0) ) loop
                     
                     an_instance_of_NESTED := an_instance_of_NESTED.Next_Object;
                  end loop;
                  
                  
                  if an_instance_of_NESTED /= Null then
                     
                     Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(an_instance_of_NESTED.all).ResultB := countC;
                     
                  end if;
                  
                  
                  countC := countC + 1;
                  countB := countB + 1;
                  
                     exit;
               end loop;
               
               
               if (countB /= 1) then
                  
                  Has_Failed := True;
               end if;
               
            end if;
            
            countA := countA + 1;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instances_of_NESTED);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if countA =  5 then
         
         if (not Has_Failed) then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "objNESTED                       ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objNESTED                       ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objNESTED                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -20);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - These tests verify the mapping of nested ASL statements into 
      --           the application language.
      --           During test 2 the attribute 'ResultB' is incremented in steps 
      --           of 100 until it reaches its final value of 400.
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0431               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objNESTED                       ",
         Purpose         => "Nested Logic                    ");
      
      
      --  Ensure that the attributes ResultA and ResultB are set to zero
      
      Root_Object.Object_List.Clear (
         From => all_instance_of_NESTED);
      
      Root_Object.ASL_Mapping.objNESTED.Find (
         Add_To => all_instance_of_NESTED);
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instance_of_NESTED);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultA := 0;
            Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultB := 0;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instance_of_NESTED);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      --  Check the number of instances in the set 'all_instance_of_NESTED'
      
      countA := Root_Object.Object_List.Count_Of(all_instance_of_NESTED);
      
      
      if countA /= 5 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objNESTED                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objNESTED                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0431               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objNESTED                       ",
         Purpose         => "Nested Logic                    ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0432               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0441               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0451               ");
      
      
      --  Affect only one instance
      
      loop
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => all_instance_of_NESTED);
            
            while (Temp_Entry /= null) loop
               each_instance := Temp_Entry.Item;
               
               Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultA := 100;
               
                  exit;
               
               --  This BREAK will cause the FOR to complete
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => all_instance_of_NESTED);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         countA := countA - 1;
         
            exit;
         
         --  This BREAK will cause the LOOP to complete
      end loop;
      
      
      if countA /= 4 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objNESTED                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objNESTED                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0431               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objNESTED                       ",
         Purpose         => "Nested Logic                    ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0432               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0441               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0452               ");
      
      
      Has_Failed := False;
      
      
      --  Increment the attribute ResultB four times, for two instances of
      --  Object_NESTED.
      
      countA := 1;
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instance_of_NESTED);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultA := countA;
            
            
            countB := 0;
            
            
            loop
               
               temp := Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultB + 100;
               
               
               Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultB := temp;
               
               
               countB := countB + 1;
               
               exit when countB =  4;
            end loop;
            
            
            --  Check the value written to the attribute Test
            
            if Root_Object.ASL_Mapping.objNESTED.ASL_Mapping_objNESTED_type(each_instance.all).ResultB /= 400 then
               
               ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                  Failed_Domain_Object => "objNESTED                       ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -10);
               
               
               Has_Failed := True;
            end if;
            
            
            --  Check that the attribute ResultB has only been incremented four times
            
            if countB /= 4 then
               
               ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                  Failed_Domain_Object => "objNESTED                       ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -20);
               
               Has_Failed := True;
            end if;
            
            countA := countA + 1;
            exit when countA =  3;
            
            --  Only affect 2 instances of Object_NESTED
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instance_of_NESTED);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      --  Check that only two instances have been altered
      
      if countA /= 3 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objNESTED                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -30);
         
         Has_Failed := True;
         
      end if;
      
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objNESTED                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      
      Final_Test := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (all_instance_of_NESTED);
      Root_Object.Object_List.Destroy_List (all_instances_of_NESTED);
      
   end ASL_Mapping_objNESTED1_do_nested_tests;
   
end ASL_Mapping_objNESTED1_do_nested_tests_Service;

--
-- End of file ASL_Mapping_objNESTED1_do_nested_tests_Service.adb
--
