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
--* File Name:               Struct7_Decode_Three_Level_Nested_Structure_Service.adb
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

-- List of bridges used
with Struct_RPT3_Test_Failed_Bridge;
with Struct_RPT2_Test_Passed_Bridge;
with Struct_RPT1_Start_Test_Bridge;

-- List of domain types used
with Struct_Domain_Types;
with Struct_Domain_Types.Ops;
use type Struct_Domain_Types.Third_Nested_Structure_Type;
use type Struct_Domain_Types.Second_Nested_Structure_Type;
use type Struct_Domain_Types.First_Nested_Structure_Type;
use type Struct_Domain_Types.Colour_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Struct_Struct7_Decode_Three_Level_Nested_Structure_Service is
   
   procedure Struct_Struct7_Decode_Three_Level_Nested_Structure (
      Test                      : in     Application_Types.Base_Integer_Type;
      Three_Level_Nest          : in out Struct_Domain_Types.First_Nested_Structure_Type;
      Two_Level_Nest            : in out Struct_Domain_Types.Second_Nested_Structure_Type;
      One_Level_Nest            : in out Struct_Domain_Types.Third_Nested_Structure_Type;
      Given_First_Level_Number  : in     Application_Types.Base_Integer_Type;
      How_Many_In_First         : in     Application_Types.Base_Integer_Type;
      Given_Second_Level_Number : in     Application_Types.Base_Integer_Type;
      How_Many_In_Second        : in     Application_Types.Base_Integer_Type;
      Given_Third_Level_Number  : in     Application_Types.Base_Integer_Type;
      How_Many_In_Third         : in     Application_Types.Base_Integer_Type;
      Given_Third_Level_Colour  : in     Struct_Domain_Types.Colour_Type) is
      
      Second_Level : Struct_Domain_Types.Second_Nested_Structure_Type;
      Third_Level  : Struct_Domain_Types.Third_Nested_Structure_Type;
      
      Failure_Code        : Application_Types.Base_Integer_Type := 1;
      How_Many            : Application_Types.Base_Integer_Type := 1;
      number              : Application_Types.Base_Integer_Type := 1;
      How_Many_First      : Application_Types.Base_Integer_Type := 1;
      First_Level_Number  : Application_Types.Base_Integer_Type := 1;
      How_Many_Second     : Application_Types.Base_Integer_Type := 1;
      Second_Level_Number : Application_Types.Base_Integer_Type := 1;
      How_Many_Third      : Application_Types.Base_Integer_Type := 1;
      Third_Level_Number  : Application_Types.Base_Integer_Type := 1;
      Failure_Has_Code    : Application_Types.Base_Integer_Type := 1;
      
      colour             : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      Third_Level_Colour : Struct_Domain_Types.Colour_Type       := Struct_Domain_Types.Colour_Type_first;
      
      Test_Has_Passed : Boolean := Application_Types.Boolean_first;
      OK_To_Proceed   : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of Struct7_Decode_Three_Level_Nested_Structure
      
      Struct_RPT1_Start_Test_Bridge.Struct_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-1212               ",
         Invoking_Domain => "Structures                      ",
         Invoking_Object => "Nested structures               ",
         Purpose         => "Three levels of nest            ");
      
      Test_Has_Passed := False;
      OK_To_Proceed   := False;
      Failure_Code    := 0;
      How_Many        :=  Struct_Domain_Types.Ops.Count_Of(One_Level_Nest);
      
      
      --  First compare the contents of the parameter One_Level_Nest to known datum
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         Struct_Domain_Types.Ops.Go_To_Start (One_Level_Nest);
         for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => One_Level_Nest) loop
            Struct_Domain_Types.Ops.Extract (
               A_Third_Nested_Integer => number,
               A_The_Holy_Grail       => colour,
               From_Structure         => One_Level_Nest);
            
            
            if colour   =  Given_Third_Level_Colour and then
               number   =  Given_Third_Level_Number and then
               How_Many =  How_Many_In_Third        then
               
               --  The datum and the simple non-nested structure match
               
               OK_To_Proceed := True;
            else
               OK_To_Proceed := False;
               Failure_Code  := -1;
               
            end if;
            
         end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => One_Level_Nest) loop
         
      end;
      -- end of unpacking structure
      --
      
      
      --  Simple structure matches the given data, precautionary check.
      
      if OK_To_Proceed then
         
         -- Since no equivalence check for structures exists in WACA, let's ... off road
         --  Bear in mind that One_Level_Nest has now been destructively read and
         --  no longer exists. 
         --  Decode the whole nine yards.
         --  Relying on the calling routine to specify the full structure and also
         --  provide all the count information means that each non-structure entry 
         --  in a set must contain the same data as the previous structure.
         
         How_Many_First :=  Struct_Domain_Types.Ops.Count_Of(Three_Level_Nest);
         
         
         if How_Many_First =  How_Many_In_First then
            
            --  Read from top level set
            --
            -- start of unpacking structure
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
            begin
               Struct_Domain_Types.Ops.Go_To_Start (Three_Level_Nest);
               for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Three_Level_Nest) loop
                  Struct_Domain_Types.Ops.Extract (
                     A_Second_Nested_Structure => Second_Level,
                     A_First_Nested_Integer    => First_Level_Number,
                     From_Structure            => Three_Level_Nest);
                  
                  
                  How_Many_Second :=  Struct_Domain_Types.Ops.Count_Of(Second_Level);
                  
                  
                  if First_Level_Number =  Given_First_Level_Number and then
                     How_Many_Second    =  How_Many_In_Second       then
                     
                     --  Read from second level intermediary set
                     --
                     -- start of unpacking structure
                     
                     declare
                        use type Root_Object.Object_List.Node_Access_Type;
                     begin
                        Struct_Domain_Types.Ops.Go_To_Start (Second_Level);
                        for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Second_Level) loop
                           Struct_Domain_Types.Ops.Extract (
                              A_Third_Nested_Structure => Third_Level,
                              A_Third_Nested_Integer   => Second_Level_Number,
                              From_Structure           => Second_Level);
                           
                           
                           How_Many_Third :=  Struct_Domain_Types.Ops.Count_Of(Third_Level);
                           
                           
                           if Second_Level_Number =  Given_Second_Level_Number and then
                              How_Many_Third      =  How_Many_In_Third         then
                              
                              --  Read from bottom level third set
                              --
                              -- start of unpacking structure
                              
                              declare
                                 use type Root_Object.Object_List.Node_Access_Type;
                              begin
                                 Struct_Domain_Types.Ops.Go_To_Start (Third_Level);
                                 for i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Third_Level) loop
                                    Struct_Domain_Types.Ops.Extract (
                                       A_Third_Nested_Integer => Third_Level_Number,
                                       A_The_Holy_Grail       => Third_Level_Colour,
                                       From_Structure         => Third_Level);
                                    
                                    
                                    if Third_Level_Number =  Given_Third_Level_Number and then
                                       Third_Level_Colour =  Given_Third_Level_Colour then
                                       
                                       Test_Has_Passed := True;
                                       Failure_Code    := 0;
                                       
                                    else
                                       
                                       Test_Has_Passed  := False;
                                       Failure_Has_Code := -5;
                                       
                                    end if;
                                    
                                 end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Third_Level) loop
                                 
                              end;
                              -- end of unpacking structure
                              --
                              
                           else
                              
                              Test_Has_Passed := False;
                              Failure_Code    := -4;
                           end if;
                           
                        end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Second_Level) loop
                        
                     end;
                     -- end of unpacking structure
                     --
                     
                  else
                     Test_Has_Passed := False;
                     Failure_Code    := -3;
                  end if;
                  
               end loop; -- end of i in 1 .. Struct_Domain_Types.Ops.Count_Of (In_Structure => Three_Level_Nest) loop
               
            end;
            -- end of unpacking structure
            --
            
         else
            Failure_Code := -2;
            Test_Has_Passed := False;
            
         end if;
         
      end if;
      
      
      if Test_Has_Passed then
         
         Struct_RPT2_Test_Passed_Bridge.Struct_RPT2_Test_Passed (
            Test_Object_Domain   => "Three levels of nest            ",
            Test_Number          => Test,
            Test_Value           => 0);
         
      else
         Struct_RPT3_Test_Failed_Bridge.Struct_RPT3_Test_Failed (
            Failed_Domain_Object => "Three levels of nest            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
   end Struct_Struct7_Decode_Three_Level_Nested_Structure;
   
end Struct_Struct7_Decode_Three_Level_Nested_Structure_Service;

--
-- End of file Struct_Struct7_Decode_Three_Level_Nested_Structure_Service.adb
--
