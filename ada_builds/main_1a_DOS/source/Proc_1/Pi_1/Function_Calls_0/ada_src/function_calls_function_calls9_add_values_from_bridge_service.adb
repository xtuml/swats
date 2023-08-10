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
--* File Name:               Function_Calls9_Add_Values_From_Bridge_Service.adb
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

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_Function_Calls9_Add_Values_From_Bridge_Service is
   
   procedure Function_Calls_Function_Calls9_Add_Values_From_Bridge (
      Test   : in     Application_Types.Base_Integer_Type;
      Input1 : in     Application_Types.Base_Integer_Type;
      Input2 : in     Application_Types.Base_Integer_Type;
      Input3 : in     Application_Types.Base_Integer_Type) is
      
      The_Total : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of Function_Calls9_Add_Values_From_Bridge
      The_Total := Input1 + Input2 + Input3;
      
      
      if The_Total =  6 then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Domain sync called from bridge  ",
            Test_Number        => Test,
            Test_Value         => The_Total);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Domain sync called from bridge  ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => The_Total);
         
      end if;
      
      
   end Function_Calls_Function_Calls9_Add_Values_From_Bridge;
   
end Function_Calls_Function_Calls9_Add_Values_From_Bridge_Service;

--
-- End of file Function_Calls_Function_Calls9_Add_Values_From_Bridge_Service.adb
--
