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
--* File Name:               Creation_Deletion_Scenario1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Perform Creation Deletion Tests
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
with Root_Object.Creation_Deletion.objTS;
with Root_Object.Creation_Deletion.objB;
with Root_Object.Creation_Deletion.objA;

-- List of services used
with Creation_Deletion_dr1_Test_the_Doctors_Mettle_Service;
with Creation_Deletion_coloured2_Regression_Tests_Service;
with Creation_Deletion_coloured1_Colourize_It_Service;
with Creation_Deletion_objD2_do_multiple_deletion_tests_Service;
with Creation_Deletion_objD1_do_deletion_tests_Service;
with Creation_Deletion_objC1_do_create_unique_mult_Service;
with Creation_Deletion_objB1_do_sync_create_unique_Service;
with Creation_Deletion_objA1_do_sync_create_Service;

-- List of bridges used
with Creation_Deletion_RPT4_Test_Unsupported_Bridge;
with Creation_Deletion_RPT5_Test_Text_Bridge;
with Creation_Deletion_RPT3_Test_Failed_Bridge;
with Creation_Deletion_RPT2_Test_Passed_Bridge;
with Creation_Deletion_RPT1_Start_Test_Bridge;

-- List of domain types used
with Creation_Deletion_Domain_Types;
use type Creation_Deletion_Domain_Types.Base_Colour;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Creation_Deletion_Scenario1 is
   
      
      testObjA : Root_Object.Object_Access;
      testObjB : Root_Object.Object_Access;
      newTS    : Root_Object.Object_Access;
      
      Test                 : Application_Types.Base_Integer_Type := 1;
      Returned_Test_Number : Application_Types.Base_Integer_Type := 1;
      
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------------------------------
      --  This scenario is basically the externals 1..8 incorporated in one scenario. This is done 
      --  as externals are not supported by the current SWA.
      -- --------------------------------------------------------------------------------------------
      --  Create all objects to be used in these tests.
      Test := 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0123               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Create instances in scenario    ");
      
      
      testObjA := Root_Object.Creation_Deletion.objA.Create;
      Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_Type(testObjA.all).ReferenceA := 0;
      Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_Type(testObjA.all).IntegerA   := 1;
      Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_Type(testObjA.all).TextA      := "Test                            ";
      Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_Type(testObjA.all).BooleanA   := True;
      Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_Type(testObjA.all).ColourA    := Creation_Deletion_Domain_Types.Red;
      
      testObjB := Root_Object.Creation_Deletion.objB.Create_Unique;
      Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_Type(testObjB.all).IntegerA := 100;
      
      
      if Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_type(testObjA.all).ReferenceA =  0 then
         
         if Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_type(testObjA.all).IntegerA =  1 then
            
            if Root_Object.Creation_Deletion.objB.Creation_Deletion_objB_type(testObjB.all).IntegerA =  100 then
               
               if Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_type(testObjA.all).TextA =  "Test                            " then
                  
                  if Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_type(testObjA.all).BooleanA =  True then
                     
                     if Root_Object.Creation_Deletion.objA.Creation_Deletion_objA_type(testObjA.all).ColourA =  Creation_Deletion_Domain_Types.Red then
                        
                        Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
                           Test_Object_Domain => "Instance in scenario            ",
                           Test_Number        => Test,
                           Test_Value         => 0);
                        
                     else
                        Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                           Failed_Domain_Object => "Instance in scenario            ",
                           Failed_Test_Number   => Test,
                           Failed_Test_Value    => -10);
                        
                     end if;
                     
                  else
                     Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                        Failed_Domain_Object => "Instance in scenario            ",
                        Failed_Test_Number   => Test,
                        Failed_Test_Value    => -20);
                     
                  end if;
                  
               else
                  Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                     Failed_Domain_Object => "Instance in scenario            ",
                     Failed_Test_Number   => Test,
                     Failed_Test_Value    => -30);
                  
               end if;
               
            else
               Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                  Failed_Domain_Object => "Instance in scenario            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -40);
               
            end if;
            
         else
            Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
               Failed_Domain_Object => "Instance in scenario            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -50);
            
         end if;
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Instance in scenario            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -60);
         
      end if;
      
      
      --  delete the two newly created instances
      
      Root_Object.Creation_Deletion.objA.Delete (
         Old_Instance => testObjA);
      
      Root_Object.Creation_Deletion.objB.Delete (
         Old_Instance => testObjB);
      
      -- --------------------------------------------------------------------------------------------
      --  Create all objects to be used in these tests.
      
      Test                 := 2;
      Returned_Test_Number := 2;
      
      
      Creation_Deletion_objA1_do_sync_create_Service.Creation_Deletion_objA1_do_sync_create (
         Test_Number          => Test,
         Returned_Test_Number => Returned_Test_Number);
      
      
      Test := Returned_Test_Number + 1;
      
      Creation_Deletion_objB1_do_sync_create_unique_Service.Creation_Deletion_objB1_do_sync_create_unique (
         Test_Number          => Test,
         Returned_Test_Number => Returned_Test_Number);
      
      Test := Returned_Test_Number + 1;
      
      Creation_Deletion_objC1_do_create_unique_mult_Service.Creation_Deletion_objC1_do_create_unique_mult (
         Test_Number          => Test,
         Returned_Test_Number => Returned_Test_Number);
      
      
      -- --------------------------------------------------------------------------------------------
      --  Creation State tests.
      --  These shall prove that a queue is handled in a correct manner.
      --  This event should be placed on the queue, and the subsequent generation from within 
      --  this object placed directly afterwards.
      --  The second test in the sequence should prove that this has happened as it should start 
      --  after the first has reported pass/fail.
      -- --------------------------------------------------------------------------------------------
      Test := Returned_Test_Number + 1;
      
      
      --  Creation Events are unsupported in WACA.
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0203               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "objCS                           ",
         Purpose         => "Generate Creation events        ");
      
      Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "Creation States are unsopported ");
      
      
      --  Start the test
      --  generate objCS1:StartA(Test)
      --  Find out how many tests are performed in objCS1:StartA
      
      Creation_Deletion_RPT4_Test_Unsupported_Bridge.Creation_Deletion_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
      --  Test = Test + 1
      --  Start the test
      --  generate objCS1:StartA(Test)
      -- --------------------------------------------------------------------------------------------
      
      Test                 := Test + 1;
      Returned_Test_Number := 0;
      
      --  Perform deletion tests
      
      Creation_Deletion_objD1_do_deletion_tests_Service.Creation_Deletion_objD1_do_deletion_tests (
         Test_Number          => Test,
         Returned_Test_Number => Returned_Test_Number);
      
      
      -- --------------------------------------------------------------------------------------------
      Test                 := Returned_Test_Number + 1;
      Returned_Test_Number := 0;
      
      --  Perform multiple deletion tests, ie. delete more than one instance at a time
      
      Creation_Deletion_objD2_do_multiple_deletion_tests_Service.Creation_Deletion_objD2_do_multiple_deletion_tests (
         Test_Number          => Test,
         Returned_Test_Number => Returned_Test_Number);
      
      
      -- --------------------------------------------------------------------------------------------
      --  Start termination state tests
      -- --------------------------------------------------------------------------------------------
      Test                 := Returned_Test_Number + 1;
      Returned_Test_Number := 0;
      has_failed           := False;
      
      
      --  Create an instance to delete
      
      newTS := Root_Object.Creation_Deletion.objTS.Create;
      Root_Object.Creation_Deletion.objTS.Creation_Deletion_objTS_Type(newTS.all).ReferenceTS   := Test;
      Root_Object.Creation_Deletion.objTS.Creation_Deletion_objTS_Type(newTS.all).Current_State := Root_Object.Creation_Deletion.objTS.Idle;
      
      
      --  Start test
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Creation_Deletion.objTS.Creation_Deletion_objTS3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Creation_Deletion.objTS.objTS3,
            Target_Instance  => newTS);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test := Test + 1;
      
      -- --------------------------------------------------------------------------------------------
      --  Create an instance to delete
      
      newTS := Root_Object.Creation_Deletion.objTS.Create;
      Root_Object.Creation_Deletion.objTS.Creation_Deletion_objTS_Type(newTS.all).ReferenceTS   := Test;
      Root_Object.Creation_Deletion.objTS.Creation_Deletion_objTS_Type(newTS.all).Current_State := Root_Object.Creation_Deletion.objTS.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Creation_Deletion.objTS.Creation_Deletion_objTS3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Creation_Deletion.objTS.objTS3,
            Target_Instance  => newTS);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------------------------------
      --  Perform further creation tests, specifying attributes then attempt to delete the many to 
      --  many relationship with associated object 
      -- --------------------------------------------------------------------------------------------
      
      Returned_Test_Number := 0;
      
      Creation_Deletion_coloured1_Colourize_It_Service.Creation_Deletion_coloured1_Colourize_It (
         Test_Number      => Test,
         Returned_Number  => Returned_Test_Number);
      
      
      -- --------------------------------------------------------------------------------------------
      --  Perform regression tests to clarify a discrepancy between find-all returning instance 
      --  handle set and a navigate to a set of instance handles.
      -- --------------------------------------------------------------------------------------------
      Test                 := Returned_Test_Number;
      Returned_Test_Number := 0;
      
      Creation_Deletion_coloured2_Regression_Tests_Service.Creation_Deletion_coloured2_Regression_Tests (
         Test_Number          => Test,
         Returned_Test_Number => Returned_Test_Number);
      
      
      -- --------------------------------------------------------------------------------------------
      --  Perform further creation tests, using Dr.Who, several enemies and the odd battle or two
      --  as meaningful objects.
      -- --------------------------------------------------------------------------------------------
      Test                 := Returned_Test_Number;
      Returned_Test_Number := 0;
      
      
      Creation_Deletion_dr1_Test_the_Doctors_Mettle_Service.Creation_Deletion_dr1_Test_the_Doctors_Mettle (
         Test_Number          => Test,
         Returned_Test_Number => Returned_Test_Number);
      
      
      -- --------------------------------------------------------------------------------------------
   end Creation_Deletion_Scenario1;
   
--
-- End of file Creation_Deletion_Scenario1.ada
--
