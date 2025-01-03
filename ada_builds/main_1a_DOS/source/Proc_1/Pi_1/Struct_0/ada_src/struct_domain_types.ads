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
--* File Name:               Struct_domain_types.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Struct Domain Data Types Package Specification
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
--*  package specification Struct_Domain_Types 
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

package Struct_Domain_Types is
   pragma Elaborate_Body (Struct_Domain_Types);

   subtype UDT_Integer_Type is Application_Types.Base_Integer_Type 
      range Application_Types.Base_Integer_Type(0) .. Application_Types.Base_Integer_Type(100);

   UDT_Integer_Type_First : constant UDT_Integer_Type := UDT_Integer_Type'first;

   subtype UDT_Real_Type is Application_Types.Base_Float_Type 
      range Application_Types.Base_Float_Type(0.0) .. Application_Types.Base_Float_Type(100.0);

   UDT_Real_Type_First : constant UDT_Real_Type := UDT_Real_Type'first;




   type Alternative_Colour_Type is (
      Red,
      Pink,
      Puce);
   for Alternative_Colour_Type use (
      Red => 1,
      Pink => 2,
      Puce => 3);
   Alternative_Colour_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 3;
   for Alternative_Colour_Type'Size use Application_Types.Base_Integer_Type'Size;
   Alternative_Colour_Type_First          : constant Alternative_Colour_Type := Alternative_Colour_Type'first;
   function Alternative_Colour_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Alternative_Colour_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Alternative_Colour_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Alternative_Colour_Type);

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

   type Structure_and_IH_Type_Node;
   type Structure_and_IH_Type_Node_Access is access all Structure_and_IH_Type_Node;
   type Structure_and_IH_Type_Node_Access_Pointer is access Structure_and_IH_Type_Node_Access;
     
   type Structure_and_IH_Type is new Domain_Structure with record
      Iterator          : Structure_and_IH_Type_Node_Access_Pointer := null;
      First_Entry       : Structure_and_IH_Type_Node_Access := null;
      Last_Entry        : Structure_and_IH_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Structure_and_IH_Type_Node is record
      A_Defined_IH : Root_Object.Object_Access := null;
      Next_Structure     : Structure_and_IH_Type_Node_Access := null;
      Previous_Structure : Structure_and_IH_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Structure_and_IH_Type);

   procedure Adjust     (Object : in out Structure_and_IH_Type);

   procedure Finalize   (Object : in out Structure_and_IH_Type);


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
      Basic_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Next_Structure     : Very_Simple_Structure_Type_Node_Access := null;
      Previous_Structure : Very_Simple_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Very_Simple_Structure_Type);

   procedure Adjust     (Object : in out Very_Simple_Structure_Type);

   procedure Finalize   (Object : in out Very_Simple_Structure_Type);


----------------------------------------------------------------------------------------------
--

   type Different_Structure_Type_Node;
   type Different_Structure_Type_Node_Access is access all Different_Structure_Type_Node;
   type Different_Structure_Type_Node_Access_Pointer is access Different_Structure_Type_Node_Access;
     
   type Different_Structure_Type is new Domain_Structure with record
      Iterator          : Different_Structure_Type_Node_Access_Pointer := null;
      First_Entry       : Different_Structure_Type_Node_Access := null;
      Last_Entry        : Different_Structure_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Different_Structure_Type_Node is record
      Alternative_Colour : Struct_Domain_Types.Alternative_Colour_Type := Struct_Domain_Types.Alternative_Colour_Type_First;
      Extra_Member : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Next_Structure     : Different_Structure_Type_Node_Access := null;
      Previous_Structure : Different_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Different_Structure_Type);

   procedure Adjust     (Object : in out Different_Structure_Type);

   procedure Finalize   (Object : in out Different_Structure_Type);


