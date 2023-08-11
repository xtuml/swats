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
--* File Name:               Struct_SO5_Create_Simple_TL_Structure_Service.adb
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

-- List of objects used
with Root_Object.Struct.SO;

-- List of bridges used
with Struct_RPT2_Test_Passed_Bridge;
with Struct_RPT1_Start_Test_Bridge;

-- List of domain types used
with Struct_Domain_Types;
with Struct_Domain_Types.Ops;
use type Struct_Domain_Types.Type_Linked_Simple_Structure_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Struct_SO5_Create_Simple_TL_Structure_Service is
   
   procedure Struct_SO5_Create_Simple_TL_Structure (
      Test                      : in     Application_Types.Base_Integer_Type;
      Object_Instance_Handle    : in     Root_Object.Object_Access;
      Returned_Simple_Structure :    out Struct_Domain_Types.Type_Linked_Simple_Structure_Type) is
      
      How_Many              : Application_Types.Base_Integer_Type := 1;
      loop_counter          : Application_Types.Base_Integer_Type := 1;
      Failure_Value         : Application_Types.Base_Integer_Type := 1;
      Termination_Condition : Application_Types.Base_Integer_Type := 1;
      How_Many_Now          : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of SO5_Create_Simple_TL_Structure
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "objSO                           ",
         Purpose         => "Construct Type Linked simple str");
      
      How_Many              :=  Struct_Domain_Types.Ops.Count_Of(Returned_Simple_Structure);
      loop_counter          := How_Many + 1;
      Failure_Value         := 0;
      Termination_Condition := loop_counter + 5;
      
      
      --  Add five elements into the set
      
      loop
         
         --  This is supposed to be a set, therefore, stuff several
         --  version of the input data into it.
         --  This will be determined by the test number at the time.
         --
         -- start of append members to structure
         Struct_Domain_Types.Ops.Append (
            A_TLS_Integer  => Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).An_Integer,
            A_TLS_Real     => Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).A_Real,
            A_TLS_Text     => Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).Some_Text,
            A_TLS_Boolean  => Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).A_Boolean, 
            To_Structure   => Returned_Simple_Structure);
         -- end of append members to structure
         --
         
         
         loop_counter := loop_counter + 1;
         exit when loop_counter =  Termination_Condition;
      end loop;
      
      How_Many_Now :=  Struct_Domain_Types.Ops.Count_Of(Returned_Simple_Structure);
      
      
      --  All tests
      
      Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
         Test_Object_Domain => Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).Some_Text,
         Test_Number        => Test,
         Test_Value         => How_Many_Now);
      
      
   end Struct_SO5_Create_Simple_TL_Structure;
   
end Struct_SO5_Create_Simple_TL_Structure_Service;

--
-- End of file Struct_SO5_Create_Simple_TL_Structure_Service.adb
--
