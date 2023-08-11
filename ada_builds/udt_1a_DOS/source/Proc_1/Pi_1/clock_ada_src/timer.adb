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
--* File Name:               timer.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Implementation of the application-wide OOA timer facilities
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
--*  COMPONENTS CONTAINED WITHIN THIS FILE                                            *
--*  package body Timer 
--*     Create_Timer, Delete_Timer, Reset_Timer, Set_Timer 
--*     Get_Time_Remaining
--*     Iterate_Timers
--*    
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--    NAME     DATE             ECR No            MODIFICATION
--
--    jmm      29/06/99       QAR upstr 0005   remove references to Ada.Calendar and move all 
--                                             time-related functions into the application-specific 
--                                             package GetTime.
--
--    jmm      10/05/00       ecr 008996       Cosmetic changes to source code, but no change to code content.
--                                             Changes can be identified by comparison
--                                             with previous version. 
--
--    jmm      28/06/00       PILOT_0000_0423  Include diagnostic references to count of events.
--
--    jmm      06/07/00       PILOT_0000_0276  Increase the number of available timers.
--
--    db       08/08/01       PILOT_0000_1416  Make template generated body for Debug purposes.
--    ANF      23/03/2005     001798 9SR056    Software Architecture Changes for Open Architecture:
--                                             All timer packages re-ordered to provide
--                                             consitency with Middleware.
--
--    DNS      27/09/17       CR 10438         Protect the Timer Operations.
--    DNS      17/05/2018     CR 10488 9SU050  DOS support reinstated.
--    DNS      09/08/2018     CR 10474 9SU050  Increase the number of available timers.
---- **************************************************************************************

with Clock;
with Clock_Types;
with Application_Types;
with Application_Queue;

