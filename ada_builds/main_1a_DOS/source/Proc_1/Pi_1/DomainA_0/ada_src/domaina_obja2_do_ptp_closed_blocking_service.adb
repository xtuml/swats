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
--* File Name:               DomainA_objA2_do_ptp_closed_blocking_Service.adb
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
--* Domain Name              : DomainA
--* Domain Key Letter        : DomainA
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.DomainA.objA;

-- List of bridges used
with DomainA_RPT4_Test_Unsupported_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainA_objA2_do_ptp_closed_blocking_Service is
   
   procedure DomainA_objA2_do_ptp_closed_blocking is
      
      newA : Root_Object.Object_Access;
      
      a_real : Application_Types.Base_Float_Type := 1.0;
      
      an_int : Application_Types.Base_Integer_Type := 1;
      Test   : Application_Types.Base_Integer_Type := 1;
      
      a_text : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of objA2_do_ptp_closed_blocking
      
      --  create an instance to use for the test
      newA := Root_Object.DomainA.objA.Create_Unique;
      Root_Object.DomainA.objA.DomainA_objA_Type(newA.all).ResultA := 0;
      
      an_int := 1;
      a_real := 2.0;
      a_text := "three                           ";
      
      
      -- [a_status] = APTP2:Aptp_close_blocking_service[an_int,a_real,a_text] on newA
      --  Not supported by SWA.
      
      Test := 8;
      
      
      -- if a_status = 10 then
      --   [] = RPTR1:REPORT_RESULT["DomainA","objA",Test,"do_ptp_closed_blocking","PASSED",a_status]
      -- else
      --   [] = RPTR1:REPORT_RESULT["DomainA","objA",Test,"do_ptp_closed_blocking","FAILED",a_status]
      -- endif
      -- [] = RPTR1:REPORT_RESULT["DomainA","objA",Test,"do_ptp_closed_blocking","Unsupported",-1]
      
      DomainA_RPT4_Test_Unsupported_Bridge.DomainA_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      
   end DomainA_objA2_do_ptp_closed_blocking;
   
end DomainA_objA2_do_ptp_closed_blocking_Service;

--
-- End of file DomainA_objA2_do_ptp_closed_blocking_Service.adb
--
