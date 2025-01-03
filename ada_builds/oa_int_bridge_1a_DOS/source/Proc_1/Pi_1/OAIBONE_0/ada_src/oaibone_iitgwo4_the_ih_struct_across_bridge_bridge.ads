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
--* File Name:               OAIBONE_IITGWO4_The_IH_Struct_Across_Bridge_Bridge.ads
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
--* Domain Name              : Open_Architecture_Internal_Bridge_Domain_One
--* Domain Key Letter        : OAIBONE
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of domain types used
with OAIBONE_Domain_Types;
with OAIBONE_Domain_Types.Ops;

with Root_Object;


package OAIBONE_IITGWO4_The_IH_Struct_Across_Bridge_Bridge is
   
   
   procedure OAIBONE_IITGWO4_The_IH_Struct_Across_Bridge (
      The_IHA           : in     Root_Object.Object_Access;
      The_IHB           : in     Root_Object.Object_Access;
      The_IHC           : in     Root_Object.Object_Access;
      Decomposed_Struct :    out OAIBONE_Domain_Types.VSD_Struct);
   
end OAIBONE_IITGWO4_The_IH_Struct_Across_Bridge_Bridge;

--
-- End of file OAIBONE_IITGWO4_The_IH_Struct_Across_Bridge_Bridge.ads
--
