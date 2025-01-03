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
--* File Name:               timer.ads
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
--*  package specification Timer 
--*     Create_Timer, Delete_Timer, Reset_Timer, Set_Timer 
--*     Get_Time_Remaining
--*     Iterate_Timers
--*    
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--    db       20/08/01       PILOT_0000_0243  Remove use clause
--    ANF      23/03/2005     001798 9SR056    Software Architecture Changes for Open Architecture:
--                                             All timer packages re-ordered to provide
--                                             consitency with Middleware.
--
-- **************************************************************************************

with Application_Types; 
with Root_Object;

package Timer is
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
end Timer;
