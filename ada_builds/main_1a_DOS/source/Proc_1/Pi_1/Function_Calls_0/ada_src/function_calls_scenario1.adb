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
--* File Name:               Function_Calls_Scenario1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Perform Function Calls Tests
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
--* Domain Name              : Function_Calls
--* Domain Key Letter        : Function_Calls
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Function_Calls.objC;
with Root_Object.Function_Calls.ATO;
with Root_Object.Function_Calls.objB;
with Root_Object.Function_Calls.objA;
with Root_Object.Function_Calls.TD;

-- List of services used
with Function_Calls_Function_Calls10_Call_A_Service;
with Function_Calls_Function_Calls12_Test_IH_Params_Service;
with Function_Calls_objA5_Call_To_Self_Service;
with Function_Calls_Function_Calls8_Call_To_Self_Service;
with Function_Calls_Function_Calls6_Receive_Enumeration_Service;
with Function_Calls_Function_Calls4_Perform_Service_In_Tight_Loop_Service;

-- List of bridges used
with Function_Calls_NTB3_Call_Object_Sync_Service_Bridge;
with Function_Calls_NTB2_Call_Domain_Sync_Service_Bridge;
with Function_Calls_RPT8_Specify_Requid_Bridge;
with Function_Calls_RPT1_Start_Test_Bridge;
with Function_Calls_RPT2_Test_Passed_Bridge;
with Function_Calls_RPT3_Test_Failed_Bridge;
with Function_Calls_RPT5_Test_Text_Bridge;
with Function_Calls_WAW1_What_Env_Bridge;

