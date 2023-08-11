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
--* File Name:               Struct2_Decode_Simple_Structure_Service.adb
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
use type Struct_Domain_Types.Simple_Structure_Type;
use type Struct_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Struct_Struct2_Decode_Simple_Structure_Service is
   
   procedure Struct_Struct2_Decode_Simple_Structure (
      Test                   : in     Application_Types.Base_Integer_Type;
      Simple_Structure       : in out Struct_Domain_Types.Simple_Structure_Type;
      Object_Instance_Handle : in     Root_Object.Object_Access) is
      
      the_real   : Application_Types.Base_Float_Type := 1.0;
      local_real : Application_Types.Base_Float_Type := 1.0;
      
      Count         : Application_Types.Base_Integer_Type := 1;
      How_Many      : Application_Types.Base_Integer_Type := 1;
      the_integer   : Application_Types.Base_Integer_Type := 1;
      local_integer : Application_Types.Base_Integer_Type := 1;
      
      the_text   : Application_Types.Base_Text_Type := (others => ' ');
      local_text : Application_Types.Base_Text_Type := (others => ' ');
      
      the_colour   : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      local_colour : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      
      the_boolean   : Boolean := Application_Types.Boolean_first;
      local_boolean : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of Struct2_Decode_Simple_Structure
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Domain synch service            ",
         Purpose         => "Decode simple structure         ");
      
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
               A_S_Integer      => the_integer,
               A_S_Real         => the_real,
               A_S_Text         => the_text,
               A_S_Boolean      => the_boolean,
               A_S_Colour       => the_colour,
               From_Structure   => Simple_Structure);
            
            
            local_integer := the_integer;
            local_real    := the_real;
            local_text    := the_text;
            local_boolean := the_boolean;
            local_colour  := the_colour;
            
            
            --  We are only interested in the final value in the set, otherwise
            --  there would be up to ten passes shown in the results file
            --  for this test.
            
            if Count =  How_Many then
               
               --  This is the position in the set that we are interested in
               
               if local_integer =  Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).An_Integer and then
                  local_real    =  Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).A_Real and then
                  local_text    =  Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).Some_Text and then
                  local_boolean =  Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).A_Boolean and then
                  local_colour  =  Root_Object.Struct.SO.Struct_SO_type(Object_Instance_Handle.all).A_Colour then
                  
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
      
      
   end Struct_Struct2_Decode_Simple_Structure;
   
end Struct_Struct2_Decode_Simple_Structure_Service;

--
-- End of file Struct_Struct2_Decode_Simple_Structure_Service.adb
--