package body Timer is
   Number_Of_Timers: constant Application_Types.Base_Integer_Type := 30;
  
   type Timer_Record_Type is
      record
         In_Service: Boolean := False;
         Counting: Boolean := False;
         Granularity: Application_Types.Time_Unit;
         Time_To_Trip: Clock_Types.Microseconds_Type;
         Timeout_Event: Root_Object.Root_Event_Access_Type;
      end record;
    
   type Timer_Array_Type is array (Application_Types.Base_Integer_Type(1) .. Application_Types.Base_Integer_Type(Number_Of_Timers)) of Timer_Record_Type;
   
   protected ProtectedTimer is
      procedure Create_Timer(Timer_ID: out Application_Types.Base_Integer_Type);
      procedure Delete_Timer(Timer_ID: in Application_Types.Base_Integer_Type);
      procedure Reset_Timer(Timer_ID: in Application_Types.Base_Integer_Type);
      procedure Set_Timer(Timer_ID: in Application_Types.Base_Integer_Type;
                          Time_Remaining: in Application_Types.Base_Integer_Type;
                          Granularity: in Application_Types.Time_Unit;
                          This_Event: in Root_Object.Root_Event_Access_Type;
                          To_instance: in Root_Object.Object_Access);
      procedure Get_Time_Remaining(Timer_ID: in Application_Types.Base_Integer_Type;
                                   Time_Remaining: out Application_Types.Base_Integer_Type);
      procedure Iterate_Timers;  
   private
      This_Timer_Array: Timer_Array_Type;
   end ProtectedTimer;
   
   protected body ProtectedTimer is
      procedure Create_Timer(Timer_ID: out Application_Types.Base_Integer_Type) is
         use type Application_Types.Base_Integer_Type;
      begin
         Timer_ID := -1;
         for i in Timer_Array_Type'range loop
            if not(This_Timer_Array(i).In_Service) then
               This_Timer_Array(i).In_Service := True;
               Timer_ID := i;
               exit;
            end if;
         end loop;
      end Create_Timer;
      
      procedure Delete_Timer(Timer_ID: in Application_Types.Base_Integer_Type) is
      begin
         This_Timer_Array(Timer_ID).In_Service := False;
         This_Timer_Array(Timer_ID).Counting := False;
      end Delete_Timer;
      
      procedure Reset_Timer(Timer_ID: in Application_Types.Base_Integer_Type) is
      begin
         if (This_Timer_Array(Timer_ID).Counting) then
            This_Timer_Array(Timer_ID).Counting := False;
            Root_Object.Free(This_Timer_Array (Timer_ID).Timeout_Event);
         end if;
      end Reset_Timer;
      
      procedure Set_Timer(Timer_ID: in Application_Types.Base_Integer_Type;
                          Time_Remaining: in Application_Types.Base_Integer_Type;
                          Granularity: in Application_Types.Time_Unit;
                          This_Event: in Root_Object.Root_Event_Access_Type;
                          To_instance: in Root_Object.Object_Access) is
         Current_Time: Clock_Types.Microseconds_Type := Clock.RealTimeClock.Get_Time_2Microseconds;
         use type Application_Types.Base_Integer_Type;
      begin
         if (This_Timer_Array(Timer_ID).In_Service) then
            This_Timer_Array(Timer_ID).Counting := True;
            This_Timer_Array(Timer_ID).Timeout_Event := This_Event;
            This_Timer_Array(Timer_ID).Granularity := Granularity;
            
            if (Time_Remaining < 0) then
               This_Timer_Array(Timer_ID).Time_To_Trip := Current_Time;
            else
               declare
                  Conversion: Clock_Types.Microseconds_Type;
                  use type Clock_Types.Microseconds_Type;
               begin
                  case Granularity is
                  when Application_Types.millisecond => Conversion := 500;
                  when Application_Types.second => Conversion := 500_000;
                  end case;
                  This_Timer_Array(Timer_ID).Time_To_Trip := Current_Time + (Time_Remaining * Conversion);
               end;
            end if;
         end if;
      end Set_Timer;
      
      procedure Get_Time_Remaining(Timer_ID: in Application_Types.Base_Integer_Type;
                                   Time_Remaining: out Application_Types.Base_Integer_Type) is
         Current_Time: Clock_Types.Microseconds_Type := Clock.RealTimeClock.Get_Time_2Microseconds;
         Remaining_Time: Clock_Types.Microseconds_Type;
         use type Application_Types.Base_Integer_Type;
         use type Clock_Types.Microseconds_Type;
      begin
         Time_Remaining := -1;
         if ((This_Timer_Array(Timer_ID).In_Service) and then (This_Timer_Array(Timer_ID).Counting)) then
            Remaining_Time := This_Timer_Array(Timer_ID).Time_To_Trip - Current_Time;
            if (Remaining_Time > 0) then
               Time_Remaining := Remaining_Time / 500_000;
            else
               Time_Remaining := 0;
            end if;
         end if;
      end Get_Time_Remaining;
      
      procedure Iterate_Timers is
         Current_Time: Clock_Types.Microseconds_Type := Clock.RealTimeClock.Get_Time_2Microseconds;
         use type Clock_Types.Microseconds_Type;
      begin
         for i in Timer_Array_Type'range loop
            if (This_Timer_Array(i).Counting) then
               if (Current_Time >= This_Timer_Array(i).Time_To_Trip) then
                  Application_Queue.Push(This_Timer_Array(i).Timeout_Event, Application_Queue.Application_Queue);
                  This_Timer_Array(i).Counting := False;
               end if;
            end if;
         end loop;
      end Iterate_Timers;
   end ProtectedTimer;
   
   -----------------------------------------------------------------------------
   
   procedure Create_Timer(Timer_ID: out Application_Types.Base_Integer_Type) is
   begin
      ProtectedTimer.Create_Timer(Timer_ID => Timer_ID);
   end;
   
   procedure Delete_Timer(Timer_ID: in Application_Types.Base_Integer_Type) is
   begin
      ProtectedTimer.Delete_Timer(Timer_ID => Timer_ID);
   end;
   
   procedure Reset_Timer(Timer_ID: in Application_Types.Base_Integer_Type) is
   begin
      ProtectedTimer.Reset_Timer(Timer_ID => Timer_ID);
   end;
   
   procedure Set_Timer(Timer_ID: in Application_Types.Base_Integer_Type;
                       Time_Remaining: in Application_Types.Base_Integer_Type;
                       Granularity: in Application_Types.Time_Unit;
                       This_Event: in Root_Object.Root_Event_Access_Type;
                       To_instance: in Root_Object.Object_Access) is
   begin
      ProtectedTimer.Set_Timer(Timer_ID       => Timer_ID,
                               Time_Remaining => Time_Remaining,
                               Granularity    => Granularity,
                               This_Event     => This_Event,
                               To_instance    => To_instance);
   end;
   
   procedure Get_Time_Remaining(Timer_ID: in Application_Types.Base_Integer_Type;
                                Time_Remaining: out Application_Types.Base_Integer_Type) is
   begin
      ProtectedTimer.Get_Time_Remaining(Timer_ID       => Timer_ID,
                                        Time_Remaining => Time_Remaining);
   end;
   
   procedure Iterate_Timers is
   begin
      ProtectedTimer.Iterate_Timers;
   end;
end Timer;

