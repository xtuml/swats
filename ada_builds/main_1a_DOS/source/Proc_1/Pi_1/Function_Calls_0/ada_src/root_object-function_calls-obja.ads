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
--* File Name:               r.Function_Calls.objA.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Domain specification Root_Object.Function_CallsobjA
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
--  package Root_Object.Function_Calls.objA
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

package Root_Object.Function_Calls.objA is
--
------------------------------------------------------------------------
   --
   --**************  Object Object_A Information **************
   --
   -- Object objA is ACTIVE
   --
   --
   --
   -- Object objA is ACTIVE and has the following state actions defined
   --   Non_Existent,
   --   Idle,
   --   Verification,
   --   Fail.
   --
   -- Object objA has an identifying non-referential attribute ReferenceA 
   -- and therefore may be uniquely created.
   -- 
   -- Object objA has no TAGS.
   --
   ------------------------------------------------------------------------
   -- *********************  State Actions ********************************
   ------------------------------------------------------------------------
   --

   type Object_State_Type is (
      State_0,
      Non_Existent,
      Idle,
      Verification,
      Fail);

   Object_State_Type_First : constant Object_State_Type := Object_State_Type'first;

   --
   ------------------------------------------------------------------------
   --*********************  Object Definition *****************************
   ------------------------------------------------------------------------
   --

   Object_String : String := "objA";

   --
   -------------------------------------------------------------------------------------------------
   --

   type Function_Calls_objA_Type is new Function_Calls_Type with record

      --
      -- Non initialised identifying non referential
      ReferenceA : Application_Types.Base_Integer_Type;

      --
      -- Initialised Non identifying non referential
      ResultA : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Current_State :  Object_State_Type :=  Object_State_Type_First;


   end record;

   Attribute_Count : constant Application_Types.Base_Integer_Type := -3;

   -------------------------------------------------------------------------------------------------

   -------------------------------------------------------------------------------------------------


   --
   ------------------------------------------------------------------------
   --*********************  Object Attribute Access ***********************
   ------------------------------------------------------------------------
   --


   function Get_ReferenceA (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_ReferenceA (
      This_Object : in Root_Object.Object_Access;
      ReferenceA_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_ReferenceA);
   pragma inline (Put_ReferenceA);


   function Get_ResultA (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_ResultA (
      This_Object : in Root_Object.Object_Access;
      ResultA_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_ResultA);
   pragma inline (Put_ResultA);


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
      objA1,
      objA2,
      objA3,
      Class_Event );
   --
   -- EVENT DECLARATION
   --
   type Function_Calls_objA_Event_Type is new Function_Calls_Event_Type with
   record
      This_Event_Class : Event_Class;
   end record;


   procedure Event_Action (
      Dispatch_Event : in     Function_Calls_objA_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type);


   --    
   type Function_Calls_objA_Instance_Event_Type is new Function_Calls_objA_Event_Type with
   record
      Target_Instance : Root_Object.Object_Access;
   end record;
   -- 
   -- 
   procedure Event_Action (
      Dispatch_Event : in     Function_Calls_objA_Instance_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type);


   ------------------------------------------------------------------------
   type Function_Calls_objA_Description_Event is new Function_Calls_objA_Instance_Event_Type with
   record
      null;
   end record;  
   --
   -- EVENT PARAMETERS
   --

   type Function_Calls_objA1 is new Function_Calls_objA_Instance_Event_Type with
   record 
      null;
   end record;

   type Function_Calls_objA2 is new Function_Calls_objA_Instance_Event_Type with
   record 
      null;
   end record;

   type Function_Calls_objA3 is new Function_Calls_objA_Instance_Event_Type with
   record 
      Test_Case_ID : Application_Types.Base_Integer_Type;
      Invocation : Application_Types.Base_Integer_Type;
   end record;


   --------------------------------------------------------------------------------------
   procedure Put_Event (
      Event    : in Root_Object.Root_Event_Access_Type;
      To_Class : in Function_Calls_objA_Type;
      Top      : in boolean := false);
    
   procedure Process_Queue;
  
   --------------------------------------------------------------------------------------

   package Function_Calls_objA_Event_Queue is new Generic_FIFO (Root_Object.Root_Event_Access_Type); 

   Function_Calls_objA_Queue: Function_Calls_objA_Event_Queue.FIFO_Type;

   --------------------------------------------------------------------------------------
   procedure Push  (
      Event  : in Root_Object.Root_Event_Access_Type; 
      To_Top : in boolean := false);

   function  Pop    return Root_Object.Root_Event_Access_Type;

   function  Count  return natural;

end Root_Object.Function_Calls.objA;

