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
--* File Name:               Creation_Deletion_domain_types.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Creation_Deletion Domain Data Types Package Specification
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
--*  package specification Creation_Deletion_Domain_Types 
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

package Creation_Deletion_Domain_Types is



   type battlefield_arena_type is (
      Earth,
      Gallifrey,
      Skarros,
      Wheelchair,
      Underwater,
      Venus);
   for battlefield_arena_type use (
      Earth => 1,
      Gallifrey => 2,
      Skarros => 3,
      Wheelchair => 4,
      Underwater => 5,
      Venus => 6);
   battlefield_arena_type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 6;
   for battlefield_arena_type'Size use Application_Types.Base_Integer_Type'Size;
   battlefield_arena_type_First          : constant battlefield_arena_type := battlefield_arena_type'first;
   function battlefield_arena_type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (battlefield_arena_type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_battlefield_arena_type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, battlefield_arena_type);

   type actors_who_have_played_the_doctor is (
      Tom_Baker,
      Jon_Pertwee,
      Patrick_Troughton);
   for actors_who_have_played_the_doctor use (
      Tom_Baker => 1,
      Jon_Pertwee => 2,
      Patrick_Troughton => 3);
   actors_who_have_played_the_doctor_Enumeral_Count : constant Application_Types.Base_Integer_Type := 3;
   for actors_who_have_played_the_doctor'Size use Application_Types.Base_Integer_Type'Size;
   actors_who_have_played_the_doctor_First          : constant actors_who_have_played_the_doctor := actors_who_have_played_the_doctor'first;
   function actors_who_have_played_the_doctor_To_Base_Integer_Type is new Ada.Unchecked_Conversion (actors_who_have_played_the_doctor, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_actors_who_have_played_the_doctor is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, actors_who_have_played_the_doctor);

   type Flavoured_Type is (
      chicken,
      fish,
      coffee);
   for Flavoured_Type use (
      chicken => 1,
      fish => 2,
      coffee => 3);
   Flavoured_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 3;
   for Flavoured_Type'Size use Application_Types.Base_Integer_Type'Size;
   Flavoured_Type_First          : constant Flavoured_Type := Flavoured_Type'first;
   function Flavoured_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Flavoured_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Flavoured_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Flavoured_Type);

   type Coloured_Type is (
      red,
      blue,
      green);
   for Coloured_Type use (
      red => 1,
      blue => 2,
      green => 3);
   Coloured_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 3;
   for Coloured_Type'Size use Application_Types.Base_Integer_Type'Size;
   Coloured_Type_First          : constant Coloured_Type := Coloured_Type'first;
   function Coloured_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Coloured_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Coloured_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Coloured_Type);

   type Base_Colour is (
      Red,
      Green,
      Blue,
      Black);
   for Base_Colour use (
      Red => 1,
      Green => 2,
      Blue => 3,
      Black => 4);
   Base_Colour_Enumeral_Count : constant Application_Types.Base_Integer_Type := 4;
   for Base_Colour'Size use Application_Types.Base_Integer_Type'Size;
   Base_Colour_First          : constant Base_Colour := Base_Colour'first;
   function Base_Colour_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Base_Colour, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Base_Colour is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Base_Colour);

   type Test_Enum_Type is (
      Sly,
      Sandy,
      Wes);
   for Test_Enum_Type use (
      Sly => 1,
      Sandy => 2,
      Wes => 3);
   Test_Enum_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 3;
   for Test_Enum_Type'Size use Application_Types.Base_Integer_Type'Size;
   Test_Enum_Type_First          : constant Test_Enum_Type := Test_Enum_Type'first;
   function Test_Enum_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Test_Enum_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Test_Enum_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Test_Enum_Type);



----------------------------------------------------------------------------------------------

   -- SRLE1000002929
   Types_And_Subtypes_Count : constant Application_Types.Base_Integer_Type := 6;

----------------------------------------------------------------------------------------------
--
end Creation_Deletion_Domain_Types;

