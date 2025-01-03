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
--* File Name:               ASL_Mapping_objSWITCH1_do_switch_Service.adb
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
with Root_Object.ASL_Mapping.objSWITCH;

-- List of bridges used
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT4_Test_Unsupported_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_objSWITCH1_do_switch_Service is
   
   procedure ASL_Mapping_objSWITCH1_do_switch (
      Test_Start : in     Application_Types.Base_Integer_Type;
      Final_Test :    out Application_Types.Base_Integer_Type) is
      
      all_instance_of_SWITCH : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      each_instance : Root_Object.Object_Access;
      
      Test   : Application_Types.Base_Integer_Type := 1;
      countA : Application_Types.Base_Integer_Type := 1;
      countB : Application_Types.Base_Integer_Type := 1;
      countC : Application_Types.Base_Integer_Type := 1;
      countD : Application_Types.Base_Integer_Type := 1;
      countE : Application_Types.Base_Integer_Type := 1;
      temp   : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of objSWITCH1_do_switch
      
      -- -------------------------------------------------------------------------
      --  SWITCH Statement
      --  The ASL <switch> statement shall be supported
      --  1103-0000-01-0411
      -- -------------------------------------------------------------------------
      Test := Test_Start;
      
      -- -------------------------------------------------------------------------
      --  Test 1 - SWITCH statement without the default option
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objSWITCH                       ",
         Purpose         => "SWITCH without default option   ");
      
      ASL_Mapping_RPT4_Test_Unsupported_Bridge.ASL_Mapping_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - SWITCH statement with the DEFAULT option
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0411               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objSWITCH                       ",
         Purpose         => "SWITCH with default option      ");
      
      
      Root_Object.Object_List.Clear (
         From => all_instance_of_SWITCH);
      
      Root_Object.ASL_Mapping.objSWITCH.Find (
         Add_To => all_instance_of_SWITCH);
      
      
      countA := 0;
      countB := 0;
      countC := 0;
      countD := 0;
      countE := 0;
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instance_of_SWITCH);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            case Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).IntegerAttr is
               when 1 =>
                  
                  temp := Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).ResultA + 10;
                  
                  
                  Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).ResultA := temp;
                  
                  
                  countA := countA + 1;
                  
               
               -- end of when Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).IntegerAttr = 1
               
               when 2 =>
                  
                  temp := Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).ResultA + 11;
                  
                  
                  Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).ResultA := temp;
                  
                  
                  countB := countB + 1;
                  
               
               -- end of when Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).IntegerAttr = 2
               
               when 3 =>
                  
                  temp := Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).ResultA + 12;
                  
                  
                  Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).ResultA := temp;
                  
                  
                  countC := countC + 1;
                  
               
               -- end of when Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).IntegerAttr = 3
               
               when others =>
                  
                  temp := Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).ResultA + 9;
                  
                  
                  Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).ResultA := temp;
                  
                  
                  countD := countD + 1;
               
               -- end of when Root_Object.ASL_Mapping.objSWITCH.ASL_Mapping_objSWITCH_type(each_instance.all).IntegerAttr = others
               
            end case;
            
            countE := countE + 1;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instance_of_SWITCH);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      --  Verify count values
      
      if (countA /= 1) or else
         (countB /= 2) or else
         (countC /= 3) or else
         (countD /= 4) or else
         (countE /= 10) then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objSWITCH                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      else
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objSWITCH                       ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      
      Final_Test := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (all_instance_of_SWITCH);
      
   end ASL_Mapping_objSWITCH1_do_switch;
   
end ASL_Mapping_objSWITCH1_do_switch_Service;

--
-- End of file ASL_Mapping_objSWITCH1_do_switch_Service.adb
--
