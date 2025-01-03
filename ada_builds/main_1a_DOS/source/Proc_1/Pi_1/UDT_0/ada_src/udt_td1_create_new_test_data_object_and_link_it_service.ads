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
--* File Name:               UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service.ads
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
--* Domain Name              : User_Defined_Types
--* Domain Key Letter        : UDT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

with Application_Types;
with Root_Object;


package UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service is
   
   
   procedure UDT_TD1_Create_New_Test_Data_Object_And_Link_It (
      New_Set              : in     Boolean;
      Previous_IH          : in     Root_Object.Object_Access;
      This_Test_Number     : in     Application_Types.Base_Integer_Type;
      Testing_For          : in     Application_Types.Base_Text_Type;
      Final_Entry          : in     Boolean;
      Returned_IH          :    out Root_Object.Object_Access;
      Returned_Test_Number :    out Application_Types.Base_Integer_Type);
   
end UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service;

--
-- End of file UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service.ads
--
