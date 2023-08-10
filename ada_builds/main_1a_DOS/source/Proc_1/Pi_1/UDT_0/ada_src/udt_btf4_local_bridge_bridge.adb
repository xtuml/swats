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
--* File Name:               UDT_BTF4_Local_Bridge_Bridge.adb
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

-- List of objects used
with Root_Object.UDT.AAO;

-- List of services used
with UDT_UDT8_Create_An_Active_Object_Service;

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Simple_Enumeration_Type;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_BTF4_Local_Bridge_Bridge is
   
   procedure UDT_BTF4_Local_Bridge (
      This_Test : in     Application_Types.Base_Integer_Type) is
      
      Second_Active_Object : Root_Object.Object_Access;
      
   begin
   -- start of BTF4_Local_Bridge
      
      UDT_UDT8_Create_An_Active_Object_Service.UDT_UDT8_Create_An_Active_Object (
         This_Test   => This_Test,
         Returned_IH => Second_Active_Object);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.UDT.AAO.UDT_AAO1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.UDT.AAO.AAO1,
            Target_Instance  => Second_Active_Object,
            Enum_Parameter   => UDT_Domain_Types.One);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
   end UDT_BTF4_Local_Bridge;
   
end UDT_BTF4_Local_Bridge_Bridge;

--
-- End of file UDT_BTF4_Local_Bridge_Bridge.adb
--
