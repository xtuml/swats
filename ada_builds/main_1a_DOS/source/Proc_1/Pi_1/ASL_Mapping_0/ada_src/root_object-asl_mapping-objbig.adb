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
--* File Name:               r.ASL_Mapping.objBIG.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Domain body Root_Object.ASL_MappingobjBIG
--* Comments:                Header written by header.macro                           *
--*                           
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
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
--  package Root_Object.<Domain_Key_Letter>.<Object.Object_Key_Letter>
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
--    procedure Process_Event_Queue
--    procedure Get_Class_Size
--    function Size_Of
--
--
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--    jmm     14/06/99        QAR barrp07       Additional adatest ignore_on/off
--
--    jmm     02/11/99        008243/9SR056     Addition of create unique
--
--    jmm     08/11/99        QAR beatd53       Make instance delete operation return a null pointer
--
--    jmm     13/03/00        008932/9SR056     Add additional test for state action procedure parameters
--                                              being a structure set, and make them of mode 'in out' to
--                                              enable deletion.
--
--    jmm     27/06/00        PILOT_0000_0421   Change to execute polymorphic events in the correct sequence
--                                              when generated from a chain of supertype events-to-self
--
--    jmm     28/06/00        PILOT_0000_0422   Include new test for initialisation of 1-M relationship to avoid
--                                              unconditionally creating a new list when the object is pulled off
--                                              the free list. In this case, a list has already been created, and
--                                              further creates lead to a memory leak.
--
--    jmm     28/06/00        PILOT_0000_0423   Include diagnostic references.
--
--    jmm     07/07/00        PILOT_0000_0447   Include update of event counters for deleted object instances.
--
--    jmm     17/08/00        PILOT_0000_0600   Changes for issue 3.0.0 in accordance with ATN_037_03_01.
--
--    jmm     15/12/00        PILOT_0000_0771   Make instance array size a constant which results in the data
--                                              being allocated statically.
--
--    jmm     26/01/01        PILOT_0000_0844   Code which should have been commented out was left in.
--                            PILOT_0000_0891
--
--    jmm     31/01/01        010340/9SR056     Changes for issue 3.0.1 in accordance with SRLE/TS/TSD/skind045.
--
--    jmm     31/05/01        PILOT_0000_1227   Changes for issue 4.0.0 in accordance with SRLE/TS/TSD/skind045.
--
--    db      13/06/01        PILOT_0000_1147   Replace ADATest directives around Create functions.
--
--    db      27/06/01        PILOT_0000_0245   Really delete an instance handle when asked to.
--
--    db      11/07/01        PILOT_0000_0236   Remove referential attribute generation
--                            PILOT_0000_0230   Coding Standards transgressions
--
--    db      08/08/01        PILOT_0000_1416   Debug only code added.
--
--    db      07/02/02        SRLE100002636     Fix create procedure such that if the object created has
--                                              come from the free list, the attributes are defaulted.
--
--    db      08/02/02        SRLE100002578     Add adatest ignore directives around the event action procedure.
--
--    db      11/02/02        SRLE100002577     Remove Event_Scope_Lower and _Higher operations and
--                                              replace them with Event_Count_Scope.
--
--    db      18/03/02        SRLE100002754     Simplification of withing statements.
--
--    db      26/03/02        SRLE100002907     Remove initialise_list 
--
--    db      28/04/02        SRLE100002926     Static objects mean no delete operation provided.
--
--    db      16/05/02        SRLE100003001     Remove Update_Target and Process_Events procedures
--                                              Update generate conditions for dkl.okl.state_number separate
--
--    db      20/05/02        SRLE100003171     Add adatest directives
--
--    db      20/06/02        SRLE100003005     Remove Create_Unique generation for objects that do not have
--                                              non-referential identifiers.
--
--    db      10/07/02        SRLE100000221     Remove Current_State attribute for passive objects
--
--    db      16/07/02        SRLE100000240     Rename Get_Next_<something> function to avoid any unpleasantness 
--                                              with an attribute called Next_<something> as a preferred identifier.
--
--    db      30/07/02        SRLE100003576     Remove defaulting for Static creates.
--   
--    db      31/10/02        SRLE100003959     Remove Event_Count_Scope.
--
--    db      31/10/02        SRLE100003865     Remove 'with' statements to subtype objects 
--                                              when this is a supertype object
--
--    db      10/11/02        SRLE100003876     Differentiate between initilaised array tagged and 
--                                              non-initilaised array tagged objects
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
-- **************************************************************************************
--
-- OOA Environment
--
with Timer;

