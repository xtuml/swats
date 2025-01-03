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
--* File Name:               OAIBTWO_IITGWO1_Across_The_Great_Divide_Service.adb
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
with OAIBTWO_RPT2_Test_Passed_Bridge;
with OAIBTWO_RPT3_Test_Failed_Bridge;
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


package body OAIBTWO_IITGWO1_Across_The_Great_Divide_Service is
   
   procedure OAIBTWO_IITGWO1_Across_The_Great_Divide (
      Test                  : in     Application_Types.Base_Integer_Type;
      A_Structure_To_Send   : in out OAIBTWO_Domain_Types.Source_Structure_Type;
      Control_Integer       : in     Application_Types.Base_Integer_Type;
      Control_Real          : in     Application_Types.Base_Float_Type;
      Control_String        : in     Application_Types.Base_Text_Type;
      Control_Enum          : in     OAIBTWO_Domain_Types.Colour_Type;
      Control_Boolean       : in     Boolean;
      Elements_In_Structure : in     Application_Types.Base_Integer_Type;
      Result                :    out Boolean;
      A_Structure_To_Return :    out OAIBTWO_Domain_Types.Source_Structure_Type) is
      
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
   -- start of IITGWO1_Across_The_Great_Divide
      
      -- - my_test = find-one Test_Data
      -- - 
      -- - - Receive a structure and the control data from this domain.
      -- - - Decode it, and create another structure locally and pass it back
      -- - - to the calling routine. In this case, the bridge and the calling routine 
      -- - - are in the same domain.
      -- - 
      -- - Local_Test = Test
      -- - 
      -- - Reporter = find-one Report_Data
      -- - if Reporter != UNDEFINED then
      -- - 
      -- -    Reporter_Number = Reporter.Reported_Domain_Number
      -- - 
      -- - else
      -- - 
      -- -    Reporter_Number = -1
      -- - 
      -- - endif
      -- - 
      -- - $USE RP
      -- - 
      -- - [] = RP4::Test_Description[Local_Test, "null requid", "Structure Bridge", "Pass back structure", "Decode received structure", Reporter_Number]
      -- - 
      -- - 
      -- - $ENDUSE
      -- - 
      -- -
      
      OAIBTWO_RPT1_Start_Test_Bridge.OAIBTWO_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "OAIBTWO                         ",
         Invoking_Object => "IITGWO1                         ",
         Purpose         => "Decode received structure       ");
      
      Has_Passed    := False;
      Failure_Code  := 0;
      How_Many_Sets :=  OAIBTWO_Domain_Types.Ops.Count_Of(A_Structure_To_Send);
      
      
      if How_Many_Sets =  Elements_In_Structure then
         
         Count := 1;
         
         --
         -- start of unpacking structure
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
         begin
            OAIBTWO_Domain_Types.Ops.Go_To_Start (A_Structure_To_Send);
            for i in 1 .. OAIBTWO_Domain_Types.Ops.Count_Of (In_Structure => A_Structure_To_Send) loop
               OAIBTWO_Domain_Types.Ops.Extract (
                  A_Source_Integer => local_integer,
                  A_Source_Real    => local_real,
                  A_Source_String  => local_string,
                  A_Source_Boolean => local_boolean,
                  A_Source_Colour  => local_colour,
                  From_Structure   => A_Structure_To_Send);
               
               
               --  Look at the last entry only.
               
               if Count =  How_Many_Sets then
                  
                  --  Copy the contents into a locally defined structure.
                  --
                  -- start of append members to structure
                  OAIBTWO_Domain_Types.Ops.Append (
                     A_Source_Integer => local_integer,
                     A_Source_Real    => local_real,
                     A_Source_String  => local_string,
                     A_Source_Boolean => local_boolean,
                     A_Source_Colour  => local_colour, 
                     To_Structure     => A_Structure_To_Return);
                  -- end of append members to structure
                  --
                  
                  
                  if local_integer =  Control_Integer then
                     
                     if local_real =  Control_Real then
                        
                        if local_string =  Control_String then
                           
                           if local_colour =  Control_Enum then
                              
                              if local_boolean =  Control_Boolean then
                                 
                                 Has_Passed := True;
                                 
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
            end loop; -- end of i in 1 .. OAIBTWO_Domain_Types.Ops.Count_Of (In_Structure => A_Structure_To_Send) loop
            
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
            Failed_Domain_Object => "OAIBTWO Local Structure corrupte",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
      else
         OAIBTWO_RPT2_Test_Passed_Bridge.OAIBTWO_RPT2_Test_Passed (
            Test_Object_Domain => "OAIBTWO Local Structure correctl",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Result := Has_Passed;
      
      
   end OAIBTWO_IITGWO1_Across_The_Great_Divide;
   
end OAIBTWO_IITGWO1_Across_The_Great_Divide_Service;

--
-- End of file OAIBTWO_IITGWO1_Across_The_Great_Divide_Service.adb
--
