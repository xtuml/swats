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
--* File Name:               ASL_Mapping7_Perform_Attribute_Assignment_Service.adb
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
with Root_Object.ASL_Mapping.objLOGIC;

-- List of bridges used
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

-- List of domain types used
with ASL_Mapping_Domain_Types;
use type ASL_Mapping_Domain_Types.Enum;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_ASL_Mapping7_Perform_Attribute_Assignment_Service is
   
   procedure ASL_Mapping_ASL_Mapping7_Perform_Attribute_Assignment (
      Test_Start : in     Application_Types.Base_Integer_Type;
      Final_Test :    out Application_Types.Base_Integer_Type) is
      
      my_object : Root_Object.Object_Access;
      
      This_Test    : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of ASL_Mapping7_Perform_Attribute_Assignment
      
      -- -----------------------------------------------------------------------
      --  The ASL <create ... with> statment to create an instance of an object
      --  with attributes shall be supported
      --  1103-0000-0511
      --  Writing to object attributes shall be supported
      --  1103-0000-01-0521
      --  Reading object attribute values shall be supported
      --  1103-0000-01-0522
      -- -----------------------------------------------------------------------
      This_Test := Test_Start;
      
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "ASL_Mapping                     ",
         Invoking_Object => "Passive Domain Service Perform A",
         Purpose         => "Assign all attributes           ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => This_Test,
         The_Requid_Itself  => "1103-0000-01-0521               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => This_Test,
         The_Requid_Itself  => "1103-0000-01-0522               ");
      
      
      my_object := Root_Object.ASL_Mapping.objLOGIC.Create;
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(my_object.all).IntegerAttr  := This_Test;
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(my_object.all).TextAttr   := "Hello                           ";
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(my_object.all).BooleanAttr  := False;
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(my_object.all).EnumerationAttr      := ASL_Mapping_Domain_Types.Frank;
      Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(my_object.all).ReferenceLOGIC     := This_Test;
      
      my_object := Root_Object.ASL_Mapping.objLOGIC.Conditional_Find_One;
      while (my_object /= null) and then (not (Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_Type(my_object.all).ReferenceLOGIC =  This_Test) ) loop
         
         my_object := my_object.Next_Object;
      end loop;
      
      
      Failure_Code := 1;
      
      if my_object /= Null then
         
         if Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(my_object.all).TextAttr =  "Hello                           " then
            
            if Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(my_object.all).BooleanAttr =  False then
               
               if Root_Object.ASL_Mapping.objLOGIC.ASL_Mapping_objLOGIC_type(my_object.all).EnumerationAttr =  ASL_Mapping_Domain_Types.Frank then
                  Failure_Code := 0;
               else
                  Failure_Code := -40;
               end if;
               
            else
               Failure_Code := -30;
            end if;
            
         else
            Failure_Code := -20;
         end if;
         
         
         Root_Object.ASL_Mapping.objLOGIC.Delete (
            Old_Instance => my_object);
      else
         Failure_Code := -10;
         
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
      
      
   end ASL_Mapping_ASL_Mapping7_Perform_Attribute_Assignment;
   
end ASL_Mapping_ASL_Mapping7_Perform_Attribute_Assignment_Service;

--
-- End of file ASL_Mapping_ASL_Mapping7_Perform_Attribute_Assignment_Service.adb
--
