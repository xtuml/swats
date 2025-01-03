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
--* File Name:               Struct_SO9_Receive_Empty_Structure_IH_Service.adb
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
use type Struct_Domain_Types.Structure_and_IH_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Struct_SO9_Receive_Empty_Structure_IH_Service is
   
   procedure Struct_SO9_Receive_Empty_Structure_IH (
      Test_Number      : in     Application_Types.Base_Integer_Type;
      Empty_Structure  : in out Struct_Domain_Types.Structure_and_IH_Type;
      Inserted_IH      : in     Root_Object.Object_Access;
      Testing_For      : in     Application_Types.Base_Text_Type;
      Filled_Structure :    out Struct_Domain_Types.Structure_and_IH_Type) is
      
      An_IH : Root_Object.Object_Access;
      
      How_Many_In_Structure : Application_Types.Base_Integer_Type := 1;
      Bean_Counter          : Application_Types.Base_Integer_Type := 1;
      
      Structure_Is_Empty : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of SO9_Receive_Empty_Structure_IH
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1241-0000-01-1216               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Receive Empty Structure         ",
         Purpose         => Testing_For);
      
      How_Many_In_Structure :=  Struct_Domain_Types.Ops.Count_Of(Empty_Structure);
      Bean_Counter          := 0;
      
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (Empty_Structure);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Empty_Structure) loop
            Struct_Domain_Types.Ops.Extract (
               A_A_Defined_IH   => An_IH,
               From_Structure   => Empty_Structure);
            
            
            Bean_Counter := Bean_Counter + 1;
            
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Empty_Structure) loop
         
      end;
      -- end of unpacking structure
      --
      
      
      if Bean_Counter          =  0 and then
         How_Many_In_Structure =  0 then
         
         Structure_Is_Empty := True;
      else
         Structure_Is_Empty := False;
         
      end if;
      
      
      if Inserted_IH /= Null then
         --
         -- start of append members to structure
         Struct_Domain_Types.Ops.Append (
            A_A_Defined_IH => Inserted_IH, 
            To_Structure   => Filled_Structure);
         -- end of append members to structure
         --
         
         
         if Structure_Is_Empty then
            
            Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
               Test_Object_Domain => Testing_For,
               Test_Number        => Test_Number,
               Test_Value         => Bean_Counter);
            
         else
            Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
               Failed_Domain_Object => "Structure was not empty         ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => Bean_Counter);
            
         end if;
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "IH does not exist               ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => -1);
         
      end if;
      
      
   end Struct_SO9_Receive_Empty_Structure_IH;
   
end Struct_SO9_Receive_Empty_Structure_IH_Service;

--
-- End of file Struct_SO9_Receive_Empty_Structure_IH_Service.adb
--
