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
--* File Name:               application_types.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Specification of application-wide types used by all domains 
--* Comments:                Header written by header.macro                           *
--*                          Package specification in response to QAR mannj01 
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
--*  package specification Application_Types 
--*      /
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--                            QAR upstr 0005
--
--                            QAR mannj02
--
--    jmm     28/06/00        PILOT_0000_0423   Include diagnostic references.
--
--    db      04/07/01        PILOT_0000_0872   Enumeration_And_Structure_Count added.
--
--    db      08/08/01        PILOT_0000_1416   Debug code added.
--
--    db      03/04/02        SRLE100002929     Rename Enumeration_And_Structure_Count
--
--    db      09/05/02        SRLE100002899     Add constant definition for maximum number
--                                              of characters in a string. Do not modify this!
--
--    db      21/05/02        SRLE100003228     Create type range to define string length
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
--    DNS     20/04/15        CR 10265 9SU050   WACA 9.0.0 - Various Improvements and Corrections
--
--    DNS     09/01/18        CR 10424 9SU050   Overloaded "+", "-", "*" and "**" added for Base_Float_Type
--                                              and Base_Integer_Type to guard against Overflow
-- **************************************************************************************
--

with System;
--

package Application_Types is

   type Time_Unit is (millisecond, second);
   Time_Unit_First: constant Time_Unit := Time_Unit'first;

   ----------------------------------------------------------------------------------------------

   type Base_Integer_Type is new integer;

   function "+" (A   : Base_Integer_Type;
                 B   : Base_Integer_Type) return Base_Integer_Type;

   function "-" (A   : Base_Integer_Type;
                 B   : Base_Integer_Type) return Base_Integer_Type;

   function "*" (A   : Base_Integer_Type;
                 B   : Base_Integer_Type) return Base_Integer_Type;

   function "/" (Numerator   : Base_Integer_Type;
                 Denominator : Base_Integer_Type) return Base_Integer_Type;

   type Base_Float_Type is new float;

   function "+" (A   : Base_Float_Type;
                 B   : Base_Float_Type) return Base_Float_Type;

   function "-" (A   : Base_Float_Type;
                 B   : Base_Float_Type) return Base_Float_Type;

   function "*" (A   : Base_Float_Type;
                 B   : Base_Float_Type) return Base_Float_Type;

   function "/" (Numerator   : Base_Float_Type;
                 Denominator : Base_Float_Type) return Base_Float_Type;

   function "**" (A   : Base_Float_Type;
                  B   : Integer) return Base_Float_Type;

   -- Do not change this value without exceedingly good reasons.
   Maximum_Number_Of_Characters_In_String : constant Positive := 32;

   subtype Base_Text_Index_Type is Positive range 1 .. Maximum_Number_Of_Characters_In_String;

   subtype Base_Text_Type is string (Base_Text_Index_Type'range);

   subtype Base_Boolean_Type is Boolean;


   ----------------------------------------------------------------------------------------------

   Base_Integer_Type_First : constant Base_Integer_Type := 0;
   Base_Float_Type_First   : constant Base_Float_Type   := 0.0;
   Base_Boolean_Type_First : constant Boolean           := False;
   Boolean_First           : constant Boolean           := False; -- To be depracated by Base_Boolean_Type_First
   Base_Text_Type_First    : constant Base_Text_Type    := (others => ' ');
   Time_First              : constant Base_Integer_Type := 0;

   ----------------------------------------------------------------------------------------------
   -- JM Debug code GLOBAL DATA ACCESS for Debugging purposes.
   --
   Count_Of_Objects       : integer := 0;
   Count_Of_Relationships : integer := 0;
   Count_Of_Lists         : integer := 0;
   Count_Of_Structures    : integer := 0;
   Count_Of_Events        : integer := 0;

   ----------------------------------------------------------------------------------------------
   --

   -- This is a hard coded value, and should therefore be changed if any new
   -- type or subtype is added. The count includes :
   -- (1) Time_Unit
   -- (2) Base_Integer_Type
   -- (3) Base_Float_Type
   -- (4) Base_Boolean_Type
   -- (5) Base_Text_Type
   -- (6) Base_Text_Index_Type
   Types_And_Subtypes_Count : constant Base_Integer_Type := 6;
   Stop_Application : exception;

   ----------------------------------------------------------------------------------------------
end Application_Types;

