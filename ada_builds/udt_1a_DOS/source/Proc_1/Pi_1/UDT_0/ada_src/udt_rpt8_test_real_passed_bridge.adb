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
--* File Name:               UDT_RPT8_Test_Real_Passed_Bridge.adb
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

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_RPT8_Test_Real_Passed_Bridge is
   
   procedure UDT_RPT8_Test_Real_Passed (
      Passed_Domain      : in     Application_Types.Base_Text_Type;
      Passed_Test_Number : in     Application_Types.Base_Integer_Type;
      Test_Result        : in     Application_Types.Base_Float_Type) is
      
      the_val : Application_Types.Base_Float_Type := 1.0;
      
      the_test : Application_Types.Base_Integer_Type := 1;
      
      the_domain : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of RPT8_Test_Real_Passed
      the_test   := Passed_Test_Number;
      the_val    := Test_Result;
      the_domain := Passed_Domain;
      
      
   end UDT_RPT8_Test_Real_Passed;
   
end UDT_RPT8_Test_Real_Passed_Bridge;

--
-- End of file UDT_RPT8_Test_Real_Passed_Bridge.adb
--
