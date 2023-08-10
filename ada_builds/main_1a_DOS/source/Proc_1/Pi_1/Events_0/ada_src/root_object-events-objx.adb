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
--* File Name:               r.Events.objX.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Domain body Root_Object.EventsobjX
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
package body Root_Object.Events.objX is
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

   objX_id_Value : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_first;
--
--ADATEST IGNORE_ON
   function Obtain_Subsequent_objX_id return Application_Types.Base_Integer_Type is
   begin
      objX_id_Value :=
         Application_Types.Base_Integer_Type'succ (objX_id_Value);
      return objX_id_Value;
   end Obtain_Subsequent_objX_id;

--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_objX_id (
      This_Object : Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
       return Events_objX_Type (This_Object.all).objX_id;
   end Get_objX_id;

--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_objX_id (
      This_Object : in Root_Object.Object_Access;
      objX_id_Value : in Application_Types.Base_Integer_Type) is
   begin
      Events_objX_Type (This_Object.all).objX_id :=
         objX_id_Value;
   end Put_objX_id;

--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_ResultX (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return Events_objX_Type (This_Object.all).ResultX;
   end Get_ResultX;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_ResultX (
      This_Object : in Root_Object.Object_Access;
      ResultX_Value : in Application_Types.Base_Integer_Type) is
   begin
      Events_objX_Type (This_Object.all).ResultX :=
         ResultX_Value;
   end Put_ResultX;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_The_Test_No (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return Events_objX_Type (This_Object.all).The_Test_No;
   end Get_The_Test_No;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_The_Test_No (
      This_Object : in Root_Object.Object_Access;
      The_Test_No_Value : in Application_Types.Base_Integer_Type) is
   begin
      Events_objX_Type (This_Object.all).The_Test_No :=
         The_Test_No_Value;
   end Put_The_Test_No;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Integer_Att (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return Events_objX_Type (This_Object.all).Integer_Att;
   end Get_Integer_Att;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Integer_Att (
      This_Object : in Root_Object.Object_Access;
      Integer_Att_Value : in Application_Types.Base_Integer_Type) is
   begin
      Events_objX_Type (This_Object.all).Integer_Att :=
         Integer_Att_Value;
   end Put_Integer_Att;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Real_Att (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Float_Type is
   begin
      return Events_objX_Type (This_Object.all).Real_Att;
   end Get_Real_Att;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Real_Att (
      This_Object : in Root_Object.Object_Access;
      Real_Att_Value : in Application_Types.Base_Float_Type) is
   begin
      Events_objX_Type (This_Object.all).Real_Att :=
         Real_Att_Value;
   end Put_Real_Att;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Text_Att (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Text_Type is
   begin
      return Events_objX_Type (This_Object.all).Text_Att;
   end Get_Text_Att;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Text_Att (
      This_Object : in Root_Object.Object_Access;
      Text_Att_Value : in Application_Types.Base_Text_Type) is
   begin
      Events_objX_Type (This_Object.all).Text_Att :=
         Text_Att_Value;
   end Put_Text_Att;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Boolean_Att (
      This_Object: Root_Object.Object_Access) return  Boolean is
   begin
      return Events_objX_Type (This_Object.all).Boolean_Att;
   end Get_Boolean_Att;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Boolean_Att (
      This_Object : in Root_Object.Object_Access;
      Boolean_Att_Value : in  Boolean) is
   begin
      Events_objX_Type (This_Object.all).Boolean_Att :=
         Boolean_Att_Value;
   end Put_Boolean_Att;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Current_State (
      This_Object: Root_Object.Object_Access) return  Object_State_Type is
   begin
      return Events_objX_Type (This_Object.all).Current_State;
   end Get_Current_State;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Current_State (
      This_Object : in Root_Object.Object_Access;
      Current_State_Value : in  Object_State_Type) is
   begin
      Events_objX_Type (This_Object.all).Current_State :=
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
         This_Object := new Events_objX_Type;
   
      else
         This_Object := Free_List.First_Entry;
         Events_objX_Type(This_Object.all).objX_id := Application_Types.Base_Integer_Type_First;
         Events_objX_Type(This_Object.all).ResultX := Application_Types.Base_Integer_Type_First;
         Events_objX_Type(This_Object.all).The_Test_No := Application_Types.Base_Integer_Type_First;
         Events_objX_Type(This_Object.all).Integer_Att := Application_Types.Base_Integer_Type_First;
         Events_objX_Type(This_Object.all).Real_Att := Application_Types.Base_Float_Type_First;
         Events_objX_Type(This_Object.all).Text_Att := Application_Types.Base_Text_Type_First;
         Events_objX_Type(This_Object.all).Boolean_Att := Application_Types.Boolean_First;
         Events_objX_Type(This_Object.all).Current_State :=  Object_State_Type_First;
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


      Events_objX_Type(This_Object.all).objX_id :=
         Obtain_Subsequent_objX_id;

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

   procedure Events_objX_2 (
      Test_No : in Application_Types.Base_Integer_Type;
      ASL_Type : in Application_Types.Base_Text_Type;
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure Events_objX_3 (
      Test_No : in Application_Types.Base_Integer_Type;
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure Events_objX_4 (
      Test_No : in Application_Types.Base_Integer_Type;
      Which_Test : in Application_Types.Base_Text_Type;
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure Events_objX_6 (
      Test_No : in Application_Types.Base_Integer_Type;
      Input_Param : in Application_Types.Base_Integer_Type;
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure Events_objX_7 (
      Test_No : in Application_Types.Base_Integer_Type;
      Param_A : in Application_Types.Base_Integer_Type;
      Param_B : in Application_Types.Base_Integer_Type;
      Param_C : in Application_Types.Base_Integer_Type;
      Param_D : in Application_Types.Base_Integer_Type;
      Param_E : in Application_Types.Base_Integer_Type;
      Param_F : in Application_Types.Base_Integer_Type;
      Param_G : in Application_Types.Base_Integer_Type;
      Param_H : in Application_Types.Base_Integer_Type;
      Param_I : in Application_Types.Base_Integer_Type;
      Param_J : in Application_Types.Base_Integer_Type;
      Param_K : in Application_Types.Base_Integer_Type;
      Param_L : in Application_Types.Base_Integer_Type;
      Param_M : in Application_Types.Base_Integer_Type;
      Param_N : in Application_Types.Base_Integer_Type;
      Param_O : in Application_Types.Base_Integer_Type;
      Param_P : in Application_Types.Base_Integer_Type;
      Param_Q : in Application_Types.Base_Integer_Type;
      Param_R : in Application_Types.Base_Integer_Type;
      Param_S : in Application_Types.Base_Integer_Type;
      Param_T : in Application_Types.Base_Integer_Type;
      Param_U : in Application_Types.Base_Integer_Type;
      Param_V : in Application_Types.Base_Integer_Type;
      Param_W : in Application_Types.Base_Integer_Type;
      Param_X : in Application_Types.Base_Integer_Type;
      Param_Y : in Application_Types.Base_Integer_Type;
      Param_Z : in Application_Types.Base_Integer_Type;
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure Events_objX_1 (
      Test_No : in Application_Types.Base_Integer_Type;
      The_Test : in Application_Types.Base_Text_Type;
      Returning_No : in Application_Types.Base_Integer_Type;
      This_Instance : in out Root_Object.Object_Access ) is separate;


--
   procedure objX1_To_Check_ASL (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      Events_objX_Type (This_Instance.all).Current_State := 
         Root_Object.Events.objX.Object_State_Type(Check_ASL);

      Events_objX_2 (
         Test_No =>  Events_objX1(This_Event.all).Test_No,
         ASL_Type =>  Events_objX1(This_Event.all).ASL_Type,
         This_Instance => This_Instance );

   end objX1_To_Check_ASL;
--
   procedure objX3_To_Generate_From_State (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      Events_objX_Type (This_Instance.all).Current_State := 
         Root_Object.Events.objX.Object_State_Type(Generate_From_State);

      Events_objX_3 (
         Test_No =>  Events_objX3(This_Event.all).Test_No,
         This_Instance => This_Instance );

   end objX3_To_Generate_From_State;
--
   procedure objX4_To_Check_Attributes (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      Events_objX_Type (This_Instance.all).Current_State := 
         Root_Object.Events.objX.Object_State_Type(Check_Attributes);

      Events_objX_4 (
         Test_No =>  Events_objX4(This_Event.all).Test_No,
         Which_Test =>  Events_objX4(This_Event.all).Which_Test,
         This_Instance => This_Instance );

   end objX4_To_Check_Attributes;
--
   procedure objX5_To_Check_ASL_In_State (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      Events_objX_Type (This_Instance.all).Current_State := 
         Root_Object.Events.objX.Object_State_Type(Check_ASL_In_State);

      Events_objX_6 (
         Test_No =>  Events_objX5(This_Event.all).Test_No,
         Input_Param =>  Events_objX5(This_Event.all).Input_Param,
         This_Instance => This_Instance );

   end objX5_To_Check_ASL_In_State;
--
   procedure objX6_To_Lots_Of_Parameters (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      Events_objX_Type (This_Instance.all).Current_State := 
         Root_Object.Events.objX.Object_State_Type(Lots_Of_Parameters);

      Events_objX_7 (
         Test_No =>  Events_objX6(This_Event.all).Test_No,
         Param_A =>  Events_objX6(This_Event.all).Param_A,
         Param_B =>  Events_objX6(This_Event.all).Param_B,
         Param_C =>  Events_objX6(This_Event.all).Param_C,
         Param_D =>  Events_objX6(This_Event.all).Param_D,
         Param_E =>  Events_objX6(This_Event.all).Param_E,
         Param_F =>  Events_objX6(This_Event.all).Param_F,
         Param_G =>  Events_objX6(This_Event.all).Param_G,
         Param_H =>  Events_objX6(This_Event.all).Param_H,
         Param_I =>  Events_objX6(This_Event.all).Param_I,
         Param_J =>  Events_objX6(This_Event.all).Param_J,
         Param_K =>  Events_objX6(This_Event.all).Param_K,
         Param_L =>  Events_objX6(This_Event.all).Param_L,
         Param_M =>  Events_objX6(This_Event.all).Param_M,
         Param_N =>  Events_objX6(This_Event.all).Param_N,
         Param_O =>  Events_objX6(This_Event.all).Param_O,
         Param_P =>  Events_objX6(This_Event.all).Param_P,
         Param_Q =>  Events_objX6(This_Event.all).Param_Q,
         Param_R =>  Events_objX6(This_Event.all).Param_R,
         Param_S =>  Events_objX6(This_Event.all).Param_S,
         Param_T =>  Events_objX6(This_Event.all).Param_T,
         Param_U =>  Events_objX6(This_Event.all).Param_U,
         Param_V =>  Events_objX6(This_Event.all).Param_V,
         Param_W =>  Events_objX6(This_Event.all).Param_W,
         Param_X =>  Events_objX6(This_Event.all).Param_X,
         Param_Y =>  Events_objX6(This_Event.all).Param_Y,
         Param_Z =>  Events_objX6(This_Event.all).Param_Z,
         This_Instance => This_Instance );

   end objX6_To_Lots_Of_Parameters;
--
   procedure objX2_To_Idle (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      Events_objX_Type (This_Instance.all).Current_State := 
         Root_Object.Events.objX.Object_State_Type(Idle);

      Events_objX_1 (
         Test_No =>  Events_objX2(This_Event.all).Test_No,
         The_Test =>  Events_objX2(This_Event.all).The_Test,
         Returning_No =>  Events_objX2(This_Event.all).Returning_No,
         This_Instance => This_Instance );

   end objX2_To_Idle;


------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Event_Action (
      Dispatch_Event : in     Events_objX_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type) is

   begin
     null;
   end Event_Action;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------
--
   procedure Event_Action (
      Dispatch_Event : in     Events_objX_Instance_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type) is separate;

----------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Push (Event  : in Root_Object.Root_Event_Access_Type;
                   To_Top : in BOOLEAN := FALSE) is
   begin

      Events_objX_Event_Queue.Push (
         Item        => Event,
         Target_FIFO => Events_objX_Queue,
         Top         => To_Top);

   end Push;
--ADATEST IGNORE_OFF

----------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Pop return Root_Object.Root_Event_Access_Type is

      Temp_Event : Root_Object.Root_Event_Access_Type;

   begin

      Events_objX_Event_Queue.Pop (
         Item        => Temp_Event,
         Target_FIFO => Events_objX_Queue);

      return Temp_Event;

   end Pop;
--ADATEST IGNORE_OFF

----------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Count return natural is
   begin

      return Events_objX_Event_Queue.Queue_Length (Events_objX_Queue);

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
      To_Class : in Events_objX_Type;
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
   This_Event_Dispatch_Matrix (objX1, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objX2, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objX3, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objX4, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objX5, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objX6, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (objX1, Idle) := objX1_To_Check_ASL'access;
   This_Event_Dispatch_Matrix (objX2, Idle) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX3, Idle) := objX3_To_Generate_From_State'access;
   This_Event_Dispatch_Matrix (objX4, Idle) := objX4_To_Check_Attributes'access;
   This_Event_Dispatch_Matrix (objX5, Idle) := objX5_To_Check_ASL_In_State'access;
   This_Event_Dispatch_Matrix (objX6, Idle) := objX6_To_Lots_Of_Parameters'access;
   This_Event_Dispatch_Matrix (objX1, Check_ASL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX2, Check_ASL) := objX2_To_Idle'access;
   This_Event_Dispatch_Matrix (objX3, Check_ASL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX4, Check_ASL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX5, Check_ASL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX6, Check_ASL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX1, Generate_From_State) := objX1_To_Check_ASL'access;
   This_Event_Dispatch_Matrix (objX2, Generate_From_State) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX3, Generate_From_State) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX4, Generate_From_State) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX5, Generate_From_State) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX6, Generate_From_State) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX1, Check_Attributes) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX2, Check_Attributes) := objX2_To_Idle'access;
   This_Event_Dispatch_Matrix (objX3, Check_Attributes) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX4, Check_Attributes) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX5, Check_Attributes) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX6, Check_Attributes) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX1, Check_ASL_In_State) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX2, Check_ASL_In_State) := objX2_To_Idle'access;
   This_Event_Dispatch_Matrix (objX3, Check_ASL_In_State) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX4, Check_ASL_In_State) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX5, Check_ASL_In_State) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX6, Check_ASL_In_State) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX1, Lots_Of_Parameters) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX2, Lots_Of_Parameters) := objX2_To_Idle'access;
   This_Event_Dispatch_Matrix (objX3, Lots_Of_Parameters) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX4, Lots_Of_Parameters) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX5, Lots_Of_Parameters) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (objX6, Lots_Of_Parameters) :=  Ignore_Action'access;

end Root_Object.Events.objX;

