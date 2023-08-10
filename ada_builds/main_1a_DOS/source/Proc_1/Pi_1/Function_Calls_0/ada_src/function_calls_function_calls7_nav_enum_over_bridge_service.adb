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
--* File Name:               Function_Calls7_Nav_Enum_Over_Bridge_Service.adb
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

-- List of domain types used
with Function_Calls_Domain_Types;
use type Function_Calls_Domain_Types.Return_Enum_Type;
use type Function_Calls_Domain_Types.New_Enum_Type;


with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_Function_Calls7_Nav_Enum_Over_Bridge_Service is
   
   procedure Function_Calls_Function_Calls7_Nav_Enum_Over_Bridge (
      The_Input_Value  : in     Function_Calls_Domain_Types.New_Enum_Type;
      The_Return_Value :    out Function_Calls_Domain_Types.Return_Enum_Type) is
      
   begin
   -- start of Function_Calls7_Nav_Enum_Over_Bridge
      
      case The_Input_Value is
         when Function_Calls_Domain_Types.Sly =>
            The_Return_Value := Function_Calls_Domain_Types.Slys_Mum;
         
         when Function_Calls_Domain_Types.Sandy =>
            The_Return_Value := Function_Calls_Domain_Types.Sandys_Mum;
         
         when Function_Calls_Domain_Types.Wes =>
            The_Return_Value := Function_Calls_Domain_Types.Wes_Mum;
         
         when others =>
            The_Return_Value := Function_Calls_Domain_Types.Nobodys_Mum;
            
         
      end case;
      
      
   end Function_Calls_Function_Calls7_Nav_Enum_Over_Bridge;
   
end Function_Calls_Function_Calls7_Nav_Enum_Over_Bridge_Service;

--
-- End of file Function_Calls_Function_Calls7_Nav_Enum_Over_Bridge_Service.adb
--
