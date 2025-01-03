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
--* File Name:               SBTWO1_Receive_The_Structure_Service.adb
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
--* Domain Name              : Structure_Bridge_Two
--* Domain Key Letter        : SBTWO
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with SBTWO_RPT3_Test_Failed_Bridge;
with SBTWO_RPT2_Test_Passed_Bridge;
with SBTWO_RPT1_Start_Test_Bridge;

-- List of domain types used
with SBTWO_Domain_Types;
with SBTWO_Domain_Types.Ops;
use type SBTWO_Domain_Types.Source_Structure_Type;
use type SBTWO_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body SBTWO_SBTWO1_Receive_The_Structure_Service is
   
   procedure SBTWO_SBTWO1_Receive_The_Structure (
      Test                        : in     Application_Types.Base_Integer_Type;
      The_Structure               : in out SBTWO_Domain_Types.Source_Structure_Type;
      Control_Integer             : in     Application_Types.Base_Integer_Type;
      Control_Real                : in     Application_Types.Base_Float_Type;
      Control_String              : in     Application_Types.Base_Text_Type;
      Control_Enum                : in     SBTWO_Domain_Types.Colour_Type;
      Control_Boolean             : in     Boolean;
      Number_Of_Structures_In_Set : in     Application_Types.Base_Integer_Type;
      Result                      :    out Boolean) is
      
      local_real : Application_Types.Base_Float_Type := 1.0;
      
      Failure_Code  : Application_Types.Base_Integer_Type := 1;
      How_Many_Sets : Application_Types.Base_Integer_Type := 1;
      Count         : Application_Types.Base_Integer_Type := 1;
      local_integer : Application_Types.Base_Integer_Type := 1;
      
      local_string : Application_Types.Base_Text_Type := (others => ' ');
      
      local_colour : SBTWO_Domain_Types.Colour_Type      := SBTWO_Domain_Types.Colour_Type_first;
      
      Has_Passed    : Boolean := Application_Types.Boolean_first;
      local_boolean : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of SBTWO1_Receive_The_Structure
      
      -- --------------------------------------------------------------------------
      --  Receive a structure and the control data from the other domain.
      -- --------------------------------------------------------------------------
      
      SBTWO_RPT1_Start_Test_Bridge.SBTWO_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Destination Structure Bridge    ",
         Invoking_Object => "DBSS Receive_The_Structure      ",
         Purpose         => "Decode received structure       ");
      
      Has_Passed    := False;
      Failure_Code  := 0;
      How_Many_Sets :=  SBTWO_Domain_Types.Ops.Count_Of(The_Structure);
      
      
      if How_Many_Sets =  Number_Of_Structures_In_Set then
         
         Count := 1;
         
         --
         -- start of unpacking structure
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
         begin
            SBTWO_Domain_Types.Ops.Go_To_Start (The_Structure);
            for i in 1 .. SBTWO_Domain_Types.Ops.Count_Of (In_Structure => The_Structure) loop
               SBTWO_Domain_Types.Ops.Extract (
                  A_Source_Integer => local_integer,
                  A_Source_Real    => local_real,
                  A_Source_String  => local_string,
                  A_Source_Boolean => local_boolean,
                  A_Source_Colour  => local_colour,
                  From_Structure   => The_Structure);
               
               
               --  Look at the last entry only.
               
               if Count =  How_Many_Sets then
                  
                  if local_integer =  Control_Integer then
                     
                     if local_real =  Control_Real then
                        
                        if local_string =  Control_String then
                           
                           if local_colour =  Control_Enum then
                              
                              if local_boolean =  Control_Boolean then
                                 
                                 Has_Passed := True;
                                 
                                 
                                 SBTWO_RPT2_Test_Passed_Bridge.SBTWO_RPT2_Test_Passed (
                                    Test_Object_Domain => "Destination Structure correctly ",
                                    Test_Number        => Test,
                                    Test_Value         => 0);
                                 
                              else
                                 
                                 --  Boolean incorrectly decoded
                                 
                                 Has_Passed   := True;
                                 Failure_Code := -6;
                              end if;
                              
                           else
                              
                              --  Enumeration incorrectly decoded
                              Has_Passed := False;
                              Failure_Code := -5;
                           end if;
                           
                        else
                           
                           --  String incorrectly decoded
                           Has_Passed := False;
                           Failure_Code := -4;
                        end if;
                        
                     else
                        
                        --  Real incorrectly decoded
                        Has_Passed := False;
                        Failure_Code := -3;
                     end if;
                     
                  else
                     
                     --  Integer incorrectly decoded
                     Has_Passed := False;
                     Failure_Code := -2;
                  end if;
                  
               else
                  
                  --  Not interested in this entry. Control data will only match up with the 
                  --  last entry in the set.
                  Count := Count + 1;
                  Has_Passed   := False;
                  Failure_Code := 0;
               end if;
               
               
               --  Loop around the entries in the set of structures.
            end loop; -- end of i in 1 .. SBTWO_Domain_Types.Ops.Count_Of (In_Structure => The_Structure) loop
            
         end;
         -- end of unpacking structure
         --
         
      else
         --  Conflict in the number of sets found and the number
         --  specified by the source domain.
         Has_Passed := False;
         Failure_Code := -1;
         
      end if;
      
      
      if Has_Passed =  False then
         
         SBTWO_RPT3_Test_Failed_Bridge.SBTWO_RPT3_Test_Failed (
            Failed_Domain_Object => "Destination Structure corrupted ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Result := Has_Passed;
      
      
   end SBTWO_SBTWO1_Receive_The_Structure;
   
end SBTWO_SBTWO1_Receive_The_Structure_Service;

--
-- End of file SBTWO_SBTWO1_Receive_The_Structure_Service.adb
--