----------------------------------------------------------------------------------------------
--

   type UDT_Structure_Type_Node;
   type UDT_Structure_Type_Node_Access is access all UDT_Structure_Type_Node;
   type UDT_Structure_Type_Node_Access_Pointer is access UDT_Structure_Type_Node_Access;
     
   type UDT_Structure_Type is new Domain_Structure with record
      Iterator          : UDT_Structure_Type_Node_Access_Pointer := null;
      First_Entry       : UDT_Structure_Type_Node_Access := null;
      Last_Entry        : UDT_Structure_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type UDT_Structure_Type_Node is record
      An_Integer : Struct_Domain_Types.UDT_Integer_Type := Struct_Domain_Types.UDT_Integer_Type_First;
      A_Real : Struct_Domain_Types.UDT_Real_Type := Struct_Domain_Types.UDT_Real_Type_First;
      Next_Structure     : UDT_Structure_Type_Node_Access := null;
      Previous_Structure : UDT_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out UDT_Structure_Type);

   procedure Adjust     (Object : in out UDT_Structure_Type);

   procedure Finalize   (Object : in out UDT_Structure_Type);


----------------------------------------------------------------------------------------------
--

   type Name_and_Type_Linked_Simple_Structure_Type_Node;
   type Name_and_Type_Linked_Simple_Structure_Type_Node_Access is access all Name_and_Type_Linked_Simple_Structure_Type_Node;
   type Name_and_Type_Linked_Simple_Structure_Type_Node_Access_Pointer is access Name_and_Type_Linked_Simple_Structure_Type_Node_Access;
     
   type Name_and_Type_Linked_Simple_Structure_Type is new Domain_Structure with record
      Iterator          : Name_and_Type_Linked_Simple_Structure_Type_Node_Access_Pointer := null;
      First_Entry       : Name_and_Type_Linked_Simple_Structure_Type_Node_Access := null;
      Last_Entry        : Name_and_Type_Linked_Simple_Structure_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Name_and_Type_Linked_Simple_Structure_Type_Node is record
      An_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      A_Real : Application_Types.Base_Float_Type := Application_Types.Base_Float_Type_First;
      Some_Text : Application_Types.Base_Text_Type := Application_Types.Base_Text_Type_First;
      A_Boolean :  Boolean := Application_Types.Boolean_First;
      Next_Structure     : Name_and_Type_Linked_Simple_Structure_Type_Node_Access := null;
      Previous_Structure : Name_and_Type_Linked_Simple_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Name_and_Type_Linked_Simple_Structure_Type);

   procedure Adjust     (Object : in out Name_and_Type_Linked_Simple_Structure_Type);

   procedure Finalize   (Object : in out Name_and_Type_Linked_Simple_Structure_Type);


----------------------------------------------------------------------------------------------
--

   type Type_Linked_Simple_Structure_Type_Node;
   type Type_Linked_Simple_Structure_Type_Node_Access is access all Type_Linked_Simple_Structure_Type_Node;
   type Type_Linked_Simple_Structure_Type_Node_Access_Pointer is access Type_Linked_Simple_Structure_Type_Node_Access;
     
   type Type_Linked_Simple_Structure_Type is new Domain_Structure with record
      Iterator          : Type_Linked_Simple_Structure_Type_Node_Access_Pointer := null;
      First_Entry       : Type_Linked_Simple_Structure_Type_Node_Access := null;
      Last_Entry        : Type_Linked_Simple_Structure_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Type_Linked_Simple_Structure_Type_Node is record
      TLS_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      TLS_Real : Application_Types.Base_Float_Type := Application_Types.Base_Float_Type_First;
      TLS_Text : Application_Types.Base_Text_Type := Application_Types.Base_Text_Type_First;
      TLS_Boolean :  Boolean := Application_Types.Boolean_First;
      Next_Structure     : Type_Linked_Simple_Structure_Type_Node_Access := null;
      Previous_Structure : Type_Linked_Simple_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Type_Linked_Simple_Structure_Type);

   procedure Adjust     (Object : in out Type_Linked_Simple_Structure_Type);

   procedure Finalize   (Object : in out Type_Linked_Simple_Structure_Type);


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
      S_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      S_Real : Application_Types.Base_Float_Type := Application_Types.Base_Float_Type_First;
      S_Text : Application_Types.Base_Text_Type := Application_Types.Base_Text_Type_First;
      S_Boolean :  Boolean := Application_Types.Boolean_First;
      S_Colour : Struct_Domain_Types.Colour_Type := Struct_Domain_Types.Colour_Type_First;
      Next_Structure     : Simple_Structure_Type_Node_Access := null;
      Previous_Structure : Simple_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Simple_Structure_Type);

   procedure Adjust     (Object : in out Simple_Structure_Type);

   procedure Finalize   (Object : in out Simple_Structure_Type);


