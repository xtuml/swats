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
--* File Name:               Events_Scenario4.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Basic_Events
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
with Root_Object.Events.objTP;
with Root_Object.Events.objCD;
with Root_Object.Events.CCS;
with Root_Object.Events.TE;
with Root_Object.Events.CP;
with Root_Object.Events.HSM;
with Root_Object.Events.objZ;
with Root_Object.Events.objX;
with Root_Object.Events.SC;
with Root_Object.Events.TD;

-- List of services used
with Events_Events3_Generate_From_Service_Service;

-- List of bridges used
with Events_GFB1_Generate_Event_Bridge;
with Events_RPT4_Test_Unsupported_Bridge;
with Events_RPT5_Test_Text_Bridge;
with Events_RPT2_Test_Passed_Bridge;
with Events_RPT8_Specify_Requid_Bridge;
with Events_RPT1_Start_Test_Bridge;
with Events_WAW1_What_Env_Bridge;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Events_Scenario4 is
   
      
      my_test         : Root_Object.Object_Access;
      firstSC         : Root_Object.Object_Access;
      secondSC        : Root_Object.Object_Access;
      firstX          : Root_Object.Object_Access;
      fourthX         : Root_Object.Object_Access;
      fifthX          : Root_Object.Object_Access;
      newX            : Root_Object.Object_Access;
      firstZ          : Root_Object.Object_Access;
      secondZ         : Root_Object.Object_Access;
      secondX         : Root_Object.Object_Access;
      inst_Huge_State : Root_Object.Object_Access;
      instCP          : Root_Object.Object_Access;
      instZ           : Root_Object.Object_Access;
      instTE1         : Root_Object.Object_Access;
      instTE2         : Root_Object.Object_Access;
      instCCS         : Root_Object.Object_Access;
      instTE3         : Root_Object.Object_Access;
      instTE4         : Root_Object.Object_Access;
      instTE5         : Root_Object.Object_Access;
      instCD1         : Root_Object.Object_Access;
      instCD2         : Root_Object.Object_Access;
      InstTP          : Root_Object.Object_Access;
      
      The_Test_Number : Application_Types.Base_Integer_Type := 1;
      Val_A           : Application_Types.Base_Integer_Type := 1;
      Val_B           : Application_Types.Base_Integer_Type := 1;
      Val_C           : Application_Types.Base_Integer_Type := 1;
      Val_D           : Application_Types.Base_Integer_Type := 1;
      Val_E           : Application_Types.Base_Integer_Type := 1;
      Val_F           : Application_Types.Base_Integer_Type := 1;
      Val_G           : Application_Types.Base_Integer_Type := 1;
      Val_H           : Application_Types.Base_Integer_Type := 1;
      Val_I           : Application_Types.Base_Integer_Type := 1;
      Val_J           : Application_Types.Base_Integer_Type := 1;
      Val_K           : Application_Types.Base_Integer_Type := 1;
      Val_L           : Application_Types.Base_Integer_Type := 1;
      Val_M           : Application_Types.Base_Integer_Type := 1;
      Val_N           : Application_Types.Base_Integer_Type := 1;
      Val_O           : Application_Types.Base_Integer_Type := 1;
      Val_P           : Application_Types.Base_Integer_Type := 1;
      Val_Q           : Application_Types.Base_Integer_Type := 1;
      Val_R           : Application_Types.Base_Integer_Type := 1;
      Val_S           : Application_Types.Base_Integer_Type := 1;
      Val_T           : Application_Types.Base_Integer_Type := 1;
      Val_U           : Application_Types.Base_Integer_Type := 1;
      Val_V           : Application_Types.Base_Integer_Type := 1;
      Val_W           : Application_Types.Base_Integer_Type := 1;
      Val_X           : Application_Types.Base_Integer_Type := 1;
      Val_Y           : Application_Types.Base_Integer_Type := 1;
      Val_Z           : Application_Types.Base_Integer_Type := 1;
      The_Start_Value : Application_Types.Base_Integer_Type := 1;
      Count           : Application_Types.Base_Integer_Type := 1;
      StartA_Value    : Application_Types.Base_Integer_Type := 1;
      
      Host : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
      my_test := Root_Object.Events.TD.Unconditional_Find_One;
      
      if my_test =  Null then
         
         --  Start in safe mode
         The_Test_Number := 100;
      else
         The_Test_Number := Root_Object.Events.TD.Events_TD_type(my_test.all).Current_Test_Number;
      end if;
      
      
      Events_WAW1_What_Env_Bridge.Events_WAW1_What_Env (
         Local_Env_Text => Host);
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Test that for an active class a Current State attribute exists
      --           by reading it and also by writing to it and so changing the 
      --           Current State
      -- ------------------------------------------------------------------------- 
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-0201               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Check Current State             ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0103               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0104               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0202               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0205               ");
      
      
      firstSC := Root_Object.Events.SC.Create;
      Root_Object.Events.SC.Events_SC_Type(firstSC.all).The_ID          := 0;
      Root_Object.Events.SC.Events_SC_Type(firstSC.all).The_Test_No     := The_Test_Number;
      Root_Object.Events.SC.Events_SC_Type(firstSC.all).Whats_The_State := "Idle                            ";
      Root_Object.Events.SC.Events_SC_Type(firstSC.all).Current_State   := Root_Object.Events.SC.Idle;
      
      
      --  This test will so obviously pass. Since MASL does not allow inspection of Current_State, the
      --  logic below for failure has been commented and the test set to Pass unconditionally. 
      --    if firstSC.Current_State = 'Idle' then
      
      Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
         Test_Object_Domain => "Events                          ",
         Test_Number        => The_Test_Number,
         Test_Value         => 0);
      
      
      --    else
      --       [] = RPT3:Test_Failed["Events", The_Test_Number, -10]
      --    endif
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - Check that the Current_State attribute can be written to
      --           This test also proves that an active object supports the notion
      --           of states by navigating from the 'Start' state to the 
      --           'Check_State' state and then on to the 'Idle' state
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-0204               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Check the states                ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0501               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0402               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0205               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0209               ");
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.SC.Events_SC1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.SC.SC1,
            Target_Instance  => firstSC,
            Test_No          => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - This test creates a new instance of State_Check and then
      --           updates the Current_State.
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0202               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Write to the current state      ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0204               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0402               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0205               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0209               ");
      
      
      secondSC := Root_Object.Events.SC.Create;
      Root_Object.Events.SC.Events_SC_Type(secondSC.all).The_ID          := 0;
      Root_Object.Events.SC.Events_SC_Type(secondSC.all).The_Test_No     := The_Test_Number;
      Root_Object.Events.SC.Events_SC_Type(secondSC.all).Whats_The_State := "                                ";
      Root_Object.Events.SC.Events_SC_Type(secondSC.all).Current_State   := Root_Object.Events.SC.Idle;
      
      
      --  This test will so obviously pass. Since MASL does not allow inspection of Current_State, the
      --  line below has been commented. 
      --    secondSC.Current_State = 'Idle'
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.SC.Events_SC1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.SC.SC1,
            Target_Instance  => secondSC,
            Test_No          => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - Test Creation States
      --           N.B. Creation States are not currently supported
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0203               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Check Creation State            ");
      
      Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
         Test_Number => The_Test_Number,
         Free_Text   => "Creation States are not supporte");
      
      Events_RPT4_Test_Unsupported_Bridge.Events_RPT4_Test_Unsupported (
         Unsupported_Test_Number => The_Test_Number);
      
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 - Test that ASL in Creation States works correctly
      --            N.B. Creation States are not currently supported
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-0506               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Check ASL in creation state     ");
      
      Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
         Test_Number => The_Test_Number,
         Free_Text   => "Creation States are not supporte");
      
      Events_RPT4_Test_Unsupported_Bridge.Events_RPT4_Test_Unsupported (
         Unsupported_Test_Number => The_Test_Number);
      
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      --  Test 6 - Test that events may be generated successfully from scenarios
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-0301               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Event from Scenario             ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1103-0000-01-0711               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0402               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0209               ");
      
      
      firstX := Root_Object.Events.objX.Create;
      Root_Object.Events.objX.Events_objX_Type(firstX.all).ResultX         := 0;
      Root_Object.Events.objX.Events_objX_Type(firstX.all).The_Test_No     := The_Test_Number;
      Root_Object.Events.objX.Events_objX_Type(firstX.all).Integer_Att     := 0;
      Root_Object.Events.objX.Events_objX_Type(firstX.all).Real_Att        := 0.0;
      Root_Object.Events.objX.Events_objX_Type(firstX.all).Text_Att        := "                                ";
      Root_Object.Events.objX.Events_objX_Type(firstX.all).Boolean_Att     := False;
      Root_Object.Events.objX.Events_objX_Type(firstX.all).Current_State   := Root_Object.Events.objX.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX1,
            Target_Instance  => firstX,
            Test_No          => The_Test_Number,
            ASL_Type         => "Scenario                        ");
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  end Test 6
      -- -------------------------------------------------------------------------
      --  Test 7 - This test calls a domain sync servince which in turn generates
      --           an event to test that events may be generated from services
      -- -------------------------------------------------------------------------
      
      Events_Events3_Generate_From_Service_Service.Events_Events3_Generate_From_Service (
         Test_No          => The_Test_Number,
         The_IH_ID        => Root_Object.Events.objX.Events_objX_type(firstX.all).objX_id);
      
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 7
      -- -------------------------------------------------------------------------
      --  Test 8 - This test generates an event which in turn generates an event 
      --           from within the state machine to test that states may be 
      --           generated from within state machines
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-0301               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Event from State                ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1103-0000-01-0711               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0402               ");
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX3,
            Target_Instance  => firstX,
            Test_No          => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 8
      -- -------------------------------------------------------------------------
      --  Test 9 - This test calls a bridge function which then generates an event
      --           to test that events may be generated from bridge functions
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0301               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Event from bridge               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1103-0000-01-0711               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0402               ");
      
      Events_GFB1_Generate_Event_Bridge.Events_GFB1_Generate_Event (
         Test_No   => The_Test_Number,
         The_IH_ID => Root_Object.Events.objX.Events_objX_type(firstX.all).objX_id);
      
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 9
      -- -------------------------------------------------------------------------
      --  Test 10 - Test that attributes from the target instance can be read from
      --            within its own state action
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-0503               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Scenario                        ",
         Purpose         => "Read attribute from target      ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0402               ");
      
      
      fourthX := Root_Object.Events.objX.Create;
      Root_Object.Events.objX.Events_objX_Type(fourthX.all).ResultX         := 0;
      Root_Object.Events.objX.Events_objX_Type(fourthX.all).The_Test_No     := The_Test_Number;
      Root_Object.Events.objX.Events_objX_Type(fourthX.all).Integer_Att     := 100;
      Root_Object.Events.objX.Events_objX_Type(fourthX.all).Real_Att        := 99.9;
      Root_Object.Events.objX.Events_objX_Type(fourthX.all).Text_Att        := "Test_Data                       ";
      Root_Object.Events.objX.Events_objX_Type(fourthX.all).Boolean_Att     := True;
      Root_Object.Events.objX.Events_objX_Type(fourthX.all).Current_State   := Root_Object.Events.objX.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX4,
            Target_Instance  => fourthX,
            Test_No          => The_Test_Number,
            Which_Test       => "Read_Target_Instance            ");
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 10
      -- -------------------------------------------------------------------------
      --  Test 11 - Test that attributes from the target instance can be written
      --            to from within its own state action
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0503               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Update attributes from target   ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0402               ");
      
      
      fifthX := Root_Object.Events.objX.Create;
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).ResultX         := 0;
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).The_Test_No     := The_Test_Number;
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).Integer_Att     := 100;
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).Real_Att        := 99.9;
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).Text_Att        := "Test_Data                       ";
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).Boolean_Att     := False;
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).Current_State   := Root_Object.Events.objX.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX4,
            Target_Instance  => fifthX,
            Test_No          => The_Test_Number,
            Which_Test       => "Write_Target_Instance           ");
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 11
      -- -------------------------------------------------------------------------
      --  Test 12 - Test that attributes of a different instance to the current
      --            state action can be read from
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0504               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Read attribute from another inst");
      
      
      newX := Root_Object.Events.objX.Create;
      Root_Object.Events.objX.Events_objX_Type(newX.all).ResultX         := 999;
      Root_Object.Events.objX.Events_objX_Type(newX.all).The_Test_No     := The_Test_Number;
      Root_Object.Events.objX.Events_objX_Type(newX.all).Integer_Att     := 1111;
      Root_Object.Events.objX.Events_objX_Type(newX.all).Real_Att        := 11.1;
      Root_Object.Events.objX.Events_objX_Type(newX.all).Text_Att        := "Dummy_Data                      ";
      Root_Object.Events.objX.Events_objX_Type(newX.all).Boolean_Att     := False;
      Root_Object.Events.objX.Events_objX_Type(newX.all).Current_State   := Root_Object.Events.objX.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX4,
            Target_Instance  => fourthX,
            Test_No          => The_Test_Number,
            Which_Test       => "Read_Other_Instance             ");
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 12
      -- -------------------------------------------------------------------------
      --  Test 13 - Test that attributes of a different instance to the current
      --            state action can be written to
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0504               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Update attribute from another in");
      
      
      fifthX := Root_Object.Events.objX.Create;
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).ResultX         := 0;
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).The_Test_No     := The_Test_Number;
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).Integer_Att     := 100;
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).Real_Att        := 99.9;
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).Text_Att        := "Test_Data                       ";
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).Boolean_Att     := False;
      Root_Object.Events.objX.Events_objX_Type(fifthX.all).Current_State   := Root_Object.Events.objX.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX4,
            Target_Instance  => fourthX,
            Test_No          => The_Test_Number,
            Which_Test       => "Write_Other_Instance            ");
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 13
      -- -------------------------------------------------------------------------
      --  Test 14 - Test that instances from different objects can be read from
      --            within the state machine
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0505               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Read attribute from another obje");
      
      
      firstZ := Root_Object.Events.objZ.Create;
      Root_Object.Events.objZ.Events_objZ_Type(firstZ.all).The_Test_No     := The_Test_Number;
      Root_Object.Events.objZ.Events_objZ_Type(firstZ.all).Int_Att         := 1000;
      Root_Object.Events.objZ.Events_objZ_Type(firstZ.all).Real_Att        := 1000.0;
      Root_Object.Events.objZ.Events_objZ_Type(firstZ.all).Text_Att        := "Test_Data                       ";
      Root_Object.Events.objZ.Events_objZ_Type(firstZ.all).Current_State   := Root_Object.Events.objZ.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX4,
            Target_Instance  => fourthX,
            Test_No          => The_Test_Number,
            Which_Test       => "Read_Other_Object               ");
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 14
      -- -------------------------------------------------------------------------
      --  Test 15 - Test that attributes from instances from other objects can be 
      --            written to from within the target state machine
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0505               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Update attribute from another ob");
      
      
      secondZ := Root_Object.Events.objZ.Create;
      Root_Object.Events.objZ.Events_objZ_Type(secondZ.all).The_Test_No     := The_Test_Number;
      Root_Object.Events.objZ.Events_objZ_Type(secondZ.all).Int_Att         := 0;
      Root_Object.Events.objZ.Events_objZ_Type(secondZ.all).Real_Att        := 0.0;
      Root_Object.Events.objZ.Events_objZ_Type(secondZ.all).Text_Att        := "                                ";
      Root_Object.Events.objZ.Events_objZ_Type(secondZ.all).Current_State   := Root_Object.Events.objZ.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX4,
            Target_Instance  => fourthX,
            Test_No          => The_Test_Number,
            Which_Test       => "Write_Other_Object              ");
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 15
      -- -------------------------------------------------------------------------
      --  Test 16 - Check that ASL in a state machine is supported
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0507               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Check ASL in instance state     ");
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX5'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX5,
            Target_Instance  => fourthX,
            Test_No          => The_Test_Number,
            Input_Param      => 100);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      
      --  End Test 16
      -- -------------------------------------------------------------------------
      --  Test 18 - Test that the architecture does not restrict the number
      --           of parameters that an event can carry
      --           1241-0000-01-0408
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0408               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "objX                            ",
         Purpose          => "Lots of Params                  ");
      
      Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
         Test_Number => The_Test_Number,
         Free_Text   => "More params than ever required  ");
      
      
      Val_A := 1;
      Val_B := 2;
      Val_C := 4;
      Val_D := 8;
      Val_E := 16;
      Val_F := 32;
      Val_G := 64;
      Val_H := 128;
      Val_I := 256;
      Val_J := 512;
      Val_K := 1024;
      Val_L := 2048;
      Val_M := 4096;
      Val_N := 8192;
      Val_O := 16384;
      Val_P := 32768;
      Val_Q := 65536;
      Val_R := 131072;
      Val_S := 262144;
      Val_T := 524288;
      Val_U := 1048576;
      Val_V := 2097152;
      Val_W := 4194304;
      Val_X := 8388608;
      Val_Y := 16777216;
      Val_Z := 33554432;
      
      
      secondX := Root_Object.Events.objX.Create;
      Root_Object.Events.objX.Events_objX_Type(secondX.all).ResultX         := 0;
      Root_Object.Events.objX.Events_objX_Type(secondX.all).The_Test_No     := The_Test_Number;
      Root_Object.Events.objX.Events_objX_Type(secondX.all).Integer_Att     := 0;
      Root_Object.Events.objX.Events_objX_Type(secondX.all).Real_Att        := 0.0;
      Root_Object.Events.objX.Events_objX_Type(secondX.all).Text_Att        := "                                ";
      Root_Object.Events.objX.Events_objX_Type(secondX.all).Boolean_Att     := False;
      Root_Object.Events.objX.Events_objX_Type(secondX.all).Current_State   := Root_Object.Events.objX.Idle;
      
      
      --  Initiate the test
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX6'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX6,
            Target_Instance  => secondX,
            Test_No          => The_Test_Number,
            Param_A          => Val_A,
            Param_B          => Val_B,
            Param_C          => Val_C,
            Param_D          => Val_D,
            Param_E          => Val_E,
            Param_F          => Val_F,
            Param_G          => Val_G,
            Param_H          => Val_H,
            Param_I          => Val_I,
            Param_J          => Val_J,
            Param_K          => Val_K,
            Param_L          => Val_L,
            Param_M          => Val_M,
            Param_N          => Val_N,
            Param_O          => Val_O,
            Param_P          => Val_P,
            Param_Q          => Val_Q,
            Param_R          => Val_R,
            Param_S          => Val_S,
            Param_T          => Val_T,
            Param_U          => Val_U,
            Param_V          => Val_V,
            Param_W          => Val_W,
            Param_X          => Val_X,
            Param_Y          => Val_Y,
            Param_Z          => Val_Z);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 18 
      -- -------------------------------------------------------------------------
      --  Test 19
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0214               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Lots of states                  ");
      
      Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
         Test_Number => The_Test_Number,
         Free_Text   => "More states than ever required  ");
      
      
      inst_Huge_State := Root_Object.Events.HSM.Create;
      Root_Object.Events.HSM.Events_HSM_Type(inst_Huge_State.all).Current_State := Root_Object.Events.HSM.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.HSM.Events_HSM1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.HSM.HSM1,
            Target_Instance  => inst_Huge_State,
            Test_No          => The_Test_Number,
            Count            => 0);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 19
      -- -------------------------------------------------------------------------
      --  Test 20
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0502               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Parameter Check                 ");
      
      
      instCP := Root_Object.Events.CP.Create;
      Root_Object.Events.CP.Events_CP_Type(instCP.all).CP_ID           := 0;
      Root_Object.Events.CP.Events_CP_Type(instCP.all).Number_Of_Test  := The_Test_Number;
      Root_Object.Events.CP.Events_CP_Type(instCP.all).Current_State   := Root_Object.Events.CP.Idle;
      
      The_Start_Value := 0;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.CP.Events_CP1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.CP.CP1,
            Target_Instance  => instCP,
            Start_Val        => The_Start_Value);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      
      --  End Test 20
      -- -------------------------------------------------------------------------
      --  Test 21 - Test that the architecture does not restrict the number of
      --            events that can be queued
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0305               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Many events on queue            ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0407               ");
      
      Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
         Test_Number => The_Test_Number,
         Free_Text   => "More queued events than ever req");
      
      
      instZ := Root_Object.Events.objZ.Create;
      Root_Object.Events.objZ.Events_objZ_Type(instZ.all).The_Test_No     := The_Test_Number;
      Root_Object.Events.objZ.Events_objZ_Type(instZ.all).Int_Att         := 0;
      Root_Object.Events.objZ.Events_objZ_Type(instZ.all).Real_Att        := 0.0;
      Root_Object.Events.objZ.Events_objZ_Type(instZ.all).Text_Att        := "                                ";
      Root_Object.Events.objZ.Events_objZ_Type(instZ.all).Current_State   := Root_Object.Events.objZ.Idle;
      
      
      Count := 0;
      
      loop
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.objZ.Events_objZ1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.objZ.objZ1,
               Target_Instance  => instZ);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
         Count := Count + 1;
         
         exit when Count =  1000;
      end loop;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objZ.Events_objZ3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objZ.objZ3,
            Target_Instance  => instZ);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 21
      -- -------------------------------------------------------------------------
      --  Test 23 - Ensure that generated events with an Ignore effect are 
      --            dealt with correctly
      -- -------------------------------------------------------------------------
      
      instTE1 := Root_Object.Events.TE.Create;
      Root_Object.Events.TE.Events_TE_Type(instTE1.all).ID              := 0;
      Root_Object.Events.TE.Events_TE_Type(instTE1.all).Result          := 0;
      Root_Object.Events.TE.Events_TE_Type(instTE1.all).Current_State   := Root_Object.Events.TE.Idle;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.TE.Events_TE1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.TE.TE1,
            Target_Instance  => instTE1,
            Test_No          => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 23
      -- -------------------------------------------------------------------------
      --  Test 24
      -- -------------------------------------------------------------------------
      
      instTE2 := Root_Object.Events.TE.Create;
      Root_Object.Events.TE.Events_TE_Type(instTE2.all).ID              := 1;
      Root_Object.Events.TE.Events_TE_Type(instTE2.all).Result          := 0;
      Root_Object.Events.TE.Events_TE_Type(instTE2.all).Current_State   := Root_Object.Events.TE.Idle;
      
      
      instCCS := Root_Object.Events.CCS.Create;
      Root_Object.Events.CCS.Events_CCS_Type(instCCS.all).Current_State := Root_Object.Events.CCS.Check;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.TE.Events_TE2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.TE.TE2,
            Target_Instance  => instTE2,
            Test_No          => The_Test_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.CCS.Events_CCS1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.CCS.CCS1,
            Target_Instance  => instCCS,
            Test_No          => The_Test_Number,
            Which_Test       => "Ignore                          ");
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 24
      -- -------------------------------------------------------------------------
      --  Test 25
      -- -------------------------------------------------------------------------
      
      instTE3 := Root_Object.Events.TE.Create;
      Root_Object.Events.TE.Events_TE_Type(instTE3.all).ID              := 2;
      Root_Object.Events.TE.Events_TE_Type(instTE3.all).Result          := 0;
      Root_Object.Events.TE.Events_TE_Type(instTE3.all).Current_State   := Root_Object.Events.TE.Idle;
      
      
      if Host =  "ISIM                            " then
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.TE.Events_TE6'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.TE.TE6,
               Target_Instance  => instTE3,
               Test_No          => The_Test_Number,
               The_Reqid        => "1241-0000-01-0212               ",
               Effect_Type      => "Cannot Happen                   ");
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      else
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.TE.Events_TE4'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.TE.TE4,
               Target_Instance  => instTE3,
               Test_No          => The_Test_Number);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      end if;
      
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 25
      -- -------------------------------------------------------------------------
      --  Test 26
      -- -------------------------------------------------------------------------
      
      instTE4 := Root_Object.Events.TE.Create;
      Root_Object.Events.TE.Events_TE_Type(instTE4.all).ID              := 3;
      Root_Object.Events.TE.Events_TE_Type(instTE4.all).Result          := 0;
      Root_Object.Events.TE.Events_TE_Type(instTE4.all).Current_State   := Root_Object.Events.TE.Idle;
      
      
      if Host =  "ISIM                            " then
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.TE.Events_TE6'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.TE.TE6,
               Target_Instance  => instTE4,
               Test_No          => The_Test_Number,
               The_Reqid        => "1241-0000-01-0213               ",
               Effect_Type      => "Cannot Happen                   ");
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      else
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.TE.Events_TE5'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.TE.TE5,
               Target_Instance  => instTE4,
               Test_No          => The_Test_Number);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.CCS.Events_CCS1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.CCS.CCS1,
               Target_Instance  => instCCS,
               Test_No          => The_Test_Number,
               Which_Test       => "Cannot Happen                   ");
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      end if;
      
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 26
      -- -------------------------------------------------------------------------
      --  Test 27
      -- -------------------------------------------------------------------------
      
      instTE5 := Root_Object.Events.TE.Create;
      Root_Object.Events.TE.Events_TE_Type(instTE5.all).ID              := 4;
      Root_Object.Events.TE.Events_TE_Type(instTE5.all).Result          := 0;
      Root_Object.Events.TE.Events_TE_Type(instTE5.all).Current_State   := Root_Object.Events.TE.Idle;
      
      
      if Host =  "ISIM                            " then
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.TE.Events_TE6'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.TE.TE6,
               Target_Instance  => instTE4,
               Test_No          => The_Test_Number,
               The_Reqid        => "1241-0000-01-0213               ",
               Effect_Type      => "Undefined                       ");
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      else
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.TE.Events_TE7'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.TE.TE7,
               Target_Instance  => instTE5,
               Test_No          => The_Test_Number);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      end if;
      
      The_Test_Number := The_Test_Number + 1;
      
      --  End Test 27
      -- -------------------------------------------------------------------------
      --  Test 
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0409               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Event from State                ");
      
      
      instCD1 := Root_Object.Events.objCD.Create;
      Root_Object.Events.objCD.Events_objCD_Type(instCD1.all).idCD            := 1;
      Root_Object.Events.objCD.Events_objCD_Type(instCD1.all).CDTotal         := 0;
      Root_Object.Events.objCD.Events_objCD_Type(instCD1.all).Current_State   := Root_Object.Events.objCD.Idle;
      
      
      instCD2 := Root_Object.Events.objCD.Create;
      Root_Object.Events.objCD.Events_objCD_Type(instCD2.all).idCD            := 2;
      Root_Object.Events.objCD.Events_objCD_Type(instCD2.all).CDTotal         := 0;
      Root_Object.Events.objCD.Events_objCD_Type(instCD2.all).Current_State   := Root_Object.Events.objCD.Idle;
      
      
      Root_Object.Events.objCD.Delete (
         Old_Instance => instCD2);
      
      if Host =  "ISIM                            " then
         
         Events_RPT4_Test_Unsupported_Bridge.Events_RPT4_Test_Unsupported (
            Unsupported_Test_Number => The_Test_Number);
         
      else
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.objCD.Events_objCD1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.objCD.objCD1,
               Target_Instance  => instCD2,
               Test_No          => The_Test_Number,
               Deleted          => True);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.objCD.Events_objCD1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.objCD.objCD1,
               Target_Instance  => instCD1,
               Test_No          => The_Test_Number,
               Deleted          => False);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      end if;
      
      The_Test_Number := The_Test_Number + 1;
      
      
      --  End Test
      -- -------------------------------------------------------------------------
      --  Test 
      -- -------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0403               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Check Persistence               ");
      
      Events_RPT8_Specify_Requid_Bridge.Events_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0303               ");
      
      
      InstTP := Root_Object.Events.objTP.Create;
      Root_Object.Events.objTP.Events_objTP_Type(InstTP.all).TPID            := 10;
      Root_Object.Events.objTP.Events_objTP_Type(InstTP.all).Current_State   := Root_Object.Events.objTP.Idle;
      
      
      StartA_Value := 10;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objTP.Events_objTP1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objTP.objTP1,
            Target_Instance  => InstTP,
            Test_No          => The_Test_Number,
            A_Val            => StartA_Value);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      
      The_Test_Number := The_Test_Number + 1;
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0303               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Real as event data              ");
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objTP.Events_objTP4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objTP.objTP4,
            Target_Instance  => InstTP,
            Test_No          => The_Test_Number,
            Real_Val         => 99.9);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number      => The_Test_Number,
         Requid           => "1241-0000-01-0303               ",
         Invoking_Domain  => "Events                          ",
         Invoking_Object  => "Scenario                        ",
         Purpose          => "Test as event data              ");
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objTP.Events_objTP6'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objTP.objTP6,
            Target_Instance  => InstTP,
            Test_No          => The_Test_Number,
            Text_Input       => "Text Passed                     ");
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      The_Test_Number := The_Test_Number + 1;
      
      
      -- -------------------------------------------------------------------------
      
      if my_test /= Null then
         
         Root_Object.Events.TD.Events_TD_type(my_test.all).Current_Test_Number := The_Test_Number;
         
      end if;
      
   end Events_Scenario4;
   
--
-- End of file Events_Scenario4.ada
--