-- List of domain types used
with Function_Calls_Domain_Types;
use type Function_Calls_Domain_Types.Colour_Type;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Function_Calls_Scenario1 is
   
      
      my_test          : Root_Object.Object_Access;
      newA             : Root_Object.Object_Access;
      newB             : Root_Object.Object_Access;
      a_tight_instance : Root_Object.Object_Access;
      an_instance_A    : Root_Object.Object_Access;
      an_instance_B    : Root_Object.Object_Access;
      NewInstA         : Root_Object.Object_Access;
      InstC            : Root_Object.Object_Access;
      ReturnInst       : Root_Object.Object_Access;
      
      The_Real : Application_Types.Base_Float_Type := 1.0;
      
      Test               : Application_Types.Base_Integer_Type := 1;
      loop_counter       : Application_Types.Base_Integer_Type := 1;
      target             : Application_Types.Base_Integer_Type := 1;
      Tight_Return_Value : Application_Types.Base_Integer_Type := 1;
      Expected_Result    : Application_Types.Base_Integer_Type := 1;
      Returned_Val       : Application_Types.Base_Integer_Type := 1;
      InputVal1          : Application_Types.Base_Integer_Type := 1;
      InputVal2          : Application_Types.Base_Integer_Type := 1;
      InputVal3          : Application_Types.Base_Integer_Type := 1;
      The_Int            : Application_Types.Base_Integer_Type := 1;
      The_Result         : Application_Types.Base_Integer_Type := 1;
      Total              : Application_Types.Base_Integer_Type := 1;
      
      Host     : Application_Types.Base_Text_Type := (others => ' ');
      The_Text : Application_Types.Base_Text_Type := (others => ' ');
      
      Local_Colour : Function_Calls_Domain_Types.Colour_Type               := Function_Calls_Domain_Types.Colour_Type_first;
      
   begin
      my_test := Root_Object.Function_Calls.TD.Unconditional_Find_One;
      Test := Root_Object.Function_Calls.TD.Function_Calls_TD_type(my_test.all).The_Test_Number;
      
      
      Function_Calls_WAW1_What_Env_Bridge.Function_Calls_WAW1_What_Env (
         Env_Text => Host);
      
      
      --  Define all the objects in this domain, ten each for ObjectA and ObjectB
      
      loop_counter := 1;
      
      loop
         
         newA := Root_Object.Function_Calls.objA.Create;
         Root_Object.Function_Calls.objA.Function_Calls_objA_Type(newA.all).ReferenceA    := loop_counter;
         Root_Object.Function_Calls.objA.Function_Calls_objA_Type(newA.all).ResultA       := 0;
         Root_Object.Function_Calls.objA.Function_Calls_objA_Type(newA.all).Current_State := Root_Object.Function_Calls.objA.Idle;
         
         
         newB := Root_Object.Function_Calls.objB.Create;
         Root_Object.Function_Calls.objB.Function_Calls_objB_Type(newB.all).ReferenceB    := loop_counter;
         Root_Object.Function_Calls.objB.Function_Calls_objB_Type(newB.all).ResultA       := 10;
         Root_Object.Function_Calls.objB.Function_Calls_objB_Type(newB.all).Current_State := Root_Object.Function_Calls.objB.Idle;
         
         loop_counter := loop_counter + 1;
         exit when loop_counter =  11;
      end loop;
      
      
      -- -------------------------------------------------------------------------
      --  Loop again, but this time pass the active object IH into a synch service
      --  Don't delete the object
      -- -------------------------------------------------------------------------
      loop_counter := 1;
      
      loop
         
         a_tight_instance := Root_Object.Function_Calls.ATO.Create;
         Root_Object.Function_Calls.ATO.Function_Calls_ATO_Type(a_tight_instance.all).Start_Value     := Test;
         Root_Object.Function_Calls.ATO.Function_Calls_ATO_Type(a_tight_instance.all).Increment_Value := 10;
         Root_Object.Function_Calls.ATO.Function_Calls_ATO_Type(a_tight_instance.all).Current_State   := Root_Object.Function_Calls.ATO.Idle;
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Function_Calls.ATO.Function_Calls_ATO1'(Root_Object.Root_Event_Type with
               This_Event_Class     => Root_Object.Function_Calls.ATO.ATO1,
               Target_Instance      => a_tight_instance,
               Termination_Required => False);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
         Test         := Test + 1;
         loop_counter := loop_counter + 1;
         exit when loop_counter =  6;
      end loop;
      
      
      -- -------------------------------------------------------------------------
      --  Loop again, but this time generate to the active object IH 
      --  Cause the object to self delete
      -- -------------------------------------------------------------------------
      loop_counter := 1;
      
      loop
         
         a_tight_instance := Root_Object.Function_Calls.ATO.Create;
         Root_Object.Function_Calls.ATO.Function_Calls_ATO_Type(a_tight_instance.all).Start_Value     := Test;
         Root_Object.Function_Calls.ATO.Function_Calls_ATO_Type(a_tight_instance.all).Increment_Value := 10;
         Root_Object.Function_Calls.ATO.Function_Calls_ATO_Type(a_tight_instance.all).Current_State   := Root_Object.Function_Calls.ATO.Idle;
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Function_Calls.ATO.Function_Calls_ATO1'(Root_Object.Root_Event_Type with
               This_Event_Class     => Root_Object.Function_Calls.ATO.ATO1,
               Target_Instance      => a_tight_instance,
               Termination_Required => True);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
         Test         := Test + 1;
         loop_counter := loop_counter + 1;
         exit when loop_counter =  6;
      end loop;
      
      
      -- -------------------------------------------------------------------------
      --  Tests one through four on ObjectA
      -- -------------------------------------------------------------------------
      loop_counter := 1;
      
      loop
         an_instance_A := Root_Object.Function_Calls.objA.Conditional_Find_One;
         while (an_instance_A /= null) and then (not (Root_Object.Function_Calls.objA.Function_Calls_objA_Type(an_instance_A.all).ReferenceA =  loop_counter) ) loop
            
            an_instance_A := an_instance_A.Next_Object;
         end loop;
         
         
         if an_instance_A /= Null then
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Function_Calls.objA.Function_Calls_objA3'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Function_Calls.objA.objA3,
                  Target_Instance  => an_instance_A,
                  Test_Case_ID     => Test,
                  Invocation       => loop_counter);
               
               Application_Queue.Push (
                  Item        => Pushed_Event,
                  Target_Fifo => Application_Queue.Application_Queue);
            end;
         else
            
            Function_Calls_RPT5_Test_Text_Bridge.Function_Calls_RPT5_Test_Text (
               Test_Number      => loop_counter,
               Free_Text        => "Scenario object A Test not perfo");
            
         end if;
         
         loop_counter := loop_counter + 1;
         Test         := Test + 1;
         exit when loop_counter =  6;
      end loop;
      
      
      -- -------------------------------------------------------------------------
      --  Test five is a special case loop_counter is five, Test is also five.
      -- -------------------------------------------------------------------------
      an_instance_A := Root_Object.Function_Calls.objA.Conditional_Find_One;
      while (an_instance_A /= null) and then (not (Root_Object.Function_Calls.objA.Function_Calls_objA_Type(an_instance_A.all).ReferenceA =  loop_counter) ) loop
         
         an_instance_A := an_instance_A.Next_Object;
      end loop;
      
      an_instance_B := Root_Object.Function_Calls.objB.Conditional_Find_One;
      while (an_instance_B /= null) and then (not (Root_Object.Function_Calls.objB.Function_Calls_objB_Type(an_instance_B.all).ReferenceB =  loop_counter) ) loop
         
         an_instance_B := an_instance_B.Next_Object;
      end loop;
      
      
      -- if an_instance_A != UNDEFINED & \
      --    an_instance_B != UNDEFINED then
      --    generate objA3:Start (Test, loop_counter) to an_instance_A
      --    Test = Test + 1
      --    generate objB4:Verify(Test, loop_counter) to an_instance_B
      -- else
      --    [] = RPT5:Test_Text[loop_counter,"Scenario object A and B Test not performed"]
      -- endif
      -- -------------------------------------------------------------------------
      --  Tests six through ten on objectB 
      -- -------------------------------------------------------------------------
      loop_counter := 1;
      
      
      loop
         
         --  Grab the 6..10 objects
         
         target := loop_counter + 5;
         
         an_instance_B := Root_Object.Function_Calls.objB.Conditional_Find_One;
         while (an_instance_B /= null) and then (not (Root_Object.Function_Calls.objB.Function_Calls_objB_Type(an_instance_B.all).ReferenceB =  target) ) loop
            
            an_instance_B := an_instance_B.Next_Object;
         end loop;
         
         
         if an_instance_B /= Null then
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Function_Calls.objB.Function_Calls_objB4'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Function_Calls.objB.objB4,
                  Target_Instance  => an_instance_B,
                  Test_Case_ID     => Test,
                  Invocation       => loop_counter);
               
               Application_Queue.Push (
                  Item        => Pushed_Event,
                  Target_Fifo => Application_Queue.Application_Queue);
            end;
         else
            
            Function_Calls_RPT5_Test_Text_Bridge.Function_Calls_RPT5_Test_Text (
               Test_Number      => loop_counter,
               Free_Text        => "Scenario object B Test not perfo");
            
         end if;
         
         
         loop_counter := loop_counter + 1;
         Test         := Test + 1;
         
         --  Break out after five generates.
         exit when loop_counter =  6;
      end loop;
      
      
      -- -------------------------------------------------------------------------
      --  Loop again, but this time pass the object IH into a synch service
      -- -------------------------------------------------------------------------
      loop_counter := 1;
      
      
      loop
         
         Tight_Return_Value := 0;
         
         
         a_tight_instance := Root_Object.Function_Calls.ATO.Create;
         Root_Object.Function_Calls.ATO.Function_Calls_ATO_Type(a_tight_instance.all).Start_Value     := Test;
         Root_Object.Function_Calls.ATO.Function_Calls_ATO_Type(a_tight_instance.all).Increment_Value := 10;
         Root_Object.Function_Calls.ATO.Function_Calls_ATO_Type(a_tight_instance.all).Current_State   := Root_Object.Function_Calls.ATO.Idle;
         
         
         Function_Calls_Function_Calls4_Perform_Service_In_Tight_Loop_Service.Function_Calls_Function_Calls4_Perform_Service_In_Tight_Loop (
            A_Tight_Input_Parameter  => a_tight_instance,
            This_Test_Number         => Test,
            Testing_For_What         => "Tightly controlled IH           ",
            A_Tight_Return_Parameter => Tight_Return_Value);
         
         
         Expected_Result := Test + 10;
         
         
         if Tight_Return_Value /= Expected_Result then
            
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "Tightly controlled IH           ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Tight_Return_Value);
            
         else
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "Tightly controlled IH           ",
               Test_Number        => Test,
               Test_Value         => Tight_Return_Value);
            
         end if;
         
         
         Test         := Test + 1;
         loop_counter := loop_counter + 1;
         
         exit when loop_counter =  6;
      end loop;
      
      
      -- -------------------------------------------------------------------------
      --  Receive an enumeration value into a service call by locally defined 
      --  variable
      -- -------------------------------------------------------------------------
      Local_Colour := Function_Calls_Domain_Types.Red;
      
      Function_Calls_Function_Calls6_Receive_Enumeration_Service.Function_Calls_Function_Calls6_Receive_Enumeration (
         Test_Number => Test,
         The_Colour  => Local_Colour,
         Testing_For => "Variable defined enumeral       ");
      
      
      -- -------------------------------------------------------------------------
      --  Do the same test again, but this time, use hard coded value for enumeral.
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      Function_Calls_Function_Calls6_Receive_Enumeration_Service.Function_Calls_Function_Calls6_Receive_Enumeration (
         Test_Number => Test,
         The_Colour  => Function_Calls_Domain_Types.Red,
         Testing_For => "Hard coded enumeral             ");
      
      
      -- -------------------------------------------------------------------------
      --  Check that a domain syncronous service can call itself
      -- -------------------------------------------------------------------------
      Test := Test + 1;
      
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0808               ",
         Invoking_Domain => "Function Calls                  ",
         Invoking_Object => "Domain Sync Services            ",
         Purpose         => "Function Calls Iteslf           ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0809               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1031               ");
      
      Function_Calls_RPT5_Test_Text_Bridge.Function_Calls_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "Max 700                         ");
      
      
      Returned_Val := 0;
      
      
      Function_Calls_Function_Calls8_Call_To_Self_Service.Function_Calls_Function_Calls8_Call_To_Self (
         The_Input_Value  => 0,
         The_Output_Value => Returned_Val);
      
      
      if Host =  "ISIM                            " then
         
         if Returned_Val =  5 then
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "Function Calls Iteslf           ",
               Test_Number        => Test,
               Test_Value         => Returned_Val);
            
         else
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "Function Calls Iteslf           ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Returned_Val);
            
         end if;
         
      else
         
         if Returned_Val =  700 then
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "Function Calls Iteslf           ",
               Test_Number        => Test,
               Test_Value         => Returned_Val);
            
         else
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "Function Calls Iteslf           ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Returned_Val);
            
         end if;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Check that a object syncronous service can call itself
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      NewInstA := Root_Object.Function_Calls.objA.Create;
      Root_Object.Function_Calls.objA.Function_Calls_objA_Type(NewInstA.all).ReferenceA      := 0;
      Root_Object.Function_Calls.objA.Function_Calls_objA_Type(NewInstA.all).ResultA         := 0;
      Root_Object.Function_Calls.objA.Function_Calls_objA_Type(NewInstA.all).Current_State   := Root_Object.Function_Calls.objA.Idle;
      
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0808               ",
         Invoking_Domain => "Function Calls                  ",
         Invoking_Object => "Domain Sync Services            ",
         Purpose         => "Object sync service calls itself");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-1031               ");
      
      
      Returned_Val := 0;
      
      
      Function_Calls_objA5_Call_To_Self_Service.Function_Calls_objA5_Call_To_Self (
         The_Input_Value  => 0,
         The_Output_Value => Returned_Val);
      
      
      if Returned_Val =  2 then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Function Calls Iteslf           ",
            Test_Number        => Test,
            Test_Value         => Returned_Val);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Function Calls Iteslf           ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Returned_Val);
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Call domain sync service from a bridge
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0810               ",
         Invoking_Domain => "Function Calls                  ",
         Invoking_Object => "Domain Sync Services            ",
         Purpose         => "Call from bridge                ");
      
      
      InputVal1 := 1;
      InputVal2 := 2;
      InputVal3 := 3;
      
      
      Function_Calls_NTB2_Call_Domain_Sync_Service_Bridge.Function_Calls_NTB2_Call_Domain_Sync_Service (
         Test        => Test,
         InputValue1 => InputVal1,
         InputValue2 => InputVal2,
         InputValue3 => InputVal3);
      
      
      -- -------------------------------------------------------------------------
      --  Call object sync service from a bridge
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0810               ",
         Invoking_Domain => "Function Calls                  ",
         Invoking_Object => "Object Sync Services            ",
         Purpose         => "Call from bridge                ");
      
      
      The_Text := "From Bridge                     ";
      The_Int  := 100;
      The_Real := 99.9;
      
      
      Function_Calls_NTB3_Call_Object_Sync_Service_Bridge.Function_Calls_NTB3_Call_Object_Sync_Service (
         Test        => Test,
         Text_Input  => The_Text,
         The_Integer => The_Int,
         The_Real    => The_Real);
      
      
      -- -------------------------------------------------------------------------
      
      Test := Test + 1;
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1215               ",
         Invoking_Domain => "Function Calls                  ",
         Invoking_Object => "Object Sync Services            ",
         Purpose         => "Check IH Parameters             ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0138               ");
      
      
      InstC := Root_Object.Function_Calls.objC.Create;
      Root_Object.Function_Calls.objC.Function_Calls_objC_Type(InstC.all).idC             := 100;
      Root_Object.Function_Calls.objC.Function_Calls_objC_Type(InstC.all).IntC            := 200;
      Root_Object.Function_Calls.objC.Function_Calls_objC_Type(InstC.all).RealC           := 99.9;
      
      
      Function_Calls_Function_Calls12_Test_IH_Params_Service.Function_Calls_Function_Calls12_Test_IH_Params (
         Input_IH  => InstC,
         Return_IH => ReturnInst);
      
      
      if Root_Object.Function_Calls.objC.Function_Calls_objC_type(ReturnInst.all).idC =  1000 then
         
         if Root_Object.Function_Calls.objC.Function_Calls_objC_type(ReturnInst.all).IntC =  2000 then
            
            if Root_Object.Function_Calls.objC.Function_Calls_objC_type(ReturnInst.all).RealC =  999.9 then
               
               Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
                  Test_Object_Domain => "Check IH Parameters             ",
                  Test_Number        => Test,
                  Test_Value         => 0);
               
            else
               Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
                  Failed_Domain_Object => "Check IH Parameters             ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -10);
               
            end if;
            
         else
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "Check IH Parameters             ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -2);
            
         end if;
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Check IH Parameters             ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -30);
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      Test := Test + 1;
      
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0806               ",
         Invoking_Domain => "Function Calls                  ",
         Invoking_Object => "Domain Sync Services            ",
         Purpose         => "Check memory usage              ");
      
      Function_Calls_RPT5_Test_Text_Bridge.Function_Calls_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "1000000 functions called        ");
      
      Function_Calls_Function_Calls10_Call_A_Service.Function_Calls_Function_Calls10_Call_A (
         Input_Value  => 0,
         Output_Value => The_Result);
      
      
      if Host =  "ISIM                            " then
         
         Total := 10;
      else
         Total := 700;
         
      end if;
      
      
      if The_Result >= Total then
         
         Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
            Test_Object_Domain => "Mem usage                       ",
            Test_Number        => Test,
            Test_Value         => The_Result);
         
      else
         Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
            Failed_Domain_Object => "Mem usage                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => The_Result);
         
      end if;
      
      
      Test := Test + 1;
      
      
      Root_Object.Function_Calls.TD.Function_Calls_TD_type(my_test.all).The_Test_Number := Test;
      
   end Function_Calls_Scenario1;
   
--
-- End of file Function_Calls_Scenario1.ada
--
