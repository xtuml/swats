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
--* File Name:               log.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Log package specification for debugging purposes
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
--*  
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
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
-- **************************************************************************************

package Log is

  procedure Initialise(File_Name:    in string);
    pragma inline (Initialise);  
  procedure Put_Line  (Dump_String:  in string);
    pragma inline (Put_Line);  
  procedure Put       (Dump_String:  in string);
    pragma inline (Put);  
  procedure Put_Line  (Dump_Integer: in integer);
    pragma inline (Put_Line);  
  procedure Put       (Dump_Integer: in integer);
    pragma inline (Put);  
  procedure Put_Line  (Dump_Float:   in float);
    pragma inline (Put_Line);  
  procedure Put       (Dump_Float:   in float);
    pragma inline (Put);  
  procedure Put       (Dump_Boolean: in boolean);
    pragma inline (Put);  
  procedure Put       (Dump_Duration: in duration);
    pragma inline (Put);  
  
  procedure New_Line;
    pragma inline (New_Line);  
  procedure Close;
    pragma inline (Close);  

end Log;

