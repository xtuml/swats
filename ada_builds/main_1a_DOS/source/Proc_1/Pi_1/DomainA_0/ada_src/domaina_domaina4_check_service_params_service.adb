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
--* File Name:               DomainA4_Check_Service_Params_Service.adb
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

-- List of bridges used
with DomainA_NAV10_Pass_Parameters_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainA_DomainA4_Check_Service_Params_Service is
   
   procedure DomainA_DomainA4_Check_Service_Params (
      Int_Input         : in     Application_Types.Base_Integer_Type;
      Real_Input        : in     Application_Types.Base_Float_Type;
      Text_Input        : in     Application_Types.Base_Text_Type;
      Bool_Input        : in     Boolean;
      The_Returning_Val :    out Application_Types.Base_Integer_Type) is
      
   begin
   -- start of DomainA4_Check_Service_Params
      
      DomainA_NAV10_Pass_Parameters_Bridge.DomainA_NAV10_Pass_Parameters (
         The_Int_Input  => Int_Input,
         The_Real_Input => Real_Input,
         The_Text_Input => Text_Input,
         The_Bool_Input => Bool_Input,
         The_Result     => The_Returning_Val);
      
      
   end DomainA_DomainA4_Check_Service_Params;
   
end DomainA_DomainA4_Check_Service_Params_Service;

--
-- End of file DomainA_DomainA4_Check_Service_Params_Service.adb
--
