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
--* File Name:               SBONE_ITGWO4_The_IH_Struct_Across_Bridge_Bridge.ads
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

-- List of domain types used
with SBONE_Domain_Types;
with SBONE_Domain_Types.Ops;

with Root_Object;


package SBONE_ITGWO4_The_IH_Struct_Across_Bridge_Bridge is
   
   
   procedure SBONE_ITGWO4_The_IH_Struct_Across_Bridge (
      The_IHA           : in     Root_Object.Object_Access;
      The_IHB           : in     Root_Object.Object_Access;
      The_IHC           : in     Root_Object.Object_Access;
      Decomposed_Struct :    out SBONE_Domain_Types.VSD_Struct);
   
end SBONE_ITGWO4_The_IH_Struct_Across_Bridge_Bridge;

--
-- End of file SBONE_ITGWO4_The_IH_Struct_Across_Bridge_Bridge.ads
--
