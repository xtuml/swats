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
--* File Name:               RP6_Create_New_Domain_Test_Service.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This service shall create a unique object for reporting a test pass or fail
--*                          .
--*                           It shall report its' own unique identifer to the invoking domain, returned
--*                           via the bridge. This is so that the reporting domain can specify which obj
--*                          ect to report into. There can be more than one object in existance at any o
--*                          ne time. THis is due to the way the event queue is asynchronous, and servic
--*                          e invocations are sysnchronous.
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

with Application_Types;


package RP_RP6_Create_New_Domain_Test_Service is
   
   
   procedure RP_RP6_Create_New_Domain_Test (
      Invoker_Domain_Name      : in     Application_Types.Base_Text_Type;
      Domain_Unique_Identifier :    out Application_Types.Base_Integer_Type);
   
end RP_RP6_Create_New_Domain_Test_Service;

--
-- End of file RP_RP6_Create_New_Domain_Test_Service.ads
--
