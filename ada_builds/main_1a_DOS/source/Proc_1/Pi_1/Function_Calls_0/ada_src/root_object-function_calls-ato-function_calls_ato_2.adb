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
--* File Name:               Function_Calls_ATO_2.ada
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
--* Domain Name              : Function_Calls
--* Domain Key Letter        : Function_Calls
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with Function_Calls_RPT2_Test_Passed_Bridge;
with Function_Calls_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Function_Calls.ATO)
   
   procedure Function_Calls_ATO_2 (Termination_Required : in     Boolean;
                                   This_Instance        : in out Root_Object.Object_Access) is
   
      
   begin
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Root_Object.Function_Calls.ATO.Function_Calls_ATO_type(This_Instance.all).Start_Value,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Function_Calls                  ",
         Invoking_Object => "A Tight Object                  ",
         Purpose         => "Generate to active object       ");
      
      
      if Termination_Required =  True then
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Function_Calls.ATO.Function_Calls_ATO2'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Function_Calls.ATO.ATO2,
               Target_Instance  => This_Instance);
            
            Root_Object.Function_Calls.ATO.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "A tight object none terminated  ",
            Test_Number        => Root_Object.Function_Calls.ATO.Function_Calls_ATO_type(This_Instance.all).Start_Value,
            Test_Value         => 0);
         
      end if;
      
      Root_Object.Function_Calls.ATO.Process_Queue;
   end Function_Calls_ATO_2;
   
--
-- End of file Function_Calls_ATO_2.ada
--
