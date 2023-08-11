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
--* File Name:               ASL_Mapping_objBIG_3.ada
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
--* Domain Name              : ASL_Mapping
--* Domain Key Letter        : ASL_Mapping
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.ASL_Mapping.objBIG;

-- List of services used
with ASL_Mapping_ASL_Mapping4_Delete_Report_Data_Service;

-- List of bridges used
with ASL_Mapping_RPT5_Test_Text_Bridge;

with Application_Types;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.ASL_Mapping.objBIG)
   
   procedure ASL_Mapping_objBIG_3 (This_Instance : in out Root_Object.Object_Access) is
   
      
   begin
      
      ASL_Mapping_RPT5_Test_Text_Bridge.ASL_Mapping_RPT5_Test_Text (
         Test_Number => Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(This_Instance.all).One,
         Free_Text   => "Generating into termination stat");
      
      ASL_Mapping_ASL_Mapping4_Delete_Report_Data_Service.ASL_Mapping_ASL_Mapping4_Delete_Report_Data;
      
      
      Root_Object.ASL_Mapping.objBIG.Delete (
         Old_Instance => This_Instance);
      Root_Object.ASL_Mapping.objBIG.Process_Queue;
   end ASL_Mapping_objBIG_3;
   
--
-- End of file ASL_Mapping_objBIG_3.ada
--
