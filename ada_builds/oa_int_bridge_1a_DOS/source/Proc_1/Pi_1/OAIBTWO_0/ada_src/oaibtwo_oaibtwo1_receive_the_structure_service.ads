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
--* File Name:               OAIBTWO1_Receive_The_Structure_Service.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Not Defined
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


package OAIBTWO_OAIBTWO1_Receive_The_Structure_Service is
   
   
   procedure OAIBTWO_OAIBTWO1_Receive_The_Structure (
      Test                        : in     Application_Types.Base_Integer_Type;
      The_Structure               : in out OAIBTWO_Domain_Types.Source_Structure_Type;
      Control_Integer             : in     Application_Types.Base_Integer_Type;
      Control_Real                : in     Application_Types.Base_Float_Type;
      Control_String              : in     Application_Types.Base_Text_Type;
      Control_Enum                : in     OAIBTWO_Domain_Types.Colour_Type;
      Control_Boolean             : in     Boolean;
      Number_Of_Structures_In_Set : in     Application_Types.Base_Integer_Type;
      Result                      :    out Boolean);
   
end OAIBTWO_OAIBTWO1_Receive_The_Structure_Service;

--
-- End of file OAIBTWO_OAIBTWO1_Receive_The_Structure_Service.ads
--
