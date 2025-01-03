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
--* File Name:               RP_FAIL1_You_Goofed_Boy_Service.adb
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
--* Domain Name              : Report
--* Domain Key Letter        : RP
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.RP.DD;
with Root_Object.RP.FAIL;

-- List of relationships used
with RP_rel_R2;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_FAIL1_You_Goofed_Boy_Service is
   
   procedure RP_FAIL1_You_Goofed_Boy (
      Invoker_Domain_IH : in     Root_Object.Object_Access) is
      
      The_Failed_Instance : Root_Object.Object_Access;
      
      local_increment : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of FAIL1_You_Goofed_Boy
      
      RP_Rel_R2.Navigate (
         From  => Invoker_Domain_IH,
         Class => Root_Object.RP.FAIL.RP_FAIL_type'tag,
         To    => The_Failed_Instance);
      
      
      if The_Failed_Instance /= Null then
         local_increment := Root_Object.RP.FAIL.RP_FAIL_type(The_Failed_Instance.all).Failed_Counter;
         local_increment := local_increment + 1;
         
         
         Root_Object.RP.FAIL.RP_FAIL_type(The_Failed_Instance.all).Failed_Counter := local_increment;
         
      else
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "Can not find a failed instance a");
         
      end if;
      
      
   end RP_FAIL1_You_Goofed_Boy;
   
end RP_FAIL1_You_Goofed_Boy_Service;

--
-- End of file RP_FAIL1_You_Goofed_Boy_Service.adb
--