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
--* File Name:               SBONE_domain_types.ops.ads
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
--*  package specification SBONE_Domain_Types.Ops 
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

package SBONE_Domain_Types.Ops is
  pragma Elaborate_Body (SBONE_Domain_Types.Ops);
  --
  ----------------------------------------------------------------------------------------------
  -- 
   procedure Append (
      A_Ref_Type: in Application_Types.Base_Integer_Type;
      A_Int_Type: in Application_Types.Base_Integer_Type;
      A_Real_Type: in Application_Types.Base_Float_Type;
      To_Structure: in out VSD_Struct);
    
   procedure Extract (
      A_Ref_Type: out Application_Types.Base_Integer_Type;
      A_Int_Type: out Application_Types.Base_Integer_Type;
      A_Real_Type: out Application_Types.Base_Float_Type;
      From_Structure: in     VSD_Struct);
                     
   procedure Go_To_Start (Of_Structure: in VSD_Struct);

   function  Not_Empty   (In_Structure: VSD_Struct) return boolean;

   procedure Initialise  (Object:       in out VSD_Struct);

   function  Count_Of    (In_Structure: VSD_Struct) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_The_Range: in SBONE_Domain_Types.Pos;
      To_Structure: in out Structure_Of_UDTs);
    
   procedure Extract (
      A_The_Range: out SBONE_Domain_Types.Pos;
      From_Structure: in     Structure_Of_UDTs);
                     
   procedure Go_To_Start (Of_Structure: in Structure_Of_UDTs);

   function  Not_Empty   (In_Structure: Structure_Of_UDTs) return boolean;

   procedure Initialise  (Object:       in out Structure_Of_UDTs);

   function  Count_Of    (In_Structure: Structure_Of_UDTs) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_Source_Integer: in Application_Types.Base_Integer_Type;
      A_Source_Real: in Application_Types.Base_Float_Type;
      A_Source_Text: in Application_Types.Base_Text_Type;
      A_Source_Boolean: in  Boolean;
      A_Source_Colour: in SBONE_Domain_Types.Colour_Type;
      To_Structure: in out Source_Structure_Type);
    
   procedure Extract (
      A_Source_Integer: out Application_Types.Base_Integer_Type;
      A_Source_Real: out Application_Types.Base_Float_Type;
      A_Source_Text: out Application_Types.Base_Text_Type;
      A_Source_Boolean: out  Boolean;
      A_Source_Colour: out SBONE_Domain_Types.Colour_Type;
      From_Structure: in     Source_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in Source_Structure_Type);

   function  Not_Empty   (In_Structure: Source_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out Source_Structure_Type);

   function  Count_Of    (In_Structure: Source_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_The_VSD_IH: in  Root_Object.Object_Access;
      To_Structure: in out IH_Struct);
    
   procedure Extract (
      A_The_VSD_IH: out  Root_Object.Object_Access;
      From_Structure: in     IH_Struct);
                     
   procedure Go_To_Start (Of_Structure: in IH_Struct);

   function  Not_Empty   (In_Structure: IH_Struct) return boolean;

   procedure Initialise  (Object:       in out IH_Struct);

   function  Count_Of    (In_Structure: IH_Struct) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_Simple_Integer: in Application_Types.Base_Integer_Type;
      A_Simple_Real: in Application_Types.Base_Float_Type;
      To_Structure: in out Very_Simple_Structure_Type);
    
   procedure Extract (
      A_Simple_Integer: out Application_Types.Base_Integer_Type;
      A_Simple_Real: out Application_Types.Base_Float_Type;
      From_Structure: in     Very_Simple_Structure_Type);
                     
   procedure Go_To_Start (Of_Structure: in Very_Simple_Structure_Type);

   function  Not_Empty   (In_Structure: Very_Simple_Structure_Type) return boolean;

   procedure Initialise  (Object:       in out Very_Simple_Structure_Type);

   function  Count_Of    (In_Structure: Very_Simple_Structure_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
--
end SBONE_Domain_Types.Ops;

