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
--* File Name:               Struct_domain_types.ops.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Type-specific operations on Domain Data Types 
--* Comments:                Header written by header.macro                           *
--*                           
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*  This archetype provides operations on the structure types provided within the domain. 
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
--*  package specification Struct_Domain_Types.Ops 
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--    jmm     03/10/00        PILOT_0000_0600   Changes for issue 3.0.0 in accordance with ATN_037_03_01.
--
--    db      04/07/01        PILOT_0000_0231   Rename package filename to match package definition.
--
--    db      29/08/01        PILOT_0000_0230   Coding standards
--                                              Naming convention
--
--    db      15/03/02        SRLE100002863     Conditionally generate only if Structures 
--                                              exist in this domain.
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
-- **************************************************************************************
--

with Application_Types;

package Struct_Domain_Types.Ops is
  pragma Elaborate_Body (Struct_Domain_Types.Ops);
  --
  ----------------------------------------------------------------------------------------------
  -- 
   procedure Append (
      A_A_Defined_IH: in  Root_Object.Object_Access;
      To_Structure: in out Structure_and_IH_Type);
    
   procedure Extract (
      A_A_Defined_IH: out  Root_Object.Object_Access;
      From_Structure: in     Structure_and_IH_Type);
                     
   procedure Go_To_Start (Of_Structure: in Structure_and_IH_Type);

   function  Not_Empty   (In_Structure: Structure_and_IH_Type) return boolean;

   procedure Initialise  (Object:       in out Structure_and_IH_Type);

   function  Count_Of    (In_Structure: Structure_and_IH_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_Basic_Integer: in Application_Types.Base_Integer_Type;
      To_Structure: in out Very_Simple_Structure_Type);
    
   procedure Extract (
      A_Basic_Integer: out Application_Types.Base_Integer_Type;
      From_Structure: in     Very_Simple_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in Very_Simple_Structure_Type);

   function  Not_Empty   (In_Structure: Very_Simple_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out Very_Simple_Structure_Type);

   function  Count_Of    (In_Structure: Very_Simple_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_Alternative_Colour: in Struct_Domain_Types.Alternative_Colour_Type;
      A_Extra_Member: in Application_Types.Base_Integer_Type;
      To_Structure: in out Different_Structure_Type);
    
   procedure Extract (
      A_Alternative_Colour: out Struct_Domain_Types.Alternative_Colour_Type;
      A_Extra_Member: out Application_Types.Base_Integer_Type;
      From_Structure: in     Different_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in Different_Structure_Type);

   function  Not_Empty   (In_Structure: Different_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out Different_Structure_Type);

   function  Count_Of    (In_Structure: Different_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_An_Integer: in Struct_Domain_Types.UDT_Integer_Type;
      A_A_Real: in Struct_Domain_Types.UDT_Real_Type;
      To_Structure: in out UDT_Structure_Type);
    
   procedure Extract (
      A_An_Integer: out Struct_Domain_Types.UDT_Integer_Type;
      A_A_Real: out Struct_Domain_Types.UDT_Real_Type;
      From_Structure: in     UDT_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in UDT_Structure_Type);

   function  Not_Empty   (In_Structure: UDT_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out UDT_Structure_Type);

   function  Count_Of    (In_Structure: UDT_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_An_Integer: in Application_Types.Base_Integer_Type;
      A_A_Real: in Application_Types.Base_Float_Type;
      A_Some_Text: in Application_Types.Base_Text_Type;
      A_A_Boolean: in  Boolean;
      To_Structure: in out Name_and_Type_Linked_Simple_Structure_Type);
    
   procedure Extract (
      A_An_Integer: out Application_Types.Base_Integer_Type;
      A_A_Real: out Application_Types.Base_Float_Type;
      A_Some_Text: out Application_Types.Base_Text_Type;
      A_A_Boolean: out  Boolean;
      From_Structure: in     Name_and_Type_Linked_Simple_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in Name_and_Type_Linked_Simple_Structure_Type);

   function  Not_Empty   (In_Structure: Name_and_Type_Linked_Simple_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out Name_and_Type_Linked_Simple_Structure_Type);

   function  Count_Of    (In_Structure: Name_and_Type_Linked_Simple_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_TLS_Integer: in Application_Types.Base_Integer_Type;
      A_TLS_Real: in Application_Types.Base_Float_Type;
      A_TLS_Text: in Application_Types.Base_Text_Type;
      A_TLS_Boolean: in  Boolean;
      To_Structure: in out Type_Linked_Simple_Structure_Type);
    
   procedure Extract (
      A_TLS_Integer: out Application_Types.Base_Integer_Type;
      A_TLS_Real: out Application_Types.Base_Float_Type;
      A_TLS_Text: out Application_Types.Base_Text_Type;
      A_TLS_Boolean: out  Boolean;
      From_Structure: in     Type_Linked_Simple_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in Type_Linked_Simple_Structure_Type);

   function  Not_Empty   (In_Structure: Type_Linked_Simple_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out Type_Linked_Simple_Structure_Type);

   function  Count_Of    (In_Structure: Type_Linked_Simple_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_S_Integer: in Application_Types.Base_Integer_Type;
      A_S_Real: in Application_Types.Base_Float_Type;
      A_S_Text: in Application_Types.Base_Text_Type;
      A_S_Boolean: in  Boolean;
      A_S_Colour: in Struct_Domain_Types.Colour_Type;
      To_Structure: in out Simple_Structure_Type);
    
   procedure Extract (
      A_S_Integer: out Application_Types.Base_Integer_Type;
      A_S_Real: out Application_Types.Base_Float_Type;
      A_S_Text: out Application_Types.Base_Text_Type;
      A_S_Boolean: out  Boolean;
      A_S_Colour: out Struct_Domain_Types.Colour_Type;
      From_Structure: in     Simple_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in Simple_Structure_Type);

   function  Not_Empty   (In_Structure: Simple_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out Simple_Structure_Type);

   function  Count_Of    (In_Structure: Simple_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_SS_Integer: in Application_Types.Base_Integer_Type;
      A_SS_Real: in Application_Types.Base_Float_Type;
      A_SS_Text: in Application_Types.Base_Text_Type;
      A_SS_Boolean: in  Boolean;
      A_SS_Colour: in Struct_Domain_Types.Colour_Type;
      To_Structure: in out Second_Simple_Structure_Type);
    
   procedure Extract (
      A_SS_Integer: out Application_Types.Base_Integer_Type;
      A_SS_Real: out Application_Types.Base_Float_Type;
      A_SS_Text: out Application_Types.Base_Text_Type;
      A_SS_Boolean: out  Boolean;
      A_SS_Colour: out Struct_Domain_Types.Colour_Type;
      From_Structure: in     Second_Simple_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in Second_Simple_Structure_Type);

   function  Not_Empty   (In_Structure: Second_Simple_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out Second_Simple_Structure_Type);

   function  Count_Of    (In_Structure: Second_Simple_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_A_Top_Integer: in Struct_Domain_Types.UDT_Integer_Type;
      A_A_Top_Real: in Struct_Domain_Types.UDT_Real_Type;
      A_A_UDT_Structure: in Struct_Domain_Types.UDT_Structure_Type;
      A_Basic_Integer: in Application_Types.Base_Integer_Type;
      A_A_Colour: in Struct_Domain_Types.Colour_Type;
      To_Structure: in out Complex_UDT_Structure_Type);
    
   procedure Extract (
      A_A_Top_Integer: out Struct_Domain_Types.UDT_Integer_Type;
      A_A_Top_Real: out Struct_Domain_Types.UDT_Real_Type;
      A_A_UDT_Structure: out Struct_Domain_Types.UDT_Structure_Type;
      A_Basic_Integer: out Application_Types.Base_Integer_Type;
      A_A_Colour: out Struct_Domain_Types.Colour_Type;
      From_Structure: in     Complex_UDT_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in Complex_UDT_Structure_Type);

   function  Not_Empty   (In_Structure: Complex_UDT_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out Complex_UDT_Structure_Type);

   function  Count_Of    (In_Structure: Complex_UDT_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_Int_Val: in Application_Types.Base_Integer_Type;
      A_Real_Val: in Application_Types.Base_Float_Type;
      A_String_Val: in Application_Types.Base_Text_Type;
      A_Col_Val: in Struct_Domain_Types.Colour_Type;
      To_Structure: in out My_Second_Structure);
    
   procedure Extract (
      A_Int_Val: out Application_Types.Base_Integer_Type;
      A_Real_Val: out Application_Types.Base_Float_Type;
      A_String_Val: out Application_Types.Base_Text_Type;
      A_Col_Val: out Struct_Domain_Types.Colour_Type;
      From_Structure: in     My_Second_Structure);
                     
   procedure Go_To_Start (Of_Structure: in My_Second_Structure);

   function  Not_Empty   (In_Structure: My_Second_Structure) return boolean;

   procedure Initialise  (Object:       in out My_Second_Structure);

   function  Count_Of    (In_Structure: My_Second_Structure) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_Int_Value: in Application_Types.Base_Integer_Type;
      A_Colour_Value: in Struct_Domain_Types.Colour_Type;
      To_Structure: in out My_Simple_Structure);
    
   procedure Extract (
      A_Int_Value: out Application_Types.Base_Integer_Type;
      A_Colour_Value: out Struct_Domain_Types.Colour_Type;
      From_Structure: in     My_Simple_Structure);
                     
   procedure Go_To_Start (Of_Structure: in My_Simple_Structure);

   function  Not_Empty   (In_Structure: My_Simple_Structure) return boolean;

   procedure Initialise  (Object:       in out My_Simple_Structure);

   function  Count_Of    (In_Structure: My_Simple_Structure) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_Third_Nested_Integer: in Application_Types.Base_Integer_Type;
      A_The_Holy_Grail: in Struct_Domain_Types.Colour_Type;
      To_Structure: in out Third_Nested_Structure_Type);
    
   procedure Extract (
      A_Third_Nested_Integer: out Application_Types.Base_Integer_Type;
      A_The_Holy_Grail: out Struct_Domain_Types.Colour_Type;
      From_Structure: in     Third_Nested_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in Third_Nested_Structure_Type);

   function  Not_Empty   (In_Structure: Third_Nested_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out Third_Nested_Structure_Type);

   function  Count_Of    (In_Structure: Third_Nested_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_Third_Nested_Structure: in Struct_Domain_Types.Third_Nested_Structure_Type;
      A_Third_Nested_Integer: in Application_Types.Base_Integer_Type;
      To_Structure: in out Second_Nested_Structure_Type);
    
   procedure Extract (
      A_Third_Nested_Structure: out Struct_Domain_Types.Third_Nested_Structure_Type;
      A_Third_Nested_Integer: out Application_Types.Base_Integer_Type;
      From_Structure: in     Second_Nested_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in Second_Nested_Structure_Type);

   function  Not_Empty   (In_Structure: Second_Nested_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out Second_Nested_Structure_Type);

   function  Count_Of    (In_Structure: Second_Nested_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_Second_Nested_Structure: in Struct_Domain_Types.Second_Nested_Structure_Type;
      A_First_Nested_Integer: in Application_Types.Base_Integer_Type;
      To_Structure: in out First_Nested_Structure_Type);
    
   procedure Extract (
      A_Second_Nested_Structure: out Struct_Domain_Types.Second_Nested_Structure_Type;
      A_First_Nested_Integer: out Application_Types.Base_Integer_Type;
      From_Structure: in     First_Nested_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in First_Nested_Structure_Type);

   function  Not_Empty   (In_Structure: First_Nested_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out First_Nested_Structure_Type);

   function  Count_Of    (In_Structure: First_Nested_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_First_Structure: in Struct_Domain_Types.Simple_Structure_Type;
      A_Second_Structure: in Struct_Domain_Types.Third_Nested_Structure_Type;
      To_Structure: in out Two_Structures_Type);
    
   procedure Extract (
      A_First_Structure: out Struct_Domain_Types.Simple_Structure_Type;
      A_Second_Structure: out Struct_Domain_Types.Third_Nested_Structure_Type;
      From_Structure: in     Two_Structures_Type);
                     
   procedure Go_To_Start (Of_Structure: in Two_Structures_Type);

   function  Not_Empty   (In_Structure: Two_Structures_Type) return boolean;

   procedure Initialise  (Object:       in out Two_Structures_Type);

   function  Count_Of    (In_Structure: Two_Structures_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_Initial_Structure: in Struct_Domain_Types.First_Nested_Structure_Type;
      A_Secondary_Structure: in Struct_Domain_Types.Second_Nested_Structure_Type;
      A_Penultimate_Structure: in Struct_Domain_Types.Third_Nested_Structure_Type;
      A_Buried_Integer: in Application_Types.Base_Integer_Type;
      To_Structure: in out Multiple_Structures_Type);
    
   procedure Extract (
      A_Initial_Structure: out Struct_Domain_Types.First_Nested_Structure_Type;
      A_Secondary_Structure: out Struct_Domain_Types.Second_Nested_Structure_Type;
      A_Penultimate_Structure: out Struct_Domain_Types.Third_Nested_Structure_Type;
      A_Buried_Integer: out Application_Types.Base_Integer_Type;
      From_Structure: in     Multiple_Structures_Type);
                     
   procedure Go_To_Start (Of_Structure: in Multiple_Structures_Type);

   function  Not_Empty   (In_Structure: Multiple_Structures_Type) return boolean;

   procedure Initialise  (Object:       in out Multiple_Structures_Type);

   function  Count_Of    (In_Structure: Multiple_Structures_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
--
end Struct_Domain_Types.Ops;

