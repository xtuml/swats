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
--* File Name:               SBONE4_Append_IH_To_Struct_Service.adb
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
--* Domain Name              : Structure_Bridge_One
--* Domain Key Letter        : SBONE
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.SBONE.VSD;

-- List of domain types used
with SBONE_Domain_Types;
with SBONE_Domain_Types.Ops;
use type SBONE_Domain_Types.IH_Struct;


with Root_Object;
use type Root_Object.Object_Access;


package body SBONE_SBONE4_Append_IH_To_Struct_Service is
   
   procedure SBONE_SBONE4_Append_IH_To_Struct (
      The_IH           : in     Root_Object.Object_Access;
      Returning_Struct :    out SBONE_Domain_Types.IH_Struct) is
      
   begin
   -- start of SBONE4_Append_IH_To_Struct
      --
      -- start of append members to structure
      SBONE_Domain_Types.Ops.Append (
         A_The_VSD_IH   => The_IH, 
         To_Structure   => Returning_Struct);
      -- end of append members to structure
      --
      
      
   end SBONE_SBONE4_Append_IH_To_Struct;
   
end SBONE_SBONE4_Append_IH_To_Struct_Service;

--
-- End of file SBONE_SBONE4_Append_IH_To_Struct_Service.adb
--
