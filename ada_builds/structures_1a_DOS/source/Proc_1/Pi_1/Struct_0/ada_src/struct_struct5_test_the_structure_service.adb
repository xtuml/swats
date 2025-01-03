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
--* File Name:               Struct5_Test_The_Structure_Service.adb
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
use type Struct_Domain_Types.My_Simple_Structure;
use type Struct_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Struct_Struct5_Test_The_Structure_Service is
   
   procedure Struct_Struct5_Test_The_Structure (
      Test                 : in     Application_Types.Base_Integer_Type;
      Structure_Input      : in out Struct_Domain_Types.My_Simple_Structure;
      The_Return_Structure :    out Struct_Domain_Types.My_Simple_Structure) is
      
      the_integer   : Application_Types.Base_Integer_Type := 1;
      local_integer : Application_Types.Base_Integer_Type := 1;
      
      the_color   : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      local_color : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      test_colour : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      
   begin
   -- start of Struct5_Test_The_Structure
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (Structure_Input);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Structure_Input) loop
            Struct_Domain_Types.Ops.Extract (
               A_Int_Value      => the_integer,
               A_Colour_Value   => the_color,
               From_Structure   => Structure_Input);
            
            local_integer := the_integer;
            local_color   := the_color;
            test_colour := Struct_Domain_Types.Red;
            
            if local_color =  test_colour then
               local_integer := 200;
               
               local_color := Struct_Domain_Types.Blue;
            end if;
            
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Structure_Input) loop
         
      end;
      -- end of unpacking structure
      --
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_Int_Value    => local_integer,
         A_Colour_Value => local_color, 
         To_Structure   => The_Return_Structure);
      -- end of append members to structure
      --
      
      
   end Struct_Struct5_Test_The_Structure;
   
end Struct_Struct5_Test_The_Structure_Service;

--
-- End of file Struct_Struct5_Test_The_Structure_Service.adb
--
