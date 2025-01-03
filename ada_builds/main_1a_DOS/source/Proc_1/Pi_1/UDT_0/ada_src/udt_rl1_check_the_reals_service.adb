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
--* File Name:               UDT_RL1_Check_The_Reals_Service.adb
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
--* Domain Name              : User_Defined_Types
--* Domain Key Letter        : UDT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.UDT.RL;

-- List of bridges used
with UDT_RPT3_Test_Failed_Bridge;
with UDT_RPT4_Test_Unsupported_Bridge;
with UDT_RPT8_Test_Real_Passed_Bridge;
with UDT_RPT2_Test_Passed_Bridge;
with UDT_RPT1_Start_Test_Bridge;

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Minimum_To_Maximum_Of_Real;
use type UDT_Domain_Types.Minimum_To_Minus_One_Of_Real;
use type UDT_Domain_Types.One_To_Maximum_Of_Real;
use type UDT_Domain_Types.Subset_Zero_Of_Real;
use type UDT_Domain_Types.Subset_Minus_1_Of_Real;
use type UDT_Domain_Types.Subset_1_Of_Real;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_RL1_Check_The_Reals_Service is
   
   procedure UDT_RL1_Check_The_Reals (
      Test        : in     Application_Types.Base_Integer_Type;
      Testing_For : in     Application_Types.Base_Text_Type;
      The_Requid  : in     Application_Types.Base_Text_Type) is
      
      The_Object    : Root_Object.Object_Access;
      The_Object1   : Root_Object.Object_Access;
      The_Object2   : Root_Object.Object_Access;
      Result_Object : Root_Object.Object_Access;
      
      Minus_Ten         : Application_Types.Base_Float_Type := 1.0;
      Minus_Max         : Application_Types.Base_Float_Type := 1.0;
      Minus_One         : Application_Types.Base_Float_Type := 1.0;
      Plus_One          : Application_Types.Base_Float_Type := 1.0;
      Plus_Ten          : Application_Types.Base_Float_Type := 1.0;
      Plus_Max          : Application_Types.Base_Float_Type := 1.0;
      Big_Fat_Real_Zero : Application_Types.Base_Float_Type := 1.0;
      Result_Real3      : Application_Types.Base_Float_Type := 1.0;
      Result_Real6      : Application_Types.Base_Float_Type := 1.0;
      Result_Real9      : Application_Types.Base_Float_Type := 1.0;
      Result_Real12     : Application_Types.Base_Float_Type := 1.0;
      Result_Real15     : Application_Types.Base_Float_Type := 1.0;
      Result_Real18     : Application_Types.Base_Float_Type := 1.0;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      Other_Id     : Application_Types.Base_Integer_Type := 1;
      Result_ID    : Application_Types.Base_Integer_Type := 1;
      
      Local_Real1  : UDT_Domain_Types.Subset_1_Of_Real := UDT_Domain_Types.Subset_1_Of_Real_first;
      Local_Real2  : UDT_Domain_Types.Subset_1_Of_Real := UDT_Domain_Types.Subset_1_Of_Real_first;
      Local_Real4  : UDT_Domain_Types.Subset_Minus_1_Of_Real := UDT_Domain_Types.Subset_Minus_1_Of_Real_first;
      Local_Real5  : UDT_Domain_Types.Subset_Minus_1_Of_Real := UDT_Domain_Types.Subset_Minus_1_Of_Real_first;
      Local_Real7  : UDT_Domain_Types.Subset_Zero_Of_Real := UDT_Domain_Types.Subset_Zero_Of_Real_first;
      Local_Real8  : UDT_Domain_Types.Subset_Zero_Of_Real := UDT_Domain_Types.Subset_Zero_Of_Real_first;
      Local_Real10 : UDT_Domain_Types.One_To_Maximum_Of_Real := UDT_Domain_Types.One_To_Maximum_Of_Real_first;
      Local_Real11 : UDT_Domain_Types.One_To_Maximum_Of_Real := UDT_Domain_Types.One_To_Maximum_Of_Real_first;
      Local_Real13 : UDT_Domain_Types.Minimum_To_Minus_One_Of_Real := UDT_Domain_Types.Minimum_To_Minus_One_Of_Real_first;
      Local_Real14 : UDT_Domain_Types.Minimum_To_Minus_One_Of_Real := UDT_Domain_Types.Minimum_To_Minus_One_Of_Real_first;
      Local_Real16 : UDT_Domain_Types.Minimum_To_Maximum_Of_Real := UDT_Domain_Types.Minimum_To_Maximum_Of_Real_first;
      Local_Real17 : UDT_Domain_Types.Minimum_To_Maximum_Of_Real := UDT_Domain_Types.Minimum_To_Maximum_Of_Real_first;
      
      Test_Has_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of RL1_Check_The_Reals
      
      --  type subset_1_of_real is          real range      1.0.. 10.0
      --  type subset_minus_1_of_real is    real range    -10.0 .. -1.0
      --  type subset_zero_of_real is       real range    -10.0 .. 10.0
      --  type one_to_maximum_real is       real range      1.0 .. 32767.0
      --  type zero_to_maximum_real is      real range      0.0 .. 32767.0
      --  type minus_one_to_maximum_real is real range     -1.0 .. 32767.0
      --  type minimum_to_minus_one_real is real range -32768.0 .. -1.0
      --  type minimum_to_zero_real is      real range -32768.0 .. 0.0
      --  type minimum_to_maximum_real is   real range -32768.0 .. 32767.0
      -- First_Real  is Subset_1_of_Real
      -- Second_Real is Subset_minus_1_Of_Real
      -- Third_Real  is Subset_Zero_of_Real
      -- Fourth_Real is one_to_maximum_real
      -- Fifth_Real  is minimum_to_minus_one_real
      -- Sixth_Real  is minimum_to_maximum_real
      
      UDT_RPT1_Start_Test_Bridge.UDT_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => The_Requid,
         Invoking_Domain => "User Defined Types              ",
         Invoking_Object => "Real assignment                 ",
         Purpose         => Testing_For);
      
      
      --  Set up some negative numbers. I-SIM doesn't like assigning a magic 
      --  negative number to an attribute. 
      --  These are defined by I-SIM as of base type.
      Minus_Ten         := -10.0;
      Minus_Max         := -32768.0;
      Minus_One         := -1.0;
      Plus_One          := 1.0;
      Plus_Ten          := 10.0;
      Plus_Max          := 32767.0;
      Big_Fat_Real_Zero := 0.0;
      Test_Has_Passed   := False;
      Failure_Code      := 0;
      
      
      -- --------------------------------------------------------------------------
      --  Test 8
      -- --------------------------------------------------------------------------
      
      if Test =  8 then
         
         --  This test shall prove that assignment using magic numbers is 
         --  handled correctly. 
         --  Note that these magic numbers are base type, and assinging them to 
         --  an attribute of UDT is what we are really looking at here.
         
         The_Object := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(The_Object.all).Unique_Identifier := Test;
         
         
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).First_Real  := 1.0;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Second_Real := Minus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Third_Real  := 10.0;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fourth_Real := 1.0;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fifth_Real  := Minus_Max;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Sixth_Real  := 0.0;
         
         
         if Root_Object.UDT.RL.UDT_RL_type(The_Object.all).First_Real =  Plus_One then
            
            if Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Second_Real =  Minus_Ten then
               
               if Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Third_Real =  Plus_Ten then
                  
                  if Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fourth_Real =  Plus_One then
                     
                     if Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fifth_Real =  Minus_Max then
                        
                        if Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Sixth_Real =  Big_Fat_Real_Zero then
                           
                           Test_Has_Passed := True;
                           
                        else
                           
                           Failure_Code := (-6);
                        end if;
                        
                     else
                        Failure_Code := (-5);
                     end if;
                     
                  else
                     Failure_Code := (-4);
                  end if;
                  
               else
                  Failure_Code := (-3);
               end if;
               
            else
               Failure_Code := (-2);
            end if;
            
         else
            Failure_Code := (-1);
            
         end if;
         
         
         Root_Object.UDT.RL.Delete (
            Old_Instance => The_Object);
      end if;
      
      
      --  End Test 8
      -- --------------------------------------------------------------------------
      --  Test 9
      -- --------------------------------------------------------------------------
      
      if Test =  9 then
         
         --  This test shall prove that assignment using data objects is 
         --  handled correctly. 
         --  Note that these data objects are base type, and assinging them to 
         --  an attribute of UDT is what we are really looking at here.
         
         The_Object := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(The_Object.all).Unique_Identifier := Test;
         
         
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).First_Real := Plus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Second_Real := Minus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Third_Real  := Plus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fourth_Real := Plus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fifth_Real  := Minus_Max;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Sixth_Real  := Big_Fat_Real_Zero;
         
         
         if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).First_Real =  Plus_One) then
            
            if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Second_Real =  Minus_Ten) then
               
               if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Third_Real =  Plus_Ten) then
                  
                  if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fourth_Real =  Plus_One) then
                     
                     if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fifth_Real =  Minus_Max) then
                        
                        if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Sixth_Real =  Big_Fat_Real_Zero) then
                           
                           Test_Has_Passed := True;
                           
                        else
                           
                           Failure_Code := (-6);
                        end if;
                        
                     else
                        Failure_Code := (-5);
                     end if;
                     
                  else
                     Failure_Code := (-4);
                  end if;
                  
               else
                  Failure_Code := (-3);
               end if;
               
            else
               Failure_Code := (-2);
            end if;
            
         else
            Failure_Code := (-1);
            
         end if;
         
         
         Root_Object.UDT.RL.Delete (
            Old_Instance => The_Object);
      end if;
      
      
      --  End Test 9
      -- --------------------------------------------------------------------------
      --  Test 10
      -- --------------------------------------------------------------------------
      
      if Test =  10 then
         
         --  This test shall prove that assignment using data objects is 
         --  handled correctly.  Values set to minimum allowable for range.
         
         The_Object := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(The_Object.all).Unique_Identifier := Test;
         
         
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).First_Real := Plus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Second_Real := Minus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Third_Real  := Plus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fourth_Real := Plus_Max;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fifth_Real  := Minus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Sixth_Real  := Plus_Max;
         
         
         if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).First_Real =  Plus_Ten) then
            
            if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Second_Real =  Minus_One) then
               
               if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Third_Real =  Plus_Ten) then
                  
                  if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fourth_Real =  Plus_Max) then
                     
                     if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fifth_Real =  Minus_One) then
                        
                        if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Sixth_Real =  Plus_Max) then
                           
                           Test_Has_Passed := True;
                           
                        else
                           
                           Failure_Code := (-6);
                        end if;
                        
                     else
                        Failure_Code := (-5);
                     end if;
                     
                  else
                     Failure_Code := (-4);
                  end if;
                  
               else
                  Failure_Code := (-3);
               end if;
               
            else
               Failure_Code := (-2);
            end if;
            
         else
            Failure_Code := (-1);
            
         end if;
         
         
         Root_Object.UDT.RL.Delete (
            Old_Instance => The_Object);
      end if;
      
      
      --  End Test 10
      -- --------------------------------------------------------------------------
      --  Test 11
      -- --------------------------------------------------------------------------
      
      if Test =  11 then
         
         --  This test shall prove that assignment using data objects is 
         --  handled correctly.  Values set to maximum allowable for range.
         
         The_Object := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(The_Object.all).Unique_Identifier := Test;
         
         
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).First_Real := Plus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Second_Real := Minus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Third_Real  := Minus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fourth_Real := Plus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fifth_Real  := Minus_Max;
         Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Sixth_Real  := Minus_Max;
         
         
         if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).First_Real =  Plus_One) then
            
            if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Second_Real =  Minus_Ten) then
               
               if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Third_Real =  Minus_Ten) then
                  
                  if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fourth_Real =  Plus_One) then
                     
                     if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Fifth_Real =  Minus_Max) then
                        
                        if (Root_Object.UDT.RL.UDT_RL_type(The_Object.all).Sixth_Real =  Minus_Max) then
                           
                           Test_Has_Passed := True;
                           
                        else
                           
                           Failure_Code := (-6);
                        end if;
                        
                     else
                        Failure_Code := (-5);
                     end if;
                     
                  else
                     Failure_Code := (-4);
                  end if;
                  
               else
                  Failure_Code := (-3);
               end if;
               
            else
               Failure_Code := (-2);
            end if;
            
         else
            Failure_Code := (-1);
            
         end if;
         
         
         Root_Object.UDT.RL.Delete (
            Old_Instance => The_Object);
      end if;
      
      
      --  End Test 11
      -- --------------------------------------------------------------------------
      --  Test 12
      -- --------------------------------------------------------------------------
      
      if Test =  12 then
         
         --  This test shall prove that I_SIM allows root data types to be used for
         --  User Defined Types, and in fact totally ignores data typing.
         --  Also note that the local data objects are UDT type, and reused by each
         --  assingment. This will cause problems for WACA as first use for a local
         --  object should defined it as being the same type as the attribute that
         --  is being copied into it. Subsequent copies should cause grief.
         
         Other_Id := Test + 1;
         Result_ID := Other_Id + 1;
         
         
         The_Object1 := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(The_Object1.all).Unique_Identifier := Test;
         
         
         The_Object2 := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(The_Object2.all).Unique_Identifier := Other_Id;
         
         
         Result_Object := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(Result_Object.all).Unique_Identifier := Other_Id;
         
         
         Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).First_Real  := Plus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Second_Real := Minus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Third_Real  := Minus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Fourth_Real := Plus_Max;
         Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Fifth_Real  := Minus_Max;
         Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Sixth_Real  := Minus_Max;
         Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).First_Real  := Plus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Second_Real := Minus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Third_Real  := Minus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Fourth_Real := Plus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Fifth_Real  := Minus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Sixth_Real  := Plus_Max;
         
         
         --  1.0 + 1.0 in range 1.0..10.0 result 2.0 inside range
         
         Local_Real1  := Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).First_Real;
         Local_Real2  := Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).First_Real;
         Result_Real3 := Local_Real1 + Local_Real2;
         
         
         Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).First_Real := Result_Real3;
         
         
         --  -10.0 - -1.0 in range -10.0 .. -1.0 result = -9.0 inside of range
         
         Local_Real4  := Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Second_Real;
         Local_Real5  := Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Second_Real;
         Result_Real6 := Local_Real4 - Local_Real5;
         
         
         Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Second_Real := Result_Real6;
         
         
         --  -10.0 - -10.0 in range -10.0 .. +10.0 result = 0.0 inside range
         
         Local_Real7  := Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Third_Real;
         Local_Real8  := Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Third_Real;
         Result_Real9 := Local_Real7 - Local_Real8;
         
         
         Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Third_Real := Result_Real9;
         
         
         --  32767.0 - 1.0 in range 1.0 .. 32767.0 result 32766.0 inside of range
         
         Local_Real10  := Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Fourth_Real;
         Local_Real11  := Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Fourth_Real;
         Result_Real12 := Local_Real10 - Local_Real11;
         
         
         Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Fourth_Real := Result_Real12;
         
         
         --  -32768.0 - -1.0 in range -32768.0 .. -1.0 result -32767.0 inside of range
         
         Local_Real13  := Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Fifth_Real;
         Local_Real14  := Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Fifth_Real;
         Result_Real15 := Local_Real13 - Local_Real14;
         
         
         Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Fifth_Real := Result_Real15;
         
         
         --  -32768.0 + 32767.0 in range -32768.0 .. 32767.0 result -1.0 inside range
         
         Local_Real16  := Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Sixth_Real;
         Local_Real17  := Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Sixth_Real;
         Result_Real18 := Local_Real16 + Local_Real17;
         
         
         Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Sixth_Real := Result_Real18;
         
         
         --  Non unique binary operands
         
         if Result_Real3  =  Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).First_Real and then
            Result_Real6  =  Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Second_Real and then
            Result_Real9  =  Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Third_Real and then
            Result_Real12 =  Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Fourth_Real and then
            Result_Real15 =  Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Fifth_Real and then
            Result_Real18 =  Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Sixth_Real then
            
            Test_Has_Passed := True;
            
         else
            
            Failure_Code := -1;
            
         end if;
         
         
         Root_Object.UDT.RL.Delete (
            Old_Instance => The_Object1);
         
         Root_Object.UDT.RL.Delete (
            Old_Instance => The_Object2);
      end if;
      
      
      --  End Test 12
      -- --------------------------------------------------------------------------
      --  Test 13
      -- --------------------------------------------------------------------------
      
      if Test =  13 then
         
         --  This test proves that individual local data objects must be used for different data
         --  types.
         --  This test is the same as test 12, with one important difference. The local
         --  data objects are not reused, thus first use should specify them as 
         --  of the attribute's type, and no conflict should arise.
         
         Other_Id := Test + 1;
         Result_ID := Other_Id + 1;
         
         
         The_Object1 := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(The_Object1.all).Unique_Identifier := Test;
         
         
         The_Object2 := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(The_Object2.all).Unique_Identifier := Other_Id;
         
         
         Result_Object := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(Result_Object.all).Unique_Identifier := Other_Id;
         
         
         Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).First_Real  := Plus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Second_Real := Minus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Third_Real  := Minus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Fourth_Real := Plus_Max;
         Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Fifth_Real  := Minus_Max;
         Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Sixth_Real  := Minus_Max;
         Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).First_Real  := Plus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Second_Real := Minus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Third_Real  := Minus_Ten;
         Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Fourth_Real := Plus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Fifth_Real  := Minus_One;
         Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Sixth_Real  := Plus_Max;
         
         
         --  1.0 + 1.0 in range 1.0..10.0 result 2.0 inside range
         
         Local_Real1  := Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).First_Real;
         Local_Real2  := Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).First_Real;
         Result_Real3 := Local_Real1 + Local_Real2;
         
         
         Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).First_Real := Result_Real3;
         
         
         --  -10.0 - -1.0 in range -10.0 .. -1.0 result = -9.0 inside of range
         
         Local_Real4  := Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Second_Real;
         Local_Real5  := Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Second_Real;
         Result_Real6 := Local_Real4 - Local_Real5;
         
         
         Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Second_Real := Result_Real6;
         
         
         --  -10.0 - -10.0 in range -10.0 .. +10.0 result = 0.0 inside range
         
         Local_Real7  := Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Third_Real;
         Local_Real8  := Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Third_Real;
         Result_Real9 := Local_Real7 - Local_Real8;
         
         
         Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Third_Real := Result_Real9;
         
         
         --  32767.0 - 1.0 in range 1.0 .. 32767.0 result 32766.0 inside of range
         
         Local_Real10  := Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Fourth_Real;
         Local_Real11  := Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Fourth_Real;
         Result_Real12 := Local_Real10 - Local_Real11;
         
         
         Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Fourth_Real := Result_Real12;
         
         
         --  -32768.0 - -1.0 in range -32768.0 .. -1.0 result -32767.0 inside of range
         
         Local_Real13  := Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Fifth_Real;
         Local_Real14  := Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Fifth_Real;
         Result_Real15 := Local_Real13 - Local_Real14;
         
         
         Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Fifth_Real := Result_Real15;
         
         
         --  -32768.0 + 32767.0 in range -32768.0 .. 32767.0 result -1.0 inside range
         
         Local_Real16  := Root_Object.UDT.RL.UDT_RL_type(The_Object1.all).Sixth_Real;
         Local_Real17  := Root_Object.UDT.RL.UDT_RL_type(The_Object2.all).Sixth_Real;
         Result_Real18 := Local_Real16 + Local_Real17;
         
         
         Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Sixth_Real := Result_Real18;
         
         
         --  Unique result_real's and binary operands
         
         if Result_Real3  =  Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).First_Real and then
            Result_Real6  =  Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Second_Real and then
            Result_Real9  =  Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Third_Real and then
            Result_Real12 =  Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Fourth_Real and then
            Result_Real15 =  Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Fifth_Real and then
            Result_Real18 =  Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Sixth_Real then
            
            Test_Has_Passed := True;
            
         else
            
            Failure_Code := -1;
            
         end if;
         
         
         Root_Object.UDT.RL.Delete (
            Old_Instance => The_Object1);
         
         Root_Object.UDT.RL.Delete (
            Old_Instance => The_Object2);
      end if;
      
      
      --  End Test 13
      -- --------------------------------------------------------------------------
      --  Test 14
      -- --------------------------------------------------------------------------
      
      if Test =  14 then
         
         --  This test proves that individual local data objects must be used for different data
         --  types.
         --  Add max values to minimum values.
         --  This test shall cause some attributes to go out of range on assignment
         --  to the results object attributes.
         --  It is unclear what is to happen about this. 
         --  It highlights an important distinction between I-SIM and WACA. 
         --  UDT's ARE TOTALLY UNSUPPORTED IN I-SIM, and trying to test for them here
         --  will give erroneous results.
         
         Other_Id := Test + 1;
         Result_ID := Other_Id + 1;
         
         
         The_Object1 := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(The_Object1.all).Unique_Identifier := Test;
         
         
         The_Object2 := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(The_Object2.all).Unique_Identifier := Other_Id;
         
         
         Result_Object := Root_Object.UDT.RL.Create;
         Root_Object.UDT.RL.UDT_RL_Type(Result_Object.all).Unique_Identifier := Other_Id;
         
         
         --    The_Object1.First_Real  = Plus_One
         --    The_Object1.Second_Real = Minus_Ten
         --    The_Object1.Third_Real  = Minus_Ten
         --    The_Object1.Fourth_Real = Plus_One
         --    The_Object1.Fifth_Real  = Minus_Max
         --    The_Object1.Sixth_Real  = Minus_Max
         --    The_Object2.First_Real  = Plus_Ten
         --    The_Object2.Second_Real = Plus_One
         --    The_Object2.Third_Real  = Plus_Ten
         --    The_Object2.Fourth_Real = Plus_Max
         --    The_Object2.Fifth_Real  = Minus_One
         --    The_Object2.Sixth_Real  = Plus_Max
         --  1.0 + 10.0  in range 1.0 .. 10.0 result 11.0 outside of range
         --    Local_Real1 = The_Object1.First_Real  
         --    Local_Real2 = The_Object2.First_Real
         --    Result_Real3 = Local_Real1 + Local_Real2
         --    Result_Object.First_Real  =  Result_Real3
         --  -10.0 - 1.0 in range -10.0 .. -1.0 result = -11.0 outside of range
         --    Local_Real4 = The_Object1.Second_Real  
         --    Local_Real5 = The_Object2.Second_Real
         --    Result_Real6 = Local_Real4 - Local_Real5
         --    Result_Object.Second_Real  =  Result_Real6
         --  -10.0 - 10.0 in range -10.0 .. 10.0 result  -20.0 outside of range
         --    Local_Real7 = The_Object1.Third_Real  
         --    Local_Real8 = The_Object2.Third_Real
         --    Result_Real9 = Local_Real7 - Local_Real8
         --    Result_Object.Third_Real  =  Result_Real9
         --  1.0 + 32767.0 in range 1.0 .. 32767.0 result 32768.0 outside of range
         --    Local_Real10 = The_Object1.Fourth_Real  
         --    Local_Real11 = The_Object2.Fourth_Real
         --    Result_Real12 = Local_Real10 + Local_Real11
         --    Result_Object.Fourth_Real  =  Result_Real12
         --  -32768.00 + -1.0 in range -32768.0 .. 0.0 result -32769.0 outside of range
         --    Local_Real13 = The_Object1.Fifth_Real  
         --    Local_Real14= The_Object2.Fifth_Real
         --    Result_Real15 = Local_Real13 + Local_Real14
         --    Result_Object.Fifth_Real  =  Result_Real15
         --  -32768.0 - 32767.0  in range -32768.0 .. 32767.0 result -65535.0 outside range
         --    Local_Real16 = The_Object1.Sixth_Real  
         --    Local_Real17 = The_Object2.Sixth_Real
         --    Result_Real18 = Local_Real16 - Local_Real17
         --    Result_Object.Sixth_Real  =  Result_Real18
         --  Unique result_real's and binary operands
         --    if Result_Real3  = Result_Object.First_Real  &\
         --       Result_Real6  = Result_Object.Second_Real &\
         --       Result_Real9  = Result_Object.Third_Real  &\
         --       Result_Real12 = Result_Object.Fourth_Real &\
         --       Result_Real15 = Result_Object.Fifth_Real  &\
         --       Result_Real18 = Result_Object.Sixth_Real then
         --       Test_Has_Passed = TRUE
         --    else
         --       Failure_Code = -1
         --    endif
         
         Failure_Code := 0;
         
         
         Root_Object.UDT.RL.Delete (
            Old_Instance => The_Object1);
         
         Root_Object.UDT.RL.Delete (
            Old_Instance => The_Object2);
      end if;
      
      
      --  End Test 14
      -- --------------------------------------------------------------------------
      --  Report the results.
      -- --------------------------------------------------------------------------
      
      if Test_Has_Passed then
         
         if Result_Object =  Null then
            
            UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
               Test_Object_Domain => Testing_For,
               Test_Number        => Test,
               Test_Value         => Failure_Code);
            
         else
            UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
               Test_Object_Domain => Testing_For,
               Test_Number        => Test,
               Test_Value         => Failure_Code);
            
            UDT_RPT8_Test_Real_Passed_Bridge.UDT_RPT8_Test_Real_Passed (
               Passed_Domain      => Testing_For,
               Passed_Test_Number => Test,
               Test_Result        => Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).First_Real);
            
            UDT_RPT8_Test_Real_Passed_Bridge.UDT_RPT8_Test_Real_Passed (
               Passed_Domain      => Testing_For,
               Passed_Test_Number => Test,
               Test_Result        => Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Second_Real);
            
            UDT_RPT8_Test_Real_Passed_Bridge.UDT_RPT8_Test_Real_Passed (
               Passed_Domain      => Testing_For,
               Passed_Test_Number => Test,
               Test_Result        => Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Third_Real);
            
            UDT_RPT8_Test_Real_Passed_Bridge.UDT_RPT8_Test_Real_Passed (
               Passed_Domain      => Testing_For,
               Passed_Test_Number => Test,
               Test_Result        => Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Fourth_Real);
            
            UDT_RPT8_Test_Real_Passed_Bridge.UDT_RPT8_Test_Real_Passed (
               Passed_Domain      => Testing_For,
               Passed_Test_Number => Test,
               Test_Result        => Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Fifth_Real);
            
            UDT_RPT8_Test_Real_Passed_Bridge.UDT_RPT8_Test_Real_Passed (
               Passed_Domain      => Testing_For,
               Passed_Test_Number => Test,
               Test_Result        => Root_Object.UDT.RL.UDT_RL_type(Result_Object.all).Sixth_Real);
            
         end if;
         
      else
         
         if Failure_Code =  0 then
            
            UDT_RPT4_Test_Unsupported_Bridge.UDT_RPT4_Test_Unsupported (
               Unsupported_Test_Number => Test);
            
         else
            UDT_RPT3_Test_Failed_Bridge.UDT_RPT3_Test_Failed (
               Failed_Domain_Object => Testing_For,
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Failure_Code);
            
         end if;
         
      end if;
      
      
      if Result_Object /= Null then
         
         Root_Object.UDT.RL.Delete (
            Old_Instance => Result_Object);
      end if;
      
      
   end UDT_RL1_Check_The_Reals;
   
end UDT_RL1_Check_The_Reals_Service;

--
-- End of file UDT_RL1_Check_The_Reals_Service.adb
--
