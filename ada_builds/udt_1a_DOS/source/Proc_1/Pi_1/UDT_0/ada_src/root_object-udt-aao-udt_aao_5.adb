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
--* File Name:               UDT_AAO_5.ada
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

-- List of bridges used
with UDT_RPT3_Test_Failed_Bridge;
with UDT_RPT2_Test_Passed_Bridge;

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Active_Object_Status_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.UDT.AAO)
   
   procedure UDT_AAO_5 (Reason        : in     UDT_Domain_Types.Active_Object_Status_Type;
                        This_Instance : in out Root_Object.Object_Access) is
   
      
      this_test : Application_Types.Base_Integer_Type := 1;
      
   begin
      this_test := Root_Object.UDT.AAO.UDT_AAO_type(This_Instance.all).The_Test_Number;
      
      
      if Root_Object.UDT.AAO.UDT_AAO_type(This_Instance.all).Why =  Reason then
         
         if Root_Object.UDT.AAO.UDT_AAO_type(This_Instance.all).Why =  UDT_Domain_Types.OK then
            
            UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
               Test_Object_Domain => "Active UDT Object               ",
               Test_Number        => this_test,
               Test_Value         => 0);
            
         else
            UDT_RPT3_Test_Failed_Bridge.UDT_RPT3_Test_Failed (
               Failed_Domain_Object => "Active UDT Object               ",
               Failed_Test_Number   => this_test,
               Failed_Test_Value    => -99);
            
         end if;
         
      else
         UDT_RPT3_Test_Failed_Bridge.UDT_RPT3_Test_Failed (
            Failed_Domain_Object => "Active UDT Object               ",
            Failed_Test_Number   => this_test,
            Failed_Test_Value    => -999);
         
      end if;
      
      Root_Object.UDT.AAO.Process_Queue;
   end UDT_AAO_5;
   
--
-- End of file UDT_AAO_5.ada
--
