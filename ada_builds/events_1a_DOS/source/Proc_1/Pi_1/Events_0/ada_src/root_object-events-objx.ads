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
--* File Name:               r.Events.objX.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Domain specification Root_Object.EventsobjX
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
--  package Root_Object.Events.objX
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

package Root_Object.Events.objX is
--
------------------------------------------------------------------------
   --
   --**************  Object Object_X Information **************
   --
   -- Object objX is ACTIVE
   --
   --
   --
   -- Object objX is ACTIVE and has the following state actions defined
   --   Non_Existent,
   --   Idle,
   --   Check_ASL,
   --   Generate_From_State,
   --   Check_Attributes,
   --   Check_ASL_In_State,
   --   Lots_Of_Parameters.
   --
   -- Object objX has an identifying non-referential attribute objX_id 
   -- and therefore may be uniquely created.
   -- 
   -- Object objX has no TAGS.
   --
   ------------------------------------------------------------------------
   -- *********************  State Actions ********************************
   ------------------------------------------------------------------------
   --

   type Object_State_Type is (
      State_0,
      Non_Existent,
      Idle,
      Check_ASL,
      Generate_From_State,
      Check_Attributes,
      Check_ASL_In_State,
      Lots_Of_Parameters);

   Object_State_Type_First : constant Object_State_Type := Object_State_Type'first;

   --
   ------------------------------------------------------------------------
   --*********************  Object Definition *****************************
   ------------------------------------------------------------------------
   --

   Object_String : String := "objX";

   --
   -------------------------------------------------------------------------------------------------
   --

   type Events_objX_Type is new Events_Type with record

      --
      -- Non initialised identifying non referential
      objX_id : Application_Types.Base_Integer_Type;

      --
      -- Initialised Non identifying non referential
      ResultX : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      The_Test_No : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Integer_Att : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Real_Att : Application_Types.Base_Float_Type := Application_Types.Base_Float_Type_First;

      --
      -- Initialised Non identifying non referential
      Text_Att : Application_Types.Base_Text_Type := Application_Types.Base_Text_Type_First;

      --
      -- Initialised Non identifying non referential
      Boolean_Att :  Boolean := Application_Types.Boolean_First;

      --
      -- Initialised Non identifying non referential
      Current_State :  Object_State_Type :=  Object_State_Type_First;


   end record;

   Attribute_Count : constant Application_Types.Base_Integer_Type := -8;

   -------------------------------------------------------------------------------------------------

   -------------------------------------------------------------------------------------------------


   --
   ------------------------------------------------------------------------
   --*********************  Object Attribute Access ***********************
   ------------------------------------------------------------------------
   --


   function Get_objX_id (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_objX_id (
      This_Object : in Root_Object.Object_Access;
      objX_id_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_objX_id);
   pragma inline (Put_objX_id);


   function Get_ResultX (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_ResultX (
      This_Object : in Root_Object.Object_Access;
      ResultX_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_ResultX);
   pragma inline (Put_ResultX);


   function Get_The_Test_No (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_The_Test_No (
      This_Object : in Root_Object.Object_Access;
      The_Test_No_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_The_Test_No);
   pragma inline (Put_The_Test_No);


   function Get_Integer_Att (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Integer_Att (
      This_Object : in Root_Object.Object_Access;
      Integer_Att_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Integer_Att);
   pragma inline (Put_Integer_Att);


   function Get_Real_Att (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Float_Type;

   procedure Put_Real_Att (
      This_Object : in Root_Object.Object_Access;
      Real_Att_Value : in Application_Types.Base_Float_Type);

   pragma inline (Get_Real_Att);
   pragma inline (Put_Real_Att);


   function Get_Text_Att (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Text_Type;

   procedure Put_Text_Att (
      This_Object : in Root_Object.Object_Access;
      Text_Att_Value : in Application_Types.Base_Text_Type);

   pragma inline (Get_Text_Att);
   pragma inline (Put_Text_Att);


   function Get_Boolean_Att (
      This_Object : Root_Object.Object_Access) 
   return  Boolean;

   procedure Put_Boolean_Att (
      This_Object : in Root_Object.Object_Access;
      Boolean_Att_Value : in  Boolean);

   pragma inline (Get_Boolean_Att);
   pragma inline (Put_Boolean_Att);


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
      objX1,
      objX2,
      objX3,
      objX4,
      objX5,
      objX6,
      Class_Event );
   --
   -- EVENT DECLARATION
   --
   type Events_objX_Event_Type is new Events_Event_Type with
   record
      This_Event_Class : Event_Class;
   end record;


   procedure Event_Action (
      Dispatch_Event : in     Events_objX_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type);


   --    
   type Events_objX_Instance_Event_Type is new Events_objX_Event_Type with
   record
      Target_Instance : Root_Object.Object_Access;
   end record;
   -- 
   -- 
   procedure Event_Action (
      Dispatch_Event : in     Events_objX_Instance_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type);


   ------------------------------------------------------------------------
   type Events_objX_Description_Event is new Events_objX_Instance_Event_Type with
   record
      null;
   end record;  
   --
   -- EVENT PARAMETERS
   --

   type Events_objX1 is new Events_objX_Instance_Event_Type with
   record 
      Test_No : Application_Types.Base_Integer_Type;
      ASL_Type : Application_Types.Base_Text_Type;
   end record;

   type Events_objX2 is new Events_objX_Instance_Event_Type with
   record 
      Test_No : Application_Types.Base_Integer_Type;
      The_Test : Application_Types.Base_Text_Type;
      Returning_No : Application_Types.Base_Integer_Type;
   end record;

   type Events_objX3 is new Events_objX_Instance_Event_Type with
   record 
      Test_No : Application_Types.Base_Integer_Type;
   end record;

   type Events_objX4 is new Events_objX_Instance_Event_Type with
   record 
      Test_No : Application_Types.Base_Integer_Type;
      Which_Test : Application_Types.Base_Text_Type;
   end record;

   type Events_objX5 is new Events_objX_Instance_Event_Type with
   record 
      Test_No : Application_Types.Base_Integer_Type;
      Input_Param : Application_Types.Base_Integer_Type;
   end record;

   type Events_objX6 is new Events_objX_Instance_Event_Type with
   record 
      Test_No : Application_Types.Base_Integer_Type;
      Param_A : Application_Types.Base_Integer_Type;
      Param_B : Application_Types.Base_Integer_Type;
      Param_C : Application_Types.Base_Integer_Type;
      Param_D : Application_Types.Base_Integer_Type;
      Param_E : Application_Types.Base_Integer_Type;
      Param_F : Application_Types.Base_Integer_Type;
      Param_G : Application_Types.Base_Integer_Type;
      Param_H : Application_Types.Base_Integer_Type;
      Param_I : Application_Types.Base_Integer_Type;
      Param_J : Application_Types.Base_Integer_Type;
      Param_K : Application_Types.Base_Integer_Type;
      Param_L : Application_Types.Base_Integer_Type;
      Param_M : Application_Types.Base_Integer_Type;
      Param_N : Application_Types.Base_Integer_Type;
      Param_O : Application_Types.Base_Integer_Type;
      Param_P : Application_Types.Base_Integer_Type;
      Param_Q : Application_Types.Base_Integer_Type;
      Param_R : Application_Types.Base_Integer_Type;
      Param_S : Application_Types.Base_Integer_Type;
      Param_T : Application_Types.Base_Integer_Type;
      Param_U : Application_Types.Base_Integer_Type;
      Param_V : Application_Types.Base_Integer_Type;
      Param_W : Application_Types.Base_Integer_Type;
      Param_X : Application_Types.Base_Integer_Type;
      Param_Y : Application_Types.Base_Integer_Type;
      Param_Z : Application_Types.Base_Integer_Type;
   end record;


   --------------------------------------------------------------------------------------
   procedure Put_Event (
      Event    : in Root_Object.Root_Event_Access_Type;
      To_Class : in Events_objX_Type;
      Top      : in boolean := false);
    
   procedure Process_Queue;
  
   --------------------------------------------------------------------------------------

   package Events_objX_Event_Queue is new Generic_FIFO (Root_Object.Root_Event_Access_Type); 

   Events_objX_Queue: Events_objX_Event_Queue.FIFO_Type;

   --------------------------------------------------------------------------------------
   procedure Push  (
      Event  : in Root_Object.Root_Event_Access_Type; 
      To_Top : in boolean := false);

   function  Pop    return Root_Object.Root_Event_Access_Type;

   function  Count  return natural;

end Root_Object.Events.objX;

