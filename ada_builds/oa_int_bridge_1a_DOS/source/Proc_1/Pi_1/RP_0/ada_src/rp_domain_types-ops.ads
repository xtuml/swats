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
--* File Name:               RP_domain_types.ops.ads
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
--*  Application_Control built with support for Internal interfaces
--*  
--*************************************************************************************
--*  COMPONENTS CONTAINED WITHIN THIS FILE                                            *
--*  package specification RP_Domain_Types.Ops 
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

package RP_Domain_Types.Ops is
  pragma Elaborate_Body (RP_Domain_Types.Ops);
  --
  ----------------------------------------------------------------------------------------------
  -- 
   procedure Append (
      A_Unsupported_By: in Application_Types.Base_Integer_Type;
      A_Testing_For: in Application_Types.Base_Text_Type;
      To_Structure: in out Unsupported_Tests_Record_Type);
    
   procedure Extract (
      A_Unsupported_By: out Application_Types.Base_Integer_Type;
      A_Testing_For: out Application_Types.Base_Text_Type;
      From_Structure: in     Unsupported_Tests_Record_Type);
                     
   procedure Go_To_Start (Of_Structure: in Unsupported_Tests_Record_Type);

   function  Not_Empty   (In_Structure: Unsupported_Tests_Record_Type) return boolean;

   procedure Initialise  (Object:       in out Unsupported_Tests_Record_Type);

   function  Count_Of    (In_Structure: Unsupported_Tests_Record_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_Duplicated_Test_Number: in Application_Types.Base_Integer_Type;
      A_Duplicated_Test_Count: in Application_Types.Base_Integer_Type;
      To_Structure: in out Duplicated_Tests_Record_Type);
    
   procedure Extract (
      A_Duplicated_Test_Number: out Application_Types.Base_Integer_Type;
      A_Duplicated_Test_Count: out Application_Types.Base_Integer_Type;
      From_Structure: in     Duplicated_Tests_Record_Type);
                     
   procedure Go_To_Start (Of_Structure: in Duplicated_Tests_Record_Type);

   function  Not_Empty   (In_Structure: Duplicated_Tests_Record_Type) return boolean;

   procedure Initialise  (Object:       in out Duplicated_Tests_Record_Type);

   function  Count_Of    (In_Structure: Duplicated_Tests_Record_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
   procedure Append (
      A_Failed_Test_Number: in Application_Types.Base_Integer_Type;
      To_Structure: in out Failed_Tests_Record_Type);
    
   procedure Extract (
      A_Failed_Test_Number: out Application_Types.Base_Integer_Type;
      From_Structure: in     Failed_Tests_Record_Type);
                     
   procedure Go_To_Start (Of_Structure: in Failed_Tests_Record_Type);

   function  Not_Empty   (In_Structure: Failed_Tests_Record_Type) return boolean;

   procedure Initialise  (Object:       in out Failed_Tests_Record_Type);

   function  Count_Of    (In_Structure: Failed_Tests_Record_Type) return Application_Types.Base_Integer_Type;

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
--
end RP_Domain_Types.Ops;

