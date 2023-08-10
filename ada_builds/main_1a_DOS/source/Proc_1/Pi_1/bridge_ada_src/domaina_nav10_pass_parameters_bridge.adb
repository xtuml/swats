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
--* File Name:               DomainA_NAV10_Pass_Parameters_Bridge.adb
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
with DomainB_DomainB8_Service_Params_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainA_NAV10_Pass_Parameters_Bridge is
   
   procedure DomainA_NAV10_Pass_Parameters (
      The_Int_Input  : in     Application_Types.Base_Integer_Type;
      The_Real_Input : in     Application_Types.Base_Float_Type;
      The_Text_Input : in     Application_Types.Base_Text_Type;
      The_Bool_Input : in     Boolean;
      The_Result     :    out Application_Types.Base_Integer_Type) is
      
   begin
   -- start of NAV10_Pass_Parameters
--
-- DomainB start _____________________________________________v--DomainB--v_______________________________________________________start DomainB
      
      DomainB_DomainB8_Service_Params_Service.DomainB_DomainB8_Service_Params (
         Input_Int      => The_Int_Input,
         Input_Real     => The_Real_Input,
         Input_Text     => The_Text_Input,
         Input_Bool     => The_Bool_Input,
         The_Return_Val => The_Result);
      
-- DomainB end   _____________________________________________^--DomainB--^_______________________________________________________end   DomainB
--

      
   end DomainA_NAV10_Pass_Parameters;
   
end DomainA_NAV10_Pass_Parameters_Bridge;

--
-- End of file DomainA_NAV10_Pass_Parameters_Bridge.adb
--
