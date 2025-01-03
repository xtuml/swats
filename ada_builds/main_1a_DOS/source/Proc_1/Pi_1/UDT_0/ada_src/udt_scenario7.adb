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
--* File Name:               UDT_Scenario7.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Events_UDT_Scenario
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
--* Domain Name              : User_Defined_Types
--* Domain Key Letter        : UDT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.UDT.AAO;
with Root_Object.UDT.FTD;

-- List of bridges used
with UDT_BTF4_Local_Bridge_Bridge;

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Active_Object_Status_Type;
use type UDT_Domain_Types.Simple_Enumeration_Type;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure UDT_Scenario7 is
   
      
      my_test     : Root_Object.Object_Access;
      this_object : Root_Object.Object_Access;
      
      This_Test_Number : Application_Types.Base_Integer_Type := 1;
      
   begin
      my_test := Root_Object.UDT.FTD.Unconditional_Find_One;
      This_Test_Number := Root_Object.UDT.FTD.UDT_FTD_type(my_test.all).Final_Test_Number;
      
      -- --------------------------------------------------------------------------
      --  Test 1
      -- --------------------------------------------------------------------------
      
      this_object := Root_Object.UDT.AAO.Create;
      Root_Object.UDT.AAO.UDT_AAO_Type(this_object.all).The_Test_Number := This_Test_Number;
      Root_Object.UDT.AAO.UDT_AAO_Type(this_object.all).Why             := UDT_Domain_Types.Not_Tested;
      Root_Object.UDT.AAO.UDT_AAO_Type(this_object.all).Current_State   := Root_Object.UDT.AAO.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.UDT.AAO.UDT_AAO1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.UDT.AAO.AAO1,
            Target_Instance  => this_object,
            Enum_Parameter   => UDT_Domain_Types.One);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      UDT_BTF4_Local_Bridge_Bridge.UDT_BTF4_Local_Bridge (
         This_Test        => This_Test_Number);
      
      This_Test_Number := This_Test_Number + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      
      Root_Object.UDT.FTD.UDT_FTD_type(my_test.all).Final_Test_Number := This_Test_Number;
      
   end UDT_Scenario7;
   
--
-- End of file UDT_Scenario7.ada
--
