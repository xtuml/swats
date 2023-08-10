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
--* File Name:               RP_UNSUPPORTED1_Not_Done_It_Yet_Service.adb
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
with Root_Object.RP.UNSUPPORTED;

-- List of relationships used
with RP_rel_R3;

-- List of services used
with RP_RP7_Report_Run_Time_Error_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_UNSUPPORTED1_Not_Done_It_Yet_Service is
   
   procedure RP_UNSUPPORTED1_Not_Done_It_Yet (
      Invoker_Domain_IH : in     Root_Object.Object_Access) is
      
      The_Unsupported_Instance : Root_Object.Object_Access;
      
      local_increment : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of UNSUPPORTED1_Not_Done_It_Yet
      
      RP_Rel_R3.Navigate (
         From  => Invoker_Domain_IH,
         Class => Root_Object.RP.UNSUPPORTED.RP_UNSUPPORTED_type'tag,
         To    => The_Unsupported_Instance);
      
      
      if The_Unsupported_Instance /= Null then
         local_increment := Root_Object.RP.UNSUPPORTED.RP_UNSUPPORTED_type(The_Unsupported_Instance.all).Unsupported_Counter;
         local_increment := local_increment + 1;
         
         
         Root_Object.RP.UNSUPPORTED.RP_UNSUPPORTED_type(The_Unsupported_Instance.all).Unsupported_Counter := local_increment;
         
      else
         
         RP_RP7_Report_Run_Time_Error_Service.RP_RP7_Report_Run_Time_Error (
            Detail => "Can not find an unsupported inst");
         
      end if;
      
      
   end RP_UNSUPPORTED1_Not_Done_It_Yet;
   
end RP_UNSUPPORTED1_Not_Done_It_Yet_Service;

--
-- End of file RP_UNSUPPORTED1_Not_Done_It_Yet_Service.adb
--
