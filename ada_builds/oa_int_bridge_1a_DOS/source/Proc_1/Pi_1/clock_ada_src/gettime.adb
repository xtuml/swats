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
--* File Name:               gettime.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Implementation of Real-Time clock facilities
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
--*  package body GetTime
--*     Get_Time(I), Get_Time(F), Get_Time_Seconds(I),  Get_Time_Seconds(F),
--*     Get_TickCount
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--    db       20/08/0 1     PILOT_0000_0243   Remove use clause
--    ANF      23/03/2005     001798 9SR056    Software Architecture Changes for Open Architecture:
--                                             All timer packages re-ordered to provide
--                                             consitency with Middleware.
--    DNS      16/10/2017    CR 10428          Timer name tidy up.
--
-- **************************************************************************************



with Clock;

package body GetTime is

   ----------------------------------------------------------------------------------------------------------------

   function Get_Time return Application_Types.Base_Integer_Type is
   begin
      return Clock.RealTimeClock.Get_Time_Milliseconds;
   end;

   ----------------------------------------------------------------------------------------------------------------

   function Get_Time return Application_Types.Base_Float_Type is
      use type Application_Types.Base_Float_Type;
   begin
      return(Application_Types.Base_Float_Type(Clock.RealTimeClock.Get_Time_2Microseconds) / 500_000.0);
   end Get_Time;

   ----------------------------------------------------------------------------------------------------------------

   function Get_Time_Seconds return Application_Types.Base_Integer_Type is
      use type Application_Types.Base_Integer_Type;
   begin
      return(Clock.RealTimeClock.Get_Time_Milliseconds / 1_000);
   end Get_Time_Seconds;

   ----------------------------------------------------------------------------------------------------------------

   function Get_Time_Seconds return Application_Types.Base_Float_Type renames Get_Time;

end GetTime;
