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
--* File Name:               Function_Calls_Scenario2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Start Function Calls Tests
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
with Root_Object.Function_Calls.TD;

-- List of services used
with Function_Calls_Function_Calls2_Create_Report_Data_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Function_Calls_Scenario2 is
   
      
      my_test : Root_Object.Object_Access;
      
   begin
      
      my_test := Root_Object.Function_Calls.TD.Create;
      Root_Object.Function_Calls.TD.Function_Calls_TD_Type(my_test.all).td_id           := 1;
      Root_Object.Function_Calls.TD.Function_Calls_TD_Type(my_test.all).The_Test_Number := 1;
      
      
      Function_Calls_Function_Calls2_Create_Report_Data_Service.Function_Calls_Function_Calls2_Create_Report_Data;
      
   end Function_Calls_Scenario2;
   
--
-- End of file Function_Calls_Scenario2.ada
--
