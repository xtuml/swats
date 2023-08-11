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
--* File Name:               Creation_Deletion_objB1_do_sync_create_unique_Service.adb
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
with Root_Object.Creation_Deletion.objB;

-- List of bridges used
with Creation_Deletion_RPT3_Test_Failed_Bridge;
with Creation_Deletion_RPT2_Test_Passed_Bridge;
with Creation_Deletion_RPT8_Specify_Requid_Bridge;
with Creation_Deletion_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Creation_Deletion_objB1_do_sync_create_unique_Service is
   
   procedure Creation_Deletion_objB1_do_sync_create_unique (
      Test_Number          : in     Application_Types.Base_Integer_Type;
      Returned_Test_Number :    out Application_Types.Base_Integer_Type) is
      
      beforeB : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      new_B                 : Root_Object.Object_Access;
      new_instanceB         : Root_Object.Object_Access;
      an_instanceB          : Root_Object.Object_Access;
      each_beforeB          : Root_Object.Object_Access;
      another_new_instanceB : Root_Object.Object_Access;
      
      Test         : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      count        : Application_Types.Base_Integer_Type := 1;
      number_in_B  : Application_Types.Base_Integer_Type := 1;
      Reference_B  : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objB1_do_sync_create_unique
      
      -- -------------------------------------------------------------------------
      --  Create unique, without specifing preferred identifier
      -- -------------------------------------------------------------------------
      Test := Test_Number;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objB                            ",
         Purpose         => "Create unique no preferred id   ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0311               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0101               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0118               ");
      
      
      Has_Failed   := False;
      Failure_Code := -1;
      
      
      --  create two initial instances
      
      count := 0;
      
      loop
         count := count + 1;
         
         new_B := Root_Object.Creation_Deletion.objB.Create_Unique;
         exit when count >= 2;
      end loop;
      
      
      --  Create a set of instances to check for uniqueness of the new instance
      
      Root_Object.Object_List.Clear (
         From => beforeB);
      
      Root_Object.Creation_Deletion.objB.Find (
         Add_To => beforeB);
      
      
      --  Perform creation
      new_instanceB := Root_Object.Creation_Deletion.objB.Create_Unique;
      Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_Type(new_instanceB.all).IntegerA := Test;
      
      
      --  this will be the third instance
      --  Find the newly created instance
      an_instanceB := Root_Object.Creation_Deletion.objB.Conditional_Find_One;
      while (an_instanceB /= null) and then (not (Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_Type(an_instanceB.all).IntegerA =  Test) ) loop
         
         an_instanceB := an_instanceB.Next_Object;
      end loop;
      
      
      --  Check that it was created and is unique
      
      if an_instanceB =  Null then
         
         Has_Failed   := True;
         Failure_Code := -10;
      else
         
         --  Check that its was created with the correct data
         
         if Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(an_instanceB.all).IntegerA /= Test then
            Has_Failed   := True;
            Failure_Code := -20;
         end if;
         
         
         --  Check that the identifier is unique
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => beforeB);
            
            while (Temp_Entry /= null) loop
               each_beforeB := Temp_Entry.Item;
               
               if Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(each_beforeB.all).ReferenceB =  
               Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(new_instanceB.all).ReferenceB then
                  Has_Failed   := True;
                  Failure_Code := -30;
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => beforeB);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
      end if;
      
      
      if (not Has_Failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objB                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objB                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - Create unique, specifing the preferred identifier
      --           THIS TEST SHOULD CAUSE A COMPILE TIME ERROR, SINCE THE 
      --           PREFERRED IDENTIFIER HAS BEEN GIVEN IN THE 'CREATE UNIQUE'
      --           STATEMENT
      -- -------------------------------------------------------------------------
      
      Failure_Code := -1;
      Has_Failed   := False;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objB                            ",
         Purpose         => "Create unique incorrectly specif");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0101               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0118               ");
      
      
      -- Create a set of instances to check for uniqueness of the new instance
      
      Root_Object.Object_List.Clear (
         From => beforeB);
      
      Root_Object.Creation_Deletion.objB.Find (
         Add_To => beforeB);
      
      
      --  There should be 3 instances in this set check that this is the case.
      
      number_in_B := Root_Object.Object_List.Count_Of(beforeB);
      
      
      if number_in_B /= 3 then
         
         Has_Failed   := True;
         Failure_Code := -10;
         
      end if;
      
      
      --  There is a possibility that this will create an instance with a 
      --  non-unique instance, so fix ReferenceB such that it shouldn't
      --  have the same identifier as any future test.
      --  Obviously, we can't guarantee this, but let's have a damn good try.
      
      Reference_B := Test * Test;
      
      
      --  Perform creation
      new_instanceB := Root_Object.Creation_Deletion.objB.Create_Unique;
      Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_Type(new_instanceB.all).ReferenceB           := Reference_B;
      Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_Type(new_instanceB.all).IntegerA             := Test;
      
      
      --  Find the newly created instance
      an_instanceB := Root_Object.Creation_Deletion.objB.Conditional_Find_One;
      while (an_instanceB /= null) and then (not (Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_Type(an_instanceB.all).IntegerA =  Test) ) loop
         
         an_instanceB := an_instanceB.Next_Object;
      end loop;
      
      
      --  Check that it was created and is unique
      
      if an_instanceB =  Null then
         
         Has_Failed   := True;
         Failure_Code := -20;
      else
         
         --  Check that its was created with the correct data
         
         if Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(an_instanceB.all).IntegerA /= Test then
            Has_Failed   := True;
            Failure_Code := -30;
         end if;
         
         
         -- Check that the identifier is unique
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => beforeB);
            
            while (Temp_Entry /= null) loop
               each_beforeB := Temp_Entry.Item;
               
               if Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(each_beforeB.all).ReferenceB =  
               Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(new_instanceB.all).ReferenceB then
                  Has_Failed   := True;
                  Failure_Code := -40;
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => beforeB);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
      end if;
      
      
      if (not Has_Failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objB                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objB                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - Create two unique, check for unique id's
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objB                            ",
         Purpose         => "Create two unique no attributes ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0101               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0118               ");
      
      
      Has_Failed   := False;
      Failure_Code := -1;
      
      --  Create a set of instances to check for uniqueness of the new instance
      
      Root_Object.Object_List.Clear (
         From => beforeB);
      
      Root_Object.Creation_Deletion.objB.Find (
         Add_To => beforeB);
      
      
      --  Perform creation
      new_instanceB         := Root_Object.Creation_Deletion.objB.Create_Unique;
      another_new_instanceB := Root_Object.Creation_Deletion.objB.Create_Unique;
      
      --  Check that it was created and is unique
      
      if new_instanceB =  Null then
         Has_Failed   := True;
         Failure_Code := -10;
      else
         
         if another_new_instanceB =  Null then
            Has_Failed   := True;
            Failure_Code := -20;
         else
            
            --  Check that the identifier is unique
            --  Note that this isn't always a failure of the I-OOA or
            --  WACA. A previous test had tried to specify the preferred
            --  identifier during a create unique. This is against the rule
            --  of SM OOA, but can be done. So if this fails here, have a look
            --  at the preferred identifier being the same in the earlier test.
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => beforeB);
               
               while (Temp_Entry /= null) loop
                  each_beforeB := Temp_Entry.Item;
                  
                  if Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(each_beforeB.all).ReferenceB =  
                  Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(new_instanceB.all).ReferenceB then
                     Has_Failed   := True;
                     Failure_Code := -30;
                  end if;
                  
                  
                  if Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(each_beforeB.all).ReferenceB =  
                  Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(another_new_instanceB.all).ReferenceB then
                     Has_Failed   := True;
                     Failure_Code := -40;
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => beforeB);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            --  But of it fails here, it definately IS a problem.
            
            if Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(another_new_instanceB.all).ReferenceB =  
            Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(new_instanceB.all).ReferenceB then
               Has_Failed := True;
               Failure_Code := -50;
               
            end if;
            
         end if;
         
      end if;
      
      
      if (not Has_Failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objB                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objB                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      
      Returned_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (beforeB);
      
   end Creation_Deletion_objB1_do_sync_create_unique;
   
end Creation_Deletion_objB1_do_sync_create_unique_Service;

--
-- End of file Creation_Deletion_objB1_do_sync_create_unique_Service.adb
--
