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
--* File Name:               Struct4_Decode_Simple_TL_Structure_Service.adb
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
with Struct_RPT3_Test_Failed_Bridge;
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
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Struct_Struct4_Decode_Simple_TL_Structure_Service is
   
   procedure Struct_Struct4_Decode_Simple_TL_Structure (
      Test                      : in     Application_Types.Base_Integer_Type;
      Simple_Structure          : in out Struct_Domain_Types.Type_Linked_Simple_Structure_Type;
      Object_Instance_Handle_ID : in     Application_Types.Base_Integer_Type) is
      
      Object_Instance_Handle : Root_Object.Object_Access;
      
      the_real   : Application_Types.Base_Float_Type := 1.0;
      local_real : Application_Types.Base_Float_Type := 1.0;
      
      Count         : Application_Types.Base_Integer_Type := 1;
      How_Many      : Application_Types.Base_Integer_Type := 1;
      the_integer   : Application_Types.Base_Integer_Type := 1;
      local_integer : Application_Types.Base_Integer_Type := 1;
      
      the_text   : Application_Types.Base_Text_Type := (others => ' ');
      local_text : Application_Types.Base_Text_Type := (others => ' ');
      
      the_boolean   : Boolean := Application_Types.Boolean_first;
      local_boolean : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of Struct4_Decode_Simple_TL_Structure
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Domain synch service            ",
         Purpose         => "Decode simple TL structure      ");
      
      Count := 1;
      
      
      --  How many in the set
      
      How_Many :=  Struct_Domain_Types.Ops.Count_Of(Simple_Structure);
      
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (Simple_Structure);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Simple_Structure) loop
            Struct_Domain_Types.Ops.Extract (
               A_TLS_Integer    => the_integer,
               A_TLS_Real       => the_real,
               A_TLS_Text       => the_text,
               A_TLS_Boolean    => the_boolean,
               From_Structure   => Simple_Structure);
            
            
            local_integer := the_integer;
            local_real    := the_real;
            local_text    := the_text;
            local_boolean := the_boolean;
            
            
            --  We are only interested in the final value in the set, otherwise
            --  there would be up to ten passes shown in the results file
            --  for this test.
            
            if Count =  How_Many then
               
               --  This is the position in the set that we are interested in
               Object_Instance_Handle := Root_Object.Struct.SO.Conditional_Find_One;
               while (Object_Instance_Handle /= null) and then (not (Root_Object.Struct.SO.Struct_SO_Type(Object_Instance_Handle.all).Reference_SO =  
                  Object_Instance_Handle_ID) ) loop
                  
                  Object_Instance_Handle := Object_Instance_Handle.Next_Object;
               end loop;
               
               
               if local_integer =  Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).An_Integer and then
                  local_real    =  Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).A_Real and then
                  local_text    =  Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).Some_Text and then
                  local_boolean =  Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).A_Boolean then
                  
                  Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
                     Test_Object_Domain => "Structures                      ",
                     Test_Number        => Test,
                     Test_Value         => Count);
                  
               else
                  Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
                     Failed_Domain_Object => "Structures                      ",
                     Failed_Test_Number   => Test,
                     Failed_Test_Value    => Count);
                  
               end if;
               
            end if;
            
            
            Count := Count + 1;
            
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Simple_Structure) loop
         
      end;
      -- end of unpacking structure
      --
      
      
   end Struct_Struct4_Decode_Simple_TL_Structure;
   
end Struct_Struct4_Decode_Simple_TL_Structure_Service;

--
-- End of file Struct_Struct4_Decode_Simple_TL_Structure_Service.adb
--
