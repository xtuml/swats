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
--* File Name:               Struct_SO10_Receive_Structure_IH_Service.adb
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
with Struct_RPT8_Specify_Requid_Bridge;
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


package body Struct_SO10_Receive_Structure_IH_Service is
   
   procedure Struct_SO10_Receive_Structure_IH (
      This_Test_Number        : in     Application_Types.Base_Integer_Type;
      Input_Structure         : in out Struct_Domain_Types.Structure_and_IH_Type;
      Number_Of_Elements      : in     Application_Types.Base_Integer_Type;
      Unique_Identifier_Of_IH : in     Application_Types.Base_Integer_Type;
      Testing_For             : in     Application_Types.Base_Text_Type) is
      
      Dereferenced_IH : Root_Object.Object_Access;
      
      How_Many_In_Structure : Application_Types.Base_Integer_Type := 1;
      Bean_Counter          : Application_Types.Base_Integer_Type := 1;
      
      Result_Found : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of SO10_Receive_Structure_IH
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1241-0000-01-1216               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Structure and IH                ",
         Purpose         => Testing_For);
      
      Struct_RPT8_Specify_Requid_Bridge.Struct_RPT8_Specify_Requid (
         Requid_Test_Number => This_Test_Number,
         The_Requid_Itself  => "1101-0000-01-0140               ");
      
      How_Many_In_Structure :=  Struct_Domain_Types.Ops.Count_Of(Input_Structure);
      
      
      if How_Many_In_Structure =  Number_Of_Elements then
         
         --  We got as many as we were expecting. Now look and see that the latest
         --  one in the structure has the same unique attribute as the parameter.
         --  NB This would be real easy if 'find' operations where supported for sets,
         --     but, tough luck, they aren't.
         
         Result_Found := False;
         Bean_Counter := 0;
         --
         -- start of unpacking structure
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
         begin
            Struct_Domain_Types.Ops.Go_To_Start (Input_Structure);
            for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Input_Structure) loop
               Struct_Domain_Types.Ops.Extract (
                  A_A_Defined_IH   => Dereferenced_IH,
                  From_Structure   => Input_Structure);
               
               
               if Dereferenced_IH /= Null then
                  Bean_Counter := Bean_Counter + 1;
               end if;
               
               
               --  Found the one we are interested in. Should be the final element in the structure.
               
               if Bean_Counter =  Number_Of_Elements then
                  
                  if Root_Object.Struct.SO.Struct_SO_type(Dereferenced_IH.all).Reference_SO =  Unique_Identifier_Of_IH then
                     Result_Found := True;
                     
                  end if;
                  
                  
                  --  Bail out of the loop. 
                     exit;
               end if;
               
            end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Input_Structure) loop
            
         end;
         -- end of unpacking structure
         --
         
         
         if Result_Found then
            
            Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
               Test_Object_Domain => Testing_For,
               Test_Number        => This_Test_Number,
               Test_Value         => Unique_Identifier_Of_IH);
            
         else
            Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
               Failed_Domain_Object => "Unmatched IH identifier         ",
               Failed_Test_Number   => This_Test_Number,
               Failed_Test_Value    => Unique_Identifier_Of_IH);
            
         end if;
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Inconsistent number of elements ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => How_Many_In_Structure);
         
      end if;
      
      
   end Struct_SO10_Receive_Structure_IH;
   
end Struct_SO10_Receive_Structure_IH_Service;

--
-- End of file Struct_SO10_Receive_Structure_IH_Service.adb
--
