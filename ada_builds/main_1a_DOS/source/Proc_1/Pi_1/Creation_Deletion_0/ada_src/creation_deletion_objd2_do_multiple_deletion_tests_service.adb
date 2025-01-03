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
--* File Name:               Creation_Deletion_objD2_do_multiple_deletion_tests_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This service shall prove that deletion of multiple instances from a
--*                           set is correct.
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
with Root_Object.Creation_Deletion.objD;

-- List of bridges used
with Creation_Deletion_RPT4_Test_Unsupported_Bridge;
with Creation_Deletion_RPT2_Test_Passed_Bridge;
with Creation_Deletion_RPT3_Test_Failed_Bridge;
with Creation_Deletion_RPT8_Specify_Requid_Bridge;
with Creation_Deletion_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Creation_Deletion_objD2_do_multiple_deletion_tests_Service is
   
   procedure Creation_Deletion_objD2_do_multiple_deletion_tests (
      Test_Number          : in     Application_Types.Base_Integer_Type;
      Returned_Test_Number :    out Application_Types.Base_Integer_Type) is
      
      before_operation : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      after_operation  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      find_and_delete_D : Root_Object.Object_Access;
      first_instance    : Root_Object.Object_Access;
      second_instance   : Root_Object.Object_Access;
      third_instance    : Root_Object.Object_Access;
      fourth_instance   : Root_Object.Object_Access;
      fifth_instance    : Root_Object.Object_Access;
      sixth_instance    : Root_Object.Object_Access;
      any_instance      : Root_Object.Object_Access;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      count        : Application_Types.Base_Integer_Type := 1;
      what_we_want : Application_Types.Base_Integer_Type := 1;
      failure_code : Application_Types.Base_Integer_Type := 1;
      what_we_got  : Application_Types.Base_Integer_Type := 1;
      
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objD2_do_multiple_deletion_tests
      
      -- -------------------------------------------------------------------------
      --  do multiple deletion tests
      -- -------------------------------------------------------------------------
      Test := Test_Number;
      
      
      --  Preparation for instance deletion
      
      count := 10;
      
      loop
         
         find_and_delete_D := Root_Object.Creation_Deletion.objD.Create;
         Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(find_and_delete_D.all).ReferenceD           := count;
         Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(find_and_delete_D.all).IntegerA             := count;
         
         count := count - 1;
         
         exit when count =  0;
      end loop;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Fully specify both instances
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0532               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD multiple delete            ",
         Purpose         => "Fully specify both instances    ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0122               ");
      
      
      --  Delete two instances that meet the search criteria
      
      Root_Object.Object_List.Clear (
         From => before_operation);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_operation);
      
      
      --  Use for making sure that only two instances have actually been deleted.
      
      what_we_want := Root_Object.Object_List.Count_Of(before_operation);
      what_we_want := what_we_want - 2;
      has_failed   := False;
      failure_code := 0;
      
      --  Delete two instances where both attributes for both instances are specified.
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  1 and then
                  Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).IntegerA   =  1) or else
               (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  2 and then
                  Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).IntegerA   =  2) then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      Root_Object.Object_List.Clear (
         From => after_operation);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_operation);
      
      
      --  None have been deleted
      
      if Root_Object.Object_List.Count_Of(before_operation) =  Root_Object.Object_List.Count_Of(after_operation) then
         has_failed   := True;
         failure_code := (-1);
      else
         
         --  Try and find the instances directly
         first_instance := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
         while (first_instance /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(first_instance.all).ReferenceD =  1
          and then
                                                          Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(first_instance.all).IntegerA   =  1) ) loop
            
            first_instance := first_instance.Next_Object;
         end loop;
         
         second_instance := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
         while (second_instance /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(second_instance.all).ReferenceD =  2
          and then
                                                           Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(second_instance.all).IntegerA   =  2) ) loop
            
            second_instance := second_instance.Next_Object;
         end loop;
         
         
         if first_instance /= Null then
            failure_code := (-2);
            has_failed   := True;
         else
            
            if second_instance /= Null then
               failure_code := (-3);
               has_failed   := True;
            else
               
               --  More or less than two instances have been deleted
               
               if what_we_want /= Root_Object.Object_List.Count_Of(after_operation) then
                  failure_code := (-4);
                  has_failed   := True;
                  
               end if;
               
            end if;
            
         end if;
         
      end if;
      
      
      if has_failed =  True then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "ObjD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => failure_code);
         
      else
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "ObjD                            ",
            Test_Number        => Test,
            Test_Value         => failure_code);
         
      end if;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0532               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD multiple delete            ",
         Purpose         => "Diff attributes diff instances  ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0122               ");
      
      
      --  Delete two instances that meet the search criteria
      
      Root_Object.Object_List.Clear (
         From => before_operation);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_operation);
      
      
      --  Use for making sure that only two instances have actually been deleted.
      
      what_we_want := Root_Object.Object_List.Count_Of(before_operation);
      what_we_want := what_we_want - 2;
      has_failed   := False;
      failure_code := 0;
      
      --  Delete two instances where one attribute for both instances are specified.
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  3 or else
                  Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).IntegerA   =  4 then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      Root_Object.Object_List.Clear (
         From => after_operation);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_operation);
      
      
      --  None have been deleted
      
      if Root_Object.Object_List.Count_Of(before_operation) =  Root_Object.Object_List.Count_Of(after_operation) then
         has_failed   := True;
         failure_code := (-1);
      else
         
         --  Try and find the instances directly
         third_instance := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
         while (third_instance /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(third_instance.all).ReferenceD =  3
          and then
                                                          Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(third_instance.all).IntegerA   =  3) ) loop
            
            third_instance := third_instance.Next_Object;
         end loop;
         
         fourth_instance := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
         while (fourth_instance /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(fourth_instance.all).ReferenceD =  4
          and then
                                                           Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(fourth_instance.all).IntegerA   =  4) ) loop
            
            fourth_instance := fourth_instance.Next_Object;
         end loop;
         
         
         if third_instance /= Null then
            failure_code := (-2);
            has_failed   := True;
         else
            
            if fourth_instance /= Null then
               failure_code := (-3);
               has_failed   := True;
               
            else
               
               what_we_got := Root_Object.Object_List.Count_Of(after_operation);
               
               
               --  More or less than two instances have been deleted
               
               if what_we_want /= what_we_got then
                  
                  failure_code := (-4);
                  has_failed   := True;
                  
               end if;
               
            end if;
            
         end if;
         
      end if;
      
      
      if has_failed =  True then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "ObjD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => failure_code);
         
      else
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "ObjD                            ",
            Test_Number        => Test,
            Test_Value         => failure_code);
         
      end if;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0532               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD multiple delete            ",
         Purpose         => "Same attribute diff instances   ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0122               ");
      
      
      --  Delete two instances that meet the search criteria
      
      Root_Object.Object_List.Clear (
         From => before_operation);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_operation);
      
      
      --  Use for making sure that only two instances have actually been deleted.
      
      what_we_want := Root_Object.Object_List.Count_Of(before_operation);
      what_we_want := what_we_want - 2;
      has_failed   := False;
      failure_code := 0;
      
      --  Delete two instances where the same attribute for both instances are specified separately.
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  5 or else
                  Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  6 then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      Root_Object.Object_List.Clear (
         From => after_operation);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_operation);
      
      
      --  None have been deleted
      
      if Root_Object.Object_List.Count_Of(before_operation) =  Root_Object.Object_List.Count_Of(after_operation) then
         has_failed   := True;
         failure_code := (-1);
      else
         
         --  Try and find the instances directly
         fifth_instance := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
         while (fifth_instance /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(fifth_instance.all).ReferenceD =  5
          and then
                                                          Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(fifth_instance.all).IntegerA   =  5) ) loop
            
            fifth_instance := fifth_instance.Next_Object;
         end loop;
         
         sixth_instance := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
         while (sixth_instance /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(sixth_instance.all).ReferenceD =  6
          and then
                                                          Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(sixth_instance.all).IntegerA   =  6) ) loop
            
            sixth_instance := sixth_instance.Next_Object;
         end loop;
         
         
         if fifth_instance /= Null then
            failure_code := (-2);
            has_failed   := True;
         else
            
            if sixth_instance /= Null then
               failure_code := (-3);
               has_failed   := True;
               
            else
               
               what_we_got := Root_Object.Object_List.Count_Of(after_operation);
               
               
               --  More or less than two instances have been deleted
               
               if what_we_want /= what_we_got then
                  
                  failure_code := what_we_got - what_we_want;
                  has_failed   := True;
                  
               end if;
               
            end if;
            
         end if;
         
      end if;
      
      
      if has_failed =  True then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "ObjD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => failure_code);
         
      else
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "ObjD                            ",
            Test_Number        => Test,
            Test_Value         => failure_code);
         
      end if;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4
      -- -------------------------------------------------------------------------
      --  Deletion of set of instance handles is unsupported.
      
      Test := Test + 1;
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD multiple delete            ",
         Purpose         => "Set of instance handles         ");
      
      Creation_Deletion_RPT4_Test_Unsupported_Bridge.Creation_Deletion_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5
      -- -------------------------------------------------------------------------
      --  Deletion of all remaining instances.
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0532               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD multiple delete            ",
         Purpose         => "All remaining instance handles  ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0122               ");
      
      
      Root_Object.Object_List.Clear (
         From => before_operation);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_operation);
      
      
      --  Use for making sure that all remaining instances have actually been deleted.
      
      what_we_want := 0;
      has_failed   := False;
      failure_code := 0;
      
      --  Delete all remaining instances where ReferenceD is less than 100, 
      --  should be all of them.
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD <  100 then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      Root_Object.Object_List.Clear (
         From => after_operation);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_operation);
      
      
      --  None have been deleted
      
      if Root_Object.Object_List.Count_Of(before_operation) =  Root_Object.Object_List.Count_Of(after_operation) then
         has_failed   := True;
         failure_code := (-1);
      else
         
         --  Try and find any instance, doesn't matter what it's attributes are.
         any_instance := Root_Object.Creation_Deletion.objD.Unconditional_Find_One;
         
         --  The instance is still defined.
         
         if any_instance /= Null then
            failure_code := (-2);
            has_failed   := True;
         else
            
            --  An instance has been found.
            
            if what_we_want /= Root_Object.Object_List.Count_Of(after_operation) then
               failure_code := (-3);
               has_failed   := True;
               
            end if;
            
         end if;
         
      end if;
      
      
      if has_failed =  True then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "ObjD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => failure_code);
         
      else
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "ObjD                            ",
            Test_Number        => Test,
            Test_Value         => failure_code);
         
      end if;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      
      Returned_Test_Number := Test;
      
      
      -- Tests Complete
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (after_operation);
      Root_Object.Object_List.Destroy_List (before_operation);
      
   end Creation_Deletion_objD2_do_multiple_deletion_tests;
   
end Creation_Deletion_objD2_do_multiple_deletion_tests_Service;

--
-- End of file Creation_Deletion_objD2_do_multiple_deletion_tests_Service.adb
--
