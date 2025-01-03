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
--* File Name:               DomainA_termA3_Sync3A_Bridge.adb
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
with DomainB_DomainB3_Sync3B_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainA_termA3_Sync3A_Bridge is
   
   procedure DomainA_termA3_Sync3A (
      InputA  : in     Application_Types.Base_Integer_Type;
      InputB  : in     Application_Types.Base_Integer_Type;
      Test    : in     Application_Types.Base_Integer_Type;
      OutputA :    out Application_Types.Base_Integer_Type;
      OutputB :    out Application_Types.Base_Integer_Type) is
      
      ReturnA : Application_Types.Base_Integer_Type := 1;
      ReturnB : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of termA3_Sync3A
--
-- DomainB start _____________________________________________v--DomainB--v_______________________________________________________start DomainB
      
      DomainB_DomainB3_Sync3B_Service.DomainB_DomainB3_Sync3B (
         inputA  => InputA,
         inputB  => InputB,
         Test    => Test,
         outputA => ReturnA,
         outputB => ReturnB);
      
      OutputA := ReturnA;
      OutputB := ReturnB;
      
-- DomainB end   _____________________________________________^--DomainB--^_______________________________________________________end   DomainB
--

      
   end DomainA_termA3_Sync3A;
   
end DomainA_termA3_Sync3A_Bridge;

--
-- End of file DomainA_termA3_Sync3A_Bridge.adb
--
