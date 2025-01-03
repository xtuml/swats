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
--* File Name:               r.Struct.SO.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Domain body Root_Object.StructSO
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
package body Root_Object.Struct.SO is
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

   Reference_SO_Value : Application_Types.Base_Integer_Type := Application_Types.Base_Integer_Type_first;
--
--ADATEST IGNORE_ON
   function Obtain_Subsequent_Reference_SO return Application_Types.Base_Integer_Type is
   begin
      Reference_SO_Value :=
         Application_Types.Base_Integer_Type'succ (Reference_SO_Value);
      return Reference_SO_Value;
   end Obtain_Subsequent_Reference_SO;

--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Reference_SO (
      This_Object : Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
       return Struct_SO_Type (This_Object.all).Reference_SO;
   end Get_Reference_SO;

--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Reference_SO (
      This_Object : in Root_Object.Object_Access;
      Reference_SO_Value : in Application_Types.Base_Integer_Type) is
   begin
      Struct_SO_Type (This_Object.all).Reference_SO :=
         Reference_SO_Value;
   end Put_Reference_SO;

--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_An_Integer (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Integer_Type is
   begin
      return Struct_SO_Type (This_Object.all).An_Integer;
   end Get_An_Integer;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_An_Integer (
      This_Object : in Root_Object.Object_Access;
      An_Integer_Value : in Application_Types.Base_Integer_Type) is
   begin
      Struct_SO_Type (This_Object.all).An_Integer :=
         An_Integer_Value;
   end Put_An_Integer;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_A_Real (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Float_Type is
   begin
      return Struct_SO_Type (This_Object.all).A_Real;
   end Get_A_Real;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_A_Real (
      This_Object : in Root_Object.Object_Access;
      A_Real_Value : in Application_Types.Base_Float_Type) is
   begin
      Struct_SO_Type (This_Object.all).A_Real :=
         A_Real_Value;
   end Put_A_Real;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Some_Text (
      This_Object: Root_Object.Object_Access) return Application_Types.Base_Text_Type is
   begin
      return Struct_SO_Type (This_Object.all).Some_Text;
   end Get_Some_Text;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Some_Text (
      This_Object : in Root_Object.Object_Access;
      Some_Text_Value : in Application_Types.Base_Text_Type) is
   begin
      Struct_SO_Type (This_Object.all).Some_Text :=
         Some_Text_Value;
   end Put_Some_Text;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_A_Boolean (
      This_Object: Root_Object.Object_Access) return  Boolean is
   begin
      return Struct_SO_Type (This_Object.all).A_Boolean;
   end Get_A_Boolean;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_A_Boolean (
      This_Object : in Root_Object.Object_Access;
      A_Boolean_Value : in  Boolean) is
   begin
      Struct_SO_Type (This_Object.all).A_Boolean :=
         A_Boolean_Value;
   end Put_A_Boolean;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_A_Colour (
      This_Object: Root_Object.Object_Access) return Struct_Domain_Types.Colour_Type is
   begin
      return Struct_SO_Type (This_Object.all).A_Colour;
   end Get_A_Colour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_A_Colour (
      This_Object : in Root_Object.Object_Access;
      A_Colour_Value : in Struct_Domain_Types.Colour_Type) is
   begin
      Struct_SO_Type (This_Object.all).A_Colour :=
         A_Colour_Value;
   end Put_A_Colour;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Get_Current_State (
      This_Object: Root_Object.Object_Access) return  Object_State_Type is
   begin
      return Struct_SO_Type (This_Object.all).Current_State;
   end Get_Current_State;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Put_Current_State (
      This_Object : in Root_Object.Object_Access;
      Current_State_Value : in  Object_State_Type) is
   begin
      Struct_SO_Type (This_Object.all).Current_State :=
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
         This_Object := new Struct_SO_Type;
   
      else
         This_Object := Free_List.First_Entry;
         Struct_SO_Type(This_Object.all).Reference_SO := Application_Types.Base_Integer_Type_First;
         Struct_SO_Type(This_Object.all).An_Integer := Application_Types.Base_Integer_Type_First;
         Struct_SO_Type(This_Object.all).A_Real := Application_Types.Base_Float_Type_First;
         Struct_SO_Type(This_Object.all).Some_Text := Application_Types.Base_Text_Type_First;
         Struct_SO_Type(This_Object.all).A_Boolean := Application_Types.Boolean_First;
         Struct_SO_Type(This_Object.all).A_Colour := Struct_Domain_Types.Colour_Type_First;
         Struct_SO_Type(This_Object.all).Current_State :=  Object_State_Type_First;
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


      Struct_SO_Type(This_Object.all).Reference_SO :=
         Obtain_Subsequent_Reference_SO;

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

   procedure Struct_SO_2 (
      Test : in Application_Types.Base_Integer_Type;
      A_Simple_Structure : in out Struct_Domain_Types.Simple_Structure_Type;
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure Struct_SO_3 (
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure Struct_SO_5 (
      Test : in Application_Types.Base_Integer_Type;
      A_TL_Structure : in out Struct_Domain_Types.Type_Linked_Simple_Structure_Type;
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure Struct_SO_6 (
      Test : in Application_Types.Base_Integer_Type;
      A_NTL_Structure : in out Struct_Domain_Types.Name_and_Type_Linked_Simple_Structure_Type;
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure Struct_SO_8 (
      This_Instance : in out Root_Object.Object_Access ) is separate;

   procedure Struct_SO_4 (
      This_Instance : in out Root_Object.Object_Access ) is separate;


--
   procedure SO1_To_Decode_Simple (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      Struct_SO_Type (This_Instance.all).Current_State := 
         Root_Object.Struct.SO.Object_State_Type(Decode_Simple);

      Struct_SO_2 (
         Test =>  Struct_SO1(This_Event.all).Test,
         A_Simple_Structure =>  Struct_SO1(This_Event.all).A_Simple_Structure,
         This_Instance => This_Instance );

   end SO1_To_Decode_Simple;
--
   procedure SO2_To_Decode_Complex (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      Struct_SO_Type (This_Instance.all).Current_State := 
         Root_Object.Struct.SO.Object_State_Type(Decode_Complex);

      Struct_SO_3 (
         This_Instance => This_Instance );

   end SO2_To_Decode_Complex;
--
   procedure SO5_To_Decode_Simple_TL (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      Struct_SO_Type (This_Instance.all).Current_State := 
         Root_Object.Struct.SO.Object_State_Type(Decode_Simple_TL);

      Struct_SO_5 (
         Test =>  Struct_SO5(This_Event.all).Test,
         A_TL_Structure =>  Struct_SO5(This_Event.all).A_TL_Structure,
         This_Instance => This_Instance );

   end SO5_To_Decode_Simple_TL;
--
   procedure SO6_To_Decode_Simple_NTL (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      Struct_SO_Type (This_Instance.all).Current_State := 
         Root_Object.Struct.SO.Object_State_Type(Decode_Simple_NTL);

      Struct_SO_6 (
         Test =>  Struct_SO6(This_Event.all).Test,
         A_NTL_Structure =>  Struct_SO6(This_Event.all).A_NTL_Structure,
         This_Instance => This_Instance );

   end SO6_To_Decode_Simple_NTL;
--
   procedure SO3_To_Finished (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      Struct_SO_Type (This_Instance.all).Current_State := 
         Root_Object.Struct.SO.Object_State_Type(Finished);

      Struct_SO_8 (
         This_Instance => This_Instance );

   end SO3_To_Finished;
--
   procedure SO4_To_Failed (
      This_Instance : in out Root_Object.Object_Access;
      This_Event    : in     Root_Object.Root_Event_Access_Type) is

   begin

      Struct_SO_Type (This_Instance.all).Current_State := 
         Root_Object.Struct.SO.Object_State_Type(Failed);

      Struct_SO_4 (
         This_Instance => This_Instance );

   end SO4_To_Failed;


------------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Event_Action (
      Dispatch_Event : in     Struct_SO_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type) is

   begin
     null;
   end Event_Action;
--ADATEST IGNORE_OFF

------------------------------------------------------------------------
--
   procedure Event_Action (
      Dispatch_Event : in     Struct_SO_Instance_Event_Type;
      This_Event     : in out Root_Object.Root_Event_Access_Type) is separate;

----------------------------------------------------------------------

--ADATEST IGNORE_ON
   procedure Push (Event  : in Root_Object.Root_Event_Access_Type;
                   To_Top : in BOOLEAN := FALSE) is
   begin

      Struct_SO_Event_Queue.Push (
         Item        => Event,
         Target_FIFO => Struct_SO_Queue,
         Top         => To_Top);

   end Push;
--ADATEST IGNORE_OFF

----------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Pop return Root_Object.Root_Event_Access_Type is

      Temp_Event : Root_Object.Root_Event_Access_Type;

   begin

      Struct_SO_Event_Queue.Pop (
         Item        => Temp_Event,
         Target_FIFO => Struct_SO_Queue);

      return Temp_Event;

   end Pop;
--ADATEST IGNORE_OFF

----------------------------------------------------------------------

--ADATEST IGNORE_ON
   function Count return natural is
   begin

      return Struct_SO_Event_Queue.Queue_Length (Struct_SO_Queue);

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
      To_Class : in Struct_SO_Type;
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
   This_Event_Dispatch_Matrix (SO1, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (SO2, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (SO3, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (SO4, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (SO5, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (SO6, Non_Existent) :=  Cannot_Happen_Action'access;
   This_Event_Dispatch_Matrix (SO1, Idle) := SO1_To_Decode_Simple'access;
   This_Event_Dispatch_Matrix (SO2, Idle) := SO2_To_Decode_Complex'access;
   This_Event_Dispatch_Matrix (SO3, Idle) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO4, Idle) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO5, Idle) := SO5_To_Decode_Simple_TL'access;
   This_Event_Dispatch_Matrix (SO6, Idle) := SO6_To_Decode_Simple_NTL'access;
   This_Event_Dispatch_Matrix (SO1, Decode_Simple) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO2, Decode_Simple) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO3, Decode_Simple) := SO3_To_Finished'access;
   This_Event_Dispatch_Matrix (SO4, Decode_Simple) := SO4_To_Failed'access;
   This_Event_Dispatch_Matrix (SO5, Decode_Simple) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO6, Decode_Simple) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO1, Decode_Complex) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO2, Decode_Complex) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO3, Decode_Complex) := SO3_To_Finished'access;
   This_Event_Dispatch_Matrix (SO4, Decode_Complex) := SO4_To_Failed'access;
   This_Event_Dispatch_Matrix (SO5, Decode_Complex) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO6, Decode_Complex) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO1, Failed) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO2, Failed) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO3, Failed) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO4, Failed) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO5, Failed) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO6, Failed) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO1, Decode_Simple_TL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO2, Decode_Simple_TL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO3, Decode_Simple_TL) := SO3_To_Finished'access;
   This_Event_Dispatch_Matrix (SO4, Decode_Simple_TL) := SO4_To_Failed'access;
   This_Event_Dispatch_Matrix (SO5, Decode_Simple_TL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO6, Decode_Simple_TL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO1, Decode_Simple_NTL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO2, Decode_Simple_NTL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO3, Decode_Simple_NTL) := SO3_To_Finished'access;
   This_Event_Dispatch_Matrix (SO4, Decode_Simple_NTL) := SO4_To_Failed'access;
   This_Event_Dispatch_Matrix (SO5, Decode_Simple_NTL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO6, Decode_Simple_NTL) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO1, Finished) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO2, Finished) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO3, Finished) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO4, Finished) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO5, Finished) :=  Ignore_Action'access;
   This_Event_Dispatch_Matrix (SO6, Finished) :=  Ignore_Action'access;

end Root_Object.Struct.SO;

