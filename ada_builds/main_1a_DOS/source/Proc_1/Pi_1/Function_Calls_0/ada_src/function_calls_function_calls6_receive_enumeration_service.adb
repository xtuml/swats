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
--* File Name:               Function_Calls6_Receive_Enumeration_Service.adb
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
with Function_Calls_RPT3_Test_Failed_Bridge;
with Function_Calls_RPT2_Test_Passed_Bridge;
with Function_Calls_RPT8_Specify_Requid_Bridge;
with Function_Calls_RPT1_Start_Test_Bridge;

-- List of domain types used
with Function_Calls_Domain_Types;
use type Function_Calls_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_Function_Calls6_Receive_Enumeration_Service is
   
   procedure Function_Calls_Function_Calls6_Receive_Enumeration (
      Test_Number : in     Application_Types.Base_Integer_Type;
      The_Colour  : in     Function_Calls_Domain_Types.Colour_Type;
      Testing_For : in     Application_Types.Base_Text_Type) is
      
      Target_Colour : Function_Calls_Domain_Types.Colour_Type               := Function_Calls_Domain_Types.Colour_Type_first;
      
   begin
   -- start of Function_Calls6_Receive_Enumeration
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1241-0000-01-0804               ",
         Invoking_Domain => "Function Calls                  ",
         Invoking_Object => "Receive enumeration             ",
         Purpose         => Testing_For);
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test_Number,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Target_Colour := Function_Calls_Domain_Types.Red;
      
      if The_Colour =  Target_Colour then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => Testing_For,
            Test_Number        => Test_Number,
            Test_Value         => 0);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => Testing_For,
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => -1);
         
      end if;
      
      
   end Function_Calls_Function_Calls6_Receive_Enumeration;
   
end Function_Calls_Function_Calls6_Receive_Enumeration_Service;

--
-- End of file Function_Calls_Function_Calls6_Receive_Enumeration_Service.adb
--
