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
--* File Name:               r.ASL_Mapping.objBIG.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Domain specification Root_Object.ASL_MappingobjBIG
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
--  package Root_Object.ASL_Mapping.objBIG
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

package Root_Object.ASL_Mapping.objBIG is
--
------------------------------------------------------------------------
   --
   --**************  Object BIG_Object Information **************
   --
   -- Object objBIG is ACTIVE
   --
   --
   --
   -- Object objBIG is ACTIVE and has the following state actions defined
   --   Non_Existent,
   --   Idle_State,
   --   How_Big,
   --   Complete,
   --   Next_Stage.
   --
   -- Object objBIG has an identifying non-referential attribute objBIG_id 
   -- and therefore may be uniquely created.
   -- 
   -- Object objBIG has no TAGS.
   --
   ------------------------------------------------------------------------
   -- *********************  State Actions ********************************
   ------------------------------------------------------------------------
   --

   type Object_State_Type is (
      State_0,
      Non_Existent,
      Idle_State,
      How_Big,
      Complete,
      Next_Stage);

   Object_State_Type_First : constant Object_State_Type := Object_State_Type'first;

   --
   ------------------------------------------------------------------------
   --*********************  Object Definition *****************************
   ------------------------------------------------------------------------
   --

   Object_String : String := "objBIG";

   --
   -------------------------------------------------------------------------------------------------
   --

   type ASL_Mapping_objBIG_Type is new ASL_Mapping_Type with record

      --
      -- Non initialised identifying non referential
      objBIG_id : Application_Types.Base_Integer_Type;

      --
      -- Initialised Non identifying non referential
      One : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Two : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Three : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Four : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Five : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Six : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Seven : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Eight : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Nine : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Ten : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Eleven : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Twelve : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Thirteen : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fourteen : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fifteen : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Sixteen : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Eighteen : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Nineteen : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Twenty : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Twentytwo : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Twentyone : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Twentythree : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Twentyfour : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Twentyfive : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Twentysix : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Twentyseven : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Twentyeight : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Twentynine : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Thirty : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Thirtyone : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Thirtytwo : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Thirtythree : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Thirtyfour : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Thirtyfive : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Thirtysix : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Thirtyseven : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Thirtyeight : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Thirtynine : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Forty : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fortyone : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fortytwo : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fortythree : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fortyfour : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fortyfive : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fortysix : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fortyseven : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fortyeight : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fortynine : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fifty : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fiftyone : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fiftytwo : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fiftythree : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fiftyfour : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fiftyfive : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fiftysix : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fiftyseven : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fiftyeight : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Fiftynine : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Sixty : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Sixtyone : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Sixtytwo : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Sixtythree : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Sixtyfour : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Sixtyfive : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Sixtysix : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Sixtyseven : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Sixtyeight : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Sixtynine : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Seventy : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Seventyone : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Seventytwo : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Seventythree : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Seventyfour : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Seventyfive : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Seventysix : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Seventyseven : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Seventyeight : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Seventynine : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Eighty : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Eightyone : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Eightytwo : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Eightythree : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Eightyfour : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_First;

      --
      -- Initialised Non identifying non referential
      Current_State :  Object_State_Type :=  Object_State_Type_First;


   end record;

   Attribute_Count : constant Application_Types.Base_Integer_Type := -85;

   -------------------------------------------------------------------------------------------------

   -------------------------------------------------------------------------------------------------


   --
   ------------------------------------------------------------------------
   --*********************  Object Attribute Access ***********************
   ------------------------------------------------------------------------
   --


   function Get_objBIG_id (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_objBIG_id (
      This_Object : in Root_Object.Object_Access;
      objBIG_id_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_objBIG_id);
   pragma inline (Put_objBIG_id);


   function Get_One (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_One (
      This_Object : in Root_Object.Object_Access;
      One_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_One);
   pragma inline (Put_One);


   function Get_Two (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Two (
      This_Object : in Root_Object.Object_Access;
      Two_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Two);
   pragma inline (Put_Two);


   function Get_Three (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Three (
      This_Object : in Root_Object.Object_Access;
      Three_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Three);
   pragma inline (Put_Three);


   function Get_Four (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Four (
      This_Object : in Root_Object.Object_Access;
      Four_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Four);
   pragma inline (Put_Four);


   function Get_Five (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Five (
      This_Object : in Root_Object.Object_Access;
      Five_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Five);
   pragma inline (Put_Five);


   function Get_Six (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Six (
      This_Object : in Root_Object.Object_Access;
      Six_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Six);
   pragma inline (Put_Six);


   function Get_Seven (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Seven (
      This_Object : in Root_Object.Object_Access;
      Seven_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Seven);
   pragma inline (Put_Seven);


   function Get_Eight (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Eight (
      This_Object : in Root_Object.Object_Access;
      Eight_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Eight);
   pragma inline (Put_Eight);


   function Get_Nine (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Nine (
      This_Object : in Root_Object.Object_Access;
      Nine_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Nine);
   pragma inline (Put_Nine);


   function Get_Ten (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Ten (
      This_Object : in Root_Object.Object_Access;
      Ten_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Ten);
   pragma inline (Put_Ten);


   function Get_Eleven (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Eleven (
      This_Object : in Root_Object.Object_Access;
      Eleven_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Eleven);
   pragma inline (Put_Eleven);


   function Get_Twelve (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Twelve (
      This_Object : in Root_Object.Object_Access;
      Twelve_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Twelve);
   pragma inline (Put_Twelve);


   function Get_Thirteen (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Thirteen (
      This_Object : in Root_Object.Object_Access;
      Thirteen_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Thirteen);
   pragma inline (Put_Thirteen);


   function Get_Fourteen (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fourteen (
      This_Object : in Root_Object.Object_Access;
      Fourteen_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fourteen);
   pragma inline (Put_Fourteen);


   function Get_Fifteen (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fifteen (
      This_Object : in Root_Object.Object_Access;
      Fifteen_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fifteen);
   pragma inline (Put_Fifteen);


   function Get_Sixteen (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Sixteen (
      This_Object : in Root_Object.Object_Access;
      Sixteen_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Sixteen);
   pragma inline (Put_Sixteen);


   function Get_Eighteen (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Eighteen (
      This_Object : in Root_Object.Object_Access;
      Eighteen_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Eighteen);
   pragma inline (Put_Eighteen);


   function Get_Nineteen (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Nineteen (
      This_Object : in Root_Object.Object_Access;
      Nineteen_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Nineteen);
   pragma inline (Put_Nineteen);


   function Get_Twenty (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Twenty (
      This_Object : in Root_Object.Object_Access;
      Twenty_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Twenty);
   pragma inline (Put_Twenty);


   function Get_Twentytwo (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Twentytwo (
      This_Object : in Root_Object.Object_Access;
      Twentytwo_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Twentytwo);
   pragma inline (Put_Twentytwo);


   function Get_Twentyone (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Twentyone (
      This_Object : in Root_Object.Object_Access;
      Twentyone_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Twentyone);
   pragma inline (Put_Twentyone);


   function Get_Twentythree (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Twentythree (
      This_Object : in Root_Object.Object_Access;
      Twentythree_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Twentythree);
   pragma inline (Put_Twentythree);


   function Get_Twentyfour (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Twentyfour (
      This_Object : in Root_Object.Object_Access;
      Twentyfour_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Twentyfour);
   pragma inline (Put_Twentyfour);


   function Get_Twentyfive (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Twentyfive (
      This_Object : in Root_Object.Object_Access;
      Twentyfive_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Twentyfive);
   pragma inline (Put_Twentyfive);


   function Get_Twentysix (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Twentysix (
      This_Object : in Root_Object.Object_Access;
      Twentysix_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Twentysix);
   pragma inline (Put_Twentysix);


   function Get_Twentyseven (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Twentyseven (
      This_Object : in Root_Object.Object_Access;
      Twentyseven_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Twentyseven);
   pragma inline (Put_Twentyseven);


   function Get_Twentyeight (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Twentyeight (
      This_Object : in Root_Object.Object_Access;
      Twentyeight_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Twentyeight);
   pragma inline (Put_Twentyeight);


   function Get_Twentynine (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Twentynine (
      This_Object : in Root_Object.Object_Access;
      Twentynine_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Twentynine);
   pragma inline (Put_Twentynine);


   function Get_Thirty (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Thirty (
      This_Object : in Root_Object.Object_Access;
      Thirty_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Thirty);
   pragma inline (Put_Thirty);


   function Get_Thirtyone (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Thirtyone (
      This_Object : in Root_Object.Object_Access;
      Thirtyone_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Thirtyone);
   pragma inline (Put_Thirtyone);


   function Get_Thirtytwo (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Thirtytwo (
      This_Object : in Root_Object.Object_Access;
      Thirtytwo_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Thirtytwo);
   pragma inline (Put_Thirtytwo);


   function Get_Thirtythree (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Thirtythree (
      This_Object : in Root_Object.Object_Access;
      Thirtythree_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Thirtythree);
   pragma inline (Put_Thirtythree);


   function Get_Thirtyfour (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Thirtyfour (
      This_Object : in Root_Object.Object_Access;
      Thirtyfour_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Thirtyfour);
   pragma inline (Put_Thirtyfour);


   function Get_Thirtyfive (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Thirtyfive (
      This_Object : in Root_Object.Object_Access;
      Thirtyfive_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Thirtyfive);
   pragma inline (Put_Thirtyfive);


   function Get_Thirtysix (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Thirtysix (
      This_Object : in Root_Object.Object_Access;
      Thirtysix_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Thirtysix);
   pragma inline (Put_Thirtysix);


   function Get_Thirtyseven (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Thirtyseven (
      This_Object : in Root_Object.Object_Access;
      Thirtyseven_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Thirtyseven);
   pragma inline (Put_Thirtyseven);


   function Get_Thirtyeight (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Thirtyeight (
      This_Object : in Root_Object.Object_Access;
      Thirtyeight_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Thirtyeight);
   pragma inline (Put_Thirtyeight);


   function Get_Thirtynine (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Thirtynine (
      This_Object : in Root_Object.Object_Access;
      Thirtynine_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Thirtynine);
   pragma inline (Put_Thirtynine);


   function Get_Forty (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Forty (
      This_Object : in Root_Object.Object_Access;
      Forty_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Forty);
   pragma inline (Put_Forty);


   function Get_Fortyone (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fortyone (
      This_Object : in Root_Object.Object_Access;
      Fortyone_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fortyone);
   pragma inline (Put_Fortyone);


   function Get_Fortytwo (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fortytwo (
      This_Object : in Root_Object.Object_Access;
      Fortytwo_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fortytwo);
   pragma inline (Put_Fortytwo);


   function Get_Fortythree (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fortythree (
      This_Object : in Root_Object.Object_Access;
      Fortythree_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fortythree);
   pragma inline (Put_Fortythree);


   function Get_Fortyfour (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fortyfour (
      This_Object : in Root_Object.Object_Access;
      Fortyfour_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fortyfour);
   pragma inline (Put_Fortyfour);


   function Get_Fortyfive (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fortyfive (
      This_Object : in Root_Object.Object_Access;
      Fortyfive_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fortyfive);
   pragma inline (Put_Fortyfive);


   function Get_Fortysix (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fortysix (
      This_Object : in Root_Object.Object_Access;
      Fortysix_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fortysix);
   pragma inline (Put_Fortysix);


   function Get_Fortyseven (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fortyseven (
      This_Object : in Root_Object.Object_Access;
      Fortyseven_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fortyseven);
   pragma inline (Put_Fortyseven);


   function Get_Fortyeight (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fortyeight (
      This_Object : in Root_Object.Object_Access;
      Fortyeight_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fortyeight);
   pragma inline (Put_Fortyeight);


   function Get_Fortynine (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fortynine (
      This_Object : in Root_Object.Object_Access;
      Fortynine_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fortynine);
   pragma inline (Put_Fortynine);


   function Get_Fifty (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fifty (
      This_Object : in Root_Object.Object_Access;
      Fifty_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fifty);
   pragma inline (Put_Fifty);


   function Get_Fiftyone (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fiftyone (
      This_Object : in Root_Object.Object_Access;
      Fiftyone_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fiftyone);
   pragma inline (Put_Fiftyone);


   function Get_Fiftytwo (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fiftytwo (
      This_Object : in Root_Object.Object_Access;
      Fiftytwo_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fiftytwo);
   pragma inline (Put_Fiftytwo);


   function Get_Fiftythree (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fiftythree (
      This_Object : in Root_Object.Object_Access;
      Fiftythree_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fiftythree);
   pragma inline (Put_Fiftythree);


   function Get_Fiftyfour (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fiftyfour (
      This_Object : in Root_Object.Object_Access;
      Fiftyfour_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fiftyfour);
   pragma inline (Put_Fiftyfour);


   function Get_Fiftyfive (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fiftyfive (
      This_Object : in Root_Object.Object_Access;
      Fiftyfive_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fiftyfive);
   pragma inline (Put_Fiftyfive);


   function Get_Fiftysix (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fiftysix (
      This_Object : in Root_Object.Object_Access;
      Fiftysix_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fiftysix);
   pragma inline (Put_Fiftysix);


   function Get_Fiftyseven (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fiftyseven (
      This_Object : in Root_Object.Object_Access;
      Fiftyseven_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fiftyseven);
   pragma inline (Put_Fiftyseven);


   function Get_Fiftyeight (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fiftyeight (
      This_Object : in Root_Object.Object_Access;
      Fiftyeight_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fiftyeight);
   pragma inline (Put_Fiftyeight);


   function Get_Fiftynine (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Fiftynine (
      This_Object : in Root_Object.Object_Access;
      Fiftynine_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Fiftynine);
   pragma inline (Put_Fiftynine);


   function Get_Sixty (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Sixty (
      This_Object : in Root_Object.Object_Access;
      Sixty_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Sixty);
   pragma inline (Put_Sixty);


   function Get_Sixtyone (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Sixtyone (
      This_Object : in Root_Object.Object_Access;
      Sixtyone_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Sixtyone);
   pragma inline (Put_Sixtyone);


   function Get_Sixtytwo (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Sixtytwo (
      This_Object : in Root_Object.Object_Access;
      Sixtytwo_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Sixtytwo);
   pragma inline (Put_Sixtytwo);


   function Get_Sixtythree (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Sixtythree (
      This_Object : in Root_Object.Object_Access;
      Sixtythree_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Sixtythree);
   pragma inline (Put_Sixtythree);


   function Get_Sixtyfour (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Sixtyfour (
      This_Object : in Root_Object.Object_Access;
      Sixtyfour_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Sixtyfour);
   pragma inline (Put_Sixtyfour);


   function Get_Sixtyfive (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Sixtyfive (
      This_Object : in Root_Object.Object_Access;
      Sixtyfive_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Sixtyfive);
   pragma inline (Put_Sixtyfive);


   function Get_Sixtysix (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Sixtysix (
      This_Object : in Root_Object.Object_Access;
      Sixtysix_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Sixtysix);
   pragma inline (Put_Sixtysix);


   function Get_Sixtyseven (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Sixtyseven (
      This_Object : in Root_Object.Object_Access;
      Sixtyseven_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Sixtyseven);
   pragma inline (Put_Sixtyseven);


   function Get_Sixtyeight (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Sixtyeight (
      This_Object : in Root_Object.Object_Access;
      Sixtyeight_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Sixtyeight);
   pragma inline (Put_Sixtyeight);


   function Get_Sixtynine (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Sixtynine (
      This_Object : in Root_Object.Object_Access;
      Sixtynine_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Sixtynine);
   pragma inline (Put_Sixtynine);


   function Get_Seventy (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Seventy (
      This_Object : in Root_Object.Object_Access;
      Seventy_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Seventy);
   pragma inline (Put_Seventy);


   function Get_Seventyone (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Seventyone (
      This_Object : in Root_Object.Object_Access;
      Seventyone_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Seventyone);
   pragma inline (Put_Seventyone);


   function Get_Seventytwo (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Seventytwo (
      This_Object : in Root_Object.Object_Access;
      Seventytwo_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Seventytwo);
   pragma inline (Put_Seventytwo);


   function Get_Seventythree (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Seventythree (
      This_Object : in Root_Object.Object_Access;
      Seventythree_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Seventythree);
   pragma inline (Put_Seventythree);


   function Get_Seventyfour (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Seventyfour (
      This_Object : in Root_Object.Object_Access;
      Seventyfour_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Seventyfour);
   pragma inline (Put_Seventyfour);


   function Get_Seventyfive (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Seventyfive (
      This_Object : in Root_Object.Object_Access;
      Seventyfive_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Seventyfive);
   pragma inline (Put_Seventyfive);


   function Get_Seventysix (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Seventysix (
      This_Object : in Root_Object.Object_Access;
      Seventysix_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Seventysix);
   pragma inline (Put_Seventysix);


   function Get_Seventyseven (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Seventyseven (
      This_Object : in Root_Object.Object_Access;
      Seventyseven_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Seventyseven);
   pragma inline (Put_Seventyseven);


   function Get_Seventyeight (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Seventyeight (
      This_Object : in Root_Object.Object_Access;
      Seventyeight_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Seventyeight);
   pragma inline (Put_Seventyeight);


   function Get_Seventynine (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Seventynine (
      This_Object : in Root_Object.Object_Access;
      Seventynine_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Seventynine);
   pragma inline (Put_Seventynine);


   function Get_Eighty (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Eighty (
      This_Object : in Root_Object.Object_Access;
      Eighty_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Eighty);
   pragma inline (Put_Eighty);


   function Get_Eightyone (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Eightyone (
      This_Object : in Root_Object.Object_Access;
      Eightyone_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Eightyone);
   pragma inline (Put_Eightyone);


   function Get_Eightytwo (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Eightytwo (
      This_Object : in Root_Object.Object_Access;
      Eightytwo_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Eightytwo);
   pragma inline (Put_Eightytwo);


   function Get_Eightythree (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Eightythree (
      This_Object : in Root_Object.Object_Access;
      Eightythree_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Eightythree);
   pragma inline (Put_Eightythree);


   function Get_Eightyfour (
      This_Object : Root_Object.Object_Access) 
   return Application_Types.Base_Integer_Type;

   procedure Put_Eightyfour (
      This_Object : in Root_Object.Object_Access;
      Eightyfour_Value : in Application_Types.Base_Integer_Type);

   pragma inline (Get_Eightyfour);
   pragma inline (Put_Eightyfour);


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
      objBIG1,
      objBIG2,
      objBIG3,
      objBIG4,
      Class_Event );
   --
   -- EVENT DECLARATION
   --
   type ASL_Mapping_objBIG_Event_Type is new ASL_Mapping_Event_Type with
   record
      This_Event_Class : Event_Class;
   end record;


   procedure Event_Action (
      Dispatch_Event : in     ASL_Mapping_objBIG_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type);


   --    
   type ASL_Mapping_objBIG_Instance_Event_Type is new ASL_Mapping_objBIG_Event_Type with
   record
      Target_Instance : Root_Object.Object_Access;
   end record;
   -- 
   -- 
   procedure Event_Action (
      Dispatch_Event : in     ASL_Mapping_objBIG_Instance_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type);


   ------------------------------------------------------------------------
   type ASL_Mapping_objBIG_Description_Event is new ASL_Mapping_objBIG_Instance_Event_Type with
   record
      null;
   end record;  
   --
   -- EVENT PARAMETERS
   --

   type ASL_Mapping_objBIG1 is new ASL_Mapping_objBIG_Instance_Event_Type with
   record 
      Big_IH :  Root_Object.Object_Access;
      Current_Test_Number : Application_Types.Base_Integer_Type;
      Expected_Result_Number : Application_Types.Base_Integer_Type;
   end record;

   type ASL_Mapping_objBIG2 is new ASL_Mapping_objBIG_Instance_Event_Type with
   record 
      null;
   end record;

   type ASL_Mapping_objBIG3 is new ASL_Mapping_objBIG_Instance_Event_Type with
   record 
      null;
   end record;

   type ASL_Mapping_objBIG4 is new ASL_Mapping_objBIG_Instance_Event_Type with
   record 
      Big_IH :  Root_Object.Object_Access;
      Next_Test_Number : Application_Types.Base_Integer_Type;
   end record;


   --------------------------------------------------------------------------------------
   procedure Put_Event (
      Event    : in Root_Object.Root_Event_Access_Type;
      To_Class : in ASL_Mapping_objBIG_Type;
      Top      : in boolean := false);
    
   procedure Process_Queue;
  
   --------------------------------------------------------------------------------------

   package ASL_Mapping_objBIG_Event_Queue is new Generic_FIFO (Root_Object.Root_Event_Access_Type); 

   ASL_Mapping_objBIG_Queue: ASL_Mapping_objBIG_Event_Queue.FIFO_Type;

   --------------------------------------------------------------------------------------
   procedure Push  (
      Event  : in Root_Object.Root_Event_Access_Type; 
      To_Top : in boolean := false);

   function  Pop    return Root_Object.Root_Event_Access_Type;

   function  Count  return natural;

end Root_Object.ASL_Mapping.objBIG;

