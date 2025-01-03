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
--* File Name:               DomainA_registration.adb
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
--*  package body DomainA_Registration 
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

with DomainA_Comms_Registration;

--================================================================================== 
with Root_Object.DomainA.objA;
with Root_Object.DomainA.otols;
with Root_Object.DomainA.otors;
with Root_Object.DomainA.otmls;
with Root_Object.DomainA.otmrs;
with Root_Object.DomainA.mtmls;
with Root_Object.DomainA.mtmrs;
with Root_Object.DomainA.mtma;
with Root_Object.DomainA.DOMAIN_A_SUPER;
with Root_Object.DomainA.DOMAIN_A_SUBA;
with Root_Object.DomainA.DOMAIN_A_SUBB;
with Root_Object.DomainA.RD;
with Root_Object.DomainA.TD;

--================================================================================== 
with DomainA_Rel_R4;
with DomainA_R4_Specification;
with DomainA_Rel_R1;
with DomainA_Rel_R2;
with DomainA_Rel_R3;

--================================================================================== 
   
with Ada.Tags;

package body DomainA_Registration is

--================================================================================== 

   procedure Register_All is

   begin

--==================================================================================
      -- Relationships for DomainA domain to register:
      -- Relationship R4 is Super Sub
      DomainA_Rel_R4.Register_Super_End_Class (Root_Object.DomainA.DOMAIN_A_SUPER.DomainA_DOMAIN_A_SUPER_Type'tag);
      DomainA_Rel_R4.Register_Sub_End_Relationship_Write (Root_Object.DomainA.DOMAIN_A_SUPER.Put_R4_Sub'access);
      DomainA_Rel_R4.Register_Sub_End_Relationship_Read  (Root_Object.DomainA.DOMAIN_A_SUPER.Get_R4_Sub'access);
  
      DomainA_Rel_R4.Register_Super_End_Relationship_Write (DomainA_R4_Specification.Subtype_Write_Accessor'access);
      DomainA_Rel_R4.Register_Super_End_Relationship_Read  (DomainA_R4_Specification.Subtype_Read_Accessor'access);
--==================================================================================
      -- Relationships for DomainA domain to register:
      -- Relationship R1 is Simple 
      DomainA_Rel_R1.Register_A_End_Class (Root_Object.DomainA.otols.DomainA_otols_Type'tag);
      DomainA_Rel_R1.Register_B_End_Class (Root_Object.DomainA.otors.DomainA_otors_Type'tag);

      DomainA_Rel_R1.Register_A_End_Relationship_Write (Root_Object.DomainA.otols.Put_R1_B'access);
      DomainA_Rel_R1.Register_A_End_Relationship_Read  (Root_Object.DomainA.otols.Get_R1_B'access);
      DomainA_Rel_R1.Register_B_End_Relationship_Write (Root_Object.DomainA.otors.Put_R1_A'access);
      DomainA_Rel_R1.Register_B_End_Relationship_Read  (Root_Object.DomainA.otors.Get_R1_A'access);

--==================================================================================
      -- Relationships for DomainA domain to register:
      -- Relationship R2 is Simple 
      DomainA_Rel_R2.Register_A_End_Class (Root_Object.DomainA.otmrs.DomainA_otmrs_Type'tag);
      DomainA_Rel_R2.Register_B_End_Class (Root_Object.DomainA.otmls.DomainA_otmls_Type'tag);

      DomainA_Rel_R2.Register_A_End_Relationship_Write (Root_Object.DomainA.otmls.Put_R2_B'access);
      DomainA_Rel_R2.Register_A_End_Relationship_Read  (Root_Object.DomainA.otmls.Get_R2_B'access);
      DomainA_Rel_R2.Register_B_End_Relationship_Write (Root_Object.DomainA.otmrs.Put_R2_A'access);
      DomainA_Rel_R2.Register_B_End_Relationship_Read  (Root_Object.DomainA.otmrs.Get_R2_A'access);

--==================================================================================
      -- Relationships for DomainA domain to register:
      -- Relationship R3 is Associative
      DomainA_Rel_R3.Register_M1_End_Class (Root_Object.DomainA.mtmrs.DomainA_mtmrs_Type'tag);
      DomainA_Rel_R3.Register_M2_End_Class (Root_Object.DomainA.mtmls.DomainA_mtmls_Type'tag);
      DomainA_Rel_R3.Register_Associative_End_Class (Root_Object.DomainA.mtma.DomainA_mtma_Type'tag);
      --

      -- Relationships for Comms to register:
      DomainA_Comms_Registration.Register_Comms;

   end Register_All;

end DomainA_Registration;

