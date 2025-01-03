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
--* File Name:               r.RP.DUPLICATED.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Domain specification Root_Object.RPDUPLICATED
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
--  package Root_Object.RP.DUPLICATED
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

package Root_Object.RP.DUPLICATED is
--
------------------------------------------------------------------------
   --
   --**************  Object Duplicated_Result Information **************
   --
   -- Object DUPLICATED is PASSIVE
   --
   --
   --
   -- Object DUPLICATED has an identifying non-referential attribute duplicated_id 
   -- and therefore may be uniquely created.
   -- 
   -- Object DUPLICATED has no TAGS.
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

   Object_String : String := "DUPLICATED";

   --
   -------------------------------------------------------------------------------------------------
   --

   type RP_DUPLICATED_Type is new RP_Type with record

      --
      -- Non initialised identifying non referential
      duplicated_id : Application_Types.Base_Integer_Type;

      --
      -- Non Identifying referential. Thou Shalt Not Use. 
      -- Domain_Number : Application_Types.Base_Integer_Type;
   
      --
      -- Initialised Non identifying non referential
      Who_Reported_The_Duplicated_Result : RP_Domain_Types.Result_Type := RP_Domain_Types.Result_Type_First;

      --
      -- Initialised Non identifying non referential
      Duplicated_Test_Count : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Duplicated_Test_Number : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Which_Test_Number : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      R4_A : Root_Object.Object_Access := null;

   end record;

   Attribute_Count : constant Application_Types.Base_Integer_Type := 5;

   -------------------------------------------------------------------------------------------------

   -------------------------------------------------------------------------------------------------


   --
   ------------------------------------------------------------------------
   --*********************  Object Attribute Access ***********************
   ------------------------------------------------------------------------
   --


   function Get_duplicated_id (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_duplicated_id (
      This_Object : in Root_Object.Object_Access;
      duplicated_id_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_duplicated_id);
   pragma inline (Put_duplicated_id);


   function Get_Who_Reported_The_Duplicated_Result (
      This_Object : Root_Object.Object_Access) 
   return RP_Domain_Types.Result_Type;

   procedure Put_Who_Reported_The_Duplicated_Result (
      This_Object : in Root_Object.Object_Access;
      Who_Reported_The_Duplicated_Result_Value : in RP_Domain_Types.Result_Type);

   pragma inline (Get_Who_Reported_The_Duplicated_Result);
   pragma inline (Put_Who_Reported_The_Duplicated_Result);


   function Get_Duplicated_Test_Count (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Duplicated_Test_Count (
      This_Object : in Root_Object.Object_Access;
      Duplicated_Test_Count_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Duplicated_Test_Count);
   pragma inline (Put_Duplicated_Test_Count);


   function Get_Duplicated_Test_Number (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Duplicated_Test_Number (
      This_Object : in Root_Object.Object_Access;
      Duplicated_Test_Number_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Duplicated_Test_Number);
   pragma inline (Put_Duplicated_Test_Number);


   function Get_Which_Test_Number (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Which_Test_Number (
      This_Object : in Root_Object.Object_Access;
      Which_Test_Number_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Which_Test_Number);
   pragma inline (Put_Which_Test_Number);




   --
   ------------------------------------------------------------------------
   --*********************  Object Relationships **************************
   ------------------------------------------------------------------------
   --


   function  Get_R4_A (
      This_Object : Root_Object.Object_Access) 
   return Root_Object.Object_Access;

   procedure Put_R4_A (
      This_Object :   in  Root_Object.Object_Access;
      R4_A_Value : in Root_Object.Object_Access);

   pragma inline (Get_R4_A);
   pragma inline (Put_R4_A);


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



end Root_Object.RP.DUPLICATED;

