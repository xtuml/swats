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
--* File Name:               Function_Calls_domain_types.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Function_Calls Domain Data Types Package Specification
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
--*  Structures exist in this domain 
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
--*  package specification Function_Calls_Domain_Types 
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
with Ada.Finalization;
with Root_Object;

package Function_Calls_Domain_Types is
   pragma Elaborate_Body (Function_Calls_Domain_Types);




   type Return_Enum_Type is (
      Slys_Mum,
      Sandys_Mum,
      Wes_Mum,
      Nobodys_Mum);
   for Return_Enum_Type use (
      Slys_Mum => 1,
      Sandys_Mum => 2,
      Wes_Mum => 3,
      Nobodys_Mum => 4);
   Return_Enum_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 4;
   for Return_Enum_Type'Size use Application_Types.Base_Integer_Type'Size;
   Return_Enum_Type_First          : constant Return_Enum_Type := Return_Enum_Type'first;
   function Return_Enum_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Return_Enum_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Return_Enum_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Return_Enum_Type);

   type New_Enum_Type is (
      Sly,
      Sandy,
      Wes);
   for New_Enum_Type use (
      Sly => 1,
      Sandy => 2,
      Wes => 3);
   New_Enum_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 3;
   for New_Enum_Type'Size use Application_Types.Base_Integer_Type'Size;
   New_Enum_Type_First          : constant New_Enum_Type := New_Enum_Type'first;
   function New_Enum_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (New_Enum_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_New_Enum_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, New_Enum_Type);

   type Colour_Type is (
      Green,
      Blue,
      Red);
   for Colour_Type use (
      Green => 1,
      Blue => 2,
      Red => 3);
   Colour_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 3;
   for Colour_Type'Size use Application_Types.Base_Integer_Type'Size;
   Colour_Type_First          : constant Colour_Type := Colour_Type'first;
   function Colour_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Colour_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Colour_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Colour_Type);


----------------------------------------------------------------------------------------------
--

   type Domain_Structure is new Ada.Finalization.Controlled with null record;
    

----------------------------------------------------------------------------------------------
--

   type Structure_For_IH_Node;
   type Structure_For_IH_Node_Access is access all Structure_For_IH_Node;
   type Structure_For_IH_Node_Access_Pointer is access Structure_For_IH_Node_Access;
     
   type Structure_For_IH is new Domain_Structure with record
      Iterator          : Structure_For_IH_Node_Access_Pointer := null;
      First_Entry       : Structure_For_IH_Node_Access := null;
      Last_Entry        : Structure_For_IH_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Structure_For_IH_Node is record
      An_Instance_Handle : Root_Object.Object_Access := null;
      Next_Structure     : Structure_For_IH_Node_Access := null;
      Previous_Structure : Structure_For_IH_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Structure_For_IH);

   procedure Adjust     (Object : in out Structure_For_IH);

   procedure Finalize   (Object : in out Structure_For_IH);


----------------------------------------------------------------------------------------------

   -- SRLE1000002929
   Types_And_Subtypes_Count : constant Application_Types.Base_Integer_Type := 4;

----------------------------------------------------------------------------------------------
--
end Function_Calls_Domain_Types;

