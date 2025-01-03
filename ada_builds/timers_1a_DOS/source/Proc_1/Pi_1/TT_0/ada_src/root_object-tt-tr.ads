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
--* File Name:               r.TT.TR.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Domain specification Root_Object.TTTR
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
--  package Root_Object.TT.TR
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

package Root_Object.TT.TR is
--
------------------------------------------------------------------------
   --
   --**************  Object Time_Remaining Information **************
   --
   -- Object TR is ACTIVE
   --
   -- Object TR participates in a super sub type relationship
   --
   --
   --
   -- Object TR is ACTIVE and has the following state actions defined
   --   Non_Existent,
   --   idle,
   --   setup,
   --   deletion,
   --   executing_part_one,
   --   starting_part_two,
   --   executing_part_two,
   --   failed_part_one,
   --   failed_part_two,
   --   passed_part_one,
   --   passed_part_two,
   --   starting_part_three,
   --   executing_part_three,
   --   failed_part_three,
   --   passed_part_three,
   --   complete.
   --
   -- Object TR is a SUB type of T via Relationship R2
   --
   -- Object TR has an identifying non-referential attribute id 
   -- and therefore may be uniquely created.
   -- 
   -- Object TR has no TAGS.
   --
   ------------------------------------------------------------------------
   -- *********************  State Actions ********************************
   ------------------------------------------------------------------------
   --

   type Object_State_Type is (
      State_0,
      Non_Existent,
      idle,
      setup,
      deletion,
      executing_part_one,
      starting_part_two,
      executing_part_two,
      failed_part_one,
      failed_part_two,
      passed_part_one,
      passed_part_two,
      starting_part_three,
      executing_part_three,
      failed_part_three,
      passed_part_three,
      complete);

   Object_State_Type_First : constant Object_State_Type := Object_State_Type'first;

   --
   ------------------------------------------------------------------------
   --*********************  Object Definition *****************************
   ------------------------------------------------------------------------
   --

   Object_String : String := "TR";

   --
   -------------------------------------------------------------------------------------------------
   --

   type TT_TR_Type is new TT_Type with record

      --
      -- Non initialised identifying non referential
      id : Application_Types.Base_Integer_Type;

      --
      -- Non initialised identifying referential
      test_id : Application_Types.Base_Integer_Type;

      --
      -- Initialised Non identifying non referential
      timer_id_one : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      timer_id_two : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Current_State :  Object_State_Type :=  Object_State_Type_First;

      R2_Super : Root_Object.Object_Access := null;

   end record;

   Attribute_Count : constant Application_Types.Base_Integer_Type := -5;

   -------------------------------------------------------------------------------------------------

   procedure Polymorphic_Put (
      This_Object : in out TT_TR_Type;
      This_Event  : in     Root_Object.Root_Event_Access_Type);

   -------------------------------------------------------------------------------------------------


   --
   ------------------------------------------------------------------------
   --*********************  Object Attribute Access ***********************
   ------------------------------------------------------------------------
   --


   function Get_id (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_id (
      This_Object : in Root_Object.Object_Access;
      id_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_id);
   pragma inline (Put_id);


   function Get_test_id (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_test_id (
      This_Object : in Root_Object.Object_Access;
      test_id_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_test_id);
   pragma inline (Put_test_id);


   function Get_timer_id_one (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_timer_id_one (
      This_Object : in Root_Object.Object_Access;
      timer_id_one_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_timer_id_one);
   pragma inline (Put_timer_id_one);


   function Get_timer_id_two (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_timer_id_two (
      This_Object : in Root_Object.Object_Access;
      timer_id_two_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_timer_id_two);
   pragma inline (Put_timer_id_two);


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


   function  Get_R2_Super (
      This_Object : Root_Object.Object_Access) 
   return Root_Object.Object_Access;

   procedure Put_R2_Super (
      This_Object : in  Root_Object.Object_Access;
      R2_Super_Value : in Root_Object.Object_Access);

   pragma inline (Get_R2_Super);
   pragma inline (Put_R2_Super);


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
      TR1,
      TR2,
      TR3,
      TR4,
      TR5,
      TR6,
      TR8,
      TR9,
      TR10,
      T1,
      T2,
      Class_Event );
   --
   -- EVENT DECLARATION
   --
   type TT_TR_Event_Type is new TT_Event_Type with
   record
      This_Event_Class : Event_Class;
   end record;


   procedure Event_Action (
      Dispatch_Event : in     TT_TR_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type);


   --    
   type TT_TR_Instance_Event_Type is new TT_TR_Event_Type with
   record
      Target_Instance : Root_Object.Object_Access;
   end record;
   -- 
   -- 
   procedure Event_Action (
      Dispatch_Event : in     TT_TR_Instance_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type);


   ------------------------------------------------------------------------
   type TT_TR_Description_Event is new TT_TR_Instance_Event_Type with
   record
      null;
   end record;  
   --
   -- EVENT PARAMETERS
   --

   type TT_TR1 is new TT_TR_Instance_Event_Type with
   record 
      null;
   end record;

   type TT_TR2 is new TT_TR_Instance_Event_Type with
   record 
      null;
   end record;

   type TT_TR3 is new TT_TR_Instance_Event_Type with
   record 
      null;
   end record;

   type TT_TR4 is new TT_TR_Instance_Event_Type with
   record 
      null;
   end record;

   type TT_TR5 is new TT_TR_Instance_Event_Type with
   record 
      null;
   end record;

   type TT_TR6 is new TT_TR_Instance_Event_Type with
   record 
      null;
   end record;

   type TT_TR8 is new TT_TR_Instance_Event_Type with
   record 
      null;
   end record;

   type TT_TR9 is new TT_TR_Instance_Event_Type with
   record 
      null;
   end record;

   type TT_TR10 is new TT_TR_Instance_Event_Type with
   record 
      null;
   end record;

   type TT_T1 is new TT_TR_Instance_Event_Type with
   record 
      null;
   end record;

   type TT_T2 is new TT_TR_Instance_Event_Type with
   record 
      null;
   end record;


   --------------------------------------------------------------------------------------
   procedure Put_Event (
      Event    : in Root_Object.Root_Event_Access_Type;
      To_Class : in TT_TR_Type;
      Top      : in boolean := false);
    
   procedure Process_Queue;
  
   --------------------------------------------------------------------------------------

   package TT_TR_Event_Queue is new Generic_FIFO (Root_Object.Root_Event_Access_Type); 

   TT_TR_Queue: TT_TR_Event_Queue.FIFO_Type;

   --------------------------------------------------------------------------------------
   procedure Push  (
      Event  : in Root_Object.Root_Event_Access_Type; 
      To_Top : in boolean := false);

   function  Pop    return Root_Object.Root_Event_Access_Type;

   function  Count  return natural;

end Root_Object.TT.TR;

