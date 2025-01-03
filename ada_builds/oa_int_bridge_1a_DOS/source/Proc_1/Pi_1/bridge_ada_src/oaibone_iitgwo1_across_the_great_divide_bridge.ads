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
--* File Name:               OAIBONE_IITGWO1_Across_The_Great_Divide_bridge.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Specification for the interfaces bridge
--* Comments:                Header written by header.macro                           *
--*                           
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
--* -----------------                                                                 *
--*                                                                                   *
--*  Project Key Letter : TSV2
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--*                                                                                   *
--*  Interface Type: Internal
--*  
--*  
--*  Application_Control built with support for Internal interfaces
--*  
--*************************************************************************************
--*  COMPONENTS CONTAINED WITHIN THIS FILE                                            *
--*  package <dkl>_<tkl><service_number>_<operation_name>_Bridge
--*     <dkl>_<tkl><service_number>_<operation_name>
--*
--*************************************************************************************

-- List of domain types used
with Application_Types;
use type Application_Types.Base_Integer_Type;

with OAIBONE_Domain_Types;
use type OAIBONE_Domain_Types.Source_Structure_Type;

with Application_Types;
use type Application_Types.Base_Float_Type;

with Application_Types;
use type Application_Types.Base_Text_Type;

with OAIBONE_Domain_Types;
use type OAIBONE_Domain_Types.Colour_Type;

package OAIBONE_IITGWO1_Across_The_Great_Divide_Bridge is

   procedure OAIBONE_IITGWO1_Across_The_Great_Divide
   (
      Test: in Application_Types.Base_Integer_Type;
      A_Structure_To_Send: in OAIBONE_Domain_Types.Source_Structure_Type;
      Control_Integer: in Application_Types.Base_Integer_Type;
      Control_Real: in Application_Types.Base_Float_Type;
      Control_String: in Application_Types.Base_Text_Type;
      Control_Enum: in OAIBONE_Domain_Types.Colour_Type;
      Control_Boolean: in Boolean;
      Elements_In_Structure: in Application_Types.Base_Integer_Type;
      Result: out Boolean;
      A_Structure_To_Return: out OAIBONE_Domain_Types.Source_Structure_Type
   );

end OAIBONE_IITGWO1_Across_The_Great_Divide_Bridge;
