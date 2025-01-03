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
--* File Name:               OAIBTWO1_Receive_The_Structure_Service.adb
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
--* Domain Name              : Open_Architecture_Internal_Bridge_Domain_Two
--* Domain Key Letter        : OAIBTWO
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with OAIBTWO_RPT3_Test_Failed_Bridge;
with OAIBTWO_RPT2_Test_Passed_Bridge;
with OAIBTWO_RPT1_Start_Test_Bridge;

-- List of domain types used
with OAIBTWO_Domain_Types;
with OAIBTWO_Domain_Types.Ops;
use type OAIBTWO_Domain_Types.Source_Structure_Type;
use type OAIBTWO_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body OAIBTWO_OAIBTWO1_Receive_The_Structure_Service is
   
   procedure OAIBTWO_OAIBTWO1_Receive_The_Structure (
      Test                        : in     Application_Types.Base_Integer_Type;
      The_Structure               : in out OAIBTWO_Domain_Types.Source_Structure_Type;
      Control_Integer             : in     Application_Types.Base_Integer_Type;
      Control_Real                : in     Application_Types.Base_Float_Type;
      Control_String              : in     Application_Types.Base_Text_Type;
      Control_Enum                : in     OAIBTWO_Domain_Types.Colour_Type;
      Control_Boolean             : in     Boolean;
      Number_Of_Structures_In_Set : in     Application_Types.Base_Integer_Type;
      Result                      :    out Boolean) is
      
      local_real : Application_Types.Base_Float_Type := 1.0;
      
      Failure_Code  : Application_Types.Base_Integer_Type := 1;
      How_Many_Sets : Application_Types.Base_Integer_Type := 1;
      Count         : Application_Types.Base_Integer_Type := 1;
      local_integer : Application_Types.Base_Integer_Type := 1;
      
      local_string : Application_Types.Base_Text_Type := (others => ' ');
      
      local_colour : OAIBTWO_Domain_Types.Colour_Type        := OAIBTWO_Domain_Types.Colour_Type_first;
      
      Has_Passed    : Boolean := Application_Types.Boolean_first;
      local_boolean : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of OAIBTWO1_Receive_The_Structure
      
      -- --------------------------------------------------------------------------
      --  Receive a structure and the control data from the other domain.
      -- --------------------------------------------------------------------------
      
      OAIBTWO_RPT1_Start_Test_Bridge.OAIBTWO_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "OAIBTWO                         ",
         Invoking_Object => "DBSS Receive_The_Structure      ",
         Purpose         => "Decode received structure       ");
      
      Has_Passed    := False;
      Failure_Code  := 0;
      How_Many_Sets :=  OAIBTWO_Domain_Types.Ops.Count_Of(The_Structure);
      
      
      if How_Many_Sets =  Number_Of_Structures_In_Set then
         
         Count := 1;
         
         --
         -- start of unpacking structure
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
         begin
            OAIBTWO_Domain_Types.Ops.Go_To_Start (The_Structure);
            for i in 1 .. OAIBTWO_Domain_Types.Ops.Count_Of (In_Structure => The_Structure) loop
               OAIBTWO_Domain_Types.Ops.Extract (
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
                                 
                                 
                                 OAIBTWO_RPT2_Test_Passed_Bridge.OAIBTWO_RPT2_Test_Passed (
                                    Test_Object_Domain => "OAIBTWO Destination Structure co",
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
            end loop; -- end of i in 1 .. OAIBTWO_Domain_Types.Ops.Count_Of (In_Structure => The_Structure) loop
            
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
         
         OAIBTWO_RPT3_Test_Failed_Bridge.OAIBTWO_RPT3_Test_Failed (
            Failed_Domain_Object => "OAIBTWO Destination Structure co",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Result := Has_Passed;
      
      
   end OAIBTWO_OAIBTWO1_Receive_The_Structure;
   
end OAIBTWO_OAIBTWO1_Receive_The_Structure_Service;

--
-- End of file OAIBTWO_OAIBTWO1_Receive_The_Structure_Service.adb
--