----------------------------------------------------------------------------------------------
--

   type Second_Simple_Structure_Type_Node;
   type Second_Simple_Structure_Type_Node_Access is access all Second_Simple_Structure_Type_Node;
   type Second_Simple_Structure_Type_Node_Access_Pointer is access Second_Simple_Structure_Type_Node_Access;
     
   type Second_Simple_Structure_Type is new Domain_Structure with record
      Iterator          : Second_Simple_Structure_Type_Node_Access_Pointer := null;
      First_Entry       : Second_Simple_Structure_Type_Node_Access := null;
      Last_Entry        : Second_Simple_Structure_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Second_Simple_Structure_Type_Node is record
      SS_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      SS_Real : Application_Types.Base_Float_Type := Application_Types.Base_Float_Type_First;
      SS_Text : Application_Types.Base_Text_Type := Application_Types.Base_Text_Type_First;
      SS_Boolean :  Boolean := Application_Types.Boolean_First;
      SS_Colour : Struct_Domain_Types.Colour_Type := Struct_Domain_Types.Colour_Type_First;
      Next_Structure     : Second_Simple_Structure_Type_Node_Access := null;
      Previous_Structure : Second_Simple_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Second_Simple_Structure_Type);

   procedure Adjust     (Object : in out Second_Simple_Structure_Type);

   procedure Finalize   (Object : in out Second_Simple_Structure_Type);


----------------------------------------------------------------------------------------------
--

   type Complex_UDT_Structure_Type_Node;
   type Complex_UDT_Structure_Type_Node_Access is access all Complex_UDT_Structure_Type_Node;
   type Complex_UDT_Structure_Type_Node_Access_Pointer is access Complex_UDT_Structure_Type_Node_Access;
     
   type Complex_UDT_Structure_Type is new Domain_Structure with record
      Iterator          : Complex_UDT_Structure_Type_Node_Access_Pointer := null;
      First_Entry       : Complex_UDT_Structure_Type_Node_Access := null;
      Last_Entry        : Complex_UDT_Structure_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Complex_UDT_Structure_Type_Node is record
      A_Top_Integer : Struct_Domain_Types.UDT_Integer_Type := Struct_Domain_Types.UDT_Integer_Type_First;
      A_Top_Real : Struct_Domain_Types.UDT_Real_Type := Struct_Domain_Types.UDT_Real_Type_First;
      A_UDT_Structure : Struct_Domain_Types.UDT_Structure_Type;
      Basic_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      A_Colour : Struct_Domain_Types.Colour_Type := Struct_Domain_Types.Colour_Type_First;
      Next_Structure     : Complex_UDT_Structure_Type_Node_Access := null;
      Previous_Structure : Complex_UDT_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Complex_UDT_Structure_Type);

   procedure Adjust     (Object : in out Complex_UDT_Structure_Type);

   procedure Finalize   (Object : in out Complex_UDT_Structure_Type);


