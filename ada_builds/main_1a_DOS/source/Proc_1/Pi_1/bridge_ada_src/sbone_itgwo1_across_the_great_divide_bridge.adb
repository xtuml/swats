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
--* File Name:               SBONE_ITGWO1_Across_The_Great_Divide_Bridge.adb
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
--*  Project Key Letter : Main_Build_Set
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.SBONE.RD;
with Root_Object.SBONE.TD;

-- List of services used
with RP_RP1_Test_Passed_Service;
with RP_RP2_Test_Failed_Service;
with RP_RP4_Test_Description_Service;

-- List of domain types used
with SBONE_Domain_Types;
with SBONE_Domain_Types.Ops;
use type SBONE_Domain_Types.Source_Structure_Type;
use type SBONE_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body SBONE_ITGWO1_Across_The_Great_Divide_Bridge is
   
   procedure SBONE_ITGWO1_Across_The_Great_Divide (
      Test                  : in     Application_Types.Base_Integer_Type;
      A_Structure_To_Send   : in out SBONE_Domain_Types.Source_Structure_Type;
      Control_Integer       : in     Application_Types.Base_Integer_Type;
      Control_Real          : in     Application_Types.Base_Float_Type;
      Control_String        : in     Application_Types.Base_Text_Type;
      Control_Enum          : in     SBONE_Domain_Types.Colour_Type;
      Control_Boolean       : in     Boolean;
      Elements_In_Structure : in     Application_Types.Base_Integer_Type;
      Result                :    out Boolean;
      A_Structure_To_Return :    out SBONE_Domain_Types.Source_Structure_Type) is
      
      my_test  : Root_Object.Object_Access;
      Reporter : Root_Object.Object_Access;
      
      local_real : Application_Types.Base_Float_Type := 1.0;
      
      Local_Test      : Application_Types.Base_Integer_Type := 1;
      Reporter_Number : Application_Types.Base_Integer_Type := 1;
      Failure_Code    : Application_Types.Base_Integer_Type := 1;
      How_Many_Sets   : Application_Types.Base_Integer_Type := 1;
      Count           : Application_Types.Base_Integer_Type := 1;
      local_integer   : Application_Types.Base_Integer_Type := 1;
      
      local_string : Application_Types.Base_Text_Type := (others => ' ');
      
      local_colour : SBONE_Domain_Types.Colour_Type      := SBONE_Domain_Types.Colour_Type_first;
      
      Has_Passed    : Boolean := Application_Types.Boolean_first;
      local_boolean : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of ITGWO1_Across_The_Great_Divide
      my_test := Root_Object.SBONE.TD.Unconditional_Find_One;
      
      --  Receive a structure and the control data from this domain.
      --  Decode it, and create another structure locally and pass it back
      --  to the calling routine. In this case, the bridge and the calling routine 
      --  are in the same domain.
      Local_Test := Test;
      
      Reporter := Root_Object.SBONE.RD.Unconditional_Find_One;
      
      if Reporter /= Null then
         
         Reporter_Number := Root_Object.SBONE.RD.SBONE_RD_type(Reporter.all).Reported_Domain_Number;
      else
         Reporter_Number := -1;
         
      end if;
      
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
      
      RP_RP4_Test_Description_Service.RP_RP4_Test_Description (
         Write_Test_Number           => Local_Test,
         Write_Requid                => "null requid                     ",
         Write_Invoker_Domain_Name   => "Structure Bridge                ",
         Write_Object                => "Pass back structure             ",
         Write_Test_Purpose          => "Decode received structure       ",
         Write_Invoker_Domain_Number => Reporter_Number);
      
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      
      Has_Passed := False;
      Failure_Code  := 0;
      How_Many_Sets :=  SBONE_Domain_Types.Ops.Count_Of(A_Structure_To_Send);
      
      
      if How_Many_Sets =  Elements_In_Structure then
         
         Count := 1;
         
         --
         -- start of unpacking structure
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
         begin
            SBONE_Domain_Types.Ops.Go_To_Start (A_Structure_To_Send);
            for i in 1 .. SBONE_Domain_Types.Ops.Count_Of (In_Structure => A_Structure_To_Send) loop
               SBONE_Domain_Types.Ops.Extract (
                  A_Source_Integer => local_integer,
                  A_Source_Real    => local_real,
                  A_Source_Text    => local_string,
                  A_Source_Boolean => local_boolean,
                  A_Source_Colour  => local_colour,
                  From_Structure   => A_Structure_To_Send);
               
               
               --  Look at the last entry only.
               
               if Count =  How_Many_Sets then
                  
                  --  Copy the contents into a locally defined structure.
                  --
                  -- start of append members to structure
                  SBONE_Domain_Types.Ops.Append (
                     A_Source_Integer => local_integer,
                     A_Source_Real    => local_real,
                     A_Source_Text    => local_string,
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
            end loop; -- end of i in 1 .. SBONE_Domain_Types.Ops.Count_Of (In_Structure => A_Structure_To_Send) loop
            
         end;
         -- end of unpacking structure
         --
         
      else
         --  Conflict in the number of sets found and the number
         --  specified by the source domain.
         Has_Passed := False;
         Failure_Code := -1;
         
      end if;
      
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
      
      if Has_Passed =  False then
         
         RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
            Failed_Domain        => "Local Structure corrupted       ",
            the_test_no          => Local_Test,
            the_test_value       => Failure_Code,
            Failed_Domain_Number => Reporter_Number);
         
      else
         RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
            Passed_Domain            => "Local Structure correctly receiv",
            Passed_Test_Number       => Local_Test,
            Passed_Test_Result_Value => How_Many_Sets,
            Passed_Domain_Number     => Reporter_Number);
         
      end if;
      
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      
      Result := Has_Passed;
      
      
   end SBONE_ITGWO1_Across_The_Great_Divide;
   
end SBONE_ITGWO1_Across_The_Great_Divide_Bridge;

--
-- End of file SBONE_ITGWO1_Across_The_Great_Divide_Bridge.adb
--
