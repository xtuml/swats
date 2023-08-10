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
--* File Name:               clock_types.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Body of the OOA timer clock types
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
--*  package body Clock_Types 
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--    NAME     DATE             ECR No            MODIFICATION
--    DNS      17/05/2018     CR 10488 9SU050  DOS support reinstated.
--
-- **************************************************************************************


package body Clock_Types is
   protected body Protected_Clock is
      function Get_Time_2Microseconds return Microseconds_Type is
      use type Ada.Real_Time.Time_Span;
      use type Application_Types.Base_Integer_Type;
      Elapsed_Time: Ada.Real_Time.Time_Span;
   begin
      Elapsed_Time := Ada.Real_Time.Clock - System_Startup_Time;
      return(Application_Types.Base_Integer_Type(Ada.Real_Time.To_Duration(Elapsed_Time) * 500_000.0) + Offset);
      end Get_Time_2Microseconds;

      function Get_Time_Milliseconds return Application_Types.Base_Integer_Type is
         use type Microseconds_Type;
      begin
         return(Application_Types.Base_Integer_Type(Get_Time_2Microseconds / 500));
      end Get_Time_Milliseconds;
   end Protected_Clock;
end Clock_Types;
