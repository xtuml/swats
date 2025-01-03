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
--* File Name:               Struct10_Check_Returning_Structure_Service.adb
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

-- List of domain types used
with Struct_Domain_Types;
with Struct_Domain_Types.Ops;
use type Struct_Domain_Types.My_Second_Structure;
use type Struct_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Struct_Struct10_Check_Returning_Structure_Service is
   
   procedure Struct_Struct10_Check_Returning_Structure (
      Integer_Input       : in     Application_Types.Base_Integer_Type;
      Real_Input          : in     Application_Types.Base_Float_Type;
      String_Input        : in     Application_Types.Base_Text_Type;
      UDT_Input           : in     Struct_Domain_Types.Colour_Type;
      Returning_Structure :    out Struct_Domain_Types.My_Second_Structure) is
      
      Local_Real : Application_Types.Base_Float_Type := 1.0;
      
      Local_Integer : Application_Types.Base_Integer_Type := 1;
      
      Local_String : Application_Types.Base_Text_Type := (others => ' ');
      
      Local_UDT : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      
   begin
   -- start of Struct10_Check_Returning_Structure
      
      if Integer_Input =  100 then
         Local_Integer := 200;
         
      end if;
      
      
      if Real_Input =  1.0 then
         
         Local_Real := 2.0;
         
      end if;
      
      
      if String_Input =  "Structures Test                 " then
         
         Local_String := "Test Complete                   ";
         
      end if;
      
      
      if UDT_Input =  Struct_Domain_Types.Blue then
         Local_UDT := Struct_Domain_Types.Green;
      end if;
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_Int_Val      => Local_Integer,
         A_Real_Val     => Local_Real,
         A_String_Val   => Local_String,
         A_Col_Val      => Local_UDT, 
         To_Structure   => Returning_Structure);
      -- end of append members to structure
      --
      
      
   end Struct_Struct10_Check_Returning_Structure;
   
end Struct_Struct10_Check_Returning_Structure_Service;

--
-- End of file Struct_Struct10_Check_Returning_Structure_Service.adb
--
