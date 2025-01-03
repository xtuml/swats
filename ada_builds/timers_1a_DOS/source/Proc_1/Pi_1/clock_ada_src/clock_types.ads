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
--* File Name:               clock_types.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Specification of the OOA timer clock types
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
--*  package specification Clock_Types 
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--    NAME     DATE             ECR No            MODIFICATION
--
--    ANF      23/03/2005     001798 9SR056    Software Architecture Changes for Open Architecture:
--    DNS      17/05/2018     CR 10488 9SU050  DOS support reinstated.
--                                             Incorporated header.macro
--
-- **************************************************************************************





with Application_Types;
with Ada.Real_Time;

package Clock_Types is
   subtype Microseconds_Type is Application_Types.Base_Integer_Type range 0 .. 1_000_000_000;
   System_Startup_Time: constant Ada.Real_Time.Time := Ada.Real_Time.Clock;
   Offset: Clock_Types.Microseconds_Type := Clock_Types.Microseconds_Type'first;

   protected type Protected_Clock is
      function Get_Time_2Microseconds return Microseconds_Type;
      function Get_Time_Milliseconds return Application_Types.Base_Integer_Type;
   end Protected_Clock;
end Clock_Types;
