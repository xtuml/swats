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
--* File Name:               RP_registration.adb
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
--*  Application_Control built with support for Internal interfaces
--*  
--*************************************************************************************
--*  COMPONENTS CONTAINED WITHIN THIS FILE                                            *
--*  package body RP_Registration 
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

with RP_Comms_Registration;

--================================================================================== 
with Root_Object.RP.PASS;
with Root_Object.RP.FAIL;
with Root_Object.RP.DD;
with Root_Object.RP.UNSUPPORTED;
with Root_Object.RP.DUPLICATED;
with Root_Object.RP.RESULTS;
with Root_Object.RP.TD;
with Root_Object.RP.RI;
with Root_Object.RP.SC;
with Root_Object.RP.TS;
with Root_Object.RP.REQS;
with Root_Object.RP.RM;

--================================================================================== 
with RP_Rel_R1;
with RP_Rel_R2;
with RP_Rel_R3;
with RP_Rel_R4;
with RP_Rel_R8;
with RP_Rel_R6;
with RP_Rel_R7;
with RP_Rel_R10;
with RP_Rel_R11;
with RP_Rel_R12;
with RP_Rel_R9;

--================================================================================== 
   
with Ada.Tags;

package body RP_Registration is

--================================================================================== 

   procedure Register_All is

   begin