----------------------------------------------------------------------------------------------
--

   type My_Second_Structure_Node;
   type My_Second_Structure_Node_Access is access all My_Second_Structure_Node;
   type My_Second_Structure_Node_Access_Pointer is access My_Second_Structure_Node_Access;
     
   type My_Second_Structure is new Domain_Structure with record
      Iterator          : My_Second_Structure_Node_Access_Pointer := null;
      First_Entry       : My_Second_Structure_Node_Access := null;
      Last_Entry        : My_Second_Structure_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type My_Second_Structure_Node is record
      Int_Val : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Real_Val : Application_Types.Base_Float_Type := Application_Types.Base_Float_Type_First;
      String_Val : Application_Types.Base_Text_Type := Application_Types.Base_Text_Type_First;
      Col_Val : Struct_Domain_Types.Colour_Type := Struct_Domain_Types.Colour_Type_First;
      Next_Structure     : My_Second_Structure_Node_Access := null;
      Previous_Structure : My_Second_Structure_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out My_Second_Structure);

   procedure Adjust     (Object : in out My_Second_Structure);

   procedure Finalize   (Object : in out My_Second_Structure);


----------------------------------------------------------------------------------------------
--

   type My_Simple_Structure_Node;
   type My_Simple_Structure_Node_Access is access all My_Simple_Structure_Node;
   type My_Simple_Structure_Node_Access_Pointer is access My_Simple_Structure_Node_Access;
     
   type My_Simple_Structure is new Domain_Structure with record
      Iterator          : My_Simple_Structure_Node_Access_Pointer := null;
      First_Entry       : My_Simple_Structure_Node_Access := null;
      Last_Entry        : My_Simple_Structure_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type My_Simple_Structure_Node is record
      Int_Value : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Colour_Value : Struct_Domain_Types.Colour_Type := Struct_Domain_Types.Colour_Type_First;
      Next_Structure     : My_Simple_Structure_Node_Access := null;
      Previous_Structure : My_Simple_Structure_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out My_Simple_Structure);

   procedure Adjust     (Object : in out My_Simple_Structure);

   procedure Finalize   (Object : in out My_Simple_Structure);


----------------------------------------------------------------------------------------------
--

   type Third_Nested_Structure_Type_Node;
   type Third_Nested_Structure_Type_Node_Access is access all Third_Nested_Structure_Type_Node;
   type Third_Nested_Structure_Type_Node_Access_Pointer is access Third_Nested_Structure_Type_Node_Access;
     
   type Third_Nested_Structure_Type is new Domain_Structure with record
      Iterator          : Third_Nested_Structure_Type_Node_Access_Pointer := null;
      First_Entry       : Third_Nested_Structure_Type_Node_Access := null;
      Last_Entry        : Third_Nested_Structure_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Third_Nested_Structure_Type_Node is record
      Third_Nested_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      The_Holy_Grail : Struct_Domain_Types.Colour_Type := Struct_Domain_Types.Colour_Type_First;
      Next_Structure     : Third_Nested_Structure_Type_Node_Access := null;
      Previous_Structure : Third_Nested_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Third_Nested_Structure_Type);

   procedure Adjust     (Object : in out Third_Nested_Structure_Type);

   procedure Finalize   (Object : in out Third_Nested_Structure_Type);


----------------------------------------------------------------------------------------------
--

   type Second_Nested_Structure_Type_Node;
   type Second_Nested_Structure_Type_Node_Access is access all Second_Nested_Structure_Type_Node;
   type Second_Nested_Structure_Type_Node_Access_Pointer is access Second_Nested_Structure_Type_Node_Access;
     
   type Second_Nested_Structure_Type is new Domain_Structure with record
      Iterator          : Second_Nested_Structure_Type_Node_Access_Pointer := null;
      First_Entry       : Second_Nested_Structure_Type_Node_Access := null;
      Last_Entry        : Second_Nested_Structure_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Second_Nested_Structure_Type_Node is record
      Third_Nested_Structure : Struct_Domain_Types.Third_Nested_Structure_Type;
      Third_Nested_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Next_Structure     : Second_Nested_Structure_Type_Node_Access := null;
      Previous_Structure : Second_Nested_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Second_Nested_Structure_Type);

   procedure Adjust     (Object : in out Second_Nested_Structure_Type);

   procedure Finalize   (Object : in out Second_Nested_Structure_Type);


