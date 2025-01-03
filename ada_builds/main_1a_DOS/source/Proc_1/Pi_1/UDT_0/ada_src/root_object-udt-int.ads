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
--* File Name:               r.UDT.INT.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          TAGGED Domain specification Root_Object.UDTINT
--* Comments:                Header written by header.macro                           *
--*                           
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*  This package shall define a domain object, and the  
--*  operations available on it. 
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
--  COMPONENTS CONTAINED WITHIN THIS FILE
--  ----------------------------------  
--  package Root_Object.UDT.INT
--    procedure Polymorphic_Put
--    function Get_<Attribute.Attribute_Name>
--    procedure Put_<Attribute.Attribute_Name>
--    function Get_<Simple_Relationship.Relationship_No>_<Simple_Relationship.Far_End.Ooa_End>
--    procedure Put_<Simple_Relationship.Relationship_No>_<Simple_Relationship.Far_End.Ooa_End>
--    function Get_<Supertype_Relationship.Relationship_No>_Sub
--    procedure Put_<Supertype_Relationship.Relationship_No>_Sub
--    function Get_<Subtype_Relationship.Relationship_No>_Super
--    procedure Put_<Subtype_Relationship.Relationship_No>_Super

--    function Get_State
--    procedure Put_State
--    procedure Description
--    function Create
--    function Create_Unique 
--    procedure Delete
--    function Count_Of
--    procedure Find
--    function Return_List
--    function Unconditional_Find_One
--    function Conditional_Find_One
--    procedure Process_Event_Queue
--    procedure Get_Class_Size
--    function Size_Of
--    procedure Initialise_List
--
--
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--    jmm     02/11/99        008243/9SR056     Addition of create unique and revision of
--                                              attribute specifications            
--
--    jmm     17/08/00        PILOT_0000_0600   Changes for issue 3.0.0 in accordance with ATN_037_03_01.
--
--    jmm     31/01/01        010340/9SR056     Changes for issue 3.0.1 in accordance with SRLE/TS/TSD/skind045.
--
--    jmm     31/05/01        PILOT_0000_1227   Changes for issue 4.0.0 in accordance with SRLE/TS/TSD/skind045.
--
--    db      11/07/01        PILOT_0000_0236   Remove referential attributes from package, including the associated 
--                                              Put & Get operations.
--                            PILOT_0000_0230   Coding Standards transgressions fixed
--
--    db      10/08/01        PILOT_0000_0232   Add attribute identifiers from ASL attribute description
--                                              rewrite of attribute assignment to be quicker, and use the macro insert
--                                              Reorder Object_State_Type such that State_0 is always last (or first if empty!)
--                                              Remove all use clauses.
--
--    db      11/02/02        SRLE100002577     Remove Event_Scope_Lower and _Higher operations and
--                                              replace them with Event_Count_Scope.
--
--    db      18/03/02        SRLE100002754     Simplification of withing statements.
--
--    db      21/03/02        SRLE100002910     Include attribute_count 
--
--    db      26/03/02        SRLE100002907     Remove initialise_list 
--
--    db      02/04/02        SRLE100002930     Rewrite Object_State_Type declaration.
--
--    db      28/04/02        SRLE100002926     Static objects mean no delete operation provided.
--
--    db      16/05/02        SRLE100003001     Remove Update_Target and Process_Events procedures
--
--    db      20/06/02        SRLE100003005     Remove Create_Unique generation for objects that do not have
--                                              non-referential identifiers.
--
--    db      10/07/02        SRLE100000221     Remove Current_State attribute for passive objects
--
--    db      31/10/02        SRLE100003959     Remove Event_Count_Scope.
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
-- **************************************************************************************

