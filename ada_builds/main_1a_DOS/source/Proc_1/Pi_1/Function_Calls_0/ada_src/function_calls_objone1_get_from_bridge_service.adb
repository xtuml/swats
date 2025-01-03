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
--* File Name:               Function_Calls_OBJONE1_Get_From_Bridge_Service.adb
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
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_OBJONE1_Get_From_Bridge_Service is
   
   procedure Function_Calls_OBJONE1_Get_From_Bridge (
      Test          : in     Application_Types.Base_Integer_Type;
      Text_Input    : in     Application_Types.Base_Text_Type;
      Integer_Input : in     Application_Types.Base_Integer_Type;
      Real_Input    : in     Application_Types.Base_Float_Type) is
      
   begin
   -- start of OBJONE1_Get_From_Bridge
      
      if Text_Input =  "From Bridge                     " then
         
         if Integer_Input =  100 then
            
            if Real_Input =  99.9 then
               
               Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
                  Test_Object_Domain => "Object Sync from bridge         ",
                  Test_Number        => Test,
                  Test_Value         => 0);
               
            else
               Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
                  Failed_Domain_Object => "Object Sync from bridge         ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -10);
               
            end if;
            
         else
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "Object Sync from bridge         ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Object Sync from bridge         ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -30);
         
      end if;
      
      
   end Function_Calls_OBJONE1_Get_From_Bridge;
   
end Function_Calls_OBJONE1_Get_From_Bridge_Service;

--
-- End of file Function_Calls_OBJONE1_Get_From_Bridge_Service.adb
--
