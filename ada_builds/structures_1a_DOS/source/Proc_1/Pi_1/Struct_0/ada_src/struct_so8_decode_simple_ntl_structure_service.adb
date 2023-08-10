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
--* File Name:               Struct_SO8_Decode_Simple_NTL_Structure_Service.adb
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
use type Struct_Domain_Types.Name_and_Type_Linked_Simple_Structure_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Struct_SO8_Decode_Simple_NTL_Structure_Service is
   
   procedure Struct_SO8_Decode_Simple_NTL_Structure (
      Test             : in     Application_Types.Base_Integer_Type;
      A_Structure      : in out Struct_Domain_Types.Name_and_Type_Linked_Simple_Structure_Type;
      Instance_Handle  : in     Root_Object.Object_Access;
      Final_Entry_Only : in     Boolean) is
      
      the_real   : Application_Types.Base_Float_Type := 1.0;
      local_real : Application_Types.Base_Float_Type := 1.0;
      
      How_Many              : Application_Types.Base_Integer_Type := 1;
      Count                 : Application_Types.Base_Integer_Type := 1;
      the_integer           : Application_Types.Base_Integer_Type := 1;
      local_integer         : Application_Types.Base_Integer_Type := 1;
      Termination_Condition : Application_Types.Base_Integer_Type := 1;
      Passed_Count          : Application_Types.Base_Integer_Type := 1;
      
      the_text   : Application_Types.Base_Text_Type := (others => ' ');
      local_text : Application_Types.Base_Text_Type := (others => ' ');
      
      the_boolean   : Boolean := Application_Types.Boolean_first;
      local_boolean : Boolean := Application_Types.Boolean_first;
      Has_Passed    : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of SO8_Decode_Simple_NTL_Structure
      
      --  How many in the set
      How_Many :=  Struct_Domain_Types.Ops.Count_Of(A_Structure);
      Count    := 1;
      
      
      --  Look at the final entry in the list only.
      
      if Final_Entry_Only =  True then
         
         Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-1212               ",
            Invoking_Domain => "Structures                      ",
            Invoking_Object => "Structured Object Synch Service ",
            Purpose         => "Decode simple final NTL data str");
         
         --
         -- start of unpacking structure
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
         begin
            Struct_Domain_Types.Ops.Go_To_Start (A_Structure);
            for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => A_Structure) loop
               Struct_Domain_Types.Ops.Extract (
                  A_An_Integer     => the_integer,
                  A_A_Real         => the_real,
                  A_Some_Text      => the_text,
                  A_A_Boolean      => the_boolean,
                  From_Structure   => A_Structure);
               
               
               local_integer := the_integer;
               local_real    := the_real;
               local_text    := the_text;
               local_boolean := the_boolean;
               
               
               --  Force a look at the penultimate entry in the set.
               
               Termination_Condition := How_Many - 1;
               
               
               --  Only look at the final entry
               
               if Count =  Termination_Condition then
                  
                  if local_integer =  Root_Object.Struct.SO.Struct_SO_type(Instance_Handle.all).An_Integer and then
                     local_real    =  Root_Object.Struct.SO.Struct_SO_type(Instance_Handle.all).A_Real and then
                     local_text    =  Root_Object.Struct.SO.Struct_SO_type(Instance_Handle.all).Some_Text and then
                     local_boolean =  Root_Object.Struct.SO.Struct_SO_type(Instance_Handle.all).A_Boolean then
                     
                     Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
                        Test_Object_Domain => Root_Object.Struct.SO.Struct_SO_type(Instance_Handle.all).Some_Text,
                        Test_Number        => Test,
                        Test_Value         => Count);
                     
                  else
                     Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
                        Failed_Domain_Object => Root_Object.Struct.SO.Struct_SO_type(Instance_Handle.all).Some_Text,
                        Failed_Test_Number   => Test,
                        Failed_Test_Value    => Count);
                     
                  end if;
                  
               end if;
               
               
               Count := Count + 1;
               
               
               --  Don't want to read all the entries, just all but one of them.
               --  This so that we can append into the set again on the next iteration.
               exit when Count =  How_Many;
            end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => A_Structure) loop
            
         end;
         -- end of unpacking structure
         --
         
         
         --  Look at all entries
      else
         
         Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-1212               ",
            Invoking_Domain => "Structures                      ",
            Invoking_Object => "Structured Object Synch Service ",
            Purpose         => "Decode simple all NTL data struc");
         
         
         Has_Passed := True;
         Passed_Count := 0;
         
         --
         -- start of unpacking structure
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
         begin
            Struct_Domain_Types.Ops.Go_To_Start (A_Structure);
            for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => A_Structure) loop
               Struct_Domain_Types.Ops.Extract (
                  A_An_Integer     => the_integer,
                  A_A_Real         => the_real,
                  A_Some_Text      => the_text,
                  A_A_Boolean      => the_boolean,
                  From_Structure   => A_Structure);
               
               
               local_integer := the_integer;
               local_real    := the_real;
               local_text    := the_text;
               local_boolean := the_boolean;
               
               
               if local_integer =  Root_Object.Struct.SO.Struct_SO_type(Instance_Handle.all).An_Integer and then
                  local_real    =  Root_Object.Struct.SO.Struct_SO_type(Instance_Handle.all).A_Real and then
                  local_text    =  Root_Object.Struct.SO.Struct_SO_type(Instance_Handle.all).Some_Text and then
                  local_boolean =  Root_Object.Struct.SO.Struct_SO_type(Instance_Handle.all).A_Boolean then
                  
                  Passed_Count := Passed_Count + 1;
               else
                  Has_Passed   := False;
                  Passed_Count := Passed_Count - 1;
               end if;
               
               Count := Count + 1;
               
            end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => A_Structure) loop
            
         end;
         -- end of unpacking structure
         --
         
         
         if Has_Passed =  True then
            
            Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
               Test_Object_Domain => Root_Object.Struct.SO.Struct_SO_type(Instance_Handle.all).Some_Text,
               Test_Number        => Test,
               Test_Value         => Passed_Count);
            
         else
            Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
               Failed_Domain_Object => Root_Object.Struct.SO.Struct_SO_type(Instance_Handle.all).Some_Text,
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Passed_Count);
            
         end if;
         
      end if;
      
      
   end Struct_SO8_Decode_Simple_NTL_Structure;
   
end Struct_SO8_Decode_Simple_NTL_Structure_Service;

--
-- End of file Struct_SO8_Decode_Simple_NTL_Structure_Service.adb
--
