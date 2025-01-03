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
--* File Name:               OAIBONE_IITGWO1_Across_The_Great_Divide_bridge.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Body for the interfaces bridge
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
--*  package body <dkl>_<tkl><service_number>_<operation_name>_Bridge
--*     <dkl>_<tkl><service_number>_<operation_name>
--*
--*************************************************************************************






-- List of services used
with OAIBTWO_IITGWO1_Across_The_Great_Divide_Service;

-- List of domain types used
with Application_Types;
with OAIBONE_Domain_Types;
with OAIBTWO_Domain_Types;
use type Application_Types.Base_Integer_Type;
use type OAIBONE_Domain_Types.Source_Structure_Type;
use type OAIBTWO_Domain_Types.Source_Structure_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type OAIBONE_Domain_Types.Colour_Type;
use type OAIBTWO_Domain_Types.Colour_Type;

with Unchecked_Conversion;
with Root_Object;
use type Root_Object.Object_Access;

package body OAIBONE_IITGWO1_Across_The_Great_Divide_Bridge is

   function OAIBONE_Source_Structure_Type_To_OAIBTWO_Source_Structure_Type is
      new Unchecked_Conversion (OAIBONE_Domain_Types.Source_Structure_Type, OAIBTWO_Domain_Types.Source_Structure_Type);
   function OAIBTWO_Source_Structure_Type_To_OAIBONE_Source_Structure_Type is
      new Unchecked_Conversion (OAIBTWO_Domain_Types.Source_Structure_Type, OAIBONE_Domain_Types.Source_Structure_Type);
   function OAIBONE_Colour_Type_To_OAIBTWO_Colour_Type is
      new Unchecked_Conversion (OAIBONE_Domain_Types.Colour_Type, OAIBTWO_Domain_Types.Colour_Type);

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
   ) is

      My_Temp_A_Structure_To_Send: OAIBTWO_Domain_Types.Source_Structure_Type;
      My_Temp_Control_Enum: OAIBTWO_Domain_Types.Colour_Type;
      My_Temp_A_Structure_To_Return: OAIBTWO_Domain_Types.Source_Structure_Type;

   begin
      My_Temp_A_Structure_To_Send := OAIBONE_Source_Structure_Type_To_OAIBTWO_Source_Structure_Type(A_Structure_To_Send);
      My_Temp_Control_Enum := OAIBONE_Colour_Type_To_OAIBTWO_Colour_Type(Control_Enum);
      OAIBTWO_IITGWO1_Across_The_Great_Divide_Service.OAIBTWO_IITGWO1_Across_The_Great_Divide
      (
         Test,
         My_Temp_A_Structure_To_Send,
         Control_Integer,
         Control_Real,
         Control_String,
         My_Temp_Control_Enum,
         Control_Boolean,
         Elements_In_Structure,
         Result,
         My_Temp_A_Structure_To_Return
      );

      A_Structure_To_Return := OAIBTWO_Source_Structure_Type_To_OAIBONE_Source_Structure_Type(My_Temp_A_Structure_To_Return);

   end OAIBONE_IITGWO1_Across_The_Great_Divide;

end OAIBONE_IITGWO1_Across_The_Great_Divide_Bridge;

