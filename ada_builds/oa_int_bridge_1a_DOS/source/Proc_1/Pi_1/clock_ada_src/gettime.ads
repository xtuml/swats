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
--* File Name:               gettime.ads
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
--*  package specification GetTime
--*     Get_Time(I), Get_Time(F), Get_Time_Seconds(I),  Get_Time_Seconds(F),
--*     Microseconds, UpdateOffset, UnAdjustedClock,
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--    jmm                     QAR upstr 0005   Remove references to Ada.Calendar and
--                                             incorporate all timer functionality within
--                                             this application-specific package
--
--    jmm      22/08/00       PILOT_0000_0600  Changes for issue 3.0.0 in accordance with ATN_037_03_01.
--                                             An offset value and function have been provided to enable the
--                                             clock to be restarted from a value other than zero. This is
--                                             necessary to support power-on resets.
--
--    db       05/07/01       PILOT_0000_0230  Remove use clause. Provide dot notation.
--
--    db       15/07/02       SRLE100003284    Add tag for Microseconds_Type
--    ANF      23/03/2005     001798 9SR056    Software Architecture Changes for Open Architecture:
--                                             All timer packages re-ordered to provide
--                                             consistency with Middleware.
--
-- **************************************************************************************

with Application_Types;

package GetTime is
   function Get_Time return Application_Types.Base_Integer_Type;
   function Get_Time return Application_Types.Base_Float_Type;
   function Get_Time_Seconds return Application_Types.Base_Integer_Type;
   function Get_Time_Seconds return Application_Types.Base_Float_Type;
end GetTime;
