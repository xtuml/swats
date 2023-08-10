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
--* File Name:               UDT9_Create_A_Timer_Enumeration_Service.adb
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
--* Domain Name              : User_Defined_Types
--* Domain Key Letter        : UDT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_UDT9_Create_A_Timer_Enumeration_Service is
   
   procedure UDT_UDT9_Create_A_Timer_Enumeration (
      The_Timer_Enum   : in     Application_Types.Time_Unit;
      The_Return_Value :    out Application_Types.Base_Integer_Type) is
      
   begin
   -- start of UDT9_Create_A_Timer_Enumeration
      The_Return_Value := -1;
      
      if The_Timer_Enum =  Application_Types.MILLISECOND then
         The_Return_Value := 1;
      end if;
      
      
      if The_Timer_Enum =  Application_Types.SECOND then
         The_Return_Value := 2;
         
      end if;
      
      
   end UDT_UDT9_Create_A_Timer_Enumeration;
   
end UDT_UDT9_Create_A_Timer_Enumeration_Service;

--
-- End of file UDT_UDT9_Create_A_Timer_Enumeration_Service.adb
--
