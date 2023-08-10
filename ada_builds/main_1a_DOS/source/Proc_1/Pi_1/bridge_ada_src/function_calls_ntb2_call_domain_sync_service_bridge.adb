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
--* File Name:               Function_Calls_NTB2_Call_Domain_Sync_Service_Bridge.adb
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
--*  Project Key Letter : Main_Build_Set
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of services used
with Function_Calls_Function_Calls9_Add_Values_From_Bridge_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_NTB2_Call_Domain_Sync_Service_Bridge is
   
   procedure Function_Calls_NTB2_Call_Domain_Sync_Service (
      Test        : in     Application_Types.Base_Integer_Type;
      InputValue1 : in     Application_Types.Base_Integer_Type;
      InputValue2 : in     Application_Types.Base_Integer_Type;
      InputValue3 : in     Application_Types.Base_Integer_Type) is
      
   begin
   -- start of NTB2_Call_Domain_Sync_Service
      
      Function_Calls_Function_Calls9_Add_Values_From_Bridge_Service.Function_Calls_Function_Calls9_Add_Values_From_Bridge (
         Test   => Test,
         Input1 => InputValue1,
         Input2 => InputValue2,
         Input3 => InputValue3);
      
      
   end Function_Calls_NTB2_Call_Domain_Sync_Service;
   
end Function_Calls_NTB2_Call_Domain_Sync_Service_Bridge;

--
-- End of file Function_Calls_NTB2_Call_Domain_Sync_Service_Bridge.adb
--
