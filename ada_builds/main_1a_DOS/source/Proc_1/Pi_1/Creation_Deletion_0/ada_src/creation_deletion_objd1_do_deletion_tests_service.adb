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
--* File Name:               Creation_Deletion_objD1_do_deletion_tests_Service.adb
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
with Creation_Deletion_RPT5_Test_Text_Bridge;
with Creation_Deletion_RPT8_Specify_Requid_Bridge;
with Creation_Deletion_RPT3_Test_Failed_Bridge;
with Creation_Deletion_RPT2_Test_Passed_Bridge;
with Creation_Deletion_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Creation_Deletion_objD1_do_deletion_tests_Service is
   
   procedure Creation_Deletion_objD1_do_deletion_tests (
      Test_Number          : in     Application_Types.Base_Integer_Type;
      Returned_Test_Number :    out Application_Types.Base_Integer_Type) is
      
      before_setD      : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      after_setD       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Before_Deletion  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      After_Deletion   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      before_operation : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      after_operation  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      find_and_delete_D : Root_Object.Object_Access;
      an_instanceD      : Root_Object.Object_Access;
      an_instanceAD     : Root_Object.Object_Access;
      Should_Be_Deleted : Root_Object.Object_Access;
      each_instanceD    : Root_Object.Object_Access;
      any_instance      : Root_Object.Object_Access;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      count        : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      size_after   : Application_Types.Base_Integer_Type := 1;
      what_we_want : Application_Types.Base_Integer_Type := 1;
      
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objD1_do_deletion_tests
      
      -- -------------------------------------------------------------------------
      --  do deletion tests
      -- -------------------------------------------------------------------------
      Test := Test_Number;
      
      
      --  Preparation for instance deletion
      
      count := 8;
      
      loop
         
         find_and_delete_D := Root_Object.Creation_Deletion.objD.Create;
         Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(find_and_delete_D.all).ReferenceD           := count;
         Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(find_and_delete_D.all).IntegerA             := count;
         
         count := count - 1;
         
         exit when count =  0;
      end loop;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Attempt to delete an instance of Object_D where the condition 
      --           is unfulfilled, NO INSTANCE DELETED
      --           FOR THE PURPOSES OF THIS TEST, ONLY A SINGLE INSTANCE DELETION 
      --           IS REQUIRED.
      --  Note : The ISIM seems to have a problem attempting to delete an instance
      --         that isn't there. So there must be a check performed for the
      --         existance of an instance before squashing it.
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD find and delete            ",
         Purpose         => "A is False                      ");
      
      
      has_failed := False;
      
      --  Establish how many instances already exist
      
      Root_Object.Object_List.Clear (
         From => before_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_setD);
      
      an_instanceD := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
      while (an_instanceD /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceD.all).ReferenceD >  100) ) loop
         
         an_instanceD := an_instanceD.Next_Object;
      end loop;
      
      
      if an_instanceD /= Null then
         
         Root_Object.Creation_Deletion.objD.Delete (
            Old_Instance => an_instanceD);
         has_failed := True;
      end if;
      
      
      --  Check that no instance have been deleted
      
      Root_Object.Object_List.Clear (
         From => after_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_setD);
      
      
      if Root_Object.Object_List.Count_Of(before_setD) /= Root_Object.Object_List.Count_Of(after_setD) then
         has_failed := True;
         
      end if;
      
      
      if (not has_failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - Attempt to delete an instance of Object_D where only one of the
      --           conditions are fulfilled, NO INSTANCE DELETED
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD find and delete            ",
         Purpose         => "A and B is False                ");
      
      
      has_failed   := False;
      Failure_Code := (-2);
      
      --  Establish how many instances already exist
      
      Root_Object.Object_List.Clear (
         From => before_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_setD);
      
      
      --  Perform a find where before deleting the instance of Object_D (TB)
      an_instanceD := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
      while (an_instanceD /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceD.all).ReferenceD =  1 and then
                                                     Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceD.all).IntegerA   =  30) ) loop
         
         an_instanceD := an_instanceD.Next_Object;
      end loop;
      
      
      --  There must be a check to prevent attempted deletion of
      --  an instance that doesn't exist.
      
      if an_instanceD /= Null then
         
         Root_Object.Creation_Deletion.objD.Delete (
            Old_Instance => an_instanceD);
         Failure_Code := Failure_Code + 1;
         
      end if;
      
      
      --  Check that no instance have been deleted
      
      Root_Object.Object_List.Clear (
         From => after_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_setD);
      
      
      if Root_Object.Object_List.Count_Of(before_setD) /= Root_Object.Object_List.Count_Of(after_setD) then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3  - Attempt to delete an instance of Object_D where only one of 
      --            the 'and' conditions are fulfilled, NO INSTANCE DELETED
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD find and delete            ",
         Purpose         => "A and  BorC is False            ");
      
      
      has_failed   := False;
      Failure_Code := (-2);
      
      --  Establish how many instances already exist
      
      Root_Object.Object_List.Clear (
         From => before_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_setD);
      
      
      --  Perform test
      an_instanceD := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
      while (an_instanceD /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceD.all).IntegerA   =  30 and then
      (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceD.all).ReferenceD =  1 or else
         Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceD.all).ReferenceD =  2)) ) loop
         
         an_instanceD := an_instanceD.Next_Object;
      end loop;
      
      
      if an_instanceD /= Null then
         
         --  Try and delete the instance. This is a failure, as the find should 
         --  not have actually found an instance.
         
         Root_Object.Creation_Deletion.objD.Delete (
            Old_Instance => an_instanceD);
         Failure_Code := Failure_Code + 1;
         
      end if;
      
      
      --  Check that no instance have been deleted
      
      Root_Object.Object_List.Clear (
         From => after_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_setD);
      
      
      if Root_Object.Object_List.Count_Of(before_setD) /= Root_Object.Object_List.Count_Of(after_setD) then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - Delete single instance
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0531               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "ObjD find and delete            ",
         Purpose         => "Delete single instance          ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      
      Failure_Code := (-5);
      
      --  Find the instance using only one attribute.
      an_instanceD := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
      while (an_instanceD /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceD.all).ReferenceD =  1) ) loop
         
         an_instanceD := an_instanceD.Next_Object;
      end loop;
      
      
      --  Find all instances in the set before any deletions take place.
      
      Root_Object.Object_List.Clear (
         From => Before_Deletion);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => Before_Deletion);
      
      
      if an_instanceD =  Null then
         Failure_Code := Failure_Code + 1;
      else
         
         --  Delete the instance found, which does exist.
         
         Root_Object.Creation_Deletion.objD.Delete (
            Old_Instance => an_instanceD);
         
         --  Check that it has been deleted, by checking first against the
         --  used attribute; ReferenceD, and then by the unused attribute; IntegerA.
         an_instanceD := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
         while (an_instanceD /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceD.all).ReferenceD =  1) ) loop
            
            an_instanceD := an_instanceD.Next_Object;
         end loop;
         
         
         if an_instanceD =  Null then
            an_instanceAD := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
            while (an_instanceAD /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceAD.all).IntegerA =  1) ) loop
               
               an_instanceAD := an_instanceAD.Next_Object;
            end loop;
            
            
            if an_instanceAD =  Null then
               
               --  Use the find operation on the set to prove that the instance has gone
               --  from within the set.
               
               Root_Object.Object_List.Clear (
                  From => After_Deletion);
               
               Root_Object.Creation_Deletion.objD.Find (
                  Add_To => After_Deletion);
               
               
               if Root_Object.Object_List.Count_Of(Before_Deletion) /= Root_Object.Object_List.Count_Of(After_Deletion) then
                  Failure_Code := 0;
               else
                  Failure_Code := Failure_Code + 2;
               end if;
               
            else
               Failure_Code := Failure_Code + 3;
            end if;
            
         else
            Failure_Code := Failure_Code + 4;
            
         end if;
         
      end if;
      
      
      if Failure_Code =  0 then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => Failure_Code);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 -Delete instance of Object_D where multiple condition are
      --          fulfilled
      --          ONE INSTANCE IS DELETED
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0121               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "ObjD find and delete            ",
         Purpose         => "single instance multiple conditi");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0531               ");
      
      
      has_failed := False;
      
      --  Establish how many instances already exist
      
      Root_Object.Object_List.Clear (
         From => before_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_setD);
      
      
      -- Find an instanceD using find where before attempting to delete. (TB)
      an_instanceD := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
      while (an_instanceD /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceD.all).ReferenceD =  2 and then
                                                     Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceD.all).IntegerA   =  2) ) loop
         
         an_instanceD := an_instanceD.Next_Object;
      end loop;
      
      
      if an_instanceD /= Null then
         
         Root_Object.Creation_Deletion.objD.Delete (
            Old_Instance => an_instanceD);
      end if;
      
      
      --  We are more concerened that the instance in question has actually been deleted, rather
      --  than an instance has been deleted from the set. To this end, we shall check that
      --  the specific instance in question really has bitten the dust.
      Should_Be_Deleted := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
      while (Should_Be_Deleted /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Should_Be_Deleted.all).ReferenceD =  2
       and then
                                                          Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Should_Be_Deleted.all).IntegerA   =  2) ) loop
         
         Should_Be_Deleted := Should_Be_Deleted.Next_Object;
      end loop;
      
      
      if Should_Be_Deleted /= Null then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -8);
         
         has_failed := True;
      end if;
      
      
      Root_Object.Object_List.Clear (
         From => after_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_setD);
      
      
      if Root_Object.Object_List.Count_Of(before_setD) =  Root_Object.Object_List.Count_Of(after_setD) then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -9);
         
         has_failed := True;
      end if;
      
      
      -- Ensure that the correct instance was deleted
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => after_setD);
         
         while (Temp_Entry /= null) loop
            each_instanceD := Temp_Entry.Item;
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_type(each_instanceD.all).ReferenceD =  2 then
               
               Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                  Failed_Domain_Object => "objD                            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -10);
               
               has_failed := True;
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => after_setD);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if (not has_failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      -- End Test 5
      -- -------------------------------------------------------------------------
      --  Test 6 - Delete instance of Object_D where multiple condition are 
      --           fulfilled
      --           ONE INSTANCE IS DELETED
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0532               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD find and delete            ",
         Purpose         => "delete 1 instance where multiple");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      
      has_failed := False;
      
      --  Establish how many instances already exist
      
      Root_Object.Object_List.Clear (
         From => before_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_setD);
      
      
      --  Not currently supported by code gen.
      --    delete Object_D where ReferenceD = 7 & (IntegerA = 30 | IntegerA = 7)
      --  Neither is this
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  7 and then
                  Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).IntegerA   =  30 then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  7 and then
                  Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).IntegerA   =  7 then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      --  Check that no instance have been deleted
      
      Root_Object.Object_List.Clear (
         From => after_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_setD);
      
      size_after := (Root_Object.Object_List.Count_Of(after_setD)) + 1;
      
      if Root_Object.Object_List.Count_Of(before_setD) =  Root_Object.Object_List.Count_Of(after_setD) then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -13);
         
         has_failed := True;
      end if;
      
      
      -- Ensure that the correct instance was deleted
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => after_setD);
         
         while (Temp_Entry /= null) loop
            each_instanceD := Temp_Entry.Item;
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_type(each_instanceD.all).ReferenceD =  7 then
               
               Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                  Failed_Domain_Object => "objD                            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -14);
               
               has_failed := True;
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => after_setD);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if (not has_failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 6
      -- -------------------------------------------------------------------------
      --  Test 7 - Delete an instance of Object_D
      --           ONE INSTANCE IS DELETED
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD find and delete            ",
         Purpose         => "Deletion of one instance        ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      
      has_failed := False;
      
      --  Establish how many instances already exist
      
      Root_Object.Object_List.Clear (
         From => before_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_setD);
      
      
      --  Find an instance to delete
      an_instanceD := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
      while (an_instanceD /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceD.all).ReferenceD =  8) ) loop
         
         an_instanceD := an_instanceD.Next_Object;
      end loop;
      
      
      --  Perform test
      
      if an_instanceD /= Null then
         
         Root_Object.Creation_Deletion.objD.Delete (
            Old_Instance => an_instanceD);
      end if;
      
      
      --  Check that no instance have been deleted
      
      Root_Object.Object_List.Clear (
         From => after_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_setD);
      
      size_after := (Root_Object.Object_List.Count_Of(after_setD)) + 1;
      
      if Root_Object.Object_List.Count_Of(before_setD) /= size_after then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -15);
         
         has_failed := True;
      end if;
      
      
      --  Ensure that the correct instance was deleted
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => after_setD);
         
         while (Temp_Entry /= null) loop
            each_instanceD := Temp_Entry.Item;
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_type(each_instanceD.all).ReferenceD =  8 then
               
               Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                  Failed_Domain_Object => "objD                            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -16);
               
               has_failed := True;
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => after_setD);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if (not has_failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      --  End Test 7
      -- -------------------------------------------------------------------------
      --  Preparation for instance deletion
      -- -------------------------------------------------------------------------
      
      count := 8;
      
      loop
         
         find_and_delete_D := Root_Object.Creation_Deletion.objD.Create;
         Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(find_and_delete_D.all).ReferenceD           := count;
         Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(find_and_delete_D.all).IntegerA             := count;
         
         count := count - 1;
         
         exit when count =  0;
      end loop;
      
      
      -- -------------------------------------------------------------------------
      --  Test 8
      --  Attempt to delete an instance of Object_D where the condition is
      --  unfulfilled, NO INSTANCE DELETED
      --  FOR THE PURPOSES OF THIS TEST, ONLY A SINGLE INSTANCE DELETION IS 
      --  REQUIRED.
      --  Note : The ISIM seems to have a problem attempting to delete an instance
      --         that isn't there. So there must be a check performed for the
      --         existance of an instance before squashing it.
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0532               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "delete where                    ",
         Purpose         => "A is False                      ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      
      has_failed := False;
      
      --  Establish how many instances already exist
      
      Root_Object.Object_List.Clear (
         From => before_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_setD);
      
      
      --  Perform test
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD >  100 then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      --  Check that no instance have been deleted
      
      Root_Object.Object_List.Clear (
         From => after_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_setD);
      
      
      if Root_Object.Object_List.Count_Of(before_setD) /= Root_Object.Object_List.Count_Of(after_setD) then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
         has_failed := True;
         
      end if;
      
      
      if (not has_failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      -- End Test 8
      -- -------------------------------------------------------------------------
      --  Test 9 - Attempt to delete an instance of Object_D where only one of the
      --           conditions are fulfilled, NO INSTANCE DELETED
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD delete where               ",
         Purpose         => "A and B is False                ");
      
      
      has_failed   := False;
      Failure_Code := (-2);
      
      
      --  Establish how many instances already exist
      
      Root_Object.Object_List.Clear (
         From => before_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_setD);
      
      
      --  Perform test
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  1 and then
                  Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).IntegerA   =  30 then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      --  Check that no instance have been deleted
      
      Root_Object.Object_List.Clear (
         From => after_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_setD);
      
      
      if Root_Object.Object_List.Count_Of(before_setD) /= Root_Object.Object_List.Count_Of(after_setD) then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      -- End Test 9
      -- -------------------------------------------------------------------------
      --  Test 10 - Attempt to delete an instance of Object_D where only one of 
      --           the 'and' conditions are fulfilled, NO INSTANCE DELETED
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "delete where                    ",
         Purpose         => "A and BorC is False             ");
      
      
      has_failed   := False;
      Failure_Code := (-2);
      
      
      --  Establish how many instances already exist
      
      Root_Object.Object_List.Clear (
         From => before_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_setD);
      
      
      --  Perform test
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).IntegerA   =  30 and then
            (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  1 or else
               Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  2) then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      --  Check that no instance have been deleted
      
      Root_Object.Object_List.Clear (
         From => after_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_setD);
      
      
      --  Also this will prove that the function count-of can be used like this
      --  without having recourse to a local temp variable or two. It is the only
      --  function so far that can be used like this.
      
      if Root_Object.Object_List.Count_Of(before_setD) /= Root_Object.Object_List.Count_Of(after_setD) then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      --  End Test 10
      -- -------------------------------------------------------------------------
      --  Test 11
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0532               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "ObjD delete where               ",
         Purpose         => "delete single instance          ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      
      Failure_Code := (-5);
      
      --  Find all instances in the set before any deletions take place.
      
      Root_Object.Object_List.Clear (
         From => Before_Deletion);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => Before_Deletion);
      
      
      --  Delete the instance found, which does exist.
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  1 then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      --  Check that it has been deleted, by checking first against the
      --  used attribute; ReferenceD, and then by the unused attribute; IntegerA.
      an_instanceD := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
      while (an_instanceD /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceD.all).ReferenceD =  1) ) loop
         
         an_instanceD := an_instanceD.Next_Object;
      end loop;
      
      
      if an_instanceD =  Null then
         an_instanceAD := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
         while (an_instanceAD /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(an_instanceAD.all).IntegerA =  1) ) loop
            
            an_instanceAD := an_instanceAD.Next_Object;
         end loop;
         
         
         if an_instanceAD =  Null then
            
            --  Use the find operation on the set to prove that the instance has gone
            --  from within the set.
            
            Root_Object.Object_List.Clear (
               From => After_Deletion);
            
            Root_Object.Creation_Deletion.objD.Find (
               Add_To => After_Deletion);
            
            
            if Root_Object.Object_List.Count_Of(Before_Deletion) /= Root_Object.Object_List.Count_Of(After_Deletion) then
               Failure_Code := 0;
            else
               Failure_Code := Failure_Code + 2;
            end if;
            
         else
            Failure_Code := Failure_Code + 3;
         end if;
         
      else
         Failure_Code := Failure_Code + 4;
         
      end if;
      
      
      if Failure_Code =  0 then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => Failure_Code);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      --  End Test 11
      -- -------------------------------------------------------------------------
      --  Test 12 - Delete instance of Object_D where multiple condition are 
      --            fulfilled
      --            ONE INSTANCE IS DELETED
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0532               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "ObjD delete where               ",
         Purpose         => "single instance multiple conditi");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      
      has_failed := False;
      
      --  Establish how many instances already exist
      
      Root_Object.Object_List.Clear (
         From => before_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_setD);
      
      
      --  Perform test
      --  Find an instanceD using find where before attempting to delete. (TB)
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  2 and then
                  Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).IntegerA   =  2 then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      --  We are more concerened that the instance in question has actually been deleted, rather
      --  than an instance has been deleted from the set. To this end, we shall check that
      --  the specific instance in question really has bitten the dust.
      Should_Be_Deleted := Root_Object.Creation_Deletion.objD.Conditional_Find_One;
      while (Should_Be_Deleted /= null) and then (not (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Should_Be_Deleted.all).ReferenceD =  2
       and then
                                                          Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Should_Be_Deleted.all).IntegerA   =  2) ) loop
         
         Should_Be_Deleted := Should_Be_Deleted.Next_Object;
      end loop;
      
      
      if Should_Be_Deleted /= Null then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -8);
         
         has_failed := True;
      end if;
      
      
      Root_Object.Object_List.Clear (
         From => after_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_setD);
      
      
      if Root_Object.Object_List.Count_Of(before_setD) =  Root_Object.Object_List.Count_Of(after_setD) then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -9);
         
         has_failed := True;
      end if;
      
      
      -- Ensure that the correct instance was deleted
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => after_setD);
         
         while (Temp_Entry /= null) loop
            each_instanceD := Temp_Entry.Item;
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_type(each_instanceD.all).ReferenceD =  2 then
               
               Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                  Failed_Domain_Object => "objD                            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -10);
               
               has_failed := True;
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => after_setD);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if (not has_failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      --  End Test 12
      -- -------------------------------------------------------------------------
      --  Test 13 - Delete instance of Object_D where multiple condition are 
      --            fulfilled
      --            ONE INSTANCE IS DELETED
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0532               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD delete where               ",
         Purpose         => "single instance deleted         ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      
      has_failed := False;
      
      --  Establish how many instances already exist
      
      Root_Object.Object_List.Clear (
         From => before_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_setD);
      
      
      -- Perform test
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  7 and then
            (Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).IntegerA   =  30 or else
               Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).IntegerA   =  7) then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      --  Check that no instance have been deleted
      
      Root_Object.Object_List.Clear (
         From => after_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_setD);
      
      
      if Root_Object.Object_List.Count_Of(before_setD) =  Root_Object.Object_List.Count_Of(after_setD) then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -13);
         
         has_failed := True;
      end if;
      
      
      -- Ensure that the correct instance was deleted
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => after_setD);
         
         while (Temp_Entry /= null) loop
            each_instanceD := Temp_Entry.Item;
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_type(each_instanceD.all).ReferenceD =  7 then
               
               Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                  Failed_Domain_Object => "objD                            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -14);
               
               has_failed := True;
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => after_setD);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if (not has_failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      --  End Test 13
      -- -------------------------------------------------------------------------
      --  Test 14 - Delete an instance of Object_D
      --            ONE INSTANCE IS DELETED
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0532               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD delete where               ",
         Purpose         => "Deletion of one instance        ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      
      has_failed := False;
      
      --  Establish how many instances already exist
      
      Root_Object.Object_List.Clear (
         From => before_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_setD);
      
      
      --  Find an instance to delete
      
      declare
         Temp_Instance   : Root_Object.Object_Access := Root_Object.Creation_Deletion.objD.Return_List;
         Delete_Instance : Root_Object.Object_Access;
      begin
         while (Temp_Instance /= null) loop
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_Type(Temp_Instance.all).ReferenceD =  8 then
               Delete_Instance := Temp_Instance;
               Temp_Instance := Temp_Instance.Next_Object;
               Root_Object.Creation_Deletion.objD.Delete (
                  Old_Instance => Delete_Instance);
            else
               Temp_Instance := Temp_Instance.Next_Object;
            end if;
            
         end loop;
         
      end;
      
      --  Check that no instance have been deleted
      
      Root_Object.Object_List.Clear (
         From => after_setD);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => after_setD);
      
      
      if Root_Object.Object_List.Count_Of(before_setD) =  Root_Object.Object_List.Count_Of(after_setD) then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -15);
         
         has_failed := True;
      end if;
      
      
      --  Ensure that the correct instance was deleted
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => after_setD);
         
         while (Temp_Entry /= null) loop
            each_instanceD := Temp_Entry.Item;
            
            if Root_Object.Creation_Deletion.objD.Creation_Deletion_objD_type(each_instanceD.all).ReferenceD =  8 then
               
               Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                  Failed_Domain_Object => "objD                            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -16);
               
               has_failed := True;
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => after_setD);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if (not has_failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      --  End Test 14
      -- -------------------------------------------------------------------------
      --  Test 15 - Deletion of all remaining instances.
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0532               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD delete                     ",
         Purpose         => "All remaining instance handles  ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      
      Root_Object.Object_List.Clear (
         From => before_operation);
      
      Root_Object.Creation_Deletion.objD.Find (
         Add_To => before_operation);
      
      
      --  Use for making sure that all remaining instances have actually been deleted.
      
      what_we_want := 0;
      has_failed   := False;
      Failure_Code := 0;
      
      --  Delete all remaining instances. Or at least all thise whose ReferencD
      --  attribute is less than 100. This should be all of them.
      
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
         Failure_Code := (-1);
      else
         
         --  Try and find any instance, doesn't matter what it's attributes are.
         any_instance := Root_Object.Creation_Deletion.objD.Unconditional_Find_One;
         
         --  The instance is still defined.
         
         if any_instance /= Null then
            Failure_Code := (-2);
            has_failed   := True;
         else
            
            --  An instance has been found.
            
            if what_we_want /= Root_Object.Object_List.Count_Of(after_operation) then
               Failure_Code := (-3);
               has_failed   := True;
               
            end if;
            
         end if;
         
      end if;
      
      
      if has_failed =  True then
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "ObjD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "ObjD                            ",
            Test_Number        => Test,
            Test_Value         => Failure_Code);
         
      end if;
      
      
      --  End Test 15
      -- -------------------------------------------------------------------------
      --  Test 16 - Deallocation of instance handles
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0120               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objD delete                     ",
         Purpose         => "Deallocation of instance handles");
      
      Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "Deallocation of instance handles");
      
      Creation_Deletion_RPT4_Test_Unsupported_Bridge.Creation_Deletion_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      -- -------------------------------------------------------------------------
      
      Returned_Test_Number := Test;
      
      
      -- Tests Complete
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (after_operation);
      Root_Object.Object_List.Destroy_List (before_operation);
      Root_Object.Object_List.Destroy_List (After_Deletion);
      Root_Object.Object_List.Destroy_List (Before_Deletion);
      Root_Object.Object_List.Destroy_List (after_setD);
      Root_Object.Object_List.Destroy_List (before_setD);
      
   end Creation_Deletion_objD1_do_deletion_tests;
   
end Creation_Deletion_objD1_do_deletion_tests_Service;

--
-- End of file Creation_Deletion_objD1_do_deletion_tests_Service.adb
--
