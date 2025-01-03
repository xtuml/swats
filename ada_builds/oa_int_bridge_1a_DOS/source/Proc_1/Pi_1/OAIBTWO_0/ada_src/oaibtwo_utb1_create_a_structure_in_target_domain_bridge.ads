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
--* File Name:               OAIBTWO_UTB1_Create_A_Structure_In_Target_Domain_Bridge.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This bridge will pass a simple structure
--*                           into a target domain, and then check to see that an object in the target d
--*                          omain has had its attributes set accordingly.
--*                          
--* Comments:                Header written by ASL Translator
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
--*  -----------------                                                                *
--*                                                                                   *
--* Domain Name              : Open_Architecture_Internal_Bridge_Domain_Two
--* Domain Key Letter        : OAIBTWO
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of domain types used
with OAIBTWO_Domain_Types;
with OAIBTWO_Domain_Types.Ops;

with Application_Types;


package OAIBTWO_UTB1_Create_A_Structure_In_Target_Domain_Bridge is
   
   
   procedure OAIBTWO_UTB1_Create_A_Structure_In_Target_Domain (
      Source_Very_Simple_Structure : in out OAIBTWO_Domain_Types.Very_Simple_Source_Structure_Type;
      Source_Control_Integer       : in     Application_Types.Base_Integer_Type;
      Source_Control_Real          : in     Application_Types.Base_Float_Type;
      Source_Test                  : in     Application_Types.Base_Integer_Type;
      Source_Result                :    out Boolean);
   
end OAIBTWO_UTB1_Create_A_Structure_In_Target_Domain_Bridge;

--
-- End of file OAIBTWO_UTB1_Create_A_Structure_In_Target_Domain_Bridge.ads
--
