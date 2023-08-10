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
--* File Name:               Function_Calls4_Perform_Service_In_Tight_Loop_Service.adb
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

-- List of objects used
with Root_Object.Function_Calls.ATO;

-- List of bridges used
with Function_Calls_RPT8_Specify_Requid_Bridge;
with Function_Calls_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_Function_Calls4_Perform_Service_In_Tight_Loop_Service is
   
   procedure Function_Calls_Function_Calls4_Perform_Service_In_Tight_Loop (
      A_Tight_Input_Parameter  : in     Root_Object.Object_Access;
      This_Test_Number         : in     Application_Types.Base_Integer_Type;
      Testing_For_What         : in     Application_Types.Base_Text_Type;
      A_Tight_Return_Parameter :    out Application_Types.Base_Integer_Type) is
      
   begin
   -- start of Function_Calls4_Perform_Service_In_Tight_Loop
      
      --  ---------------------------------------------------------------------------
      --  Start the test here, produce the pass/fail back in the scenario.
      --  ---------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1241-0000-01-0805               ",
         Invoking_Domain => "Function_Calls                  ",
         Invoking_Object => "Perform Services in tight loop  ",
         Purpose         => Testing_For_What);
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => This_Test_Number,
         The_Requid_Itself  => "1241-0000-01-1215               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => This_Test_Number,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      
      if A_Tight_Input_Parameter =  Null then
         A_Tight_Return_Parameter := -1;
      else
         A_Tight_Return_Parameter := Root_Object.Function_Calls.ATO.Function_Calls_ATO_type(A_Tight_Input_Parameter.all).Start_Value + 
         Root_Object.Function_Calls.ATO.Function_Calls_ATO_type(A_Tight_Input_Parameter.all).Increment_Value;
         
      end if;
      
      
   end Function_Calls_Function_Calls4_Perform_Service_In_Tight_Loop;
   
end Function_Calls_Function_Calls4_Perform_Service_In_Tight_Loop_Service;

--
-- End of file Function_Calls_Function_Calls4_Perform_Service_In_Tight_Loop_Service.adb
--