--
------------------------------------------------------------------------
--
package body Root_Object.ASL_Mapping.objBIG is
--
------------------------------------------------------------------------
--***********************  OOA Environment *****************************
------------------------------------------------------------------------



   type Object_List_Header_Type is
   record
      Size        : Application_Types.Base_Integer_Type := 0;
      Max_Count   : Application_Types.Base_Integer_Type := 0;
      First_Entry : Root_Object.Object_Access := null;
   end record;

   Free_List   : Object_List_Header_Type;
   Object_List : Object_List_Header_Type;



------------------------------------------------------------------------
--*********************  Object Definition *****************************
------------------------------------------------------------------------

   objBIG_id_Value : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_first;
--
--ADATEST IGNORE_ON
   function Obtain_Subsequent_objBIG_id return Application_Types.Base_Integer_Type is
   begin
      objBIG_id_Value :=
         Application_Types.Base_Integer_Type'succ (objBIG_id_Value);
      return objBIG_id_Value;
   end Obtain_Subsequent_objBIG_id;

--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_objBIG_id (
      This_Object : Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
       return ASL_Mapping_objBIG_Type (This_Object.all).objBIG_id;
   end Get_objBIG_id;

--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_objBIG_id (
      This_Object : in Root_Object.Object_Access;
      objBIG_id_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).objBIG_id :=
         objBIG_id_Value;
   end Put_objBIG_id;

--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_One (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).One;
   end Get_One;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_One (
      This_Object : in Root_Object.Object_Access;
      One_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).One :=
         One_Value;
   end Put_One;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Two (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Two;
   end Get_Two;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Two (
      This_Object : in Root_Object.Object_Access;
      Two_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Two :=
         Two_Value;
   end Put_Two;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Three (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Three;
   end Get_Three;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Three (
      This_Object : in Root_Object.Object_Access;
      Three_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Three :=
         Three_Value;
   end Put_Three;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Four (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Four;
   end Get_Four;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Four (
      This_Object : in Root_Object.Object_Access;
      Four_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Four :=
         Four_Value;
   end Put_Four;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Five (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Five;
   end Get_Five;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Five (
      This_Object : in Root_Object.Object_Access;
      Five_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Five :=
         Five_Value;
   end Put_Five;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Six (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Six;
   end Get_Six;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Six (
      This_Object : in Root_Object.Object_Access;
      Six_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Six :=
         Six_Value;
   end Put_Six;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Seven (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Seven;
   end Get_Seven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Seven (
      This_Object : in Root_Object.Object_Access;
      Seven_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Seven :=
         Seven_Value;
   end Put_Seven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Eight (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Eight;
   end Get_Eight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Eight (
      This_Object : in Root_Object.Object_Access;
      Eight_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Eight :=
         Eight_Value;
   end Put_Eight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Nine (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Nine;
   end Get_Nine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Nine (
      This_Object : in Root_Object.Object_Access;
      Nine_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Nine :=
         Nine_Value;
   end Put_Nine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Ten (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Ten;
   end Get_Ten;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Ten (
      This_Object : in Root_Object.Object_Access;
      Ten_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Ten :=
         Ten_Value;
   end Put_Ten;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Eleven (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Eleven;
   end Get_Eleven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Eleven (
      This_Object : in Root_Object.Object_Access;
      Eleven_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Eleven :=
         Eleven_Value;
   end Put_Eleven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Twelve (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Twelve;
   end Get_Twelve;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Twelve (
      This_Object : in Root_Object.Object_Access;
      Twelve_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Twelve :=
         Twelve_Value;
   end Put_Twelve;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Thirteen (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Thirteen;
   end Get_Thirteen;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Thirteen (
      This_Object : in Root_Object.Object_Access;
      Thirteen_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Thirteen :=
         Thirteen_Value;
   end Put_Thirteen;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fourteen (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fourteen;
   end Get_Fourteen;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fourteen (
      This_Object : in Root_Object.Object_Access;
      Fourteen_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fourteen :=
         Fourteen_Value;
   end Put_Fourteen;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fifteen (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fifteen;
   end Get_Fifteen;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fifteen (
      This_Object : in Root_Object.Object_Access;
      Fifteen_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fifteen :=
         Fifteen_Value;
   end Put_Fifteen;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Sixteen (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Sixteen;
   end Get_Sixteen;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Sixteen (
      This_Object : in Root_Object.Object_Access;
      Sixteen_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Sixteen :=
         Sixteen_Value;
   end Put_Sixteen;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Eighteen (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Eighteen;
   end Get_Eighteen;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Eighteen (
      This_Object : in Root_Object.Object_Access;
      Eighteen_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Eighteen :=
         Eighteen_Value;
   end Put_Eighteen;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Nineteen (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Nineteen;
   end Get_Nineteen;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Nineteen (
      This_Object : in Root_Object.Object_Access;
      Nineteen_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Nineteen :=
         Nineteen_Value;
   end Put_Nineteen;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Twenty (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Twenty;
   end Get_Twenty;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Twenty (
      This_Object : in Root_Object.Object_Access;
      Twenty_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Twenty :=
         Twenty_Value;
   end Put_Twenty;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Twentytwo (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Twentytwo;
   end Get_Twentytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Twentytwo (
      This_Object : in Root_Object.Object_Access;
      Twentytwo_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Twentytwo :=
         Twentytwo_Value;
   end Put_Twentytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Twentyone (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Twentyone;
   end Get_Twentyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Twentyone (
      This_Object : in Root_Object.Object_Access;
      Twentyone_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Twentyone :=
         Twentyone_Value;
   end Put_Twentyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Twentythree (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Twentythree;
   end Get_Twentythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Twentythree (
      This_Object : in Root_Object.Object_Access;
      Twentythree_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Twentythree :=
         Twentythree_Value;
   end Put_Twentythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Twentyfour (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Twentyfour;
   end Get_Twentyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Twentyfour (
      This_Object : in Root_Object.Object_Access;
      Twentyfour_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Twentyfour :=
         Twentyfour_Value;
   end Put_Twentyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Twentyfive (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Twentyfive;
   end Get_Twentyfive;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Twentyfive (
      This_Object : in Root_Object.Object_Access;
      Twentyfive_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Twentyfive :=
         Twentyfive_Value;
   end Put_Twentyfive;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Twentysix (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Twentysix;
   end Get_Twentysix;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Twentysix (
      This_Object : in Root_Object.Object_Access;
      Twentysix_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Twentysix :=
         Twentysix_Value;
   end Put_Twentysix;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Twentyseven (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Twentyseven;
   end Get_Twentyseven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Twentyseven (
      This_Object : in Root_Object.Object_Access;
      Twentyseven_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Twentyseven :=
         Twentyseven_Value;
   end Put_Twentyseven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Twentyeight (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Twentyeight;
   end Get_Twentyeight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Twentyeight (
      This_Object : in Root_Object.Object_Access;
      Twentyeight_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Twentyeight :=
         Twentyeight_Value;
   end Put_Twentyeight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Twentynine (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Twentynine;
   end Get_Twentynine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Twentynine (
      This_Object : in Root_Object.Object_Access;
      Twentynine_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Twentynine :=
         Twentynine_Value;
   end Put_Twentynine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Thirty (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Thirty;
   end Get_Thirty;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Thirty (
      This_Object : in Root_Object.Object_Access;
      Thirty_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Thirty :=
         Thirty_Value;
   end Put_Thirty;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Thirtyone (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Thirtyone;
   end Get_Thirtyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Thirtyone (
      This_Object : in Root_Object.Object_Access;
      Thirtyone_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Thirtyone :=
         Thirtyone_Value;
   end Put_Thirtyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Thirtytwo (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Thirtytwo;
   end Get_Thirtytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Thirtytwo (
      This_Object : in Root_Object.Object_Access;
      Thirtytwo_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Thirtytwo :=
         Thirtytwo_Value;
   end Put_Thirtytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Thirtythree (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Thirtythree;
   end Get_Thirtythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Thirtythree (
      This_Object : in Root_Object.Object_Access;
      Thirtythree_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Thirtythree :=
         Thirtythree_Value;
   end Put_Thirtythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Thirtyfour (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Thirtyfour;
   end Get_Thirtyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Thirtyfour (
      This_Object : in Root_Object.Object_Access;
      Thirtyfour_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Thirtyfour :=
         Thirtyfour_Value;
   end Put_Thirtyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Thirtyfive (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Thirtyfive;
   end Get_Thirtyfive;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Thirtyfive (
      This_Object : in Root_Object.Object_Access;
      Thirtyfive_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Thirtyfive :=
         Thirtyfive_Value;
   end Put_Thirtyfive;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Thirtysix (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Thirtysix;
   end Get_Thirtysix;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Thirtysix (
      This_Object : in Root_Object.Object_Access;
      Thirtysix_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Thirtysix :=
         Thirtysix_Value;
   end Put_Thirtysix;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Thirtyseven (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Thirtyseven;
   end Get_Thirtyseven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Thirtyseven (
      This_Object : in Root_Object.Object_Access;
      Thirtyseven_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Thirtyseven :=
         Thirtyseven_Value;
   end Put_Thirtyseven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Thirtyeight (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Thirtyeight;
   end Get_Thirtyeight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Thirtyeight (
      This_Object : in Root_Object.Object_Access;
      Thirtyeight_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Thirtyeight :=
         Thirtyeight_Value;
   end Put_Thirtyeight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Thirtynine (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Thirtynine;
   end Get_Thirtynine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Thirtynine (
      This_Object : in Root_Object.Object_Access;
      Thirtynine_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Thirtynine :=
         Thirtynine_Value;
   end Put_Thirtynine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Forty (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Forty;
   end Get_Forty;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Forty (
      This_Object : in Root_Object.Object_Access;
      Forty_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Forty :=
         Forty_Value;
   end Put_Forty;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fortyone (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fortyone;
   end Get_Fortyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fortyone (
      This_Object : in Root_Object.Object_Access;
      Fortyone_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fortyone :=
         Fortyone_Value;
   end Put_Fortyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fortytwo (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fortytwo;
   end Get_Fortytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fortytwo (
      This_Object : in Root_Object.Object_Access;
      Fortytwo_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fortytwo :=
         Fortytwo_Value;
   end Put_Fortytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fortythree (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fortythree;
   end Get_Fortythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fortythree (
      This_Object : in Root_Object.Object_Access;
      Fortythree_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fortythree :=
         Fortythree_Value;
   end Put_Fortythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fortyfour (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fortyfour;
   end Get_Fortyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fortyfour (
      This_Object : in Root_Object.Object_Access;
      Fortyfour_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fortyfour :=
         Fortyfour_Value;
   end Put_Fortyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fortyfive (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fortyfive;
   end Get_Fortyfive;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fortyfive (
      This_Object : in Root_Object.Object_Access;
      Fortyfive_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fortyfive :=
         Fortyfive_Value;
   end Put_Fortyfive;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fortysix (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fortysix;
   end Get_Fortysix;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fortysix (
      This_Object : in Root_Object.Object_Access;
      Fortysix_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fortysix :=
         Fortysix_Value;
   end Put_Fortysix;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fortyseven (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fortyseven;
   end Get_Fortyseven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fortyseven (
      This_Object : in Root_Object.Object_Access;
      Fortyseven_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fortyseven :=
         Fortyseven_Value;
   end Put_Fortyseven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fortyeight (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fortyeight;
   end Get_Fortyeight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fortyeight (
      This_Object : in Root_Object.Object_Access;
      Fortyeight_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fortyeight :=
         Fortyeight_Value;
   end Put_Fortyeight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fortynine (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fortynine;
   end Get_Fortynine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fortynine (
      This_Object : in Root_Object.Object_Access;
      Fortynine_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fortynine :=
         Fortynine_Value;
   end Put_Fortynine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fifty (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fifty;
   end Get_Fifty;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fifty (
      This_Object : in Root_Object.Object_Access;
      Fifty_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fifty :=
         Fifty_Value;
   end Put_Fifty;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fiftyone (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fiftyone;
   end Get_Fiftyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fiftyone (
      This_Object : in Root_Object.Object_Access;
      Fiftyone_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fiftyone :=
         Fiftyone_Value;
   end Put_Fiftyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fiftytwo (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fiftytwo;
   end Get_Fiftytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fiftytwo (
      This_Object : in Root_Object.Object_Access;
      Fiftytwo_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fiftytwo :=
         Fiftytwo_Value;
   end Put_Fiftytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fiftythree (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fiftythree;
   end Get_Fiftythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fiftythree (
      This_Object : in Root_Object.Object_Access;
      Fiftythree_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fiftythree :=
         Fiftythree_Value;
   end Put_Fiftythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fiftyfour (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fiftyfour;
   end Get_Fiftyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fiftyfour (
      This_Object : in Root_Object.Object_Access;
      Fiftyfour_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fiftyfour :=
         Fiftyfour_Value;
   end Put_Fiftyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fiftyfive (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fiftyfive;
   end Get_Fiftyfive;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fiftyfive (
      This_Object : in Root_Object.Object_Access;
      Fiftyfive_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fiftyfive :=
         Fiftyfive_Value;
   end Put_Fiftyfive;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fiftysix (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fiftysix;
   end Get_Fiftysix;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fiftysix (
      This_Object : in Root_Object.Object_Access;
      Fiftysix_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fiftysix :=
         Fiftysix_Value;
   end Put_Fiftysix;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fiftyseven (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fiftyseven;
   end Get_Fiftyseven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fiftyseven (
      This_Object : in Root_Object.Object_Access;
      Fiftyseven_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fiftyseven :=
         Fiftyseven_Value;
   end Put_Fiftyseven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fiftyeight (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fiftyeight;
   end Get_Fiftyeight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fiftyeight (
      This_Object : in Root_Object.Object_Access;
      Fiftyeight_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fiftyeight :=
         Fiftyeight_Value;
   end Put_Fiftyeight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Fiftynine (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Fiftynine;
   end Get_Fiftynine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Fiftynine (
      This_Object : in Root_Object.Object_Access;
      Fiftynine_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Fiftynine :=
         Fiftynine_Value;
   end Put_Fiftynine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Sixty (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Sixty;
   end Get_Sixty;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Sixty (
      This_Object : in Root_Object.Object_Access;
      Sixty_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Sixty :=
         Sixty_Value;
   end Put_Sixty;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Sixtyone (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Sixtyone;
   end Get_Sixtyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Sixtyone (
      This_Object : in Root_Object.Object_Access;
      Sixtyone_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Sixtyone :=
         Sixtyone_Value;
   end Put_Sixtyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Sixtytwo (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Sixtytwo;
   end Get_Sixtytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Sixtytwo (
      This_Object : in Root_Object.Object_Access;
      Sixtytwo_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Sixtytwo :=
         Sixtytwo_Value;
   end Put_Sixtytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Sixtythree (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Sixtythree;
   end Get_Sixtythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Sixtythree (
      This_Object : in Root_Object.Object_Access;
      Sixtythree_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Sixtythree :=
         Sixtythree_Value;
   end Put_Sixtythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Sixtyfour (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Sixtyfour;
   end Get_Sixtyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Sixtyfour (
      This_Object : in Root_Object.Object_Access;
      Sixtyfour_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Sixtyfour :=
         Sixtyfour_Value;
   end Put_Sixtyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Sixtyfive (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Sixtyfive;
   end Get_Sixtyfive;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Sixtyfive (
      This_Object : in Root_Object.Object_Access;
      Sixtyfive_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Sixtyfive :=
         Sixtyfive_Value;
   end Put_Sixtyfive;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Sixtysix (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Sixtysix;
   end Get_Sixtysix;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Sixtysix (
      This_Object : in Root_Object.Object_Access;
      Sixtysix_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Sixtysix :=
         Sixtysix_Value;
   end Put_Sixtysix;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Sixtyseven (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Sixtyseven;
   end Get_Sixtyseven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Sixtyseven (
      This_Object : in Root_Object.Object_Access;
      Sixtyseven_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Sixtyseven :=
         Sixtyseven_Value;
   end Put_Sixtyseven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Sixtyeight (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Sixtyeight;
   end Get_Sixtyeight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Sixtyeight (
      This_Object : in Root_Object.Object_Access;
      Sixtyeight_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Sixtyeight :=
         Sixtyeight_Value;
   end Put_Sixtyeight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Sixtynine (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Sixtynine;
   end Get_Sixtynine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Sixtynine (
      This_Object : in Root_Object.Object_Access;
      Sixtynine_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Sixtynine :=
         Sixtynine_Value;
   end Put_Sixtynine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Seventy (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Seventy;
   end Get_Seventy;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Seventy (
      This_Object : in Root_Object.Object_Access;
      Seventy_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Seventy :=
         Seventy_Value;
   end Put_Seventy;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Seventyone (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Seventyone;
   end Get_Seventyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Seventyone (
      This_Object : in Root_Object.Object_Access;
      Seventyone_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Seventyone :=
         Seventyone_Value;
   end Put_Seventyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Seventytwo (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Seventytwo;
   end Get_Seventytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Seventytwo (
      This_Object : in Root_Object.Object_Access;
      Seventytwo_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Seventytwo :=
         Seventytwo_Value;
   end Put_Seventytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Seventythree (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Seventythree;
   end Get_Seventythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Seventythree (
      This_Object : in Root_Object.Object_Access;
      Seventythree_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Seventythree :=
         Seventythree_Value;
   end Put_Seventythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Seventyfour (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Seventyfour;
   end Get_Seventyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Seventyfour (
      This_Object : in Root_Object.Object_Access;
      Seventyfour_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Seventyfour :=
         Seventyfour_Value;
   end Put_Seventyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Seventyfive (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Seventyfive;
   end Get_Seventyfive;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Seventyfive (
      This_Object : in Root_Object.Object_Access;
      Seventyfive_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Seventyfive :=
         Seventyfive_Value;
   end Put_Seventyfive;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Seventysix (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Seventysix;
   end Get_Seventysix;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Seventysix (
      This_Object : in Root_Object.Object_Access;
      Seventysix_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Seventysix :=
         Seventysix_Value;
   end Put_Seventysix;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Seventyseven (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Seventyseven;
   end Get_Seventyseven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Seventyseven (
      This_Object : in Root_Object.Object_Access;
      Seventyseven_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Seventyseven :=
         Seventyseven_Value;
   end Put_Seventyseven;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Seventyeight (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Seventyeight;
   end Get_Seventyeight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Seventyeight (
      This_Object : in Root_Object.Object_Access;
      Seventyeight_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Seventyeight :=
         Seventyeight_Value;
   end Put_Seventyeight;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Seventynine (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Seventynine;
   end Get_Seventynine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Seventynine (
      This_Object : in Root_Object.Object_Access;
      Seventynine_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Seventynine :=
         Seventynine_Value;
   end Put_Seventynine;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Eighty (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Eighty;
   end Get_Eighty;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Eighty (
      This_Object : in Root_Object.Object_Access;
      Eighty_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Eighty :=
         Eighty_Value;
   end Put_Eighty;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Eightyone (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Eightyone;
   end Get_Eightyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Eightyone (
      This_Object : in Root_Object.Object_Access;
      Eightyone_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Eightyone :=
         Eightyone_Value;
   end Put_Eightyone;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Eightytwo (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Eightytwo;
   end Get_Eightytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Eightytwo (
      This_Object : in Root_Object.Object_Access;
      Eightytwo_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Eightytwo :=
         Eightytwo_Value;
   end Put_Eightytwo;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Eightythree (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Eightythree;
   end Get_Eightythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Eightythree (
      This_Object : in Root_Object.Object_Access;
      Eightythree_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Eightythree :=
         Eightythree_Value;
   end Put_Eightythree;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Eightyfour (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Eightyfour;
   end Get_Eightyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Eightyfour (
      This_Object : in Root_Object.Object_Access;
      Eightyfour_Value : in Application_Types.Base_Integer_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Eightyfour :=
         Eightyfour_Value;
   end Put_Eightyfour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Current_State (
      This_Object: Root_Object.Object_Access) return  Object_State_Type is
   begin
      return ASL_Mapping_objBIG_Type (This_Object.all).Current_State;
   end Get_Current_State;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Current_State (
      This_Object : in Root_Object.Object_Access;
      Current_State_Value : in  Object_State_Type) is
   begin
      ASL_Mapping_objBIG_Type (This_Object.all).Current_State :=
         Current_State_Value;
   end Put_Current_State;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

------------------------------------------------------------------------
--*********************  Object Management *****************************
------------------------------------------------------------------------

--
--ADATEST IGNORE_ON
   function Create return Root_Object.Object_Access is

      This_Object: Root_Object.Object_Access := null;

   begin


      --
      if Free_List.First_Entry = null then
         This_Object := new ASL_Mapping_objBIG_Type;
   
      else
         This_Object := Free_List.First_Entry;
         ASL_Mapping_objBIG_Type(This_Object.all).objBIG_id := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).One := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Two := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Three := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Four := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Five := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Six := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Seven := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Eight := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Nine := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Ten := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Eleven := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Twelve := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Thirteen := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fourteen := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fifteen := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Sixteen := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Eighteen := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Nineteen := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Twenty := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Twentytwo := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Twentyone := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Twentythree := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Twentyfour := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Twentyfive := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Twentysix := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Twentyseven := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Twentyeight := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Twentynine := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Thirty := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Thirtyone := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Thirtytwo := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Thirtythree := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Thirtyfour := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Thirtyfive := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Thirtysix := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Thirtyseven := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Thirtyeight := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Thirtynine := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Forty := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fortyone := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fortytwo := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fortythree := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fortyfour := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fortyfive := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fortysix := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fortyseven := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fortyeight := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fortynine := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fifty := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fiftyone := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fiftytwo := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fiftythree := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fiftyfour := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fiftyfive := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fiftysix := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fiftyseven := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fiftyeight := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Fiftynine := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Sixty := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Sixtyone := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Sixtytwo := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Sixtythree := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Sixtyfour := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Sixtyfive := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Sixtysix := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Sixtyseven := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Sixtyeight := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Sixtynine := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Seventy := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Seventyone := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Seventytwo := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Seventythree := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Seventyfour := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Seventyfive := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Seventysix := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Seventyseven := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Seventyeight := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Seventynine := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Eighty := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Eightyone := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Eightytwo := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Eightythree := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Eightyfour := Application_Types.Base_Integer_Type_First;
         ASL_Mapping_objBIG_Type(This_Object.all).Current_State :=  Object_State_Type_First;
         Free_List.First_Entry := Free_List.First_Entry.Next_Object;
      end if;

      --
      -- connect the new instance into the class set
      --
      This_Object.Next_Object := Object_List.First_Entry;

      if Object_List.First_Entry /= null then
         Object_List.First_Entry.Previous_Object := This_Object;
      end if;

      This_Object.Previous_Object := null;
      Object_List.First_Entry := This_Object;
      --
      -- and increment the size of the store
      --
      Object_List.Size := Object_List.Size + 1;
      --

      if Object_List.Size > Object_List.Max_Count then
         Object_List.Max_Count := Object_List.Size;
      end if;
      --
      -- set up the attributes as necessary
      --
      This_Object.Root_Object_Attribute := Root_Object.Get_Next_Root_Object_Attribute;
      --


      return This_Object;

   end Create;
--ADATEST IGNORE_OFF
--
--------------------------------------------------------------------------
--

--ADATEST IGNORE_ON
   function Create_Unique return Root_Object.Object_Access is

   This_Object: Root_Object.Object_Access;

   begin
      --
      -- get hold of a new instance
      --
      This_Object := Create;


      ASL_Mapping_objBIG_Type(This_Object.all).objBIG_id :=
         Obtain_Subsequent_objBIG_id;

      return This_Object;

   end Create_Unique;
--ADATEST IGNORE_OFF
--------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Count_Of (
      Instance_Count     :    out Application_Types.Base_Integer_Type;
      Max_Instance_Count :    out Application_Types.Base_Integer_Type) is

   begin
      Instance_Count     := Object_List.Size;
      Max_Instance_Count := Object_List.Max_Count;
   end Count_Of;
--ADATEST IGNORE_OFF

--------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Find (Add_To : in out Root_Object.Object_List.List_Header_Access_Type) is
      Temp_Instance: Root_Object.Object_Access;

   begin
      
      Temp_Instance := Object_List.First_Entry;

      while Temp_Instance /= null loop

         Root_Object.Object_List.Insert (
            New_Item => Temp_Instance,
            On_To    => Add_To );

         Temp_Instance := Temp_Instance.Next_Object;

      end loop;

   end Find;

--ADATEST IGNORE_OFF

--------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Return_List return Root_Object.Object_Access is

   begin
      return Object_List.First_Entry;
   end Return_List;

--ADATEST IGNORE_OFF

---------------------------------------------------------------------

   procedure Delete (Old_Instance : in out Root_Object.Object_Access) is

   begin

      if Old_Instance.Previous_Object = null then -- first in list

         Object_List.First_Entry := Old_Instance.Next_Object;

         if Old_Instance.Next_Object /= null then -- but not last in list
            Old_Instance.Next_Object.Previous_Object := Old_Instance.Previous_Object;
         end if;

      else -- Old_Instance.Previous_Object <> null -- not first in list

         Old_Instance.Previous_Object.Next_Object := Old_Instance.Next_Object;

         if Old_Instance.Next_Object /= null then -- and not last in list either
            Old_Instance.Next_Object.Previous_Object := Old_Instance.Previous_Object;
         end if;

      end if;

      Object_List.Size := Object_List.Size - 1;
      --
      Old_Instance.Next_Object := Free_List.First_Entry;

      Free_List.First_Entry := Old_Instance;
      --
      Old_Instance := null;



   end Delete;


----------------------------------------------------------------------------


------------------------------------------------------------------------
------------------------------------------------------------------------
--*****************  Code imported from actions child ******************
------------------------------------------------------------------------

   type Event_Matrix_Access_Type is access
      procedure (
         This_Instance : in out Root_Object.Object_Access;
         This_Event    : in     Root_Object.Root_Event_Access_Type);
--
   type Event_Dispatch_Matrix_Type is array (Event_Class, Object_State_Type) of Event_Matrix_Access_Type;

------------------------------------------------------------------------
------------------------------------------------------------------------

   procedure Ignore_Action (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin
      null;
   end Ignore_Action;
------------------------------------------------------------------------

   This_Event_Dispatch_Matrix : Event_Dispatch_Matrix_Type := (
      others      => (others => Ignore_Action'access));

------------------------------------------------------------------------

   procedure Unknown_Action (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type)
   renames Ignore_Action;

   procedure Cannot_Happen_Action  (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type)
   renames Ignore_Action;

   procedure Meaningless_Action  (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type)
   renames Ignore_Action;

--
-- STATE ACTIONS
--

   procedure ASL_Mapping_objBIG_2 (
      Big_IH : in  Root_Object.Object_Access;
      Current_Test_Number : in Application_Types.Base_Integer_Type;
      Expected_Result_Number : in Application_Types.Base_Integer_Type;
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure ASL_Mapping_objBIG_1 (
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure ASL_Mapping_objBIG_4 (
      Big_IH : in  Root_Object.Object_Access;
      Next_Test_Number : in Application_Types.Base_Integer_Type;
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure ASL_Mapping_objBIG_3 (
      This_Instance : in out Root_Object.Object_Access ) is separate;


--
   procedure objBIG1_To_How_Big (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      ASL_Mapping_objBIG_Type (This_Instance.all).Current_State := 
         Root_Object.ASL_Mapping.objBIG.Object_State_Type(How_Big);

      ASL_Mapping_objBIG_2 (
         Big_IH =>  ASL_Mapping_objBIG1(This_Event.all).Big_IH,
         Current_Test_Number =>  ASL_Mapping_objBIG1(This_Event.all).Current_Test_Number,
         Expected_Result_Number =>  ASL_Mapping_objBIG1(This_Event.all).Expected_Result_Number,
         This_Instance => This_Instance );

   end objBIG1_To_How_Big;
--
   procedure objBIG3_To_Idle_State (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      ASL_Mapping_objBIG_Type (This_Instance.all).Current_State := 
         Root_Object.ASL_Mapping.objBIG.Object_State_Type(Idle_State);

      ASL_Mapping_objBIG_1 (
         This_Instance => This_Instance );

   end objBIG3_To_Idle_State;
--
   procedure objBIG4_To_Next_Stage (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      ASL_Mapping_objBIG_Type (This_Instance.all).Current_State := 
         Root_Object.ASL_Mapping.objBIG.Object_State_Type(Next_Stage);

      ASL_Mapping_objBIG_4 (
         Big_IH =>  ASL_Mapping_objBIG4(This_Event.all).Big_IH,
         Next_Test_Number =>  ASL_Mapping_objBIG4(This_Event.all).Next_Test_Number,
         This_Instance => This_Instance );

   end objBIG4_To_Next_Stage;
--
   procedure objBIG2_To_Complete (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      ASL_Mapping_objBIG_Type (This_Instance.all).Current_State := 
         Root_Object.ASL_Mapping.objBIG.Object_State_Type(Complete);

      ASL_Mapping_objBIG_3 (
         This_Instance => This_Instance );

   end objBIG2_To_Complete;


------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Event_Action (
      Dispatch_Event : in     ASL_Mapping_objBIG_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type) is

   begin
     null;
   end Event_Action;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------
--
   procedure Event_Action (
      Dispatch_Event : in     ASL_Mapping_objBIG_Instance_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type) is separate;

----------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Push (Event  : in Root_Object.Root_Event_Access_Type;
                   To_Top : in BOOLEAN := FALSE) is
   begin

      ASL_Mapping_objBIG_Event_Queue.Push (
         Item        => Event,
         Target_FIFO => ASL_Mapping_objBIG_Queue,
         Top         => To_Top);

   end Push;
--ADATEST IGNORE_OFF

----------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Pop return Root_Object.Root_Event_Access_Type is

      Temp_Event : Root_Object.Root_Event_Access_Type;

   begin

      ASL_Mapping_objBIG_Event_Queue.Pop (
         Item        => Temp_Event,
         Target_FIFO => ASL_Mapping_objBIG_Queue);

      return Temp_Event;

   end Pop;
--ADATEST IGNORE_OFF

----------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Count return natural is
   begin

      return ASL_Mapping_objBIG_Event_Queue.Queue_Length (ASL_Mapping_objBIG_Queue);

   end Count;
--ADATEST IGNORE_OFF

----------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Process_Queue is

      Popped_Event: Root_Object.Root_Event_Access_Type;

   begin

      while Count > 0 loop

         Popped_Event := Pop;

         Event_Action (
            Dispatch_Event => Popped_Event.all,
            This_Event     => Popped_Event);

      end loop;

   end Process_Queue;
--ADATEST IGNORE_OFF

----------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Event (
      Event    : in Root_Object.Root_Event_Access_Type;
      To_Class : in ASL_Mapping_objBIG_Type;
      Top      : in BOOLEAN := FALSE) is

   begin

      Push (Event => Event);

   end Put_Event;
--ADATEST IGNORE_OFF

----------------------------------------------------------------------

begin
   null;
--
-- STATE TRANSITION TABLE, elaboration
--
   This_Event_Dispatch_Matrix (objBIG1, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objBIG2, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objBIG3, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objBIG4, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objBIG1, Idle_State) := objBIG1_To_How_Big'access;
   This_Event_Dispatch_Matrix (objBIG2, Idle_State) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objBIG3, Idle_State) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objBIG4, Idle_State) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objBIG1, How_Big) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objBIG2, How_Big) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objBIG3, How_Big) := objBIG3_To_Idle_State'access;
   This_Event_Dispatch_Matrix (objBIG4, How_Big) := objBIG4_To_Next_Stage'access;
   This_Event_Dispatch_Matrix (objBIG1, Complete) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objBIG2, Complete) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objBIG3, Complete) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objBIG4, Complete) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objBIG1, Next_Stage) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objBIG2, Next_Stage) := objBIG2_To_Complete'access;
   This_Event_Dispatch_Matrix (objBIG3, Next_Stage) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objBIG4, Next_Stage) :=  Ignore_Action'access;

end Root_Object.ASL_Mapping.objBIG;

