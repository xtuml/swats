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
--* File Name:               Events_Scenario1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Events Scenario
--*                          
--* Comments:                Header written by ASL Translator
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
--*  -----------------                                                                *
--*                                                                                   *
--* Domain Name              : Events
--* Domain Key Letter        : Events
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Events.BTD;
with Root_Object.Events.ETS;
with Root_Object.Events.objMCS;
with Root_Object.Events.objS;
with Root_Object.Events.objR;
with Root_Object.Events.objQ;
with Root_Object.Events.objP;
with Root_Object.Events.sbF;
with Root_Object.Events.sbE;
with Root_Object.Events.sbD;
with Root_Object.Events.sbC;
with Root_Object.Events.sbB;
with Root_Object.Events.sbA;
with Root_Object.Events.SprA;
with Root_Object.Events.objEDATA;
with Root_Object.Events.objVERCETL;
with Root_Object.Events.objTERMINAL;
with Root_Object.Events.REFLECT;
with Root_Object.Events.objK;
with Root_Object.Events.objJ;
with Root_Object.Events.objU;
with Root_Object.Events.objT;
with Root_Object.Events.objC;
with Root_Object.Events.objB;
with Root_Object.Events.objA;
with Root_Object.Events.objF;
with Root_Object.Events.objE;
with Root_Object.Events.objD;
with Root_Object.Events.TD;

-- List of relationships used
with Events_rel_R4;
with Events_rel_R6;
with Events_rel_R14;
with Events_rel_R13;
with Events_rel_R7;
with Events_rel_R8;
with Events_rel_R1;
with Events_rel_R5;

-- List of services used
with Events_BTD1_Into_Creation_Service;

