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
--* File Name:               Creation_Deletion_objCS_3.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies that instance creation within
--*                           a creation state is successful.
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
with Root_Object.Creation_Deletion.objCS;

-- List of bridges used
with Creation_Deletion_RPT3_Test_Failed_Bridge;
with Creation_Deletion_RPT2_Test_Passed_Bridge;
with Creation_Deletion_RPT5_Test_Text_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Creation_Deletion.objCS)
   
   procedure Creation_Deletion_objCS_3 (Test          : in     Application_Types.Base_Integer_Type;
                                        This_Instance : in out Root_Object.Object_Access) is
   
      
      an_instanceCS : Root_Object.Object_Access;
      
      Fault_Flag : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- -------------------------------------------------------------------------
      -- Verify instance creation
      -- -------------------------------------------------------------------------
      -- Set the fault flag, set to TRUE if a fault has been identified
      Fault_Flag := False;
      
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "Verify instance creation        ");
      
      
      -- Check that the instance that was created
      an_instanceCS := Root_Object.Creation_Deletion.objCS.Conditional_Find_One;
      while (an_instanceCS /= null) and then (not (Root_Object.Creation_Deletion.objCS.Creation_Deletion_objCS_Type(an_instanceCS.all).ReferenceCS =  Test) ) loop
         
         an_instanceCS := an_instanceCS.Next_Object;
      end loop;
      
      
      if an_instanceCS =  Null then
         Fault_Flag := True;
         
      else
         
         Root_Object.Creation_Deletion.objCS.Creation_Deletion_objCS_type(This_Instance.all).ResultCS := Test;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      -- Test complete
      
      if Fault_Flag =  False then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "objCS                           ",
            Test_Number        => Test,
            Test_Value         => 0);
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Creation_Deletion.objCS.Creation_Deletion_objCS5'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Creation_Deletion.objCS.objCS5,
               Target_Instance  => This_Instance);
            
            Root_Object.Creation_Deletion.objCS.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "objCS                           ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Creation_Deletion.objCS.Creation_Deletion_objCS3'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Creation_Deletion.objCS.objCS3,
               Target_Instance  => This_Instance);
            
            Root_Object.Creation_Deletion.objCS.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      
      -- -------------------------------------------------------------------------
      Root_Object.Creation_Deletion.objCS.Process_Queue;
   end Creation_Deletion_objCS_3;
   
--
-- End of file Creation_Deletion_objCS_3.ada
--
