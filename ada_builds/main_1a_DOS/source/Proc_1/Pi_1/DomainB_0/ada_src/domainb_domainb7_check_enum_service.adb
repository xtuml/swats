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
--* File Name:               DomainB7_Check_Enum_Service.adb
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
--* Domain Name              : DomainB
--* Domain Key Letter        : DomainB
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of domain types used
with DomainB_Domain_Types;
use type DomainB_Domain_Types.Test_Enum_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainB_DomainB7_Check_Enum_Service is
   
   procedure DomainB_DomainB7_Check_Enum (
      The_Input_Value  : in     DomainB_Domain_Types.Test_Enum_Type;
      The_Return_Value :    out Application_Types.Base_Integer_Type) is
      
   begin
   -- start of DomainB7_Check_Enum
      
      case The_Input_Value is
         when DomainB_Domain_Types.Sly =>
            The_Return_Value := 21;
         
         when DomainB_Domain_Types.Sandy =>
            The_Return_Value := 22;
         
         when DomainB_Domain_Types.Wes =>
            The_Return_Value := 23;
         
         when others =>
            The_Return_Value := -21;
            
         
      end case;
      
      
   end DomainB_DomainB7_Check_Enum;
   
end DomainB_DomainB7_Check_Enum_Service;

--
-- End of file DomainB_DomainB7_Check_Enum_Service.adb
--
