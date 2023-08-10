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
--* File Name:               Find_and_Sets_objFM1_do_find_many_Service.adb
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
with Root_Object.Find_and_Sets.objFM;
with Root_Object.Find_and_Sets.objE;
with Root_Object.Find_and_Sets.objAO;
with Root_Object.Find_and_Sets.objA;
with Root_Object.Find_and_Sets.objB;

-- List of services used
with Find_and_Sets_Find_and_Sets6_FindAllTest_Service;
with Find_and_Sets_Find_and_Sets1_Increment_Service;

-- List of bridges used
with Find_and_Sets_RPT4_Test_Unsupported_Bridge;
with Find_and_Sets_RPT5_Test_Text_Bridge;
with Find_and_Sets_RPT2_Test_Passed_Bridge;
with Find_and_Sets_RPT3_Test_Failed_Bridge;
with Find_and_Sets_RPT8_Specify_Requid_Bridge;
with Find_and_Sets_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Find_and_Sets_objFM1_do_find_many_Service is
   
   procedure Find_and_Sets_objFM1_do_find_many (
      Test_Number     : in     Application_Types.Base_Integer_Type;
      an_instanceFM   : in     Root_Object.Object_Access;
      Returned_Number :    out Application_Types.Base_Integer_Type) is
      
      setB          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      setA          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      setAA         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      setAB         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      setAC         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      setAO         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      setToDel      : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      setOfNewInstB : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      setOfNewInstA : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      setOfNewInstE : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      each_instanceA : Root_Object.Object_Access;
      tempInstanceA  : Root_Object.Object_Access;
      instAO         : Root_Object.Object_Access;
      NewInstB       : Root_Object.Object_Access;
      NewInstA       : Root_Object.Object_Access;
      NewInstE       : Root_Object.Object_Access;
      
      Local_Test    : Application_Types.Base_Integer_Type := 1;
      temp          : Application_Types.Base_Integer_Type := 1;
      countA        : Application_Types.Base_Integer_Type := 1;
      countB        : Application_Types.Base_Integer_Type := 1;
      countC        : Application_Types.Base_Integer_Type := 1;
      count         : Application_Types.Base_Integer_Type := 1;
      theInt        : Application_Types.Base_Integer_Type := 1;
      noInst        : Application_Types.Base_Integer_Type := 1;
      countof_set_A : Application_Types.Base_Integer_Type := 1;
      Cnt           : Application_Types.Base_Integer_Type := 1;
      NoInSet       : Application_Types.Base_Integer_Type := 1;
      NoInSetA      : Application_Types.Base_Integer_Type := 1;
      NoInSetB      : Application_Types.Base_Integer_Type := 1;
      NoInSetE      : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objFM1_do_find_many
      
      -- -------------------------------------------------------------------------
      --  Find many instances
      Local_Test := Test_Number;
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Find where, no instances returned
      --           Object to which the operation was performed contains no 
      --           instances
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0541               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "find-many on no instances       ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-1210               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0124               ");
      
      Has_Failed := False;
      
      --  Perform the test
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => setB);
         
         Root_Object.Find_and_Sets.objB.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Find_and_Sets.objB.Find_and_Sets_objB_Type(Temp_Entry.Item.all).idB >  0 then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => setB);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      --  Check that the set contains no instances
      
      if Root_Object.Object_List.Count_Of(setB) /= 0 then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -1);
         
         Has_Failed := True;
         
      else
         
         temp := Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM + 10;
         
         
         Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM := temp;
         
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFM                           ",
            Test_Number        => Local_Test,
            Test_Value         => temp);
         
      end if;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - Find where, using a single condition, no instances returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0541               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "single condition find on no inst");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-1210               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0124               ");
      
      
      Has_Failed := False;
      
      --  Perform the test
      
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
            
            if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA >  20 then
               
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
      
      --  Check that the set contains no instances
      
      if Root_Object.Object_List.Count_Of(setA) /= 0 then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -2);
         
         Has_Failed := True;
         
      else
         
         temp := Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM + 10;
         
         
         Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM := temp;
         
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFM                           ",
            Test_Number        => Local_Test,
            Test_Value         => temp);
         
      end if;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - Find where, only one condition is fulfilled, no instance
      --           returned (AND)
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0541               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "find on one condition no instanc");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-1210               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0124               ");
      
      
      Has_Failed := False;
      
      --  Perform the test
      
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
            
            if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA      =  2 and then
                  Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).IntegerA =  666 then
               
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
      
      --  Check that the set contains no instances
      
      if Root_Object.Object_List.Count_Of(setA) /= 0 then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -3);
         
         Has_Failed := True;
         
      else
         
         temp := Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM + 10;
         
         
         Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM := temp;
         
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFM                           ",
            Test_Number        => Local_Test,
            Test_Value         => temp);
         
      end if;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - find where, using a single condition, some instances returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0541               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "single condition some instances ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-1210               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0124               ");
      
      
      Has_Failed := False;
      
      --  Perform the test
      
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
            
            if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA <  4 then
               
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
      
      --  Check that the set contains some instances and that it contains the
      --  correct instances
      
      if Root_Object.Object_List.Count_Of(setA) /= 3 then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -4);
         
         Has_Failed := True;
         
      else
         
         --  Check each instance that is returned
         
         countA := 0;
         countB := 0;
         countC := 0;
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => setA);
            
            while (Temp_Entry /= null) loop
               each_instanceA := Temp_Entry.Item;
               
               if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(each_instanceA.all).idA =  1 then
                  countA := countA + 1;
               else
                  
                  if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(each_instanceA.all).idA =  2 then
                     countB := countB + 1;
                  else
                     
                     if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(each_instanceA.all).idA =  3 then
                        countC := countC + 1;
                        
                     else
                        
                        Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
                           Failed_Domain_Object => "objFM                           ",
                           Failed_Test_Number   => Local_Test,
                           Failed_Test_Value    => -5);
                        
                        
                        Has_Failed := True;
                     end if;
                     
                  end if;
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => setA);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         --  Check counter values
         
         if (countA /= 1) or else
            (countB /= 1) or else
            (countC /= 1) then
            
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objFM                           ",
               Failed_Test_Number   => Local_Test,
               Failed_Test_Value    => -6);
            
            Has_Failed := True;
            
         else
            
            temp := Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM + 10;
            
            
            Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM := temp;
            
         end if;
         
         
         if (not Has_Failed) then
            
            Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
               Test_Object_Domain => "objFM                           ",
               Test_Number        => Local_Test,
               Test_Value         => temp);
            
         end if;
         
      end if;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 - find where, multiple conditions are fulfilled, some instances 
      --           returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0541               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "on some instances               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-1210               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0124               ");
      
      
      Has_Failed := False;
      
      --  Perform the test
      
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
            
            if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA =  4 or else
                  Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA >  8 then
               
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
      
      --  Check that the set contains some instances and that it contains the
      --  correct instances
      
      if Root_Object.Object_List.Count_Of(setA) /= 3 then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "obj                             ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -7);
         
         Has_Failed := True;
         
      else
         
         --  Check each instance that is returned
         
         countA := 0;
         countB := 0;
         countC := 0;
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => setA);
            
            while (Temp_Entry /= null) loop
               each_instanceA := Temp_Entry.Item;
               
               if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(each_instanceA.all).idA =  4 then
                  countA := countA + 1;
               else
                  
                  if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(each_instanceA.all).idA =  9 then
                     countB := countB + 1;
                  else
                     
                     if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(each_instanceA.all).idA =  10 then
                        countC := countC + 1;
                        
                     else
                        
                        Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
                           Failed_Domain_Object => "objFM                           ",
                           Failed_Test_Number   => Local_Test,
                           Failed_Test_Value    => -8);
                        
                        
                        Has_Failed := True;
                     end if;
                     
                  end if;
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => setA);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         --  Check counter values
         
         if (countA /= 1) or else
            (countB /= 1) or else
            (countC /= 1) then
            
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objFM                           ",
               Failed_Test_Number   => Local_Test,
               Failed_Test_Value    => -9);
            
            Has_Failed := True;
            
         else
            
            temp := Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM + 10;
            
            
            Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM := temp;
            
         end if;
         
         
         if (not Has_Failed) then
            
            Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
               Test_Object_Domain => "objFM                           ",
               Test_Number        => Local_Test,
               Test_Value         => temp);
            
         end if;
         
      end if;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      --  Test 6 - find where, multiple conditions are fulfilled, some instances 
      --           returned
      --           Specified criteria would hit the same instance several times
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0541               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "find where multiple conditions a");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-1210               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0124               ");
      
      
      Has_Failed := False;
      
      --  Perform the test
      
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
            
            if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA =  1 or else
                  Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA <  4 or else
                  Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA =  3 then
               
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
      
      --  Check that the set contains some instances and that it contains the
      --  correct instances
      
      if Root_Object.Object_List.Count_Of(setA) /= 3 then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -10);
         
         Has_Failed := True;
         
      else
         
         --  Check each instance that is returned
         
         countA := 0;
         countB := 0;
         countC := 0;
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => setA);
            
            while (Temp_Entry /= null) loop
               each_instanceA := Temp_Entry.Item;
               
               if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(each_instanceA.all).idA =  1 then
                  countA := countA + 1;
               else
                  
                  if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(each_instanceA.all).idA =  2 then
                     countB := countB + 1;
                  else
                     
                     if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_type(each_instanceA.all).idA =  3 then
                        countC := countC + 1;
                        
                     else
                        
                        Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
                           Failed_Domain_Object => "objFM                           ",
                           Failed_Test_Number   => Local_Test,
                           Failed_Test_Value    => -11);
                        
                        
                        Has_Failed := True;
                     end if;
                     
                  end if;
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => setA);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         --  Check counter values
         
         if (countA /= 1) or else
            (countB /= 1) or else
            (countC /= 1) then
            
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objFM                           ",
               Failed_Test_Number   => Local_Test,
               Failed_Test_Value    => -12);
            
            Has_Failed := True;
            
         else
            
            temp := Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM + 10;
            
            
            Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM := temp;
            
         end if;
         
         
         if (not Has_Failed) then
            
            Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
               Test_Object_Domain => "objFM                           ",
               Test_Number        => Local_Test,
               Test_Value         => 0);
            
         end if;
         
      end if;
      
      
      --  End Test 6
      -- -------------------------------------------------------------------------
      --  Test 7 - find-all, no instances returned
      --           Object to which the operation was performed contains no 
      --           instances
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0543               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "on no instances                 ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-1211               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0124               ");
      
      
      Has_Failed := False;
      
      --  Perform the test
      
      Root_Object.Object_List.Clear (
         From => setB);
      
      Root_Object.Find_and_Sets.objB.Find (
         Add_To => setB);
      
      
      --  Check that the set contains no instances
      
      if Root_Object.Object_List.Count_Of(setB) /= 0 then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -13);
         
         Has_Failed := True;
         
      else
         
         temp := Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM + 10;
         
         
         Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM := temp;
         
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFM                           ",
            Test_Number        => Local_Test,
            Test_Value         => temp);
         
      end if;
      
      
      --  End Test 7
      -- -------------------------------------------------------------------------
      --  Local_Test 8 - find-all, some instances returned
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0543               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "on some instances               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-1211               ");
      
      
      Has_Failed := False;
      
      --  Perform the test
      
      Root_Object.Object_List.Clear (
         From => setA);
      
      Root_Object.Find_and_Sets.objA.Find (
         Add_To => setA);
      
      
      --  Check that the set contains no instances
      
      if Root_Object.Object_List.Count_Of(setA) /= 10 then
         
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -14);
         
         Has_Failed := True;
         
      else
         
         temp := Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM + 10;
         
         
         Root_Object.Find_and_Sets.objFM.Find_and_Sets_objFM_type(an_instanceFM.all).ResultFM := temp;
         
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFM                           ",
            Test_Number        => Local_Test,
            Test_Value         => temp);
         
      end if;
      
      
      --  End Test 8
      -- -------------------------------------------------------------------------
      --  Test 9
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0543               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "Repeat Find All                 ");
      
      
      count := 5;
      
      
      loop
         
         theInt := 100 + count;
         
         
         tempInstanceA := Root_Object.Find_and_Sets.objA.Create;
         Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(tempInstanceA.all).idA             := theInt;
         Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(tempInstanceA.all).IntegerA        := theInt;
         
         
         count := count - 1;
         exit when count =  0;
      end loop;
      
      
      Root_Object.Object_List.Clear (
         From => setAA);
      
      Root_Object.Find_and_Sets.objA.Find (
         Add_To => setAA);
      
      
      if Root_Object.Object_List.Count_Of(setAA) =  15 then
         count := 5;
         
         
         loop
            
            theInt := 200 + count;
            
            
            tempInstanceA := Root_Object.Find_and_Sets.objA.Create;
            Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(tempInstanceA.all).idA             := theInt;
            Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(tempInstanceA.all).IntegerA        := theInt;
            
            
            count := count - 1;
            exit when count =  0;
         end loop;
         
         
         Root_Object.Object_List.Clear (
            From => setAB);
         
         Root_Object.Find_and_Sets.objA.Find (
            Add_To => setAB);
         
         
         if Root_Object.Object_List.Count_Of(setAB) =  20 then
            
            Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
               Test_Object_Domain => "objA                            ",
               Test_Number        => Local_Test,
               Test_Value         => 0);
            
         else
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objA                            ",
               Failed_Test_Number   => Local_Test,
               Failed_Test_Value    => -10);
            
         end if;
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objA                            ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -20);
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 10
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0543               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "Repeat Find All                 ");
      
      count := 5;
      
      
      loop
         
         theInt := 300 + count;
         
         
         tempInstanceA := Root_Object.Find_and_Sets.objA.Create;
         Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(tempInstanceA.all).idA             := theInt;
         Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(tempInstanceA.all).IntegerA        := theInt;
         
         
         count := count - 1;
         exit when count =  0;
      end loop;
      
      
      Root_Object.Object_List.Clear (
         From => setAC);
      
      Root_Object.Find_and_Sets.objA.Find (
         Add_To => setAC);
      
      
      if Root_Object.Object_List.Count_Of(setAC) =  25 then
         count := 5;
         
         
         loop
            
            theInt := 400 + count;
            
            
            tempInstanceA := Root_Object.Find_and_Sets.objA.Create;
            Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(tempInstanceA.all).idA             := theInt;
            Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(tempInstanceA.all).IntegerA        := theInt;
            
            
            count := count - 1;
            exit when count =  0;
         end loop;
         
         
         Root_Object.Object_List.Clear (
            From => setAC);
         
         Root_Object.Find_and_Sets.objA.Find (
            Add_To => setAC);
         
         
         if Root_Object.Object_List.Count_Of(setAC) =  30 then
            count := 5;
            
            
            loop
               
               theInt := 500 + count;
               
               
               tempInstanceA := Root_Object.Find_and_Sets.objA.Create;
               Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(tempInstanceA.all).idA             := theInt;
               Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(tempInstanceA.all).IntegerA        := theInt;
               
               
               count := count - 1;
               exit when count =  0;
            end loop;
            
            
            Root_Object.Object_List.Clear (
               From => setAC);
            
            Root_Object.Find_and_Sets.objA.Find (
               Add_To => setAC);
            
            
            if Root_Object.Object_List.Count_Of(setAC) =  35 then
               
               Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
                  Test_Object_Domain => "objA                            ",
                  Test_Number        => Local_Test,
                  Test_Value         => 0);
               
            else
               Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
                  Failed_Domain_Object => "objA                            ",
                  Failed_Test_Number   => Local_Test,
                  Failed_Test_Value    => -10);
               
            end if;
            
         else
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objA                            ",
               Failed_Test_Number   => Local_Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objA                            ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -30);
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 11
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0543               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "Repeat Find All                 ");
      
      count := 5;
      
      loop
         
         instAO := Root_Object.Find_and_Sets.objAO.Create;
         Root_Object.Find_and_Sets.objAO.Find_and_Sets_objAO_Type(instAO.all).idAO := count;
         
         count := count - 1;
         exit when count =  0;
      end loop;
      
      
      Root_Object.Object_List.Clear (
         From => setAO);
      
      Root_Object.Find_and_Sets.objAO.Find (
         Add_To => setAO);
      
      
      if Root_Object.Object_List.Count_Of(setAO) =  5 then
         count := 5;
         
         
         loop
            
            theInt := count + 5;
            
            
            instAO := Root_Object.Find_and_Sets.objAO.Create;
            Root_Object.Find_and_Sets.objAO.Find_and_Sets_objAO_Type(instAO.all).idAO := theInt;
            
            
            count := count - 1;
            exit when count =  0;
         end loop;
         
         
         Root_Object.Object_List.Clear (
            From => setAO);
         
         Root_Object.Find_and_Sets.objAO.Find (
            Add_To => setAO);
         
         
         if Root_Object.Object_List.Count_Of(setAO) =  10 then
            count := 5;
            
            
            loop
               
               theInt := count + 5;
               
               
               instAO := Root_Object.Find_and_Sets.objAO.Create;
               Root_Object.Find_and_Sets.objAO.Find_and_Sets_objAO_Type(instAO.all).idAO := theInt;
               
               
               count := count - 1;
               exit when count =  0;
            end loop;
            
            
            Root_Object.Object_List.Clear (
               From => setAO);
            
            Root_Object.Find_and_Sets.objAO.Find (
               Add_To => setAO);
            
            
            if Root_Object.Object_List.Count_Of(setAO) =  15 then
               
               Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
                  Test_Object_Domain => "objAO                           ",
                  Test_Number        => Local_Test,
                  Test_Value         => 0);
               
            else
               Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
                  Failed_Domain_Object => "objAO                           ",
                  Failed_Test_Number   => Local_Test,
                  Failed_Test_Value    => -10);
               
            end if;
            
         else
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objAO                           ",
               Failed_Test_Number   => Local_Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objAO                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => -30);
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 12
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0543               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "Find All in service             ");
      
      count := 0;
      
      
      loop
         
         theInt := 100 + count;
         
         
         instAO := Root_Object.Find_and_Sets.objAO.Create;
         Root_Object.Find_and_Sets.objAO.Find_and_Sets_objAO_Type(instAO.all).idAO := theInt;
         
         
         count := count + 1;
         
         exit when count =  5;
      end loop;
      
      
      Find_and_Sets_Find_and_Sets6_FindAllTest_Service.Find_and_Sets_Find_and_Sets6_FindAllTest (
         noInst => noInst);
      
      Find_and_Sets_Find_and_Sets6_FindAllTest_Service.Find_and_Sets_Find_and_Sets6_FindAllTest (
         noInst => noInst);
      
      Find_and_Sets_Find_and_Sets6_FindAllTest_Service.Find_and_Sets_Find_and_Sets6_FindAllTest (
         noInst => noInst);
      
      
      if noInst =  20 then
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objAO                           ",
            Test_Number        => Local_Test,
            Test_Value         => 0);
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objAO                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => noInst);
         
      end if;
      
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => setToDel);
         
         Root_Object.Find_and_Sets.objA.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA >= 100 then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => setToDel);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Delete_Instance : Root_Object.Object_Access;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => setToDel);
         
         while (Temp_Entry /= null) loop
            Delete_Instance := Temp_Entry.Item;
            Root_Object.Find_and_Sets.objA.Delete (
               Old_Instance => Delete_Instance);
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => setToDel);
            
         end loop;
         
      end;
      
      -- -------------------------------------------------------------------------
      --  Test 13 - find-all, inclusive expressions,
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0541               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "inclusive and conditions        ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-1210               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0124               ");
      
      
      Has_Failed := False;
      
      
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
            
            if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA >  1 and then
                  Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA <  4 then
               
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
      
      countof_set_A := Root_Object.Object_List.Count_Of(setA);
      
      
      if countof_set_A =  2 then
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFM                           ",
            Test_Number        => Local_Test,
            Test_Value         => countof_set_A);
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => countof_set_A);
         
      end if;
      
      
      --  End Test 9
      -- -------------------------------------------------------------------------
      --  Local_Test 10 - find-all, inclusive expressions,
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0541               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "inclusive or conditions         ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-1210               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0124               ");
      
      
      Has_Failed := False;
      
      
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
            
            if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA >  1 or else
                  Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA <  4 then
               
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
      
      countof_set_A := Root_Object.Object_List.Count_Of(setA);
      
      
      if countof_set_A =  10 then
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFM                           ",
            Test_Number        => Local_Test,
            Test_Value         => countof_set_A);
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => countof_set_A);
         
      end if;
      
      
      --  End Test 10
      -- -------------------------------------------------------------------------
      --  Local_Test 11 - find-all, exclusive expressions, no instances returned 
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0541               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "exclusive and conditions        ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-1210               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0124               ");
      
      
      Has_Failed := False;
      
      
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
            
            if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA >  4 and then
                  Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA <  2 then
               
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
      
      countof_set_A := Root_Object.Object_List.Count_Of(setA);
      
      
      if countof_set_A =  0 then
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFM                           ",
            Test_Number        => Local_Test,
            Test_Value         => countof_set_A);
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => countof_set_A);
         
      end if;
      
      
      --  End Test 11
      -- -------------------------------------------------------------------------
      --  Local_Test 12 - find-all, ordered conditions
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0541               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "ordered conditions              ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-1210               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0124               ");
      
      
      Has_Failed := False;
      
      
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
            
            if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA =  2 or else
                  Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA >  4 then
               
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
      
      countof_set_A := Root_Object.Object_List.Count_Of(setA);
      
      
      if countof_set_A =  7 then
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFM                           ",
            Test_Number        => Local_Test,
            Test_Value         => countof_set_A);
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => countof_set_A);
         
      end if;
      
      
      --  End Test 12
      -- -------------------------------------------------------------------------
      --  Local_Test 13 - Check that there is no limit on the number of instances
      --                  a set variable can hold.
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1241-0000-01-0125               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "ordered conditions              ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0119               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0122               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0126               ");
      
      Find_and_Sets_RPT5_Test_Text_Bridge.Find_and_Sets_RPT5_Test_Text (
         Test_Number => Local_Test,
         Free_Text   => "More instances than ever require");
      
      
      --  Create LOTS of instances of Object_B
      
      Cnt := 1000000;
      
      loop
         
         NewInstB := Root_Object.Find_and_Sets.objB.Create;
         Root_Object.Find_and_Sets.objB.Find_and_Sets_objB_Type(NewInstB.all).idB := Cnt;
         
         Cnt := Cnt + 1;
         
         exit when Cnt =  2000000;
      end loop;
      
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => setOfNewInstB);
         
         Root_Object.Find_and_Sets.objB.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Find_and_Sets.objB.Find_and_Sets_objB_Type(Temp_Entry.Item.all).idB >= 1000000 then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => setOfNewInstB);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      NoInSet := Root_Object.Object_List.Count_Of(setOfNewInstB);
      
      
      if NoInSet =  1000000 then
         
         Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
            Test_Object_Domain => "objFM                           ",
            Test_Number        => Local_Test,
            Test_Value         => NoInSet);
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => NoInSet);
         
      end if;
      
      
      --  End Test 13
      -- -------------------------------------------------------------------------
      --  Local_Test 14 - Create LOTS more instance for a couple of other objetcs
      --                  and make sure that all instances can be found.
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1241-0000-01-0125               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "ordered conditions              ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0119               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0122               ");
      
      Find_and_Sets_RPT8_Specify_Requid_Bridge.Find_and_Sets_RPT8_Specify_Requid (
         Requid_Test_Number => Local_Test,
         The_Requid_Itself  => "1241-0000-01-0126               ");
      
      Find_and_Sets_RPT5_Test_Text_Bridge.Find_and_Sets_RPT5_Test_Text (
         Test_Number => Local_Test,
         Free_Text   => "More instances than ever require");
      
      
      --  Create LOTS of instances of Object_A
      
      Cnt := 0;
      
      loop
         
         NewInstA := Root_Object.Find_and_Sets.objA.Create;
         Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(NewInstA.all).IntegerA        := Cnt;
         Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(NewInstA.all).idA             := 100;
         
         Cnt := Cnt + 1;
         exit when Cnt =  100000;
      end loop;
      
      
      --  Create LOTS of instances of Object_E
      Cnt := 0;
      
      loop
         
         NewInstE := Root_Object.Find_and_Sets.objE.Create;
         Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(NewInstE.all).IntegerA        := Cnt;
         Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(NewInstE.all).idE             := 100;
         
         Cnt := Cnt + 1;
         
         exit when Cnt =  100000;
      end loop;
      
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => setOfNewInstB);
         
         Root_Object.Find_and_Sets.objB.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Find_and_Sets.objB.Find_and_Sets_objB_Type(Temp_Entry.Item.all).idB >= 1000000 then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => setOfNewInstB);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => setOfNewInstA);
         
         Root_Object.Find_and_Sets.objA.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Find_and_Sets.objA.Find_and_Sets_objA_Type(Temp_Entry.Item.all).idA =  100 then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => setOfNewInstA);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => setOfNewInstE);
         
         Root_Object.Find_and_Sets.objE.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Find_and_Sets.objE.Find_and_Sets_objE_Type(Temp_Entry.Item.all).idE =  100 then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => setOfNewInstE);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      NoInSetA := Root_Object.Object_List.Count_Of(setOfNewInstA);
      NoInSetB := Root_Object.Object_List.Count_Of(setOfNewInstB);
      NoInSetE := Root_Object.Object_List.Count_Of(setOfNewInstE);
      
      
      if NoInSetA =  100000 then
         
         if NoInSetB =  1000000 then
            
            if NoInSetE =  100000 then
               
               Find_and_Sets_RPT2_Test_Passed_Bridge.Find_and_Sets_RPT2_Test_Passed (
                  Test_Object_Domain => "objFM                           ",
                  Test_Number        => Local_Test,
                  Test_Value         => NoInSetE);
               
            else
               Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
                  Failed_Domain_Object => "objFM                           ",
                  Failed_Test_Number   => Local_Test,
                  Failed_Test_Value    => NoInSetE);
               
            end if;
            
         else
            Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
               Failed_Domain_Object => "objFM                           ",
               Failed_Test_Number   => Local_Test,
               Failed_Test_Value    => NoInSetB);
            
         end if;
         
      else
         Find_and_Sets_RPT3_Test_Failed_Bridge.Find_and_Sets_RPT3_Test_Failed (
            Failed_Domain_Object => "objFM                           ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => NoInSetA);
         
      end if;
      
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Delete_Instance : Root_Object.Object_Access;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => setOfNewInstB);
         
         while (Temp_Entry /= null) loop
            Delete_Instance := Temp_Entry.Item;
            Root_Object.Find_and_Sets.objB.Delete (
               Old_Instance => Delete_Instance);
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => setOfNewInstB);
            
         end loop;
         
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Delete_Instance : Root_Object.Object_Access;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => setOfNewInstA);
         
         while (Temp_Entry /= null) loop
            Delete_Instance := Temp_Entry.Item;
            Root_Object.Find_and_Sets.objA.Delete (
               Old_Instance => Delete_Instance);
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => setOfNewInstA);
            
         end loop;
         
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Delete_Instance : Root_Object.Object_Access;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => setOfNewInstE);
         
         while (Temp_Entry /= null) loop
            Delete_Instance := Temp_Entry.Item;
            Root_Object.Find_and_Sets.objE.Delete (
               Old_Instance => Delete_Instance);
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => setOfNewInstE);
            
         end loop;
         
      end;
      
      --  End Test 14
      -- -------------------------------------------------------------------------
      --  Local_Test 15 - find
      -- -------------------------------------------------------------------------
      
      Find_and_Sets_Find_and_Sets1_Increment_Service.Find_and_Sets_Find_and_Sets1_Increment (
         Incremental => Local_Test,
         Incremented => Local_Test);
      
      Find_and_Sets_RPT1_Start_Test_Bridge.Find_and_Sets_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1103-0000-01-0542               ",
         Invoking_Domain => "Find and Sets                   ",
         Invoking_Object => "objFM                           ",
         Purpose         => "Find without where              ");
      
      Find_and_Sets_RPT5_Test_Text_Bridge.Find_and_Sets_RPT5_Test_Text (
         Test_Number => Local_Test,
         Free_Text   => "Find without Where is unsupporte");
      
      Find_and_Sets_RPT4_Test_Unsupported_Bridge.Find_and_Sets_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Local_Test);
      
      
      --  End Test 14
      -- -------------------------------------------------------------------------
      
      Returned_Number := Local_Test;
      
      
      -- -------------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (setOfNewInstE);
      Root_Object.Object_List.Destroy_List (setOfNewInstA);
      Root_Object.Object_List.Destroy_List (setOfNewInstB);
      Root_Object.Object_List.Destroy_List (setToDel);
      Root_Object.Object_List.Destroy_List (setAO);
      Root_Object.Object_List.Destroy_List (setAC);
      Root_Object.Object_List.Destroy_List (setAB);
      Root_Object.Object_List.Destroy_List (setAA);
      Root_Object.Object_List.Destroy_List (setA);
      Root_Object.Object_List.Destroy_List (setB);
      
   end Find_and_Sets_objFM1_do_find_many;
   
end Find_and_Sets_objFM1_do_find_many_Service;

--
-- End of file Find_and_Sets_objFM1_do_find_many_Service.adb
--