-- List of bridges used
with Events_RPT2_Test_Passed_Bridge;
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT4_Test_Unsupported_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Events_Scenario1 is
   
      
      tob : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test       : Root_Object.Object_Access;
      SuperTypeD    : Root_Object.Object_Access;
      SubTypeE      : Root_Object.Object_Access;
      Super2D       : Root_Object.Object_Access;
      Sub2E         : Root_Object.Object_Access;
      SubTypeF      : Root_Object.Object_Access;
      Sub2F         : Root_Object.Object_Access;
      SuperTypeA    : Root_Object.Object_Access;
      SubTypeB      : Root_Object.Object_Access;
      SubTypeC      : Root_Object.Object_Access;
      SuperTypeT    : Root_Object.Object_Access;
      SubTypeU      : Root_Object.Object_Access;
      SuperTypeJ    : Root_Object.Object_Access;
      SubSuperTypeK : Root_Object.Object_Access;
      Reflect141    : Root_Object.Object_Access;
      NewTerm       : Root_Object.Object_Access;
      newVERIFY     : Root_Object.Object_Access;
      newEDATA      : Root_Object.Object_Access;
      SuperA1       : Root_Object.Object_Access;
      SubA1         : Root_Object.Object_Access;
      SubB1         : Root_Object.Object_Access;
      SubC1         : Root_Object.Object_Access;
      subD1         : Root_Object.Object_Access;
      subE1         : Root_Object.Object_Access;
      subF1         : Root_Object.Object_Access;
      SuperA2       : Root_Object.Object_Access;
      SubA2         : Root_Object.Object_Access;
      SubB2         : Root_Object.Object_Access;
      SubC2         : Root_Object.Object_Access;
      subD2         : Root_Object.Object_Access;
      subE2         : Root_Object.Object_Access;
      subF2         : Root_Object.Object_Access;
      a_P1          : Root_Object.Object_Access;
      a_Q           : Root_Object.Object_Access;
      a_P2          : Root_Object.Object_Access;
      a_R           : Root_Object.Object_Access;
      a_P3          : Root_Object.Object_Access;
      a_S           : Root_Object.Object_Access;
      NewMCSA       : Root_Object.Object_Access;
      NewMCSB       : Root_Object.Object_Access;
      newMCS        : Root_Object.Object_Access;
      newETS        : Root_Object.Object_Access;
      newBTD        : Root_Object.Object_Access;
      
      The_Test_Number   : Application_Types.Base_Integer_Type := 1;
      Test_Counter      : Application_Types.Base_Integer_Type := 1;
      Temp              : Application_Types.Base_Integer_Type := 1;
      Index_For_Subtype : Application_Types.Base_Integer_Type := 1;
      Test              : Application_Types.Base_Integer_Type := 1;
      noto              : Application_Types.Base_Integer_Type := 1;
      Identity          : Application_Types.Base_Integer_Type := 1;
      
   begin
      my_test := Root_Object.Events.TD.Unconditional_Find_One;
      
      if my_test =  Null then
         
         --  Start in safe mode
         The_Test_Number := 100;
      else
         The_Test_Number := Root_Object.Events.TD.Events_TD_type(my_test.all).Current_Test_Number;
         
      end if;
      
      
      --  Increment this count over every test in this scenario
      
      Test_Counter := 0;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1
      -- -------------------------------------------------------------------------
      
      Temp := 1;
      
      
      --  Create an instance of each object
      
      SuperTypeD := Root_Object.Events.objD.Create;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).ReferenceD            := Temp;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).ResultA               := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).no_of_received_events := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).latest_test           := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).Current_State         := Root_Object.Events.objD.Idle;
      
      
      Index_For_Subtype := The_Test_Number + 1;
      
      
      SubTypeE := Root_Object.Events.objE.Create;
      Root_Object.Events.objE.Events_objE_Type(SubTypeE.all).ReferenceE            := Temp;
      Root_Object.Events.objE.Events_objE_Type(SubTypeE.all).ResultA               := 0;
      Root_Object.Events.objE.Events_objE_Type(SubTypeE.all).Report_Test_No        := Index_For_Subtype;
      Root_Object.Events.objE.Events_objE_Type(SubTypeE.all).Current_State         := Root_Object.Events.objE.Idle;
      
      
      --  Form the relationship
      Events_Rel_R5.Link (
         A_Instance => SuperTypeD,
         B_Instance => SubTypeE);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objD.Events_objD2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objD.objD2,
            Target_Instance  => SuperTypeD,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - Generate to sub type only. Prove that event is NOT delivered 
      --           upwards to the supertype.
      -- -------------------------------------------------------------------------
      
      Temp := 2;
      
      
      --  2 test reports from last test, super & sub
      
      The_Test_Number := The_Test_Number + 2;
      
      
      --  Create an instance of each object
      
      Super2D := Root_Object.Events.objD.Create;
      Root_Object.Events.objD.Events_objD_Type(Super2D.all).ReferenceD            := Temp;
      Root_Object.Events.objD.Events_objD_Type(Super2D.all).ResultA               := 0;
      Root_Object.Events.objD.Events_objD_Type(Super2D.all).no_of_received_events := 1;
      Root_Object.Events.objD.Events_objD_Type(Super2D.all).latest_test           := 0;
      Root_Object.Events.objD.Events_objD_Type(Super2D.all).Current_State         := Root_Object.Events.objD.Idle;
      
      
      Sub2E := Root_Object.Events.objE.Create;
      Root_Object.Events.objE.Events_objE_Type(Sub2E.all).ReferenceE            := Temp;
      Root_Object.Events.objE.Events_objE_Type(Sub2E.all).ResultA               := 0;
      Root_Object.Events.objE.Events_objE_Type(Sub2E.all).Report_Test_No        := The_Test_Number;
      Root_Object.Events.objE.Events_objE_Type(Sub2E.all).Current_State         := Root_Object.Events.objE.Idle;
      
      Events_Rel_R5.Link (
         A_Instance => Super2D,
         B_Instance => Sub2E);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objE.Events_objE6'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objE.objE6,
            Target_Instance  => Sub2E,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - Generate to super type only. Prove that event is NOT delivered 
      --           downwards to the subtype as the relationship is not formalised.
      --           This test is incorrect. Every supertype must have a subtype 
      --           linked.
      --           Decision taken 15 Dec 1999 by John Mann, Ashley Field & David 
      --           Beatty.
      --           NB. ASL actually allows a solitary supertype. 
      --           This seems to be against Schlaer-Mellor. KC are clueless.
      -- -------------------------------------------------------------------------
      
      Temp            := 3;
      The_Test_Number := The_Test_Number + 1;
      
      
      --  Create an instance of each object
      
      SuperTypeD := Root_Object.Events.objD.Create;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).ReferenceD            := Temp;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).ResultA               := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).no_of_received_events := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).latest_test           := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).Current_State         := Root_Object.Events.objD.Idle;
      
      
      Index_For_Subtype := The_Test_Number + 1;
      
      
      SubTypeE := Root_Object.Events.objE.Create;
      Root_Object.Events.objE.Events_objE_Type(SubTypeE.all).ReferenceE            := Temp;
      Root_Object.Events.objE.Events_objE_Type(SubTypeE.all).ResultA               := 0;
      Root_Object.Events.objE.Events_objE_Type(SubTypeE.all).Report_Test_No        := Index_For_Subtype;
      Root_Object.Events.objE.Events_objE_Type(SubTypeE.all).Current_State         := Root_Object.Events.objE.Idle;
      
      Events_Rel_R5.Link (
         A_Instance => SuperTypeD,
         B_Instance => SubTypeE);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objD.Events_objD2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objD.objD2,
            Target_Instance  => SuperTypeD,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - Generate to super type only. Prove that event is NOT delivered 
      --           downwards to the subtype as sub type may not receive it.
      -- -------------------------------------------------------------------------
      
      Temp := 4;
      
      
      --  Two events handled last time
      
      The_Test_Number := The_Test_Number + 2;
      
      
      --  Create an instance of each object
      
      SuperTypeD := Root_Object.Events.objD.Create;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).ReferenceD            := Temp;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).ResultA               := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).no_of_received_events := 1;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).latest_test           := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).Current_State         := Root_Object.Events.objD.Idle;
      
      
      SubTypeE := Root_Object.Events.objE.Create;
      Root_Object.Events.objE.Events_objE_Type(SubTypeE.all).ReferenceE            := Temp;
      Root_Object.Events.objE.Events_objE_Type(SubTypeE.all).ResultA               := 0;
      Root_Object.Events.objE.Events_objE_Type(SubTypeE.all).Report_Test_No        := The_Test_Number;
      Root_Object.Events.objE.Events_objE_Type(SubTypeE.all).Current_State         := Root_Object.Events.objE.Idle;
      
      Events_Rel_R5.Link (
         A_Instance => SuperTypeD,
         B_Instance => SubTypeE);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objD.Events_objD3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objD.objD3,
            Target_Instance  => SuperTypeD,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 - Generate to super and objF (other) subtype
      -- -------------------------------------------------------------------------
      
      Temp            := 5;
      The_Test_Number := The_Test_Number + 1;
      
      
      --  Create an instance of each object
      
      SuperTypeD := Root_Object.Events.objD.Create;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).ReferenceD            := Temp;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).ResultA               := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).no_of_received_events := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).latest_test           := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).Current_State         := Root_Object.Events.objD.Idle;
      
      
      Index_For_Subtype := The_Test_Number + 1;
      
      
      SubTypeF := Root_Object.Events.objF.Create;
      Root_Object.Events.objF.Events_objF_Type(SubTypeF.all).ReferenceF            := Temp;
      Root_Object.Events.objF.Events_objF_Type(SubTypeF.all).ResultA               := 0;
      Root_Object.Events.objF.Events_objF_Type(SubTypeF.all).Report_Test_No        := Index_For_Subtype;
      Root_Object.Events.objF.Events_objF_Type(SubTypeF.all).Current_State         := Root_Object.Events.objF.Idle;
      
      
      --  Form the relationship
      Events_Rel_R5.Link (
         A_Instance => SuperTypeD,
         B_Instance => SubTypeF);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objD.Events_objD2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objD.objD2,
            Target_Instance  => SuperTypeD,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      --  Test 6 - Generate to sub type only. Prove that event is NOT delivered
      --           upwards to the supertype.
      -- -------------------------------------------------------------------------
      
      Temp            := 6;
      The_Test_Number := The_Test_Number + 2;
      
      
      --  Create an instance of each object
      
      Super2D := Root_Object.Events.objD.Create;
      Root_Object.Events.objD.Events_objD_Type(Super2D.all).ReferenceD            := Temp;
      Root_Object.Events.objD.Events_objD_Type(Super2D.all).ResultA               := 0;
      Root_Object.Events.objD.Events_objD_Type(Super2D.all).no_of_received_events := 1;
      Root_Object.Events.objD.Events_objD_Type(Super2D.all).latest_test           := 0;
      Root_Object.Events.objD.Events_objD_Type(Super2D.all).Current_State         := Root_Object.Events.objD.Idle;
      
      
      Sub2F := Root_Object.Events.objF.Create;
      Root_Object.Events.objF.Events_objF_Type(Sub2F.all).ReferenceF            := Temp;
      Root_Object.Events.objF.Events_objF_Type(Sub2F.all).ResultA               := 0;
      Root_Object.Events.objF.Events_objF_Type(Sub2F.all).Report_Test_No        := The_Test_Number;
      Root_Object.Events.objF.Events_objF_Type(Sub2F.all).Current_State         := Root_Object.Events.objF.Idle;
      
      Events_Rel_R5.Link (
         A_Instance => Super2D,
         B_Instance => Sub2F);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objF.Events_objF2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objF.objF2,
            Target_Instance  => Sub2F,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 6
      -- -------------------------------------------------------------------------
      --  Test 7 - Generate to super type only. Prove that event is NOT delivered 
      --           downwards to the subtype as the relationship is not formalised.
      --           This test is incorrect. Every supertype must have a subtype 
      --           linked. Decision taken 15 Dec 1999 by John Mann, Ashley Field 
      --           & David Beatty.
      --  NB. ASL actually allows a solitary supertype. 
      --  This seems to be against Shlaer-Mellor. KC are clueless.
      -- -------------------------------------------------------------------------
      
      Temp            := 7;
      The_Test_Number := The_Test_Number + 1;
      
      
      --  Create an instance of each object
      
      SuperTypeD := Root_Object.Events.objD.Create;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).ReferenceD            := Temp;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).ResultA               := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).no_of_received_events := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).latest_test           := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).Current_State         := Root_Object.Events.objD.Idle;
      
      
      Index_For_Subtype := The_Test_Number + 1;
      
      
      SubTypeF := Root_Object.Events.objF.Create;
      Root_Object.Events.objF.Events_objF_Type(SubTypeF.all).ReferenceF            := Temp;
      Root_Object.Events.objF.Events_objF_Type(SubTypeF.all).ResultA               := 0;
      Root_Object.Events.objF.Events_objF_Type(SubTypeF.all).Report_Test_No        := Index_For_Subtype;
      Root_Object.Events.objF.Events_objF_Type(SubTypeF.all).Current_State         := Root_Object.Events.objF.Idle;
      
      
      --  Formalise the relationship. 
      Events_Rel_R5.Link (
         A_Instance => SuperTypeD,
         B_Instance => SubTypeF);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objD.Events_objD2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objD.objD2,
            Target_Instance  => SuperTypeD,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 7
      -- -------------------------------------------------------------------------
      --  Test 8 - Generate to super type only. Prove that event is NOT delivered
      --           downwards to the subtype as sub type may not receive it.
      -- -------------------------------------------------------------------------
      
      Temp            := 8;
      The_Test_Number := The_Test_Number + 2;
      
      
      --  Create an instance of each object
      
      SuperTypeD := Root_Object.Events.objD.Create;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).ReferenceD            := Temp;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).ResultA               := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).no_of_received_events := 1;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).latest_test           := 0;
      Root_Object.Events.objD.Events_objD_Type(SuperTypeD.all).Current_State         := Root_Object.Events.objD.Idle;
      
      
      SubTypeF := Root_Object.Events.objF.Create;
      Root_Object.Events.objF.Events_objF_Type(SubTypeF.all).ReferenceF            := Temp;
      Root_Object.Events.objF.Events_objF_Type(SubTypeF.all).ResultA               := 0;
      Root_Object.Events.objF.Events_objF_Type(SubTypeF.all).Report_Test_No        := The_Test_Number;
      Root_Object.Events.objF.Events_objF_Type(SubTypeF.all).Current_State         := Root_Object.Events.objF.Idle;
      
      Events_Rel_R5.Link (
         A_Instance => SuperTypeD,
         B_Instance => SubTypeF);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objD.Events_objD3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objD.objD3,
            Target_Instance  => SuperTypeD,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 8
      -- -------------------------------------------------------------------------
      --  Test 9 - Actually it's TEST 14
      --           This shall prove that an event generated to a supertype 
      --           containing a state machine is dealt with in that supertype, and 
      --           the non-state machine containing subtype does not do anything 
      --           with the event.
      -- -------------------------------------------------------------------------
      
      Temp            := 9;
      The_Test_Number := The_Test_Number + 1;
      
      
      --  Create an instance of each object
      
      SuperTypeA := Root_Object.Events.objA.Create;
      Root_Object.Events.objA.Events_objA_Type(SuperTypeA.all).ReferenceA            := Temp;
      Root_Object.Events.objA.Events_objA_Type(SuperTypeA.all).ResultA               := 0;
      Root_Object.Events.objA.Events_objA_Type(SuperTypeA.all).latest_test           := 0;
      Root_Object.Events.objA.Events_objA_Type(SuperTypeA.all).Current_State         := Root_Object.Events.objA.Idle;
      
      
      --  DB Referential attribute removed. 12/7/01 
      
      SubTypeB := Root_Object.Events.objB.Create;
      Root_Object.Events.objB.Events_objB_Type(SubTypeB.all).ResultB := 0;
      
      
      --  Formalise relationship
      Events_Rel_R1.Link (
         A_Instance => SuperTypeA,
         B_Instance => SubTypeB);
      
      
      --  Start the test
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objA.Events_objA1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objA.objA1,
            Target_Instance  => SuperTypeA,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 9
      -- -------------------------------------------------------------------------
      --  Test 10 - Active SUPER and passive SUB is UNSUPPORTED
      --            Object_A test from external 9 test number 5.
      --            This shall prove that an event generated to a supertype 
      --            containing a state machine is dealt with in that supertype, 
      --            and the non-state machine containing subtype does not do 
      --            anything with the event.
      -- -------------------------------------------------------------------------
      
      Temp            := 10;
      The_Test_Number := The_Test_Number + 1;
      
      
      --  Create an instance of each object
      
      SuperTypeA := Root_Object.Events.objA.Create;
      Root_Object.Events.objA.Events_objA_Type(SuperTypeA.all).ReferenceA            := Temp;
      Root_Object.Events.objA.Events_objA_Type(SuperTypeA.all).ResultA               := 0;
      Root_Object.Events.objA.Events_objA_Type(SuperTypeA.all).latest_test           := 0;
      Root_Object.Events.objA.Events_objA_Type(SuperTypeA.all).Current_State         := Root_Object.Events.objA.Idle;
      
      
      --  DB Referential attribute removed. 12/7/01 
      
      SubTypeC := Root_Object.Events.objC.Create;
      Root_Object.Events.objC.Events_objC_Type(SubTypeC.all).ResultC := 0;
      
      
      --  Formalise relationship
      Events_Rel_R1.Link (
         A_Instance => SuperTypeA,
         B_Instance => SubTypeC);
      
      
      --  Start the test
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objA.Events_objA1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objA.objA1,
            Target_Instance  => SuperTypeA,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 10
      -- -------------------------------------------------------------------------
      --  Test 11 - This test shall prove that an event generated to a supertype 
      --            that has a state machine consisting only of the 'Non-Existant'
      --            state polymorphically delivers the event down to the subtype 
      --            to be dealt with.
      -- -------------------------------------------------------------------------
      
      Temp            := 11;
      The_Test_Number := The_Test_Number + 1;
      
      
      SuperTypeT := Root_Object.Events.objT.Create;
      Root_Object.Events.objT.Events_objT_Type(SuperTypeT.all).Reference_T           := Temp;
      Root_Object.Events.objT.Events_objT_Type(SuperTypeT.all).Result_T              := 0;
      
      
      SubTypeU := Root_Object.Events.objU.Create;
      Root_Object.Events.objU.Events_objU_Type(SubTypeU.all).Result_U              := 0;
      Root_Object.Events.objU.Events_objU_Type(SubTypeU.all).latest_test           := The_Test_Number;
      Root_Object.Events.objU.Events_objU_Type(SubTypeU.all).Reference_T           := Temp;
      Root_Object.Events.objU.Events_objU_Type(SubTypeU.all).Current_State         := Root_Object.Events.objU.Idle;
      
      Events_Rel_R8.Link (
         A_Instance => SuperTypeT,
         B_Instance => SubTypeU);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objT.Events_objT1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objT.objT1,
            Target_Instance  => SuperTypeT,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 11
      -- -------------------------------------------------------------------------
      --  Test 12 - Prove that an event generated to the subtype as dealt with 
      --            exactly the same as if it were generated to the supertype that 
      --            contains a state machine with only the 'Non-Existant' state.
      -- -------------------------------------------------------------------------
      
      Temp            := 12;
      The_Test_Number := The_Test_Number + 1;
      
      
      SuperTypeT := Root_Object.Events.objT.Create;
      Root_Object.Events.objT.Events_objT_Type(SuperTypeT.all).Reference_T           := Temp;
      Root_Object.Events.objT.Events_objT_Type(SuperTypeT.all).Result_T              := 0;
      
      
      SubTypeU := Root_Object.Events.objU.Create;
      Root_Object.Events.objU.Events_objU_Type(SubTypeU.all).Result_U              := 0;
      Root_Object.Events.objU.Events_objU_Type(SubTypeU.all).Reference_T           := Temp;
      Root_Object.Events.objU.Events_objU_Type(SubTypeU.all).latest_test           := The_Test_Number;
      Root_Object.Events.objU.Events_objU_Type(SubTypeU.all).Current_State         := Root_Object.Events.objU.Idle;
      
      Events_Rel_R8.Link (
         A_Instance => SuperTypeT,
         B_Instance => SubTypeU);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objU.Events_objU1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objU.objU1,
            Target_Instance  => SubTypeU,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 12
      -- -------------------------------------------------------------------------
      --  Test 13 - Prove that events are polymorphically delivered from super to 
      --            sub to sub types.
      -- -------------------------------------------------------------------------
      --  Chained event delivery is currently unsupported by WACA at version 2.0.1
      --    The_Test_Number = The_Test_Number + 1
      --  Create an instance of each object
      
      SuperTypeJ := Root_Object.Events.objJ.Create;
      Root_Object.Events.objJ.Events_objJ_Type(SuperTypeJ.all).ReferenceJ            := The_Test_Number;
      Root_Object.Events.objJ.Events_objJ_Type(SuperTypeJ.all).ResultJ               := 0;
      Root_Object.Events.objJ.Events_objJ_Type(SuperTypeJ.all).action_count          := 2;
      Root_Object.Events.objJ.Events_objJ_Type(SuperTypeJ.all).latest_test           := The_Test_Number;
      Root_Object.Events.objJ.Events_objJ_Type(SuperTypeJ.all).Current_State         := Root_Object.Events.objJ.Idle;
      
      
      Temp := The_Test_Number + 1;
      
      
      SubSuperTypeK := Root_Object.Events.objK.Create;
      Root_Object.Events.objK.Events_objK_Type(SubSuperTypeK.all).ReferenceK            := Temp;
      Root_Object.Events.objK.Events_objK_Type(SubSuperTypeK.all).ResultK               := 0;
      Root_Object.Events.objK.Events_objK_Type(SubSuperTypeK.all).Current_State         := Root_Object.Events.objK.Idle;
      
      
      -- SubSubTypeL = create Object_L with ReferenceJ    = Temp &\
      --                                    ReferenceL    = Temp &\
      --                                    ResultL       = 0    &\  
      --                                    Current_State = 'Idle'
      --  Formalise relationship
      Events_Rel_R7.Link (
         A_Instance => SuperTypeJ,
         B_Instance => SubSuperTypeK);
      
      
      --  Chained super / sub / sub relationships are unsupported
      --  link subsupertypeK R8 subsubtypeL
      -- Start the test
      -- generate objJ1:StartA(The_Test_Number) to supertypeJ
      --  The finish event is generated here, in place of the relevent state in objJ
      --  as events that are polymorphically delivered  must complete before the 
      --  super type can call itself (ie. generate finished to this)
      --  Although ISIM actually allows this, it is incorrect.
      -- generate objJ2:Finished(The_Test_Number) to supertypeJ
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 13
      -- -------------------------------------------------------------------------
      --  Test 14 - Reflexive Navigations, REFLECT
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      Test            := 1;
      Temp            := 0;
      
      
      --  Create an instance of each object
      
      Reflect141 := Root_Object.Events.REFLECT.Create;
      Root_Object.Events.REFLECT.Events_REFLECT_Type(Reflect141.all).ReferenceREFLECT      := 0;
      Root_Object.Events.REFLECT.Events_REFLECT_Type(Reflect141.all).ResultA               := 0;
      Root_Object.Events.REFLECT.Events_REFLECT_Type(Reflect141.all).Current_State         := Root_Object.Events.REFLECT.Idle;
      
      
      --  Start the test
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.REFLECT.Events_REFLECT3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.REFLECT.REFLECT3,
            Target_Instance  => Reflect141,
            Test             => Test,
            Counter          => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 14
      -- -------------------------------------------------------------------------
      --  Test 14b - Reflexive Navigations, REFLECT
      -- -------------------------------------------------------------------------
      --    The_Test_Number = The_Test_Number + 1
      --    Test = 2 
      --    Temp = 0
      --  Create an instance of each object
      --    newReflect = create Reflexive with ReferenceREFLECT = 0      &\
      --                                       ResultA          = 0      &\
      --                                       Current_State    = 'Idle'
      --  Start the test
      --    generate REFLECT3:StartA(Test, Temp, The_Test_Number) to newReflect
      --    Test_Counter = Test_Counter + 1
      --  End Test 14
      -- -------------------------------------------------------------------------
      --  Test 15 - Reflexive Navigations, REFLECT
      -- -------------------------------------------------------------------------
      --    The_Test_Number = The_Test_Number + 1
      --    Test = 3 
      --    Temp = 0
      --  Create further instances of the same object for sending events too.
      --    Reflect151 = create Reflexive with ReferenceREFLECT = 1      &\
      --                                       ResultA          = 0      &\
      --                                       Current_State    = 'Idle'
      --    Reflect152 = create Reflexive with ReferenceREFLECT = 2      &\
      --                                       ResultA          = 0      &\
      --                                       Current_State    = 'Idle'
      --    Reflect153 = create Reflexive with ReferenceREFLECT = 3      &\
      --                                       ResultA          = 0      &\
      --                                       Current_State    = 'Idle'
      --  Create an instance of each object
      --    Reflect154 = create Reflexive with ReferenceREFLECT = 4      &\
      --                                       ResultA          = 0      &\
      --                                       Current_State    = 'Idle'
      --  Start the test
      --    generate REFLECT3:StartA(Test, Temp, The_Test_Number) to Reflect151
      --    Test_Counter = Test_Counter + 1
      --  End Test 15
      -- -------------------------------------------------------------------------
      --  Test 16 - objCREATE
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      Test            := 1;
      Temp            := 1;
      
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "Null Requid                     ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Creation event                  ");
      
      
      --  Send a creation event - Unsupported by SW architecture
      --  generate objCREATE1:StartA(temp)
      
      Events_RPT4_Test_Unsupported_Bridge.Events_RPT4_Test_Unsupported (
         Unsupported_Test_Number => The_Test_Number);
      
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 16
      -- -------------------------------------------------------------------------
      --  Test 17 - This test shall verify that the object created in the previous 
      --            test actually exists.
      --            Since Creation events are unsupported by the architecture, 
      --            this test is not required.
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      Temp            := 1;
      
      
      --  newVERIFY = create Object_Verify_Creation_Terminal with ReferenceCETL = Temp   &\
      --                                                          ResultA       = 0      &\
      --                                                          Current_State = 'Idle'
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Verify object creation          ");
      
      
      --  generate objVERCETL2:Verify(Temp) to newVERIFY
      
      Events_RPT4_Test_Unsupported_Bridge.Events_RPT4_Test_Unsupported (
         Unsupported_Test_Number => The_Test_Number);
      
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 17
      -- -------------------------------------------------------------------------
      --  Test 18 - Create an object for deletion, then allow it to delete itself.
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      Temp            := 1;
      
      
      Root_Object.Object_List.Clear (
         From => tob);
      
      Root_Object.Events.objTERMINAL.Find (
         Add_To => tob);
      
      
      noto := Root_Object.Object_List.Count_Of(tob);
      
      
      if noto =  0 then
         
         --  Create an instance of each object
         
         NewTerm := Root_Object.Events.objTERMINAL.Create;
         Root_Object.Events.objTERMINAL.Events_objTERMINAL_Type(NewTerm.all).ReferenceTERM         := Temp;
         Root_Object.Events.objTERMINAL.Events_objTERMINAL_Type(NewTerm.all).ResultA               := 0;
         Root_Object.Events.objTERMINAL.Events_objTERMINAL_Type(NewTerm.all).Current_State         := Root_Object.Events.objTERMINAL.Idle;
         
         
         --  Start the test
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.objTERMINAL.Events_objTERMINAL1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.objTERMINAL.objTERMINAL1,
               Target_Instance  => NewTerm,
               Test             => Temp,
               Test_Number      => The_Test_Number);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      end if;
      
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 18
      -- -------------------------------------------------------------------------
      --  Test 19 - Verify that the deletion actually took place.
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      Temp            := 2;
      
      
      newVERIFY := Root_Object.Events.objVERCETL.Create;
      Root_Object.Events.objVERCETL.Events_objVERCETL_Type(newVERIFY.all).ReferenceCETL         := 1;
      Root_Object.Events.objVERCETL.Events_objVERCETL_Type(newVERIFY.all).ResultA               := 0;
      Root_Object.Events.objVERCETL.Events_objVERCETL_Type(newVERIFY.all).Current_State         := Root_Object.Events.objVERCETL.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objVERCETL.Events_objVERCETL2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objVERCETL.objVERCETL2,
            Target_Instance  => newVERIFY,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 19
      -- -------------------------------------------------------------------------
      --  Test 20
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      Temp            := 2;
      
      
      --  Create an instance of each object
      
      NewTerm := Root_Object.Events.objTERMINAL.Create;
      Root_Object.Events.objTERMINAL.Events_objTERMINAL_Type(NewTerm.all).ReferenceTERM         := Temp;
      Root_Object.Events.objTERMINAL.Events_objTERMINAL_Type(NewTerm.all).ResultA               := 0;
      Root_Object.Events.objTERMINAL.Events_objTERMINAL_Type(NewTerm.all).Current_State         := Root_Object.Events.objTERMINAL.Idle;
      
      
      --  Start the test
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objTERMINAL.Events_objTERMINAL1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objTERMINAL.objTERMINAL1,
            Target_Instance  => NewTerm,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 20
      -- -------------------------------------------------------------------------
      --  Test 21
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      Temp            := 3;
      
      
      newVERIFY := Root_Object.Events.objVERCETL.Create;
      Root_Object.Events.objVERCETL.Events_objVERCETL_Type(newVERIFY.all).ReferenceCETL         := 2;
      Root_Object.Events.objVERCETL.Events_objVERCETL_Type(newVERIFY.all).ResultA               := 0;
      Root_Object.Events.objVERCETL.Events_objVERCETL_Type(newVERIFY.all).Current_State         := Root_Object.Events.objVERCETL.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objVERCETL.Events_objVERCETL2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objVERCETL.objVERCETL2,
            Target_Instance  => newVERIFY,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 21
      -- -------------------------------------------------------------------------
      --  Test 22
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      Temp            := 1;
      
      
      newEDATA := Root_Object.Events.objEDATA.Create;
      Root_Object.Events.objEDATA.Events_objEDATA_Type(newEDATA.all).ReferenceEDATA        := Temp;
      Root_Object.Events.objEDATA.Events_objEDATA_Type(newEDATA.all).ResultA               := 0;
      Root_Object.Events.objEDATA.Events_objEDATA_Type(newEDATA.all).Current_State         := Root_Object.Events.objEDATA.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objEDATA.Events_objEDATA3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objEDATA.objEDATA3,
            Target_Instance  => newEDATA,
            A                => 1,
            B                => 2,
            C                => 3,
            E                => 4,
            F                => 5,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 22
      -- -------------------------------------------------------------------------
      --  Test 23
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objEDATA.Events_objEDATA4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objEDATA.objEDATA4,
            Target_Instance  => newEDATA,
            A                => 1,
            B                => 2,
            C                => 3,
            E                => 4,
            F                => 5,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 23
      -- -------------------------------------------------------------------------
      --  Test 24
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objEDATA.Events_objEDATA5'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objEDATA.objEDATA5,
            Target_Instance  => newEDATA,
            A                => 1,
            B                => 2,
            C                => 3,
            E                => 4,
            F                => 5,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 24
      -- -------------------------------------------------------------------------
      --  Test 25
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      Test            := 2;
      Temp            := 2;
      
      
      newEDATA := Root_Object.Events.objEDATA.Create;
      Root_Object.Events.objEDATA.Events_objEDATA_Type(newEDATA.all).ReferenceEDATA        := Temp;
      Root_Object.Events.objEDATA.Events_objEDATA_Type(newEDATA.all).ResultA               := 0;
      Root_Object.Events.objEDATA.Events_objEDATA_Type(newEDATA.all).Current_State         := Root_Object.Events.objEDATA.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objEDATA.Events_objEDATA7'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objEDATA.objEDATA7,
            Target_Instance  => newEDATA,
            A                => 1,
            B                => 2,
            Test             => Temp,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 25
      -- -------------------------------------------------------------------------
      --  Test 26 - Prove that delivery of polymorphic events are possible to 
      --            multiple subtypes.
      --            While we are at it, prove that subtype migration is handled.
      --            The Value_To_Add from each subtype will be added to the super 
      --            type
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      
      
      SuperA1 := Root_Object.Events.SprA.Create;
      Root_Object.Events.SprA.Events_SprA_Type(SuperA1.all).idA                   := The_Test_Number;
      Root_Object.Events.SprA.Events_SprA_Type(SuperA1.all).ResultA               := 0;
      Root_Object.Events.SprA.Events_SprA_Type(SuperA1.all).Reference_ID          := 1;
      Root_Object.Events.SprA.Events_SprA_Type(SuperA1.all).Current_State         := Root_Object.Events.SprA.Idle;
      
      
      SubA1 := Root_Object.Events.sbA.Create;
      Root_Object.Events.sbA.Events_sbA_Type(SubA1.all).idA                   := The_Test_Number;
      Root_Object.Events.sbA.Events_sbA_Type(SubA1.all).Value_To_Add          := 10;
      Root_Object.Events.sbA.Events_sbA_Type(SubA1.all).Current_State         := Root_Object.Events.sbA.Idle;
      
      
      SubB1 := Root_Object.Events.sbB.Create;
      Root_Object.Events.sbB.Events_sbB_Type(SubB1.all).idA                   := The_Test_Number;
      Root_Object.Events.sbB.Events_sbB_Type(SubB1.all).Value_To_Add          := 5;
      Root_Object.Events.sbB.Events_sbB_Type(SubB1.all).Current_State         := Root_Object.Events.sbB.Idle;
      
      
      SubC1 := Root_Object.Events.sbC.Create;
      Root_Object.Events.sbC.Events_sbC_Type(SubC1.all).idA                   := The_Test_Number;
      Root_Object.Events.sbC.Events_sbC_Type(SubC1.all).Value_To_Add          := 6;
      Root_Object.Events.sbC.Events_sbC_Type(SubC1.all).Current_State         := Root_Object.Events.sbC.Idle;
      
      
      subD1 := Root_Object.Events.sbD.Create;
      Root_Object.Events.sbD.Events_sbD_Type(subD1.all).idA                   := The_Test_Number;
      Root_Object.Events.sbD.Events_sbD_Type(subD1.all).Value_To_Add          := 20;
      Root_Object.Events.sbD.Events_sbD_Type(subD1.all).Current_State         := Root_Object.Events.sbD.Idle;
      
      
      subE1 := Root_Object.Events.sbE.Create;
      Root_Object.Events.sbE.Events_sbE_Type(subE1.all).idA                   := The_Test_Number;
      Root_Object.Events.sbE.Events_sbE_Type(subE1.all).Value_To_Add          := 30;
      Root_Object.Events.sbE.Events_sbE_Type(subE1.all).Current_State         := Root_Object.Events.sbE.Idle;
      
      
      subF1 := Root_Object.Events.sbF.Create;
      Root_Object.Events.sbF.Events_sbF_Type(subF1.all).idA                   := The_Test_Number;
      Root_Object.Events.sbF.Events_sbF_Type(subF1.all).Value_To_Add          := 40;
      Root_Object.Events.sbF.Events_sbF_Type(subF1.all).Current_State         := Root_Object.Events.sbF.Idle;
      
      Events_Rel_R13.Link (
         A_Instance => SuperA1,
         B_Instance => SubB1);
      
      Events_Rel_R14.Link (
         A_Instance => SuperA1,
         B_Instance => SubC1);
      
      
      --  Link in a normal subtype, there will be no monkey business 
      --  with subtype migration for this one.
      Events_Rel_R6.Link (
         A_Instance => SuperA1,
         B_Instance => subE1);
      
      
      --  Initiate the test
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.SprA.Events_SprA5'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.SprA.SprA5,
            Target_Instance  => SuperA1,
            Test             => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.SprA.Events_SprA2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.SprA.SprA2,
            Target_Instance  => SuperA1,
            Test             => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 26
      -- -------------------------------------------------------------------------
      --  Test 27 - Prove that delivery of polymorphic events are possible to 
      --            multiple subtypes.
      --            While we are at it, prove that subtype migration is handled.
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      
      
      SuperA2 := Root_Object.Events.SprA.Create;
      Root_Object.Events.SprA.Events_SprA_Type(SuperA2.all).idA                   := The_Test_Number;
      Root_Object.Events.SprA.Events_SprA_Type(SuperA2.all).ResultA               := 0;
      Root_Object.Events.SprA.Events_SprA_Type(SuperA2.all).Reference_ID          := 2;
      Root_Object.Events.SprA.Events_SprA_Type(SuperA2.all).Current_State         := Root_Object.Events.SprA.Idle;
      
      
      SubA2 := Root_Object.Events.sbA.Create;
      Root_Object.Events.sbA.Events_sbA_Type(SubA2.all).idA                   := The_Test_Number;
      Root_Object.Events.sbA.Events_sbA_Type(SubA2.all).Value_To_Add          := 5;
      Root_Object.Events.sbA.Events_sbA_Type(SubA2.all).Current_State         := Root_Object.Events.sbA.Idle;
      
      
      SubB2 := Root_Object.Events.sbB.Create;
      Root_Object.Events.sbB.Events_sbB_Type(SubB2.all).idA                   := The_Test_Number;
      Root_Object.Events.sbB.Events_sbB_Type(SubB2.all).Value_To_Add          := 0;
      Root_Object.Events.sbB.Events_sbB_Type(SubB2.all).Current_State         := Root_Object.Events.sbB.Idle;
      
      
      SubC2 := Root_Object.Events.sbC.Create;
      Root_Object.Events.sbC.Events_sbC_Type(SubC2.all).idA                   := The_Test_Number;
      Root_Object.Events.sbC.Events_sbC_Type(SubC2.all).Value_To_Add          := 6;
      Root_Object.Events.sbC.Events_sbC_Type(SubC2.all).Current_State         := Root_Object.Events.sbC.Idle;
      
      
      subD2 := Root_Object.Events.sbD.Create;
      Root_Object.Events.sbD.Events_sbD_Type(subD2.all).idA                   := The_Test_Number;
      Root_Object.Events.sbD.Events_sbD_Type(subD2.all).Value_To_Add          := 0;
      Root_Object.Events.sbD.Events_sbD_Type(subD2.all).Current_State         := Root_Object.Events.sbD.Idle;
      
      
      subE2 := Root_Object.Events.sbE.Create;
      Root_Object.Events.sbE.Events_sbE_Type(subE2.all).idA                   := The_Test_Number;
      Root_Object.Events.sbE.Events_sbE_Type(subE2.all).Value_To_Add          := 0;
      Root_Object.Events.sbE.Events_sbE_Type(subE2.all).Current_State         := Root_Object.Events.sbE.Idle;
      
      
      subF2 := Root_Object.Events.sbF.Create;
      Root_Object.Events.sbF.Events_sbF_Type(subF2.all).idA                   := The_Test_Number;
      Root_Object.Events.sbF.Events_sbF_Type(subF2.all).Value_To_Add          := 0;
      Root_Object.Events.sbF.Events_sbF_Type(subF2.all).Current_State         := Root_Object.Events.sbF.Idle;
      
      
      --  Link to one side of each subfamily. These will be unlinked and then
      --  linked to the other side by subtype migration later on.   
      Events_Rel_R13.Link (
         A_Instance => SuperA2,
         B_Instance => SubB2);
      
      Events_Rel_R14.Link (
         A_Instance => SuperA2,
         B_Instance => SubC2);
      
      
      --  link in the other side of the subtype.
      Events_Rel_R6.Link (
         A_Instance => SuperA2,
         B_Instance => subF2);
      
      
      --  Initiate the test
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.SprA.Events_SprA5'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.SprA.SprA5,
            Target_Instance  => SuperA2,
            Test             => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.SprA.Events_SprA2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.SprA.SprA2,
            Target_Instance  => SuperA2,
            Test             => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 27
      -- -------------------------------------------------------------------------
      --  Test 28 - Prove that subtype delivery is possible with instances where 
      --            there are more than just two possible subtypes to choose from
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      Temp            := 1;
      
      
      a_P1 := Root_Object.Events.objP.Create;
      Root_Object.Events.objP.Events_objP_Type(a_P1.all).Reference_P               := 19;
      Root_Object.Events.objP.Events_objP_Type(a_P1.all).Result_P                  := 0;
      Root_Object.Events.objP.Events_objP_Type(a_P1.all).number_of_received_events := 0;
      Root_Object.Events.objP.Events_objP_Type(a_P1.all).latest_test               := The_Test_Number;
      Root_Object.Events.objP.Events_objP_Type(a_P1.all).Value_To_Add              := 10;
      Root_Object.Events.objP.Events_objP_Type(a_P1.all).Current_State             := Root_Object.Events.objP.Idle;
      
      
      a_Q := Root_Object.Events.objQ.Create;
      Root_Object.Events.objQ.Events_objQ_Type(a_Q.all).Value_To_Add              := 1;
      Root_Object.Events.objQ.Events_objQ_Type(a_Q.all).latest_test               := The_Test_Number;
      Root_Object.Events.objQ.Events_objQ_Type(a_Q.all).Result_Q                  := 0;
      Root_Object.Events.objQ.Events_objQ_Type(a_Q.all).Current_State             := Root_Object.Events.objQ.Idle;
      
      Events_Rel_R4.Link (
         A_Instance => a_P1,
         B_Instance => a_Q);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objP.Events_objP1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objP.objP1,
            Target_Instance  => a_P1,
            Test             => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 28
      -- -------------------------------------------------------------------------
      --  Test 29
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      Temp            := 2;
      
      
      a_P2 := Root_Object.Events.objP.Create;
      Root_Object.Events.objP.Events_objP_Type(a_P2.all).Reference_P               := 20;
      Root_Object.Events.objP.Events_objP_Type(a_P2.all).Result_P                  := 0;
      Root_Object.Events.objP.Events_objP_Type(a_P2.all).number_of_received_events := 0;
      Root_Object.Events.objP.Events_objP_Type(a_P2.all).latest_test               := The_Test_Number;
      Root_Object.Events.objP.Events_objP_Type(a_P2.all).Value_To_Add              := 10;
      Root_Object.Events.objP.Events_objP_Type(a_P2.all).Current_State             := Root_Object.Events.objP.Idle;
      
      
      a_R := Root_Object.Events.objR.Create;
      Root_Object.Events.objR.Events_objR_Type(a_R.all).Value_To_Add              := 2;
      Root_Object.Events.objR.Events_objR_Type(a_R.all).latest_test               := The_Test_Number;
      Root_Object.Events.objR.Events_objR_Type(a_R.all).Result_R                  := 0;
      Root_Object.Events.objR.Events_objR_Type(a_R.all).Current_State             := Root_Object.Events.objR.Idle;
      
      Events_Rel_R4.Link (
         A_Instance => a_P2,
         B_Instance => a_R);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objP.Events_objP1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objP.objP1,
            Target_Instance  => a_P2,
            Test             => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 29
      -- -------------------------------------------------------------------------
      --  Test 30
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      Temp            := 3;
      
      
      a_P3 := Root_Object.Events.objP.Create;
      Root_Object.Events.objP.Events_objP_Type(a_P3.all).Reference_P               := 21;
      Root_Object.Events.objP.Events_objP_Type(a_P3.all).Result_P                  := 0;
      Root_Object.Events.objP.Events_objP_Type(a_P3.all).number_of_received_events := 0;
      Root_Object.Events.objP.Events_objP_Type(a_P3.all).latest_test               := The_Test_Number;
      Root_Object.Events.objP.Events_objP_Type(a_P3.all).Value_To_Add              := 10;
      Root_Object.Events.objP.Events_objP_Type(a_P3.all).Current_State             := Root_Object.Events.objP.Idle;
      
      
      a_S := Root_Object.Events.objS.Create;
      Root_Object.Events.objS.Events_objS_Type(a_S.all).Value_To_Add              := 3;
      Root_Object.Events.objS.Events_objS_Type(a_S.all).latest_test               := The_Test_Number;
      Root_Object.Events.objS.Events_objS_Type(a_S.all).Result_S                  := 0;
      Root_Object.Events.objS.Events_objS_Type(a_S.all).Current_State             := Root_Object.Events.objS.Idle;
      
      Events_Rel_R4.Link (
         A_Instance => a_P3,
         B_Instance => a_S);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objP.Events_objP1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objP.objP1,
            Target_Instance  => a_P3,
            Test             => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 30
      -- -------------------------------------------------------------------------
      --  Test 31
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      
      
      --  Increment this value for each new test
      
      Test     := 1;
      Identity := 100 + Test;
      
      NewMCSA := Root_Object.Events.objMCS.Create;
      Root_Object.Events.objMCS.Events_objMCS_Type(NewMCSA.all).idMCS                     := Identity;
      Root_Object.Events.objMCS.Events_objMCS_Type(NewMCSA.all).ResultA                   := 0;
      Root_Object.Events.objMCS.Events_objMCS_Type(NewMCSA.all).Current_State             := Root_Object.Events.objMCS.Creation_stateA;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objMCS.Events_objMCS3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objMCS.objMCS3,
            Target_Instance  => NewMCSA,
            Test             => Test);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      Identity := 200 + Test;
      
      
      NewMCSB := Root_Object.Events.objMCS.Create;
      Root_Object.Events.objMCS.Events_objMCS_Type(NewMCSB.all).idMCS                     := Identity;
      Root_Object.Events.objMCS.Events_objMCS_Type(NewMCSB.all).ResultA                   := 0;
      Root_Object.Events.objMCS.Events_objMCS_Type(NewMCSB.all).Current_State             := Root_Object.Events.objMCS.Creation_stateB;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objMCS.Events_objMCS3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objMCS.objMCS3,
            Target_Instance  => NewMCSB,
            Test             => Test);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      --  Create a new instance to verify the tests
      
      newMCS := Root_Object.Events.objMCS.Create;
      Root_Object.Events.objMCS.Events_objMCS_Type(newMCS.all).idMCS                     := Test;
      Root_Object.Events.objMCS.Events_objMCS_Type(newMCS.all).ResultA                   := 0;
      Root_Object.Events.objMCS.Events_objMCS_Type(newMCS.all).Current_State             := Root_Object.Events.objMCS.Idle;
      
      
      --  Initiate the test
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objMCS.Events_objMCS4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objMCS.objMCS4,
            Target_Instance  => newMCS,
            Test             => Test,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 31
      -- -------------------------------------------------------------------------
      --  Test 32
      -- -------------------------------------------------------------------------
      --  Increment this value for each new test
      
      Test            := 1;
      The_Test_Number := The_Test_Number + 1;
      
      
      --  Create an instance to perform the test against
      
      newETS := Root_Object.Events.ETS.Create;
      Root_Object.Events.ETS.Events_ETS_Type(newETS.all).idETS                     := Test;
      Root_Object.Events.ETS.Events_ETS_Type(newETS.all).NewResult                 := 0;
      Root_Object.Events.ETS.Events_ETS_Type(newETS.all).OldResult                 := 0;
      Root_Object.Events.ETS.Events_ETS_Type(newETS.all).Current_State             := Root_Object.Events.ETS.Idle;
      
      
      --  Initiate the test
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.ETS.Events_ETS3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.ETS.ETS3,
            Target_Instance  => newETS,
            Test             => Test);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.ETS.Events_ETS5'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.ETS.ETS5,
            Target_Instance  => newETS,
            Test             => Test,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 32
      -- -------------------------------------------------------------------------
      --  Test 33
      -- -------------------------------------------------------------------------
      --  Increment this value for each new test
      
      Test            := 1;
      The_Test_Number := The_Test_Number + 1;
      
      
      --  Create an instance
      --    Identity = 100 + Test
      --    newBTD = create BornToDie with idBTD = Identity & ResultA = 0
      --  Generate this instance
      --    generate BTD4:CreateInstance(test) to newBTD
      
      Events_BTD1_Into_Creation_Service.Events_BTD1_Into_Creation (
         Test             => Test,
         Test_Number      => The_Test_Number);
      
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 33
      -- -------------------------------------------------------------------------
      --  Test 34
      -- -------------------------------------------------------------------------
      --  Increment this value for each new test
      
      The_Test_Number := The_Test_Number + 1;
      Test            := 1;
      
      
      --  Create an instance to perform the test against
      
      newBTD := Root_Object.Events.BTD.Create;
      Root_Object.Events.BTD.Events_BTD_Type(newBTD.all).idBTD                     := Test;
      Root_Object.Events.BTD.Events_BTD_Type(newBTD.all).ResultA                   := 0;
      Root_Object.Events.BTD.Events_BTD_Type(newBTD.all).Current_State             := Root_Object.Events.BTD.Idle;
      
      
      --  Initiate the test
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.BTD.Events_BTD3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.BTD.BTD3,
            Target_Instance  => newBTD,
            Test             => Test,
            Test_Number      => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      Test_Counter := Test_Counter + 1;
      
      
      --  End Test 34
      -- -------------------------------------------------------------------------
      --  Test 35 - Although this is the last test in the scenario it should be 
      --            one of the first to be executed due to the rule that one ASL
      --            block shall run to completion before another starts
      -- -------------------------------------------------------------------------
      
      The_Test_Number := The_Test_Number + 1;
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0401               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Creation event                  ");
      
      
      if Test_Counter /= 33 then
         
         Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
            Failed_Domain_Object => "Events                          ",
            Failed_Test_Number   => The_Test_Number,
            Failed_Test_Value    => Test_Counter);
         
      else
         Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
            Test_Object_Domain => "Events                          ",
            Test_Number        => The_Test_Number,
            Test_Value         => Test_Counter);
         
      end if;
      
      
      --  End Test 35
      -- -------------------------------------------------------------------------
      --  Increment this value for each new test
      -- -------------------------------------------------------------------------
      
      if my_test /= Null then
         The_Test_Number := The_Test_Number + 1;
         
         
         Root_Object.Events.TD.Events_TD_type(my_test.all).Current_Test_Number := The_Test_Number;
         
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (tob);
   end Events_Scenario1;
   
--
-- End of file Events_Scenario1.ada
--
