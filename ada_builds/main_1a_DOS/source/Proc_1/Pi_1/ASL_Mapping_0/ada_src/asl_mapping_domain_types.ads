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
--* File Name:               ASL_Mapping_domain_types.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          ASL_Mapping Domain Data Types Package Specification
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
--*  package specification ASL_Mapping_Domain_Types 
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

package ASL_Mapping_Domain_Types is
   pragma Elaborate_Body (ASL_Mapping_Domain_Types);




   type Enum is (
      Richard,
      John,
      Mark,
      Frank,
      Goran);
   for Enum use (
      Richard => 1,
      John => 2,
      Mark => 3,
      Frank => 4,
      Goran => 5);
   Enum_Enumeral_Count : constant Application_Types.Base_Integer_Type := 5;
   for Enum'Size use Application_Types.Base_Integer_Type'Size;
   Enum_First          : constant Enum := Enum'first;
   function Enum_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Enum, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Enum is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Enum);

   type Processor_Id_Type is (
      TCA,
      CCA);
   for Processor_Id_Type use (
      TCA => 1,
      CCA => 2);
   Processor_Id_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 2;
   for Processor_Id_Type'Size use Application_Types.Base_Integer_Type'Size;
   Processor_Id_Type_First          : constant Processor_Id_Type := Processor_Id_Type'first;
   function Processor_Id_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Processor_Id_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Processor_Id_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Processor_Id_Type);


----------------------------------------------------------------------------------------------
--

   type Domain_Structure is new Ada.Finalization.Controlled with null record;
    

----------------------------------------------------------------------------------------------
--

   type Simple_Structure_Type_Node;
   type Simple_Structure_Type_Node_Access is access all Simple_Structure_Type_Node;
   type Simple_Structure_Type_Node_Access_Pointer is access Simple_Structure_Type_Node_Access;
     
   type Simple_Structure_Type is new Domain_Structure with record
      Iterator          : Simple_Structure_Type_Node_Access_Pointer := null;
      First_Entry       : Simple_Structure_Type_Node_Access := null;
      Last_Entry        : Simple_Structure_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Simple_Structure_Type_Node is record
      Simple_Int : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Simple_Real : Application_Types.Base_Float_Type := Application_Types.Base_Float_Type_First;
      Simple_String : Application_Types.Base_Text_Type := Application_Types.Base_Text_Type_First;
      Simple_Boolean :  Boolean := Application_Types.Boolean_First;
      Simple_Enum : ASL_Mapping_Domain_Types.Enum := ASL_Mapping_Domain_Types.Enum_First;
      Next_Structure     : Simple_Structure_Type_Node_Access := null;
      Previous_Structure : Simple_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Simple_Structure_Type);

   procedure Adjust     (Object : in out Simple_Structure_Type);

   procedure Finalize   (Object : in out Simple_Structure_Type);


----------------------------------------------------------------------------------------------

   -- SRLE1000002929
   Types_And_Subtypes_Count : constant Application_Types.Base_Integer_Type := 3;

----------------------------------------------------------------------------------------------
--
end ASL_Mapping_Domain_Types;

