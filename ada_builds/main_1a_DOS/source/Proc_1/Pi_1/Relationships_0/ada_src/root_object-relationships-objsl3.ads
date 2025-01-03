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
--* File Name:               r.Relationships.objSL3.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Domain specification Root_Object.RelationshipsobjSL3
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
--  package Root_Object.Relationships.objSL3
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

package Root_Object.Relationships.objSL3 is
--
------------------------------------------------------------------------
   --
   --**************  Object Sub_L3 Information **************
   --
   -- Object objSL3 is PASSIVE
   --
   -- Object objSL3 participates in a super sub type relationship
   --
   --
   --
   -- Object objSL3 is a SUPER type of 
   --    objSSL2,
   --    objSSL3,
   --    objSSL1,
   --    objSSL4
   --    via Relationship R27
   --
   -- Object objSL3 is a SUPER type of 
   --    objSSL6,
   --    objSSL7,
   --    objSSL5
   --    via Relationship R29
   --
   -- Object objSL3 is a SUPER type of 
   --    objSSL9,
   --    objSSL8
   --    via Relationship R30
   --
   -- Object objSL3 is a SUPER type of 
   --    objSSL10,
   --    objSSL11
   --    via Relationship R31
   --
   -- Object objSL3 is a SUB type of objL via Relationship R26
   --
   -- Object objSL3 does not have an identifying non-referential attribute and 
   -- therefore may not be uniquely created.
   -- 
   -- Object objSL3 has no TAGS.
   --
   ------------------------------------------------------------------------
   -- *********************  State Actions ********************************
   ------------------------------------------------------------------------
   --

   type Object_State_Type is (
      State_0);

   Object_State_Type_First : constant Object_State_Type := Object_State_Type'first;

   --
   ------------------------------------------------------------------------
   --*********************  Object Definition *****************************
   ------------------------------------------------------------------------
   --

   Object_String : String := "objSL3";

   --
   -------------------------------------------------------------------------------------------------
   --

   type Relationships_objSL3_Type is new Relationships_Type with record

      --
      -- Non initialised identifying referential
      idH : Application_Types.Base_Integer_Type;

      --
      -- Initialised Non identifying non referential
      idSL3 : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Current_State :  Object_State_Type :=  Object_State_Type_First;

      R27_Sub : Root_Object.Object_Access := null;
      R29_Sub : Root_Object.Object_Access := null;
      R30_Sub : Root_Object.Object_Access := null;
      R31_Sub : Root_Object.Object_Access := null;
      R26_Super : Root_Object.Object_Access := null;

   end record;

   Attribute_Count : constant Application_Types.Base_Integer_Type := 3;

   -------------------------------------------------------------------------------------------------

   -------------------------------------------------------------------------------------------------


   --
   ------------------------------------------------------------------------
   --*********************  Object Attribute Access ***********************
   ------------------------------------------------------------------------
   --


   function Get_idH (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_idH (
      This_Object : in Root_Object.Object_Access;
      idH_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_idH);
   pragma inline (Put_idH);


   function Get_idSL3 (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_idSL3 (
      This_Object : in Root_Object.Object_Access;
      idSL3_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_idSL3);
   pragma inline (Put_idSL3);


   function Get_Current_State (
      This_Object : Root_Object.Object_Access) 
   return  Object_State_Type;

   procedure Put_Current_State (
      This_Object : in Root_Object.Object_Access;
      Current_State_Value : in  Object_State_Type);

   pragma inline (Get_Current_State);
   pragma inline (Put_Current_State);


   --
   ------------------------------------------------------------------------
   --*********************  Object Relationships **************************
   ------------------------------------------------------------------------
   --


   function  Get_R27_Sub (
      This_Object : Root_Object.Object_Access) 
   return Root_Object.Object_Access;

   procedure Put_R27_Sub (
      This_Object :   in  Root_Object.Object_Access;
      R27_Sub_Value : in Root_Object.Object_Access);

   pragma inline (Get_R27_Sub);
   pragma inline (Put_R27_Sub);


   function  Get_R29_Sub (
      This_Object : Root_Object.Object_Access) 
   return Root_Object.Object_Access;

   procedure Put_R29_Sub (
      This_Object :   in  Root_Object.Object_Access;
      R29_Sub_Value : in Root_Object.Object_Access);

   pragma inline (Get_R29_Sub);
   pragma inline (Put_R29_Sub);


   function  Get_R30_Sub (
      This_Object : Root_Object.Object_Access) 
   return Root_Object.Object_Access;

   procedure Put_R30_Sub (
      This_Object :   in  Root_Object.Object_Access;
      R30_Sub_Value : in Root_Object.Object_Access);

   pragma inline (Get_R30_Sub);
   pragma inline (Put_R30_Sub);


   function  Get_R31_Sub (
      This_Object : Root_Object.Object_Access) 
   return Root_Object.Object_Access;

   procedure Put_R31_Sub (
      This_Object :   in  Root_Object.Object_Access;
      R31_Sub_Value : in Root_Object.Object_Access);

   pragma inline (Get_R31_Sub);
   pragma inline (Put_R31_Sub);


   function  Get_R26_Super (
      This_Object : Root_Object.Object_Access) 
   return Root_Object.Object_Access;

   procedure Put_R26_Super (
      This_Object : in  Root_Object.Object_Access;
      R26_Super_Value : in Root_Object.Object_Access);

   pragma inline (Get_R26_Super);
   pragma inline (Put_R26_Super);


   ------------------------------------------------------------------------
   --*********************  Object Management *****************************
   ------------------------------------------------------------------------
   function  Create 
      return Root_Object.Object_Access;

   -- function Create_Unique 
   -- is not available for this object as it does not have a non-referential 
   -- identifying attribute.


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


   ------------------------------------------------------------------------
   --**************  Event Code imported from actions child ***************
   ------------------------------------------------------------------------
   --
   -- EVENT LIST
   --
   type Event_Class is (
      objL1,
      objL2,
      objL3,
      objL4,
      Class_Event );
   --
   -- CHILD EVENT DECLARATION
   --
   type Relationships_objSL3_Event_Type is new Relationships_Event_Type with
   record
      This_Event_Class : Event_Class;
   end record;

   procedure Event_Action (
      Dispatch_Event : in     Relationships_objSL3_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type);


   --    
   type Relationships_objSL3_Instance_Event_Type is new Relationships_objSL3_Event_Type with
   record
      Target_Instance : Root_Object.Object_Access;
   end record;
   -- 
   -- 
   procedure Event_Action (
      Dispatch_Event : in     Relationships_objSL3_Instance_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type);



   ------------------------------------------------------------------------
   type Relationships_objSL3_Description_Event is new Relationships_objSL3_Instance_Event_Type with
   record
      null;
   end record;
   --
   -- EVENT PARAMETERS
   --
   --
   type Relationships_objL1 is new Relationships_objSL3_Instance_Event_Type with
   record 
      null;
   end record;
   --
   type Relationships_objL2 is new Relationships_objSL3_Instance_Event_Type with
   record 
      null;
   end record;
   --
   type Relationships_objL3 is new Relationships_objSL3_Instance_Event_Type with
   record 
      Test: Application_Types.Base_Integer_Type;
   end record;
   --
   type Relationships_objL4 is new Relationships_objSL3_Instance_Event_Type with
   record 
      Test: Application_Types.Base_Integer_Type;
   end record;

end Root_Object.Relationships.objSL3;

