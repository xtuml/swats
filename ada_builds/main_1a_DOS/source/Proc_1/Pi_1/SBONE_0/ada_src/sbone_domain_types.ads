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
--* File Name:               SBONE_domain_types.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          SBONE Domain Data Types Package Specification
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
--*  package specification SBONE_Domain_Types 
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

package SBONE_Domain_Types is
   pragma Elaborate_Body (SBONE_Domain_Types);

   subtype Pos is Application_Types.Base_Integer_Type 
      range Application_Types.Base_Integer_Type(1) .. Application_Types.Base_Integer_Type(10);

   Pos_First : constant Pos := Pos'first;




   type Colour_Type is (
      Red,
      Green,
      Blue);
   for Colour_Type use (
      Red => 1,
      Green => 2,
      Blue => 3);
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

   type VSD_Struct_Node;
   type VSD_Struct_Node_Access is access all VSD_Struct_Node;
   type VSD_Struct_Node_Access_Pointer is access VSD_Struct_Node_Access;
     
   type VSD_Struct is new Domain_Structure with record
      Iterator          : VSD_Struct_Node_Access_Pointer := null;
      First_Entry       : VSD_Struct_Node_Access := null;
      Last_Entry        : VSD_Struct_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type VSD_Struct_Node is record
      Ref_Type : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Int_Type : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Real_Type : Application_Types.Base_Float_Type := Application_Types.Base_Float_Type_First;
      Next_Structure     : VSD_Struct_Node_Access := null;
      Previous_Structure : VSD_Struct_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out VSD_Struct);

   procedure Adjust     (Object : in out VSD_Struct);

   procedure Finalize   (Object : in out VSD_Struct);


----------------------------------------------------------------------------------------------
--

   type Structure_Of_UDTs_Node;
   type Structure_Of_UDTs_Node_Access is access all Structure_Of_UDTs_Node;
   type Structure_Of_UDTs_Node_Access_Pointer is access Structure_Of_UDTs_Node_Access;
     
   type Structure_Of_UDTs is new Domain_Structure with record
      Iterator          : Structure_Of_UDTs_Node_Access_Pointer := null;
      First_Entry       : Structure_Of_UDTs_Node_Access := null;
      Last_Entry        : Structure_Of_UDTs_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Structure_Of_UDTs_Node is record
      The_Range : SBONE_Domain_Types.Pos := SBONE_Domain_Types.Pos_First;
      Next_Structure     : Structure_Of_UDTs_Node_Access := null;
      Previous_Structure : Structure_Of_UDTs_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Structure_Of_UDTs);

   procedure Adjust     (Object : in out Structure_Of_UDTs);

   procedure Finalize   (Object : in out Structure_Of_UDTs);


----------------------------------------------------------------------------------------------
--

   type Source_Structure_Type_Node;
   type Source_Structure_Type_Node_Access is access all Source_Structure_Type_Node;
   type Source_Structure_Type_Node_Access_Pointer is access Source_Structure_Type_Node_Access;
     
   type Source_Structure_Type is new Domain_Structure with record
      Iterator          : Source_Structure_Type_Node_Access_Pointer := null;
      First_Entry       : Source_Structure_Type_Node_Access := null;
      Last_Entry        : Source_Structure_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Source_Structure_Type_Node is record
      Source_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Source_Real : Application_Types.Base_Float_Type := Application_Types.Base_Float_Type_First;
      Source_Text : Application_Types.Base_Text_Type := Application_Types.Base_Text_Type_First;
      Source_Boolean :  Boolean := Application_Types.Boolean_First;
      Source_Colour : SBONE_Domain_Types.Colour_Type := SBONE_Domain_Types.Colour_Type_First;
      Next_Structure     : Source_Structure_Type_Node_Access := null;
      Previous_Structure : Source_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Source_Structure_Type);

   procedure Adjust     (Object : in out Source_Structure_Type);

   procedure Finalize   (Object : in out Source_Structure_Type);


----------------------------------------------------------------------------------------------
--

   type IH_Struct_Node;
   type IH_Struct_Node_Access is access all IH_Struct_Node;
   type IH_Struct_Node_Access_Pointer is access IH_Struct_Node_Access;
     
   type IH_Struct is new Domain_Structure with record
      Iterator          : IH_Struct_Node_Access_Pointer := null;
      First_Entry       : IH_Struct_Node_Access := null;
      Last_Entry        : IH_Struct_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type IH_Struct_Node is record
      The_VSD_IH : Root_Object.Object_Access := null;
      Next_Structure     : IH_Struct_Node_Access := null;
      Previous_Structure : IH_Struct_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out IH_Struct);

   procedure Adjust     (Object : in out IH_Struct);

   procedure Finalize   (Object : in out IH_Struct);


----------------------------------------------------------------------------------------------
--

   type Very_Simple_Structure_Type_Node;
   type Very_Simple_Structure_Type_Node_Access is access all Very_Simple_Structure_Type_Node;
   type Very_Simple_Structure_Type_Node_Access_Pointer is access Very_Simple_Structure_Type_Node_Access;
     
   type Very_Simple_Structure_Type is new Domain_Structure with record
      Iterator          : Very_Simple_Structure_Type_Node_Access_Pointer := null;
      First_Entry       : Very_Simple_Structure_Type_Node_Access := null;
      Last_Entry        : Very_Simple_Structure_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Very_Simple_Structure_Type_Node is record
      Simple_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Simple_Real : Application_Types.Base_Float_Type := Application_Types.Base_Float_Type_First;
      Next_Structure     : Very_Simple_Structure_Type_Node_Access := null;
      Previous_Structure : Very_Simple_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Very_Simple_Structure_Type);

   procedure Adjust     (Object : in out Very_Simple_Structure_Type);

   procedure Finalize   (Object : in out Very_Simple_Structure_Type);


----------------------------------------------------------------------------------------------

   -- SRLE1000002929
   Types_And_Subtypes_Count : constant Application_Types.Base_Integer_Type := 7;

----------------------------------------------------------------------------------------------
--
end SBONE_Domain_Types;

