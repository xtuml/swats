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
--* File Name:               Function_Calls_NTB3_Call_Object_Sync_Service_Bridge.adb
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
with Function_Calls_OBJONE1_Get_From_Bridge_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_NTB3_Call_Object_Sync_Service_Bridge is
   
   procedure Function_Calls_NTB3_Call_Object_Sync_Service (
      Test        : in     Application_Types.Base_Integer_Type;
      Text_Input  : in     Application_Types.Base_Text_Type;
      The_Integer : in     Application_Types.Base_Integer_Type;
      The_Real    : in     Application_Types.Base_Float_Type) is
      
   begin
   -- start of NTB3_Call_Object_Sync_Service
      
      Function_Calls_OBJONE1_Get_From_Bridge_Service.Function_Calls_OBJONE1_Get_From_Bridge (
         Test          => Test,
         Text_Input    => Text_Input,
         Integer_Input => The_Integer,
         Real_Input    => The_Real);
      
      
   end Function_Calls_NTB3_Call_Object_Sync_Service;
   
end Function_Calls_NTB3_Call_Object_Sync_Service_Bridge;

--
-- End of file Function_Calls_NTB3_Call_Object_Sync_Service_Bridge.adb
--