--==================================================================================
      -- Relationships for RP domain to register:
      -- Relationship R1 is Simple 
      RP_Rel_R1.Register_A_End_Class (Root_Object.RP.DD.RP_DD_Type'tag);
      RP_Rel_R1.Register_B_End_Class (Root_Object.RP.PASS.RP_PASS_Type'tag);

      RP_Rel_R1.Register_A_End_Relationship_Write (Root_Object.RP.DD.Put_R1_B'access);
      RP_Rel_R1.Register_A_End_Relationship_Read  (Root_Object.RP.DD.Get_R1_B'access);
      RP_Rel_R1.Register_B_End_Relationship_Write (Root_Object.RP.PASS.Put_R1_A'access);
      RP_Rel_R1.Register_B_End_Relationship_Read  (Root_Object.RP.PASS.Get_R1_A'access);

--==================================================================================
      -- Relationships for RP domain to register:
      -- Relationship R2 is Simple 
      RP_Rel_R2.Register_A_End_Class (Root_Object.RP.DD.RP_DD_Type'tag);
      RP_Rel_R2.Register_B_End_Class (Root_Object.RP.FAIL.RP_FAIL_Type'tag);

      RP_Rel_R2.Register_A_End_Relationship_Write (Root_Object.RP.DD.Put_R2_B'access);
      RP_Rel_R2.Register_A_End_Relationship_Read  (Root_Object.RP.DD.Get_R2_B'access);
      RP_Rel_R2.Register_B_End_Relationship_Write (Root_Object.RP.FAIL.Put_R2_A'access);
      RP_Rel_R2.Register_B_End_Relationship_Read  (Root_Object.RP.FAIL.Get_R2_A'access);

--==================================================================================
      -- Relationships for RP domain to register:
      -- Relationship R3 is Simple 
      RP_Rel_R3.Register_A_End_Class (Root_Object.RP.DD.RP_DD_Type'tag);
      RP_Rel_R3.Register_B_End_Class (Root_Object.RP.UNSUPPORTED.RP_UNSUPPORTED_Type'tag);

      RP_Rel_R3.Register_A_End_Relationship_Write (Root_Object.RP.DD.Put_R3_B'access);
      RP_Rel_R3.Register_A_End_Relationship_Read  (Root_Object.RP.DD.Get_R3_B'access);
      RP_Rel_R3.Register_B_End_Relationship_Write (Root_Object.RP.UNSUPPORTED.Put_R3_A'access);
      RP_Rel_R3.Register_B_End_Relationship_Read  (Root_Object.RP.UNSUPPORTED.Get_R3_A'access);

--==================================================================================
      -- Relationships for RP domain to register:
      -- Relationship R4 is Simple 
      RP_Rel_R4.Register_A_End_Class (Root_Object.RP.DUPLICATED.RP_DUPLICATED_Type'tag);
      RP_Rel_R4.Register_B_End_Class (Root_Object.RP.DD.RP_DD_Type'tag);

      RP_Rel_R4.Register_A_End_Relationship_Write (Root_Object.RP.DD.Put_R4_B'access);
      RP_Rel_R4.Register_A_End_Relationship_Read  (Root_Object.RP.DD.Get_R4_B'access);
      RP_Rel_R4.Register_B_End_Relationship_Write (Root_Object.RP.DUPLICATED.Put_R4_A'access);
      RP_Rel_R4.Register_B_End_Relationship_Read  (Root_Object.RP.DUPLICATED.Get_R4_A'access);

--==================================================================================
      -- Relationships for RP domain to register:
      -- Relationship R8 is Simple 
      RP_Rel_R8.Register_A_End_Class (Root_Object.RP.TD.RP_TD_Type'tag);
      RP_Rel_R8.Register_B_End_Class (Root_Object.RP.DD.RP_DD_Type'tag);

      RP_Rel_R8.Register_A_End_Relationship_Write (Root_Object.RP.DD.Put_R8_B'access);
      RP_Rel_R8.Register_A_End_Relationship_Read  (Root_Object.RP.DD.Get_R8_B'access);
      RP_Rel_R8.Register_B_End_Relationship_Write (Root_Object.RP.TD.Put_R8_A'access);
      RP_Rel_R8.Register_B_End_Relationship_Read  (Root_Object.RP.TD.Get_R8_A'access);

--==================================================================================
      -- Relationships for RP domain to register:
      -- Relationship R6 is Simple 
      RP_Rel_R6.Register_A_End_Class (Root_Object.RP.TD.RP_TD_Type'tag);
      RP_Rel_R6.Register_B_End_Class (Root_Object.RP.RESULTS.RP_RESULTS_Type'tag);

      RP_Rel_R6.Register_A_End_Relationship_Write (Root_Object.RP.TD.Put_R6_B'access);
      RP_Rel_R6.Register_A_End_Relationship_Read  (Root_Object.RP.TD.Get_R6_B'access);
      RP_Rel_R6.Register_B_End_Relationship_Write (Root_Object.RP.RESULTS.Put_R6_A'access);
      RP_Rel_R6.Register_B_End_Relationship_Read  (Root_Object.RP.RESULTS.Get_R6_A'access);

--==================================================================================
      -- Relationships for RP domain to register:
      -- Relationship R7 is Simple 
      RP_Rel_R7.Register_A_End_Class (Root_Object.RP.RI.RP_RI_Type'tag);
      RP_Rel_R7.Register_B_End_Class (Root_Object.RP.TD.RP_TD_Type'tag);

      RP_Rel_R7.Register_A_End_Relationship_Write (Root_Object.RP.TD.Put_R7_B'access);
      RP_Rel_R7.Register_A_End_Relationship_Read  (Root_Object.RP.TD.Get_R7_B'access);
      RP_Rel_R7.Register_B_End_Relationship_Write (Root_Object.RP.RI.Put_R7_A'access);
      RP_Rel_R7.Register_B_End_Relationship_Read  (Root_Object.RP.RI.Get_R7_A'access);

--==================================================================================
      -- Relationships for RP domain to register:
      -- Relationship R10 is Simple 
      RP_Rel_R10.Register_A_End_Class (Root_Object.RP.DD.RP_DD_Type'tag);
      RP_Rel_R10.Register_B_End_Class (Root_Object.RP.TS.RP_TS_Type'tag);

      RP_Rel_R10.Register_A_End_Relationship_Write (Root_Object.RP.TS.Put_R10_B'access);
      RP_Rel_R10.Register_A_End_Relationship_Read  (Root_Object.RP.TS.Get_R10_B'access);
      RP_Rel_R10.Register_B_End_Relationship_Write (Root_Object.RP.DD.Put_R10_A'access);
      RP_Rel_R10.Register_B_End_Relationship_Read  (Root_Object.RP.DD.Get_R10_A'access);

--==================================================================================
      -- Relationships for RP domain to register:
      -- Relationship R11 is Simple 
      RP_Rel_R11.Register_A_End_Class (Root_Object.RP.REQS.RP_REQS_Type'tag);
      RP_Rel_R11.Register_B_End_Class (Root_Object.RP.TS.RP_TS_Type'tag);

      RP_Rel_R11.Register_B_End_Relationship_Write (Root_Object.RP.REQS.Put_R11_B'access);
      RP_Rel_R11.Register_B_End_Relationship_Read  (Root_Object.RP.REQS.Get_R11_B'access);
      RP_Rel_R11.Register_A_End_Relationship_Write (Root_Object.RP.TS.Put_R11_A'access);
      RP_Rel_R11.Register_A_End_Relationship_Read  (Root_Object.RP.TS.Get_R11_A'access);

--==================================================================================
      -- Relationships for RP domain to register:
      -- Relationship R12 is Simple 
      RP_Rel_R12.Register_A_End_Class (Root_Object.RP.RM.RP_RM_Type'tag);
      RP_Rel_R12.Register_B_End_Class (Root_Object.RP.REQS.RP_REQS_Type'tag);

      RP_Rel_R12.Register_A_End_Relationship_Write (Root_Object.RP.REQS.Put_R12_B'access);
      RP_Rel_R12.Register_A_End_Relationship_Read  (Root_Object.RP.REQS.Get_R12_B'access);
      RP_Rel_R12.Register_B_End_Relationship_Write (Root_Object.RP.RM.Put_R12_A'access);
      RP_Rel_R12.Register_B_End_Relationship_Read  (Root_Object.RP.RM.Get_R12_A'access);

--==================================================================================
      -- Relationships for RP domain to register:
      -- Relationship R9 is Simple 
      RP_Rel_R9.Register_A_End_Class (Root_Object.RP.SC.RP_SC_Type'tag);
      RP_Rel_R9.Register_B_End_Class (Root_Object.RP.DD.RP_DD_Type'tag);

      RP_Rel_R9.Register_A_End_Relationship_Write (Root_Object.RP.DD.Put_R9_B'access);
      RP_Rel_R9.Register_A_End_Relationship_Read  (Root_Object.RP.DD.Get_R9_B'access);
      RP_Rel_R9.Register_B_End_Relationship_Write (Root_Object.RP.SC.Put_R9_A'access);
      RP_Rel_R9.Register_B_End_Relationship_Read  (Root_Object.RP.SC.Get_R9_A'access);


      -- Relationships for Comms to register:
      RP_Comms_Registration.Register_Comms;

   end Register_All;

end RP_Registration;
