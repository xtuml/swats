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
--* File Name:               SBONE_ITGWO1_Across_The_Great_Divide_Bridge.ads
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

with Application_Types;


package SBONE_ITGWO1_Across_The_Great_Divide_Bridge is
   
   
   procedure SBONE_ITGWO1_Across_The_Great_Divide (
      Test                  : in     Application_Types.Base_Integer_Type;
      A_Structure_To_Send   : in out SBONE_Domain_Types.Source_Structure_Type;
      Control_Integer       : in     Application_Types.Base_Integer_Type;
      Control_Real          : in     Application_Types.Base_Float_Type;
      Control_String        : in     Application_Types.Base_Text_Type;
      Control_Enum          : in     SBONE_Domain_Types.Colour_Type;
      Control_Boolean       : in     Boolean;
      Elements_In_Structure : in     Application_Types.Base_Integer_Type;
      Result                :    out Boolean;
      A_Structure_To_Return :    out SBONE_Domain_Types.Source_Structure_Type);
   
end SBONE_ITGWO1_Across_The_Great_Divide_Bridge;

--
-- End of file SBONE_ITGWO1_Across_The_Great_Divide_Bridge.ads
--
