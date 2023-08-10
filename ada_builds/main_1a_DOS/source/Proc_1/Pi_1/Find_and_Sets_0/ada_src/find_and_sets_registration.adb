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
--* File Name:               Find_and_Sets_registration.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Template for domain registrations 
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
--*  package body Find_and_Sets_Registration 
--*    procedure Register_All 
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--    jmm     13/03/00        008998/9SR056     Change super-sub specification name to include the domain key
--                                              letter. Note that the change locations are NOT marked in the code 
--                                              body to avoid multiple entries being generated by loops in the
--                                              final source code. Code changes can be identified using the
--                                              clearcase differences tool.
--
--    jmm     10/05/00        PILOT_0000_0460   Change order of A/B groupings for A_End_Is_Multiple/B_End_Is_Single
--                                              reflexive relationships
--
--    jmm     03/10/00        PILOT_0000_0600   Changes for issue 3.0.0 in accordance with ATN_037_03_01.
--
--    db      27/07/01        PILOT_0000_0230   Coding Standards transgressions fixed
--
--    db      21/08/01        PILOT_0000_1431   Associative A end multiple, B end single incorrect
--
--    db      07/02/02        SRLE100001428     Rename file to match package definition.
--
--    db      26/03/02        SRLE100002907     Remove invocation to Root_Object.Initialise_List and
--                                              <Domain_Key_Letter>_Rel_<Domain_Relationship.Relationship_No>.Initialise;
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
-- **************************************************************************************
with Root_Object;

with Find_and_Sets_Comms_Registration;

--================================================================================== 
with Root_Object.Find_and_Sets.RD;
with Root_Object.Find_and_Sets.objLO;
with Root_Object.Find_and_Sets.objRO;
with Root_Object.Find_and_Sets.objAO;
with Root_Object.Find_and_Sets.objFM;
with Root_Object.Find_and_Sets.objFSI;
with Root_Object.Find_and_Sets.objFS;
with Root_Object.Find_and_Sets.objA;
with Root_Object.Find_and_Sets.objB;
with Root_Object.Find_and_Sets.objE;

--================================================================================== 
with Find_and_Sets_Rel_R1;

--================================================================================== 
   
with Ada.Tags;

package body Find_and_Sets_Registration is

--================================================================================== 

   procedure Register_All is

   begin

--==================================================================================
      -- Relationships for Find_and_Sets domain to register:
      -- Relationship R1 is Associative
      Find_and_Sets_Rel_R1.Register_M1_End_Class (Root_Object.Find_and_Sets.objRO.Find_and_Sets_objRO_Type'tag);
      Find_and_Sets_Rel_R1.Register_M2_End_Class (Root_Object.Find_and_Sets.objLO.Find_and_Sets_objLO_Type'tag);
      Find_and_Sets_Rel_R1.Register_Associative_End_Class (Root_Object.Find_and_Sets.objAO.Find_and_Sets_objAO_Type'tag);
      --

      -- Relationships for Comms to register:
      Find_and_Sets_Comms_Registration.Register_Comms;

   end Register_All;

end Find_and_Sets_Registration;

