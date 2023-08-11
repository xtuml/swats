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
--* File Name:               ASL_Mapping_objBIG_4.ada
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

-- List of bridges used
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.ASL_Mapping.objBIG)
   
   procedure ASL_Mapping_objBIG_4 (Big_IH           : in     Root_Object.Object_Access;
                                   Next_Test_Number : in     Application_Types.Base_Integer_Type;
                                   This_Instance    : in out Root_Object.Object_Access) is
   
      
   begin
      
      --  ---------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Next_Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Big Object                      ",
         Purpose         => "Compare control IH and this     ");
      
      
      --  Compare the attributes of this to the control IH
      
      if Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(This_Instance.all).One /= 
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(Big_IH.all).One        and then
         Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(This_Instance.all).Forty /= 
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(Big_IH.all).Forty      and then
         Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(This_Instance.all).Eightyfour /= 
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(Big_IH.all).Eightyfour then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "this & control IH do not match  ",
            Test_Number        => Next_Test_Number,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "this & control IH match         ",
            Failed_Test_Number   => Next_Test_Number,
            Failed_Test_Value    => Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(This_Instance.all).Eightyfour);
         
      end if;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.ASL_Mapping.objBIG.objBIG2,
            Target_Instance  => This_Instance);
         
         Root_Object.ASL_Mapping.objBIG.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.ASL_Mapping.objBIG.Process_Queue;
   end ASL_Mapping_objBIG_4;
   
--
-- End of file ASL_Mapping_objBIG_4.ada
--