----------------------------------------------------------------------------------------------
--

   type First_Nested_Structure_Type_Node;
   type First_Nested_Structure_Type_Node_Access is access all First_Nested_Structure_Type_Node;
   type First_Nested_Structure_Type_Node_Access_Pointer is access First_Nested_Structure_Type_Node_Access;
     
   type First_Nested_Structure_Type is new Domain_Structure with record
      Iterator          : First_Nested_Structure_Type_Node_Access_Pointer := null;
      First_Entry       : First_Nested_Structure_Type_Node_Access := null;
      Last_Entry        : First_Nested_Structure_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type First_Nested_Structure_Type_Node is record
      Second_Nested_Structure : Struct_Domain_Types.Second_Nested_Structure_Type;
      First_Nested_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Next_Structure     : First_Nested_Structure_Type_Node_Access := null;
      Previous_Structure : First_Nested_Structure_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out First_Nested_Structure_Type);

   procedure Adjust     (Object : in out First_Nested_Structure_Type);

   procedure Finalize   (Object : in out First_Nested_Structure_Type);


----------------------------------------------------------------------------------------------
--

   type Two_Structures_Type_Node;
   type Two_Structures_Type_Node_Access is access all Two_Structures_Type_Node;
   type Two_Structures_Type_Node_Access_Pointer is access Two_Structures_Type_Node_Access;
     
   type Two_Structures_Type is new Domain_Structure with record
      Iterator          : Two_Structures_Type_Node_Access_Pointer := null;
      First_Entry       : Two_Structures_Type_Node_Access := null;
      Last_Entry        : Two_Structures_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Two_Structures_Type_Node is record
      First_Structure : Struct_Domain_Types.Simple_Structure_Type;
      Second_Structure : Struct_Domain_Types.Third_Nested_Structure_Type;
      Next_Structure     : Two_Structures_Type_Node_Access := null;
      Previous_Structure : Two_Structures_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Two_Structures_Type);

   procedure Adjust     (Object : in out Two_Structures_Type);

   procedure Finalize   (Object : in out Two_Structures_Type);


----------------------------------------------------------------------------------------------
--

   type Multiple_Structures_Type_Node;
   type Multiple_Structures_Type_Node_Access is access all Multiple_Structures_Type_Node;
   type Multiple_Structures_Type_Node_Access_Pointer is access Multiple_Structures_Type_Node_Access;
     
   type Multiple_Structures_Type is new Domain_Structure with record
      Iterator          : Multiple_Structures_Type_Node_Access_Pointer := null;
      First_Entry       : Multiple_Structures_Type_Node_Access := null;
      Last_Entry        : Multiple_Structures_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Multiple_Structures_Type_Node is record
      Initial_Structure : Struct_Domain_Types.First_Nested_Structure_Type;
      Secondary_Structure : Struct_Domain_Types.Second_Nested_Structure_Type;
      Penultimate_Structure : Struct_Domain_Types.Third_Nested_Structure_Type;
      Buried_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Next_Structure     : Multiple_Structures_Type_Node_Access := null;
      Previous_Structure : Multiple_Structures_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Multiple_Structures_Type);

   procedure Adjust     (Object : in out Multiple_Structures_Type);

   procedure Finalize   (Object : in out Multiple_Structures_Type);


----------------------------------------------------------------------------------------------

   -- SRLE1000002929
   Types_And_Subtypes_Count : constant Application_Types.Base_Integer_Type := 20;

----------------------------------------------------------------------------------------------
--
end Struct_Domain_Types;

