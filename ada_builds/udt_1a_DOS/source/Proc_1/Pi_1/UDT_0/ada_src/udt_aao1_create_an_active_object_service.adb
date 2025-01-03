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
--* File Name:               UDT_AAO1_Create_An_Active_Object_Service.adb
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

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Active_Object_Status_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_AAO1_Create_An_Active_Object_Service is
   
   procedure UDT_AAO1_Create_An_Active_Object (
      This_Test   : in     Application_Types.Base_Integer_Type;
      Returned_IH :    out Root_Object.Object_Access) is
      
      
   begin
   -- start of AAO1_Create_An_Active_Object
      
      Returned_IH := Root_Object.UDT.AAO.Create;
      Root_Object.UDT.AAO.UDT_AAO_Type(Returned_IH.all).The_Test_Number     := This_Test;
      Root_Object.UDT.AAO.UDT_AAO_Type(Returned_IH.all).Why         := UDT_Domain_Types.Not_Tested;
      Root_Object.UDT.AAO.UDT_AAO_Type(Returned_IH.all).Current_State   := Root_Object.UDT.AAO.Idle;
      
      
   end UDT_AAO1_Create_An_Active_Object;
   
end UDT_AAO1_Create_An_Active_Object_Service;

--
-- End of file UDT_AAO1_Create_An_Active_Object_Service.adb
--
