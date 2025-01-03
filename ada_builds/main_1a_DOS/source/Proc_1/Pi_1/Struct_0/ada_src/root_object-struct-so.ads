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
--* File Name:               r.Struct.SO.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Domain specification Root_Object.StructSO
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
--  package Root_Object.Struct.SO
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

package Root_Object.Struct.SO is
--
------------------------------------------------------------------------
   --
   --**************  Object Structured_Object Information **************
   --
   -- Object SO is ACTIVE
   --
   --
   --
   -- Object SO is ACTIVE and has the following state actions defined
   --   Non_Existent,
   --   Idle,
   --   Decode_Simple,
   --   Decode_Complex,
   --   Failed,
   --   Decode_Simple_TL,
   --   Decode_Simple_NTL,
   --   Finished.
   --
   -- Object SO has an identifying non-referential attribute Reference_SO 
   -- and therefore may be uniquely created.
   -- 
   -- Object SO has no TAGS.
   --
   ------------------------------------------------------------------------
   -- *********************  State Actions ********************************
   ------------------------------------------------------------------------
   --

   type Object_State_Type is (
      State_0,
      Non_Existent,
      Idle,
      Decode_Simple,
      Decode_Complex,
      Failed,
      Decode_Simple_TL,
      Decode_Simple_NTL,
      Finished);

   Object_State_Type_First : constant Object_State_Type := Object_State_Type'first;

   --
   ------------------------------------------------------------------------
   --*********************  Object Definition *****************************
   ------------------------------------------------------------------------
   --

   Object_String : String := "SO";

   --
   -------------------------------------------------------------------------------------------------
   --

   type Struct_SO_Type is new Struct_Type with record

      --
      -- Non initialised identifying non referential
      Reference_SO : Application_Types.Base_Integer_Type;

      --
      -- Initialised Non identifying non referential
      An_Integer : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      A_Real : Application_Types.Base_Float_Type := Application_Types.Base_Float_Type_First;

      --
      -- Initialised Non identifying non referential
      Some_Text : Application_Types.Base_Text_Type := Application_Types.Base_Text_Type_First;

      --
      -- Initialised Non identifying non referential
      A_Boolean :  Boolean := Application_Types.Boolean_First;

      --
      -- Initialised Non identifying non referential
      A_Colour : Struct_Domain_Types.Colour_Type := Struct_Domain_Types.Colour_Type_First;

      --
      -- Initialised Non identifying non referential
      Current_State :  Object_State_Type :=  Object_State_Type_First;


   end record;

   Attribute_Count : constant Application_Types.Base_Integer_Type := -7;

   -------------------------------------------------------------------------------------------------

   -------------------------------------------------------------------------------------------------


   --
   ------------------------------------------------------------------------
   --*********************  Object Attribute Access ***********************
   ------------------------------------------------------------------------
   --


   function Get_Reference_SO (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Reference_SO (
      This_Object : in Root_Object.Object_Access;
      Reference_SO_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Reference_SO);
   pragma inline (Put_Reference_SO);


   function Get_An_Integer (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_An_Integer (
      This_Object : in Root_Object.Object_Access;
      An_Integer_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_An_Integer);
   pragma inline (Put_An_Integer);


   function Get_A_Real (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Float_Type;

   procedure Put_A_Real (
      This_Object : in Root_Object.Object_Access;
      A_Real_Value : in Application_Types.Base_Float_Type);

   pragma inline (Get_A_Real);
   pragma inline (Put_A_Real);


   function Get_Some_Text (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Text_Type;

   procedure Put_Some_Text (
      This_Object : in Root_Object.Object_Access;
      Some_Text_Value : in Application_Types.Base_Text_Type);

   pragma inline (Get_Some_Text);
   pragma inline (Put_Some_Text);


   function Get_A_Boolean (
      This_Object : Root_Object.Object_Access) 
   return  Boolean;

   procedure Put_A_Boolean (
      This_Object : in Root_Object.Object_Access;
      A_Boolean_Value : in  Boolean);

   pragma inline (Get_A_Boolean);
   pragma inline (Put_A_Boolean);


   function Get_A_Colour (
      This_Object : Root_Object.Object_Access) 
   return Struct_Domain_Types.Colour_Type;

   procedure Put_A_Colour (
      This_Object : in Root_Object.Object_Access;
      A_Colour_Value : in Struct_Domain_Types.Colour_Type);

   pragma inline (Get_A_Colour);
   pragma inline (Put_A_Colour);


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


   ------------------------------------------------------------------------
   --****************************  Event Code  ****************************
   ------------------------------------------------------------------------
   --
   -- EVENT LIST
   --
   type Event_Class is (
      SO1,
      SO2,
      SO3,
      SO4,
      SO5,
      SO6,
      Class_Event );
   --
   -- EVENT DECLARATION
   --
   type Struct_SO_Event_Type is new Struct_Event_Type with
   record
      This_Event_Class : Event_Class;
   end record;


   procedure Event_Action (
      Dispatch_Event : in     Struct_SO_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type);


   --    
   type Struct_SO_Instance_Event_Type is new Struct_SO_Event_Type with
   record
      Target_Instance : Root_Object.Object_Access;
   end record;
   -- 
   -- 
   procedure Event_Action (
      Dispatch_Event : in     Struct_SO_Instance_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type);


   ------------------------------------------------------------------------
   type Struct_SO_Description_Event is new Struct_SO_Instance_Event_Type with
   record
      null;
   end record;  
   --
   -- EVENT PARAMETERS
   --

   type Struct_SO1 is new Struct_SO_Instance_Event_Type with
   record 
      Test : Application_Types.Base_Integer_Type;
      A_Simple_Structure : Struct_Domain_Types.Simple_Structure_Type;
   end record;

   type Struct_SO2 is new Struct_SO_Instance_Event_Type with
   record 
      null;
   end record;

   type Struct_SO3 is new Struct_SO_Instance_Event_Type with
   record 
      null;
   end record;

   type Struct_SO4 is new Struct_SO_Instance_Event_Type with
   record 
      null;
   end record;

   type Struct_SO5 is new Struct_SO_Instance_Event_Type with
   record 
      Test : Application_Types.Base_Integer_Type;
      A_TL_Structure : Struct_Domain_Types.Type_Linked_Simple_Structure_Type;
   end record;

   type Struct_SO6 is new Struct_SO_Instance_Event_Type with
   record 
      Test : Application_Types.Base_Integer_Type;
      A_NTL_Structure : Struct_Domain_Types.Name_and_Type_Linked_Simple_Structure_Type;
   end record;


   --------------------------------------------------------------------------------------
   procedure Put_Event (
      Event    : in Root_Object.Root_Event_Access_Type;
      To_Class : in Struct_SO_Type;
      Top      : in boolean := false);
    
   procedure Process_Queue;
  
   --------------------------------------------------------------------------------------

   package Struct_SO_Event_Queue is new Generic_FIFO (Root_Object.Root_Event_Access_Type); 

   Struct_SO_Queue: Struct_SO_Event_Queue.FIFO_Type;

   --------------------------------------------------------------------------------------
   procedure Push  (
      Event  : in Root_Object.Root_Event_Access_Type; 
      To_Top : in boolean := false);

   function  Pop    return Root_Object.Root_Event_Access_Type;

   function  Count  return natural;

end Root_Object.Struct.SO;

