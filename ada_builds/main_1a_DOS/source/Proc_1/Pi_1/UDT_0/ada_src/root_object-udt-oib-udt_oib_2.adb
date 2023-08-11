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
--* File Name:               UDT_OIB_2.ada
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
with UDT_BTF1_I_H_Type_Across_Bridge;
with UDT_RPT1_Start_Test_Bridge;

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Simple_Enumeration_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.UDT.OIB)
   
   procedure UDT_OIB_2 (Where_To_Start : in     Application_Types.Base_Integer_Type;
                        This_Instance  : in out Root_Object.Object_Access) is
   
      
      result_value : Application_Types.Base_Integer_Type := 1;
      
      the_result : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------------
      --  pass the 'this' IH to a bridge for dereferencing.
      -- --------------------------------------------------------------------------
      
      UDT_RPT1_Start_Test_Bridge.UDT_RPT1_Start_Test (
         Test_Number     => Where_To_Start,
         Requid          => "1103-0000-01-0311               ",
         Invoking_Domain => "UDT                             ",
         Invoking_Object => "Terminator typing               ",
         Purpose         => "Pass in this IH, decode types   ");
      
      UDT_BTF1_I_H_Type_Across_Bridge.UDT_BTF1_I_H_Type_Across (
         Param1_IH     => This_Instance,
         Success       => the_result,
         Success_Value => result_value);
      
      
      if the_result =  True then
         
         if Root_Object.UDT.OIB.UDT_OIB_type(This_Instance.all).Some_Enumeration =  UDT_Domain_Types.Four then
            
            UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
               Test_Object_Domain => "Decode this IH                  ",
               Test_Number        => Where_To_Start,
               Test_Value         => result_value);
            
         else
            UDT_RPT3_Test_Failed_Bridge.UDT_RPT3_Test_Failed (
               Failed_Domain_Object => "Decode this IH                  ",
               Failed_Test_Number   => Where_To_Start,
               Failed_Test_Value    => result_value);
            
         end if;
         
      else
         UDT_RPT3_Test_Failed_Bridge.UDT_RPT3_Test_Failed (
            Failed_Domain_Object => "Decode this IH                  ",
            Failed_Test_Number   => Where_To_Start,
            Failed_Test_Value    => result_value);
         
      end if;
      
      Root_Object.UDT.OIB.Process_Queue;
   end UDT_OIB_2;
   
--
-- End of file UDT_OIB_2.ada
--
