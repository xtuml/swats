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
--* File Name:               r.TT.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Root_Object for domain 
--* Comments:                Header written by header.macro                           *
--*                           
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*  This program provides the parent data type declaration 
--*  for the domain objects in this domain. 
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
--*  Project Key Letter : TSV2
--*  Project Version    : 0
--*  Build Set          : 0
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
--*  Root_Object.TT
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--   NAME       DATE             ECR No            MODIFICATION
--
--    jmm     10/05/00        ecr 008996        Cosmetic changes to source code, but no change to code content.
--                                              Changes can be identified by comparison with previous version. 
--
--    jmm     03/10/00        PILOT_0000_0600   Changes for issue 3.0.0 in accordance with ATN_037_03_01.
--
--    db      18/03/02        SRLE100002754     Simplification of withing statements.
--
--    db      21/03/02        SRLE100002909     Include Types_And_Subtypes_Count to match defect SRLE1000002929
--
--    db      07/05/02        SRLE100001027     Conditionally generated 'with' for TT domain types package.
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
-- **************************************************************************************

-- 'with'ed here for inheritance into the domain objects
with TT_Domain_Types; 

package Root_Object.TT is
-------------------------------------------------------------------------------------------------
  type TT_Type is new Root_Object.Object_Type with
    record
      null;
    end record;
-------------------------------------------------------------------------------------------------
  type TT_Event_Type is new Root_Object.Root_Event_Type with
    record
      null;
    end record;
-------------------------------------------------------------------------------------------------

   Types_And_Subtypes_Count: constant Application_Types.Base_Integer_Type := 2;

-------------------------------------------------------------------------------------------------

end Root_Object.TT;

