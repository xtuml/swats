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
--* File Name:               Struct7_Decode_Three_Level_Nested_Structure_Service.ads
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
--* Domain Name              : Structures
--* Domain Key Letter        : Struct
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of domain types used
with Struct_Domain_Types;
with Struct_Domain_Types.Ops;

with Application_Types;


package Struct_Struct7_Decode_Three_Level_Nested_Structure_Service is
   
   
   procedure Struct_Struct7_Decode_Three_Level_Nested_Structure (
      Test                      : in     Application_Types.Base_Integer_Type;
      Three_Level_Nest          : in out Struct_Domain_Types.First_Nested_Structure_Type;
      Two_Level_Nest            : in out Struct_Domain_Types.Second_Nested_Structure_Type;
      One_Level_Nest            : in out Struct_Domain_Types.Third_Nested_Structure_Type;
      Given_First_Level_Number  : in     Application_Types.Base_Integer_Type;
      How_Many_In_First         : in     Application_Types.Base_Integer_Type;
      Given_Second_Level_Number : in     Application_Types.Base_Integer_Type;
      How_Many_In_Second        : in     Application_Types.Base_Integer_Type;
      Given_Third_Level_Number  : in     Application_Types.Base_Integer_Type;
      How_Many_In_Third         : in     Application_Types.Base_Integer_Type;
      Given_Third_Level_Colour  : in     Struct_Domain_Types.Colour_Type);
   
end Struct_Struct7_Decode_Three_Level_Nested_Structure_Service;

--
-- End of file Struct_Struct7_Decode_Three_Level_Nested_Structure_Service.ads
--
