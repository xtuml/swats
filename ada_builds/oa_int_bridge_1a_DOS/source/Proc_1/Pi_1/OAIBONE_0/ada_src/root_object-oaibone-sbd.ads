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
--* File Name:               r.OAIBONE.SBD.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Domain specification Root_Object.OAIBONESBD
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
--*  Application_Control built with support for Internal interfaces
--*  
--*************************************************************************************
--  COMPONENTS CONTAINED WITHIN THIS FILE
--  ----------------------------------  
--  package Root_Object.OAIBONE.SBD
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

package Root_Object.OAIBONE.SBD is
--
------------------------------------------------------------------------
   --
   --**************  Object Source_Bridge_Data Information **************
   --
   -- Object SBD is PASSIVE
   --
   --
   --
   -- Object SBD has an identifying non-referential attribute Reference 
   -- and therefore may be uniquely created.
   -- 
   -- Object SBD has no TAGS.
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

   Object_String : String := "SBD";

   --
   -------------------------------------------------------------------------------------------------
   --

   type OAIBONE_SBD_Type is new OAIBONE_Type with record

      --
      -- Non initialised identifying non referential
      Reference : Application_Types.Base_Integer_Type;

      --
      -- Initialised Non identifying non referential
      The_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      The_Real : Application_Types.Base_Float_Type := Application_Types.Base_Float_Type_First;

      --
      -- Initialised Non identifying non referential
      The_String : Application_Types.Base_Text_Type := Application_Types.Base_Text_Type_First;

      --
      -- Initialised Non identifying non referential
      The_Colour : OAIBONE_Domain_Types.Colour_Type := OAIBONE_Domain_Types.Colour_Type_First;

      --
      -- Initialised Non identifying non referential
      The_Boolean :  Boolean := Application_Types.Boolean_First;

      --

   end record;

   Attribute_Count : constant Application_Types.Base_Integer_Type := 6;

   -------------------------------------------------------------------------------------------------

   -------------------------------------------------------------------------------------------------


   --
   ------------------------------------------------------------------------
   --*********************  Object Attribute Access ***********************
   ------------------------------------------------------------------------
   --


   function Get_Reference (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Reference (
      This_Object : in Root_Object.Object_Access;
      Reference_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Reference);
   pragma inline (Put_Reference);


   function Get_The_Integer (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_The_Integer (
      This_Object : in Root_Object.Object_Access;
      The_Integer_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_The_Integer);
   pragma inline (Put_The_Integer);


   function Get_The_Real (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Float_Type;

   procedure Put_The_Real (
      This_Object : in Root_Object.Object_Access;
      The_Real_Value : in Application_Types.Base_Float_Type);

   pragma inline (Get_The_Real);
   pragma inline (Put_The_Real);


   function Get_The_String (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Text_Type;

   procedure Put_The_String (
      This_Object : in Root_Object.Object_Access;
      The_String_Value : in Application_Types.Base_Text_Type);

   pragma inline (Get_The_String);
   pragma inline (Put_The_String);


   function Get_The_Colour (
      This_Object : Root_Object.Object_Access) 
   return OAIBONE_Domain_Types.Colour_Type;

   procedure Put_The_Colour (
      This_Object : in Root_Object.Object_Access;
      The_Colour_Value : in OAIBONE_Domain_Types.Colour_Type);

   pragma inline (Get_The_Colour);
   pragma inline (Put_The_Colour);


   function Get_The_Boolean (
      This_Object : Root_Object.Object_Access) 
   return  Boolean;

   procedure Put_The_Boolean (
      This_Object : in Root_Object.Object_Access;
      The_Boolean_Value : in  Boolean);

   pragma inline (Get_The_Boolean);
   pragma inline (Put_The_Boolean);




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



end Root_Object.OAIBONE.SBD;

