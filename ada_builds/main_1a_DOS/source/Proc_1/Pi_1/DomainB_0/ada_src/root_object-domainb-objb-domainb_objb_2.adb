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
--* File Name:               DomainB_objB_2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies that it is possible for a synchronous
--*                           service in DomainA to invoke an event into DomainB.
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
--* Domain Name              : DomainB
--* Domain Key Letter        : DomainB
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.DomainB.TD;

-- List of services used
with DomainB_DomainB6_Delete_Report_Data_Service;

-- List of bridges used
with DomainB_RPT3_Test_Failed_Bridge;
with DomainB_RPT2_Test_Passed_Bridge;
with DomainB_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.DomainB.objB)
   
   procedure DomainB_objB_2 (paramA        : in     Application_Types.Base_Integer_Type;
                             paramB        : in     Application_Types.Base_Integer_Type;
                             Test          : in     Application_Types.Base_Integer_Type;
                             This_Instance : in out Root_Object.Object_Access) is
   
      
      my_test : Root_Object.Object_Access;
      
      Local_Test : Application_Types.Base_Integer_Type := 1;
      
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- -------------------------------------------------------------------------
      --  Synchronous service in DomainA invokes an event in DomainB
      -- -------------------------------------------------------------------------
      my_test := Root_Object.DomainB.TD.Unconditional_Find_One;
      Local_Test := Root_Object.DomainB.TD.DomainB_TD_type(my_test.all).This_Test_Number;
      
      --  Initialise the fault flag
      has_failed := False;
      
      DomainB_RPT1_Start_Test_Bridge.DomainB_RPT1_Start_Test (
         Test_Number     => Local_Test,
         Requid          => "1241-0000-01-1110               ",
         Invoking_Domain => "DomainB                         ",
         Invoking_Object => "objB                            ",
         Purpose         => "Rx sync call from domainA       ");
      
      
      -- -------------------------------------------------------------------------
      --  Check the event parameters
      -- -------------------------------------------------------------------------
      
      if (paramA /= 3) or else
         (paramB /= 4) then
         has_failed := True;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test complete 
      -- -------------------------------------------------------------------------
      
      if has_failed =  False then
         
         --  Indicate that the test was successful and complete
         
         Root_Object.DomainB.objB.DomainB_objB_type(This_Instance.all).ResultB := 20;
         
         
         DomainB_RPT2_Test_Passed_Bridge.DomainB_RPT2_Test_Passed (
            Test_Object_Domain => "objB                            ",
            Test_Number        => Local_Test,
            Test_Value         => Root_Object.DomainB.objB.DomainB_objB_type(This_Instance.all).ResultB);
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.DomainB.objB.DomainB_objB3'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.DomainB.objB.objB3,
               Target_Instance  => This_Instance);
            
            Root_Object.DomainB.objB.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         --  Indicate that the test failed
         
         DomainB_RPT3_Test_Failed_Bridge.DomainB_RPT3_Test_Failed (
            Failed_Domain_Object => "objB                            ",
            Failed_Test_Number   => Local_Test,
            Failed_Test_Value    => paramA);
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.DomainB.objB.DomainB_objB2'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.DomainB.objB.objB2,
               Target_Instance  => This_Instance);
            
            Root_Object.DomainB.objB.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      
      -- -------------------------------------------------------------------------
      
      Local_Test := Local_Test + 1;
      
      
      Root_Object.DomainB.TD.DomainB_TD_type(my_test.all).This_Test_Number := Local_Test;
      
      
      --  Bit of a hack, but this is the last test to be popped off the queue, so
      --  tell the report domain that it's all over.
      
      DomainB_DomainB6_Delete_Report_Data_Service.DomainB_DomainB6_Delete_Report_Data;
      
      Root_Object.DomainB.objB.Process_Queue;
   end DomainB_objB_2;
   
--
-- End of file DomainB_objB_2.ada
--
