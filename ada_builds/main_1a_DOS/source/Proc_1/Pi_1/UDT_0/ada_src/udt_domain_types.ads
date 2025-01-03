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
--* File Name:               UDT_domain_types.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          UDT Domain Data Types Package Specification
--* Comments:                Header written by header.macro                           *
--*                           
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*  This archetype provides the specification for user defined types,  
--*  and enumeration types for this domain
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
--*  
--*  
--*  
--*  
--*  
--*************************************************************************************
--*  COMPONENTS CONTAINED WITHIN THIS FILE                                            *
--*  package specification UDT_Domain_Types 
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--    jmm     13/03/00        008932/9SR056     Add tests and definitions for structures and sets of structures.
--
--    jmm     05/07/00        PILOT_0000_0381   Rework structures as controlled types.
--
--    jmm     05/07/00        PILOT_0000_0446   Remove dummy procedure Number_Of_Navigates and replace by pragma 
--                                              Elaborate_Body in package spec.
--
--    jmm     03/10/00        PILOT_0000_0600   Changes for issue 3.0.0 in accordance with ATN_037_03_01.
--
--    db      04/07/01        PILOT_0000_0231   Rename package filename to match package definition.
--
--    db      17/07/01        PILOT_0000_1052   Add Root_Object to 'with list' to allow IH types as 
--                                              components of structures.
--
--    db      29/08/01        PILOT_0000_0230   Remove use clause
--
--    db      15/03/02        SRLE100002863     Conditionally generate call to pragma elaborate body 
--                                              only if Structures exist in this domain.
--
--    db      02/04/02        SRLE100003005     Tidy up enumeration declaration
--
--    db      03/04/02        SRLE100002929     Rename Enumeration_And_Structure_Count
--
--    db      03/04/02        SRLE100002910     Enumeration counter added for regression testing
--
--    db      12/04/02        SRLE100001553     Default values corrected
--
--    db      07/05/02        SRLE100001027     Conditionally generated
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
-- **************************************************************************************

with Application_Types;
with Ada.Unchecked_Conversion;
with Root_Object;

