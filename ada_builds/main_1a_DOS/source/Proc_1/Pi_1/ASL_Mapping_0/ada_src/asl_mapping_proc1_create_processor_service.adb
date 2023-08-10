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
--* File Name:               ASL_Mapping_PROC1_Create_Processor_Service.adb
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
with Root_Object.ASL_Mapping.PROC;

-- List of bridges used
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

-- List of domain types used
with ASL_Mapping_Domain_Types;
use type ASL_Mapping_Domain_Types.Processor_Id_Type;

with Timer;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_PROC1_Create_Processor_Service is
   
   procedure ASL_Mapping_PROC1_Create_Processor (
      Test_Start         : in     Application_Types.Base_Integer_Type;
      Processor_Id_Local : in     ASL_Mapping_Domain_Types.Processor_Id_Type;
      Final_Test         :    out Application_Types.Base_Integer_Type) is
      
      my_processor : Root_Object.Object_Access;
      my_object    : Root_Object.Object_Access;
      
      This_Test         : Application_Types.Base_Integer_Type := 1;
      my_timer_id_local : Application_Types.Base_Integer_Type := 1;
      Failure_Code      : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of PROC1_Create_Processor
      This_Test := Test_Start;
      
      Timer.Create_Timer (Timer_ID => my_timer_id_local);
      
      my_processor := Root_Object.ASL_Mapping.PROC.Create;
      Root_Object.ASL_Mapping.PROC.ASL_Mapping_PROC_Type(my_processor.all).Processor_Id       := Processor_Id_Local;
      Root_Object.ASL_Mapping.PROC.ASL_Mapping_PROC_Type(my_processor.all).Background_Processing_Timer_Id             := my_timer_id_local;
      Root_Object.ASL_Mapping.PROC.ASL_Mapping_PROC_Type(my_processor.all).Communications_Enabled     := False;
      
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL_Mapping                     ",
         Invoking_Object => "Active Object Service Perform At",
         Purpose         => "Assign all attributes           ");
      
      my_object := Root_Object.ASL_Mapping.PROC.Conditional_Find_One;
      while (my_object /= null) and then (not (Root_Object.ASL_Mapping.PROC.ASL_Mapping_PROC_Type(my_object.all).Processor_Id =  Processor_Id_Local) ) loop
         
         my_object := my_object.Next_Object;
      end loop;
      
      
      Failure_Code := 1;
      
      if my_object /= Null then
         
         if Root_Object.ASL_Mapping.PROC.ASL_Mapping_PROC_type(my_object.all).Background_Processing_Timer_Id =  my_timer_id_local then
            
            if Root_Object.ASL_Mapping.PROC.ASL_Mapping_PROC_type(my_object.all).Communications_Enabled =  False then
               Failure_Code := 0;
            else
               Failure_Code := -3;
            end if;
            
         else
            Failure_Code := -2;
         end if;
         
         
         Root_Object.ASL_Mapping.PROC.Delete (
            Old_Instance => my_object);
      else
         Failure_Code := -1;
         
      end if;
      
      
      if Failure_Code =  0 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Attribute read                  ",
            Test_Number        => This_Test,
            Test_Value         => Failure_Code);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Attribute read                  ",
            Failed_Test_Number   => This_Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      This_Test := This_Test + 1;
      Final_Test := This_Test;
      
      
   end ASL_Mapping_PROC1_Create_Processor;
   
end ASL_Mapping_PROC1_Create_Processor_Service;

--
-- End of file ASL_Mapping_PROC1_Create_Processor_Service.adb
--