package Root_Object.UDT.INT is
--
------------------------------------------------------------------------
   --
   --**************  Object Object_With_Integers Information **************
   --
   -- Object INT is PASSIVE
   --
   --
   --
   -- Object INT has an identifying non-referential attribute Unique_Identifier 
   -- and therefore may be uniquely created.
   -- 
   -- Object INT has no TAGS.
   --
   ------------------------------------------------------------------------
   -- *********************  State Actions ********************************
   ------------------------------------------------------------------------
   --
   -- No Object State Type generated for PASSIVE object.

   --
   ------------------------------------------------------------------------
   --*********************  Object Definition *****************************
   ------------------------------------------------------------------------
   --

   Object_String : String := "INT";

   --
   -------------------------------------------------------------------------------------------------
   --

   type UDT_INT_Type is new UDT_Type with record

      --
      -- Initialised Non identifying non referential
      First_Integer : UDT_Domain_Types.Subset_1_Of_Integer := UDT_Domain_Types.Subset_1_Of_Integer_First;

      --
      -- Initialised Non identifying non referential
      Second_Integer : UDT_Domain_Types.Subset_Minus_1_Of_Integer := UDT_Domain_Types.Subset_Minus_1_Of_Integer_First;

      --
      -- Initialised Non identifying non referential
      Third_Integer : UDT_Domain_Types.Subset_Zero_Of_Integer := UDT_Domain_Types.Subset_Zero_Of_Integer_First;

      --
      -- Initialised Non identifying non referential
      Fourth_Integer : UDT_Domain_Types.One_To_Maximum_Integer := UDT_Domain_Types.One_To_Maximum_Integer_First;

      --
      -- Initialised Non identifying non referential
      Fifth_Integer : UDT_Domain_Types.Minimum_To_Minus_One_Integer := UDT_Domain_Types.Minimum_To_Minus_One_Integer_First;

      --
      -- Initialised Non identifying non referential
      Sixth_Integer : UDT_Domain_Types.Minimum_To_Maximum_Integer := UDT_Domain_Types.Minimum_To_Maximum_Integer_First;

      --
      -- Non initialised identifying non referential
      Unique_Identifier : Application_Types.Base_Integer_Type;

      --

   end record;

   Attribute_Count : constant Application_Types.Base_Integer_Type := 7;

   -------------------------------------------------------------------------------------------------

   -------------------------------------------------------------------------------------------------


   --
   ------------------------------------------------------------------------
   --*********************  Object Attribute Access ***********************
   ------------------------------------------------------------------------
   --


   function Get_First_Integer (
      This_Object : Root_Object.Object_Access) 
   return UDT_Domain_Types.Subset_1_Of_Integer;

   procedure Put_First_Integer (
      This_Object : in Root_Object.Object_Access;
      First_Integer_Value : in UDT_Domain_Types.Subset_1_Of_Integer);

   pragma inline (Get_First_Integer);
   pragma inline (Put_First_Integer);


   function Get_Second_Integer (
      This_Object : Root_Object.Object_Access) 
   return UDT_Domain_Types.Subset_Minus_1_Of_Integer;

   procedure Put_Second_Integer (
      This_Object : in Root_Object.Object_Access;
      Second_Integer_Value : in UDT_Domain_Types.Subset_Minus_1_Of_Integer);

   pragma inline (Get_Second_Integer);
   pragma inline (Put_Second_Integer);


   function Get_Third_Integer (
      This_Object : Root_Object.Object_Access) 
   return UDT_Domain_Types.Subset_Zero_Of_Integer;

   procedure Put_Third_Integer (
      This_Object : in Root_Object.Object_Access;
      Third_Integer_Value : in UDT_Domain_Types.Subset_Zero_Of_Integer);

   pragma inline (Get_Third_Integer);
   pragma inline (Put_Third_Integer);


   function Get_Fourth_Integer (
      This_Object : Root_Object.Object_Access) 
   return UDT_Domain_Types.One_To_Maximum_Integer;

   procedure Put_Fourth_Integer (
      This_Object : in Root_Object.Object_Access;
      Fourth_Integer_Value : in UDT_Domain_Types.One_To_Maximum_Integer);

   pragma inline (Get_Fourth_Integer);
   pragma inline (Put_Fourth_Integer);


   function Get_Fifth_Integer (
      This_Object : Root_Object.Object_Access) 
   return UDT_Domain_Types.Minimum_To_Minus_One_Integer;

   procedure Put_Fifth_Integer (
      This_Object : in Root_Object.Object_Access;
      Fifth_Integer_Value : in UDT_Domain_Types.Minimum_To_Minus_One_Integer);

   pragma inline (Get_Fifth_Integer);
   pragma inline (Put_Fifth_Integer);


   function Get_Sixth_Integer (
      This_Object : Root_Object.Object_Access) 
   return UDT_Domain_Types.Minimum_To_Maximum_Integer;

   procedure Put_Sixth_Integer (
      This_Object : in Root_Object.Object_Access;
      Sixth_Integer_Value : in UDT_Domain_Types.Minimum_To_Maximum_Integer);

   pragma inline (Get_Sixth_Integer);
   pragma inline (Put_Sixth_Integer);


   function Get_Unique_Identifier (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Unique_Identifier (
      This_Object : in Root_Object.Object_Access;
      Unique_Identifier_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Unique_Identifier);
   pragma inline (Put_Unique_Identifier);




   --
   ------------------------------------------------------------------------
   --*********************  Object Relationships **************************
   ------------------------------------------------------------------------
   --


   ------------------------------------------------------------------------
   --*********************  Object Management *****************************
   ------------------------------------------------------------------------
   function  Create 
      return Root_Object.Object_Access;

   function Create_Unique return Root_Object.Object_Access;


   procedure Delete (
      Old_Instance : in out Root_Object.Object_Access);

   procedure Count_Of (
      Instance_Count :     out Application_Types.Base_Integer_Type;
      Max_Instance_Count : out Application_Types.Base_Integer_Type);
  
   procedure Find (
      Add_To : in out Root_Object.Object_List.List_Header_Access_Type);
  
   function Return_List return Root_Object.Object_Access;
      
   function Unconditional_Find_One return Root_Object.Object_Access renames Return_List;

   function Conditional_Find_One   return Root_Object.Object_Access renames Return_List;



end Root_Object.UDT.INT;

