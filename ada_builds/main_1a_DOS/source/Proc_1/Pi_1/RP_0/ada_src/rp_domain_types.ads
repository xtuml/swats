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
--* File Name:               RP_domain_types.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          RP Domain Data Types Package Specification
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
--*  package specification RP_Domain_Types 
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

package RP_Domain_Types is
   pragma Elaborate_Body (RP_Domain_Types);




   type Requid_Status_Type is (
      Not_Tested,
      Tested);
   for Requid_Status_Type use (
      Not_Tested => 1,
      Tested => 2);
   Requid_Status_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 2;
   for Requid_Status_Type'Size use Application_Types.Base_Integer_Type'Size;
   Requid_Status_Type_First          : constant Requid_Status_Type := Requid_Status_Type'first;
   function Requid_Status_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Requid_Status_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Requid_Status_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Requid_Status_Type);

   type Result_Type is (
      Passed,
      Failed,
      Unsupported,
      Unknown);
   for Result_Type use (
      Passed => 1,
      Failed => 2,
      Unsupported => 3,
      Unknown => 4);
   Result_Type_Enumeral_Count : constant Application_Types.Base_Integer_Type := 4;
   for Result_Type'Size use Application_Types.Base_Integer_Type'Size;
   Result_Type_First          : constant Result_Type := Result_Type'first;
   function Result_Type_To_Base_Integer_Type is new Ada.Unchecked_Conversion (Result_Type, Application_Types.Base_Integer_Type);
   function Base_Integer_Type_To_Result_Type is new Ada.Unchecked_Conversion (Application_Types.Base_Integer_Type, Result_Type);


----------------------------------------------------------------------------------------------
--

   type Domain_Structure is new Ada.Finalization.Controlled with null record;
    

----------------------------------------------------------------------------------------------
--

   type Unsupported_Tests_Record_Type_Node;
   type Unsupported_Tests_Record_Type_Node_Access is access all Unsupported_Tests_Record_Type_Node;
   type Unsupported_Tests_Record_Type_Node_Access_Pointer is access Unsupported_Tests_Record_Type_Node_Access;
     
   type Unsupported_Tests_Record_Type is new Domain_Structure with record
      Iterator          : Unsupported_Tests_Record_Type_Node_Access_Pointer := null;
      First_Entry       : Unsupported_Tests_Record_Type_Node_Access := null;
      Last_Entry        : Unsupported_Tests_Record_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Unsupported_Tests_Record_Type_Node is record
      Unsupported_By : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Testing_For : Application_Types.Base_Text_Type := Application_Types.Base_Text_Type_First;
      Next_Structure     : Unsupported_Tests_Record_Type_Node_Access := null;
      Previous_Structure : Unsupported_Tests_Record_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Unsupported_Tests_Record_Type);

   procedure Adjust     (Object : in out Unsupported_Tests_Record_Type);

   procedure Finalize   (Object : in out Unsupported_Tests_Record_Type);


----------------------------------------------------------------------------------------------
--

   type Duplicated_Tests_Record_Type_Node;
   type Duplicated_Tests_Record_Type_Node_Access is access all Duplicated_Tests_Record_Type_Node;
   type Duplicated_Tests_Record_Type_Node_Access_Pointer is access Duplicated_Tests_Record_Type_Node_Access;
     
   type Duplicated_Tests_Record_Type is new Domain_Structure with record
      Iterator          : Duplicated_Tests_Record_Type_Node_Access_Pointer := null;
      First_Entry       : Duplicated_Tests_Record_Type_Node_Access := null;
      Last_Entry        : Duplicated_Tests_Record_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Duplicated_Tests_Record_Type_Node is record
      Duplicated_Test_Number : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Duplicated_Test_Count : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Next_Structure     : Duplicated_Tests_Record_Type_Node_Access := null;
      Previous_Structure : Duplicated_Tests_Record_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Duplicated_Tests_Record_Type);

   procedure Adjust     (Object : in out Duplicated_Tests_Record_Type);

   procedure Finalize   (Object : in out Duplicated_Tests_Record_Type);


----------------------------------------------------------------------------------------------
--

   type Failed_Tests_Record_Type_Node;
   type Failed_Tests_Record_Type_Node_Access is access all Failed_Tests_Record_Type_Node;
   type Failed_Tests_Record_Type_Node_Access_Pointer is access Failed_Tests_Record_Type_Node_Access;
     
   type Failed_Tests_Record_Type is new Domain_Structure with record
      Iterator          : Failed_Tests_Record_Type_Node_Access_Pointer := null;
      First_Entry       : Failed_Tests_Record_Type_Node_Access := null;
      Last_Entry        : Failed_Tests_Record_Type_Node_Access := null;
      Number_Of_Entries : Application_Types.Base_Integer_Type := 0;
   end record;
       
   type Failed_Tests_Record_Type_Node is record
      Failed_Test_Number : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;
      Next_Structure     : Failed_Tests_Record_Type_Node_Access := null;
      Previous_Structure : Failed_Tests_Record_Type_Node_Access := null;
   end record;
    
   procedure Initialize (Object : in out Failed_Tests_Record_Type);

   procedure Adjust     (Object : in out Failed_Tests_Record_Type);

   procedure Finalize   (Object : in out Failed_Tests_Record_Type);


----------------------------------------------------------------------------------------------

   -- SRLE1000002929
   Types_And_Subtypes_Count : constant Application_Types.Base_Integer_Type := 5;

----------------------------------------------------------------------------------------------
--
end RP_Domain_Types;

