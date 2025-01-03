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
--* File Name:               TT_TS_5.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Not Defined
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
--* Domain Name              : Test_Timers
--* Domain Key Letter        : TT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.TT.TS;
with Root_Object.TT.U;
with Root_Object.TT.TR;
with Root_Object.TT.RT;
with Root_Object.TT.DT;
with Root_Object.TT.BT;
with Root_Object.TT.T;

-- List of relationships used
with TT_rel_R4;
with TT_rel_R1;
with TT_rel_R2;

-- List of services used
with TT_TT1_create_report_data_Service;

with Application_Types;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TT.TS)
   
   procedure TT_TS_5 (This_Instance : in out Root_Object.Object_Access) is
   
      
      the_first_test      : Root_Object.Object_Access;
      the_basic_timer     : Root_Object.Object_Access;
      the_second_test     : Root_Object.Object_Access;
      the_deleting_timer  : Root_Object.Object_Access;
      the_third_test      : Root_Object.Object_Access;
      the_resetting_timer : Root_Object.Object_Access;
      the_fourth_test     : Root_Object.Object_Access;
      the_time_remaining  : Root_Object.Object_Access;
      the_fifth_test      : Root_Object.Object_Access;
      the_unsupported     : Root_Object.Object_Access;
      the_test_scheduler  : Root_Object.Object_Access;
      
   begin
      
      TT_TT1_create_report_data_Service.TT_TT1_create_report_data;
      
      the_first_test := Root_Object.TT.T.Create_Unique;
      the_basic_timer := Root_Object.TT.BT.Create_Unique;
      Root_Object.TT.BT.TT_BT_Type(the_basic_timer.all).Current_State := Root_Object.TT.BT.idle;
      
      TT_Rel_R2.Link (
         A_Instance => the_first_test,
         B_Instance => the_basic_timer);
      
      the_second_test := Root_Object.TT.T.Create_Unique;
      the_deleting_timer := Root_Object.TT.DT.Create_Unique;
      Root_Object.TT.DT.TT_DT_Type(the_deleting_timer.all).Current_State := Root_Object.TT.DT.idle;
      
      TT_Rel_R2.Link (
         A_Instance => the_second_test,
         B_Instance => the_deleting_timer);
      
      the_third_test := Root_Object.TT.T.Create_Unique;
      the_resetting_timer := Root_Object.TT.RT.Create_Unique;
      Root_Object.TT.RT.TT_RT_Type(the_resetting_timer.all).Current_State := Root_Object.TT.RT.idle;
      
      TT_Rel_R2.Link (
         A_Instance => the_third_test,
         B_Instance => the_resetting_timer);
      
      the_fourth_test := Root_Object.TT.T.Create_Unique;
      the_time_remaining := Root_Object.TT.TR.Create_Unique;
      Root_Object.TT.TR.TT_TR_Type(the_time_remaining.all).Current_State := Root_Object.TT.TR.idle;
      
      TT_Rel_R2.Link (
         A_Instance => the_fourth_test,
         B_Instance => the_time_remaining);
      
      the_fifth_test := Root_Object.TT.T.Create_Unique;
      the_unsupported := Root_Object.TT.U.Create_Unique;
      Root_Object.TT.U.TT_U_Type(the_unsupported.all).Current_State := Root_Object.TT.U.idle;
      
      TT_Rel_R2.Link (
         A_Instance => the_fifth_test,
         B_Instance => the_unsupported);
      
      the_test_scheduler := Root_Object.TT.TS.Unconditional_Find_One;
      TT_Rel_R1.Link (
         A_Instance => the_test_scheduler,
         B_Instance => the_first_test);
      
      TT_Rel_R4.Link (
         A_Instance => the_first_test,
         B_Role     => "is_followed_by",
         B_Instance => the_second_test);
      
      TT_Rel_R4.Link (
         A_Instance => the_second_test,
         B_Role     => "is_followed_by",
         B_Instance => the_third_test);
      
      TT_Rel_R4.Link (
         A_Instance => the_third_test,
         B_Role     => "is_followed_by",
         B_Instance => the_fourth_test);
      
      TT_Rel_R4.Link (
         A_Instance => the_fourth_test,
         B_Role     => "is_followed_by",
         B_Instance => the_fifth_test);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TT.TS.TT_TS3'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TT.TS.TS3,
            Target_Instance  => This_Instance,
            test_instance    => the_first_test);
         
         Root_Object.TT.TS.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.TT.TS.Process_Queue;
   end TT_TS_5;
   
--
-- End of file TT_TS_5.ada
--
