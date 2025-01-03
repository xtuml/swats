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
--* File Name:               DomainA_objA_5.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies a synchronous service in DomainA
--*                           can invoke a synchronous service in DomainB and
--*                           pass/receive parameters.
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
--* Domain Name              : DomainA
--* Domain Key Letter        : DomainA
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with DomainA_RPT3_Test_Failed_Bridge;
with DomainA_RPT2_Test_Passed_Bridge;
with DomainA_termA1_Sync1A_Bridge;
with DomainA_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.DomainA.objA)
   
   procedure DomainA_objA_5 (Test          : in     Application_Types.Base_Integer_Type;
                             This_Instance : in out Root_Object.Object_Access) is
   
      
      inputA  : Application_Types.Base_Integer_Type := 1;
      inputB  : Application_Types.Base_Integer_Type := 1;
      outputA : Application_Types.Base_Integer_Type := 1;
      outputB : Application_Types.Base_Integer_Type := 1;
      
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- -------------------------------------------------------------------------
      --  Synchronous service invocation to synchronous service
      -- -------------------------------------------------------------------------
      
      DomainA_RPT1_Start_Test_Bridge.DomainA_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1110               ",
         Invoking_Domain => "Domain_A                        ",
         Invoking_Object => "objA                            ",
         Purpose         => "sync to sync invocation         ");
      
      
      -- Initialise the fault flag
      has_failed := False;
      
      
      -- -------------------------------------------------------------------------
      --  Invoke the DomainA synchronous service
      -- -------------------------------------------------------------------------
      
      inputA := 1;
      inputB := 2;
      
      
      DomainA_termA1_Sync1A_Bridge.DomainA_termA1_Sync1A (
         inputA  => inputA,
         inputB  => inputB,
         Test    => Test,
         outputA => outputA,
         outputB => outputB);
      
      
      -- Check that the results are correct
      
      if (outputA /= 3) or else
         (outputB /= 4) then
         
         has_failed := True;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test complete
      -- -------------------------------------------------------------------------
      
      if has_failed =  False then
         
         -- Indicate that the test was successful and complete
         
         Root_Object.DomainA.objA.DomainA_objA_type(This_Instance.all).ResultA := 10;
         
         
         DomainA_RPT2_Test_Passed_Bridge.DomainA_RPT2_Test_Passed (
            Test_Object_Domain => "objA                            ",
            Test_Number        => Test,
            Test_Value         => Root_Object.DomainA.objA.DomainA_objA_type(This_Instance.all).ResultA);
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.DomainA.objA.DomainA_objA2'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.DomainA.objA.objA2,
               Target_Instance  => This_Instance);
            
            Root_Object.DomainA.objA.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         -- Indicate that the test failed
         
         DomainA_RPT3_Test_Failed_Bridge.DomainA_RPT3_Test_Failed (
            Failed_Domain_Object => "objA                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.DomainA.objA.DomainA_objA1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.DomainA.objA.objA1,
               Target_Instance  => This_Instance);
            
            Root_Object.DomainA.objA.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      
      -- -------------------------------------------------------------------------
      Root_Object.DomainA.objA.Process_Queue;
   end DomainA_objA_5;
   
--
-- End of file DomainA_objA_5.ada
--
