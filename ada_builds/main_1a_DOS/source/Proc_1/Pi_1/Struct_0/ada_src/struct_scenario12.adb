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
--* File Name:               Struct_Scenario12.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Test_the_Structure
--*                          
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
with Root_Object.Struct.TD;

-- List of services used
with Struct_Struct10_Check_Returning_Structure_Service;
with Struct_Struct5_Test_The_Structure_Service;

-- List of bridges used
with Struct_RPT3_Test_Failed_Bridge;
with Struct_RPT2_Test_Passed_Bridge;
with Struct_RPT1_Start_Test_Bridge;

-- List of domain types used
with Struct_Domain_Types;
with Struct_Domain_Types.Ops;
use type Struct_Domain_Types.My_Second_Structure;
use type Struct_Domain_Types.My_Simple_Structure;
use type Struct_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Struct_Scenario12 is
   
      
      Returning_Structure     : Struct_Domain_Types.My_Simple_Structure;
      The_Returning_Structure : Struct_Domain_Types.My_Second_Structure;
      
      My_Test_Data : Root_Object.Object_Access;
      
      The_New_Struct : Struct_Domain_Types.My_Simple_Structure;
      New_Structure  : Struct_Domain_Types.My_Simple_Structure;
      
      The_New_Real      : Application_Types.Base_Float_Type := 1.0;
      The_Returned_Real : Application_Types.Base_Float_Type := 1.0;
      
      Test             : Application_Types.Base_Integer_Type := 1;
      The_New_Int      : Application_Types.Base_Integer_Type := 1;
      the_integer      : Application_Types.Base_Integer_Type := 1;
      The_Returned_Int : Application_Types.Base_Integer_Type := 1;
      How_Many         : Application_Types.Base_Integer_Type := 1;
      Count            : Application_Types.Base_Integer_Type := 1;
      
      The_New_String      : Application_Types.Base_Text_Type := (others => ' ');
      The_Returned_String : Application_Types.Base_Text_Type := (others => ' ');
      
      The_New_Col      : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      the_colour       : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      The_New_Colour   : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      The_Returned_UDT : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      
      Test_Has_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      --  Set up scenario test data.
      Test_Has_Passed := False;
      
      My_Test_Data := Root_Object.Struct.TD.Unconditional_Find_One;
      
      Test := Root_Object.Struct.TD.Struct_TD_type(My_Test_Data.all).The_Test_Number;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Returning Structure             ",
         Purpose         => "Test returning structure        ");
      
      
      The_New_Int := 100;
      
      The_New_Col := Struct_Domain_Types.Red;
      -- {The_New_Struct} is My_Simple_Structure
      Struct_Domain_Types.Ops.Initialise (The_New_Struct);
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_Int_Value    => The_New_Int,
         A_Colour_Value => The_New_Col, 
         To_Structure   => The_New_Struct);
      -- end of append members to structure
      --
      
      
      Struct_Struct5_Test_The_Structure_Service.Struct_Struct5_Test_The_Structure (
         Test                 => Test,
         Structure_Input      => The_New_Struct,
         The_Return_Structure => Returning_Structure);
      
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (Returning_Structure);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Returning_Structure) loop
            Struct_Domain_Types.Ops.Extract (
               A_Int_Value      => the_integer,
               A_Colour_Value   => the_colour,
               From_Structure   => Returning_Structure);
            
            
            if the_integer =  200 then
               
               if the_colour =  Struct_Domain_Types.Blue then
                  
                  Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
                     Test_Object_Domain => "Structures                      ",
                     Test_Number        => Test,
                     Test_Value         => 0);
                  
               else
                  Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
                     Failed_Domain_Object => "Structures                      ",
                     Failed_Test_Number   => Test,
                     Failed_Test_Value    => -1);
                  
               end if;
               
            else
               Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
                  Failed_Domain_Object => "Structures                      ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -2);
               
            end if;
            
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Returning_Structure) loop
         
      end;
      -- end of unpacking structure
      --
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Returning Structure             ",
         Purpose         => "Test returning structure        ");
      
      
      The_New_Int    := 100;
      The_New_Real   := 1.0;
      The_New_String := "Structures Test                 ";
      
      The_New_Colour := Struct_Domain_Types.Blue;
      
      Struct_Struct10_Check_Returning_Structure_Service.Struct_Struct10_Check_Returning_Structure (
         Integer_Input       => The_New_Int,
         Real_Input          => The_New_Real,
         String_Input        => The_New_String,
         UDT_Input           => The_New_Colour,
         Returning_Structure => The_Returning_Structure);
      
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (The_Returning_Structure);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => The_Returning_Structure) loop
            Struct_Domain_Types.Ops.Extract (
               A_Int_Val        => The_Returned_Int,
               A_Real_Val       => The_Returned_Real,
               A_String_Val     => The_Returned_String,
               A_Col_Val        => The_Returned_UDT,
               From_Structure   => The_Returning_Structure);
            
            
            if The_Returned_Int =  200 then
               
               if The_Returned_Real =  2.0 then
                  
                  if The_Returned_String =  "Test Complete                   " then
                     
                     if The_Returned_UDT =  Struct_Domain_Types.Green then
                        
                        Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
                           Test_Object_Domain => "Structures                      ",
                           Test_Number        => Test,
                           Test_Value         => 0);
                        
                     else
                        Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
                           Failed_Domain_Object => "Structures                      ",
                           Failed_Test_Number   => Test,
                           Failed_Test_Value    => -1);
                        
                     end if;
                     
                  else
                     Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
                        Failed_Domain_Object => "Structures                      ",
                        Failed_Test_Number   => Test,
                        Failed_Test_Value    => -2);
                     
                  end if;
                  
               else
                  Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
                     Failed_Domain_Object => "Structures                      ",
                     Failed_Test_Number   => Test,
                     Failed_Test_Value    => -3);
                  
               end if;
               
            else
               Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
                  Failed_Domain_Object => "Structures                      ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -4);
               
            end if;
            
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => The_Returning_Structure) loop
         
      end;
      -- end of unpacking structure
      --
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3
      -- --------------------------------------------------------------------------
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Returning Structure             ",
         Purpose         => "Test returning structure        ");
      
      
      The_New_Int := 100;
      
      The_New_Col := Struct_Domain_Types.Red;
      -- {New_Structure} is My_Simple_Structure
      Struct_Domain_Types.Ops.Initialise (New_Structure);
      
      --
      -- start of append members to structure
      Struct_Domain_Types.Ops.Append (
         A_Int_Value    => The_New_Int,
         A_Colour_Value => The_New_Col, 
         To_Structure   => New_Structure);
      -- end of append members to structure
      --
      
      
      Struct_Struct5_Test_The_Structure_Service.Struct_Struct5_Test_The_Structure (
         Test                 => Test,
         Structure_Input      => New_Structure,
         The_Return_Structure => New_Structure);
      
      
      How_Many :=  Struct_Domain_Types.Ops.Count_Of(New_Structure);
      
      
      if How_Many =  2 then
         
         Count := 1;
         --
         -- start of unpacking structure
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
         begin
            Struct_Domain_Types.Ops.Go_To_Start (New_Structure);
            for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => New_Structure) loop
               Struct_Domain_Types.Ops.Extract (
                  A_Int_Value      => the_integer,
                  A_Colour_Value   => the_colour,
                  From_Structure   => New_Structure);
               
               
               if the_integer =  200 then
                  
                  if the_colour =  Struct_Domain_Types.Blue then
                     
                     Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
                        Test_Object_Domain => "Structures                      ",
                        Test_Number        => Test,
                        Test_Value         => 0);
                     
                  else
                     Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
                        Failed_Domain_Object => "Structures                      ",
                        Failed_Test_Number   => Test,
                        Failed_Test_Value    => -1);
                     
                  end if;
                  
               else
                  Count := Count + 1;
                  
                  
                  if Count =  3 then
                     
                     Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
                        Failed_Domain_Object => "Structures                      ",
                        Failed_Test_Number   => Test,
                        Failed_Test_Value    => -2);
                     
                  end if;
                  
               end if;
               
            end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => New_Structure) loop
            
         end;
         -- end of unpacking structure
         --
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Structures                      ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -3);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      
      Root_Object.Struct.TD.Struct_TD_type(My_Test_Data.all).The_Test_Number := Test;
      
   end Struct_Scenario12;
   
--
-- End of file Struct_Scenario12.ada
--
