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
--* File Name:               UDT_Scenario3.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Finish_UDT_Tests
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

-- List of objects used
with Root_Object.UDT.FTD;

-- List of services used
with UDT_UDT4_Delete_Report_Data_Service;


with Root_Object;
use type Root_Object.Object_Access;

   
   procedure UDT_Scenario3 is
   
      
      FTD_To_Delete : Root_Object.Object_Access;
      
   begin
      
      UDT_UDT4_Delete_Report_Data_Service.UDT_UDT4_Delete_Report_Data;
      
      FTD_To_Delete := Root_Object.UDT.FTD.Unconditional_Find_One;
      
      if FTD_To_Delete /= Null then
         
         Root_Object.UDT.FTD.Delete (
            Old_Instance => FTD_To_Delete);
      end if;
      
   end UDT_Scenario3;
   
--
-- End of file UDT_Scenario3.ada
--
