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
--* File Name:               log.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Log package body for debugging purposes
--* Comments:                Header written by header.macro                           *
--*                           
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*  Target specific exception handling 
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
--*  Application_Control built with support for Internal interfaces
--*  
--*************************************************************************************
--*  COMPONENTS CONTAINED WITHIN THIS FILE                                            *
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--     DB       28-03-02         -              Added this file to allow log to be generated
--                                              for single domain builds also.
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
--    DNS     15/06/15          CR 10267        Add SBC312 and PPCM2 Targets rather than generic VxWorks
--    DNS     01/12/16          CR 10383        SBC312 target now SBC314
--    DNS     17/05/18       CR 10488 9SU050    DOS support reinstated.
-- **************************************************************************************

-- No log file is produced, nor screen output generated for Win32 or VxWorks target:



package body Log is
-------------------------------------------------------------------------
procedure Initialise (File_Name: in string) is
begin
  null;
end Initialise;
-------------------------------------------------------------------------
procedure New_Line is
begin
  null;
end New_Line;
-------------------------------------------------------------------------
procedure Put_Line (Dump_String: in string) is
begin
  null;
end Put_Line;
-------------------------------------------------------------------------
procedure Put (Dump_String: in string) is
begin
  null;
end Put;
-------------------------------------------------------------------------
procedure Put_Line (Dump_Float: in float) is
begin
  null;
end Put_Line;
-------------------------------------------------------------------------
procedure Put (Dump_Float: in float) is
begin
  null;
end Put;
-------------------------------------------------------------------------
procedure Put (Dump_Duration: in duration) is
begin
  null;
end Put;
-------------------------------------------------------------------------
procedure Put (Dump_Boolean: in boolean) is
begin
  null;
end Put;
-------------------------------------------------------------------------
procedure Put_Line (Dump_Integer: in integer) is
begin
  null;
end Put_Line;
-------------------------------------------------------------------------
procedure Put (Dump_Integer: in integer) is
begin
  null;
end Put;
-------------------------------------------------------------------------
procedure Close is
begin
  null;
end Close;
-------------------------------------------------------------------------
--
-- package elaboration code
--
begin
  null;
end Log;



