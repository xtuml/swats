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
--* File Name:               Events_objA_1.ada
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
--* Domain Name              : Events
--* Domain Key Letter        : Events
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of services used
with Events_objVERPOL1_verify_polymorphic_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objA)
   
   procedure Events_objA_1 (Test_Number   : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
   begin
      
      -- -----------------------------------------------------------
      --  in this state check that all the events have been processed 
      --  and then verify the result
      -- -----------------------------------------------------------     
      
      if Root_Object.Events.objA.Events_objA_type(This_Instance.all).ResultA /= 0 then
         
         Events_objVERPOL1_verify_polymorphic_Service.Events_objVERPOL1_verify_polymorphic (
            Object         => "Object A                        ",
            Test_Reference => Root_Object.Events.objA.Events_objA_type(This_Instance.all).ReferenceA,
            Test_Number    => Test_Number);
         
         
         --    [] = objVERPOL1:verify_polymorphic[ "Object A", this.latest_test, Test_Number]
      end if;
      
      Root_Object.Events.objA.Process_Queue;
   end Events_objA_1;
   
--
-- End of file Events_objA_1.ada
--
