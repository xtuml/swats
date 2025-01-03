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
--* File Name:               DomainA_termA2_Sync2A_Bridge.adb
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
--*  Project Key Letter : Main_BSet
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
with DomainB_DomainB2_Sync2B_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainA_termA2_Sync2A_Bridge is
   
   procedure DomainA_termA2_Sync2A (
      inputA  : in     Application_Types.Base_Integer_Type;
      inputB  : in     Application_Types.Base_Integer_Type;
      Test    : in     Application_Types.Base_Integer_Type;
      outputA :    out Application_Types.Base_Integer_Type;
      outputB :    out Application_Types.Base_Integer_Type) is
      
      returnA : Application_Types.Base_Integer_Type := 1;
      returnB : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of termA2_Sync2A
--
-- DomainB start _____________________________________________v--DomainB--v_______________________________________________________start DomainB
      
      DomainB_DomainB2_Sync2B_Service.DomainB_DomainB2_Sync2B (
         inputA  => inputA,
         inputB  => inputB,
         Test    => Test,
         outputA => returnA,
         outputB => returnB);
      
      outputA := returnA;
      outputB := returnB;
      
-- DomainB end   _____________________________________________^--DomainB--^_______________________________________________________end   DomainB
--

      
   end DomainA_termA2_Sync2A;
   
end DomainA_termA2_Sync2A_Bridge;

--
-- End of file DomainA_termA2_Sync2A_Bridge.adb
--