package UDT_Domain_Types is
   subtype Minimum_To_Maximum_Of_Real is Application_Types.Base_Float_Type 
      range Application_Types.Base_Float_Type(-32768.0) .. Application_Types.Base_Float_Type(32767.0);

   Minimum_To_Maximum_Of_Real_First : constant Minimum_To_Maximum_Of_Real := Minimum_To_Maximum_Of_Real'first;

   subtype Minimum_To_Minus_One_Of_Real is Application_Types.Base_Float_Type 
      range Application_Types.Base_Float_Type(-32768.0) .. Application_Types.Base_Float_Type(-1.0);

   Minimum_To_Minus_One_Of_Real_First : constant Minimum_To_Minus_One_Of_Real := Minimum_To_Minus_One_Of_Real'first;

   subtype One_To_Maximum_Of_Real is Application_Types.Base_Float_Type 
      range Application_Types.Base_Float_Type(1.0) .. Application_Types.Base_Float_Type(32767.0);

   One_To_Maximum_Of_Real_First : constant One_To_Maximum_Of_Real := One_To_Maximum_Of_Real'first;

   subtype Subset_Zero_Of_Real is Application_Types.Base_Float_Type 
      range Application_Types.Base_Float_Type(-10.0) .. Application_Types.Base_Float_Type(10.0);

   Subset_Zero_Of_Real_First : constant Subset_Zero_Of_Real := Subset_Zero_Of_Real'first;

   subtype Subset_Minus_1_Of_Real is Application_Types.Base_Float_Type 
      range Application_Types.Base_Float_Type(-10.0) .. Application_Types.Base_Float_Type(-1.0);

   Subset_Minus_1_Of_Real_First : constant Subset_Minus_1_Of_Real := Subset_Minus_1_Of_Real'first;

   subtype Subset_1_Of_Real is Application_Types.Base_Float_Type 
      range Application_Types.Base_Float_Type(1.0) .. Application_Types.Base_Float_Type(10.0);

   Subset_1_Of_Real_First : constant Subset_1_Of_Real := Subset_1_Of_Real'first;

   subtype Minimum_To_Maximum_Integer is Application_Types.Base_Integer_Type 
      range Application_Types.Base_Integer_Type(-32768) .. Application_Types.Base_Integer_Type(32767);

   Minimum_To_Maximum_Integer_First : constant Minimum_To_Maximum_Integer := Minimum_To_Maximum_Integer'first;

   subtype Minimum_To_Minus_One_Integer is Application_Types.Base_Integer_Type 
      range Application_Types.Base_Integer_Type(-32768) .. Application_Types.Base_Integer_Type(-1);

   Minimum_To_Minus_One_Integer_First : constant Minimum_To_Minus_One_Integer := Minimum_To_Minus_One_Integer'first;

   subtype Subset_Minus_1_Of_Integer is Application_Types.Base_Integer_Type 
      range Application_Types.Base_Integer_Type(-10) .. Application_Types.Base_Integer_Type(-1);

   Subset_Minus_1_Of_Integer_First : constant Subset_Minus_1_Of_Integer := Subset_Minus_1_Of_Integer'first;

   subtype Subset_1_Of_Integer is Application_Types.Base_Integer_Type 
      range Application_Types.Base_Integer_Type(1) .. Application_Types.Base_Integer_Type(10);

   Subset_1_Of_Integer_First : constant Subset_1_Of_Integer := Subset_1_Of_Integer'first;

   subtype One_To_Maximum_Integer is Application_Types.Base_Integer_Type 
      range Application_Types.Base_Integer_Type(1) .. Application_Types.Base_Integer_Type(32767);

   One_To_Maximum_Integer_First : constant One_To_Maximum_Integer := One_To_Maximum_Integer'first;

   subtype Subset_Zero_Of_Integer is Application_Types.Base_Integer_Type 
      range Application_Types.Base_Integer_Type(-10) .. Application_Types.Base_Integer_Type(10);

   Subset_Zero_Of_Integer_First : constant Subset_Zero_Of_Integer := Subset_Zero_Of_Integer'first;




   type Active_Object_Status_Type is (
      Enumeral,
      Number,
      OK,
      Not_Tested);
   for Active_Object_Status_Type use (
      Enumeral => 1,
      Number => 2,
      OK => 3,
      Not_Tested => 4);
   Active_Object_Status_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 4;
   for Active_Object_Status_Type'Size use Application_Types.Base_Integer_Type'Size;
   Active_Object_Status_Type_First          : constant Active_Object_Status_Type := Active_Object_Status_Type'first;
   function Active_Object_Status_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Active_Object_Status_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Active_Object_Status_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Active_Object_Status_Type);

   type Temp_Type is (
      Freezing,
      Cold,
      Mild,
      Warm,
      Hot,
      Boiling);
   for Temp_Type use (
      Freezing => 1,
      Cold => 2,
      Mild => 3,
      Warm => 4,
      Hot => 5,
      Boiling => 6);
   Temp_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 6;
   for Temp_Type'Size use Application_Types.Base_Integer_Type'Size;
   Temp_Type_First          : constant Temp_Type := Temp_Type'first;
   function Temp_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Temp_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Temp_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Temp_Type);

   type Colour_Type is (
      Red,
      Green,
      Blue,
      Yellow,
      Cyan,
      Magenta);
   for Colour_Type use (
      Red => 1,
      Green => 2,
      Blue => 3,
      Yellow => 4,
      Cyan => 5,
      Magenta => 6);
   Colour_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 6;
   for Colour_Type'Size use Application_Types.Base_Integer_Type'Size;
   Colour_Type_First          : constant Colour_Type := Colour_Type'first;
   function Colour_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Colour_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Colour_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Colour_Type);

   type Simple_Enumeration_Type is (
      One,
      Two,
      Three,
      Four,
      Five);
   for Simple_Enumeration_Type use (
      One => 1,
      Two => 2,
      Three => 3,
      Four => 4,
      Five => 5);
   Simple_Enumeration_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 5;
   for Simple_Enumeration_Type'Size use Application_Types.Base_Integer_Type'Size;
   Simple_Enumeration_Type_First          : constant Simple_Enumeration_Type := Simple_Enumeration_Type'first;
   function Simple_Enumeration_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Simple_Enumeration_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Simple_Enumeration_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Simple_Enumeration_Type);



----------------------------------------------------------------------------------------------

   -- SRLE1000002929
   Types_And_Subtypes_Count : constant Application_Types.Base_Integer_Type := 16;

----------------------------------------------------------------------------------------------
--
end UDT_Domain_Types;

