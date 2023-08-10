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
--* File Name:               TT_TR_8.ada
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

with Timer;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TT.TR)
   
   procedure TT_TR_8 (This_Instance : in out Root_Object.Object_Access) is
   
      
      timer_id_one_local : Application_Types.Base_Integer_Type := 1;
      time_remaining     : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      --    CQ 6579 Changed from: [time_remaining] = Get_Time_Remaining[this.timer_id_one]
      timer_id_one_local := Root_Object.TT.TR.TT_TR_type(This_Instance.all).timer_id_one;
      
      
      Timer.Get_Time_Remaining (
         Timer_ID       => timer_id_one_local,
         Time_Remaining => time_remaining);
      
      if (time_remaining =  0) then
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.TT.TR.TT_TR4'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.TT.TR.TR4,
               Target_Instance  => This_Instance);
            
            Root_Object.TT.TR.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.TT.TR.TT_TR3'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.TT.TR.TR3,
               Target_Instance  => This_Instance);
            
            Root_Object.TT.TR.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      Root_Object.TT.TR.Process_Queue;
   end TT_TR_8;
   
--
-- End of file TT_TR_8.ada
--
