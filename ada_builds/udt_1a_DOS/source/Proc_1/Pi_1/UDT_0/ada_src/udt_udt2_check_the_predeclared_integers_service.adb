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
--* File Name:               UDT2_Check_The_Predeclared_Integers_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          As service 1, but predeclaring the local
--*                           variables rather than allowing first use to defined type.
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
with Root_Object.UDT.INT;

-- List of bridges used
with UDT_RPT3_Test_Failed_Bridge;
with UDT_RPT4_Test_Unsupported_Bridge;
with UDT_RPT2_Test_Passed_Bridge;
with UDT_RPT1_Start_Test_Bridge;

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Minimum_To_Maximum_Integer;
use type UDT_Domain_Types.Minimum_To_Minus_One_Integer;
use type UDT_Domain_Types.Subset_Minus_1_Of_Integer;
use type UDT_Domain_Types.Subset_1_Of_Integer;
use type UDT_Domain_Types.One_To_Maximum_Integer;
use type UDT_Domain_Types.Subset_Zero_Of_Integer;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_UDT2_Check_The_Predeclared_Integers_Service is
   
   procedure UDT_UDT2_Check_The_Predeclared_Integers (
      Test        : in     Application_Types.Base_Integer_Type;
      Testing_For : in     Application_Types.Base_Text_Type) is
      
      The_Object1   : Root_Object.Object_Access;
      The_Object2   : Root_Object.Object_Access;
      Result_Object : Root_Object.Object_Access;
      
      Minus_Ten           : Application_Types.Base_Integer_Type := 1;
      Minus_Max           : Application_Types.Base_Integer_Type := 1;
      Minus_One           : Application_Types.Base_Integer_Type := 1;
      Plus_One            : Application_Types.Base_Integer_Type := 1;
      Plus_Ten            : Application_Types.Base_Integer_Type := 1;
      Plus_Max            : Application_Types.Base_Integer_Type := 1;
      Big_Fat_Zero        : Application_Types.Base_Integer_Type := 1;
      Failure_Code        : Application_Types.Base_Integer_Type := 1;
      Other_Id            : Application_Types.Base_Integer_Type := 1;
      Result_ID           : Application_Types.Base_Integer_Type := 1;
      Result_Integer12    : Application_Types.Base_Integer_Type := 1;
      Result_Integer34    : Application_Types.Base_Integer_Type := 1;
      Result_Integer56    : Application_Types.Base_Integer_Type := 1;
      Result_Integer78    : Application_Types.Base_Integer_Type := 1;
      Result_Integer910   : Application_Types.Base_Integer_Type := 1;
      Result_Integer1112  : Application_Types.Base_Integer_Type := 1;
      Result_Integer612   : Application_Types.Base_Integer_Type := 1;
      Result_Integer645   : Application_Types.Base_Integer_Type := 1;
      Result_Integer678   : Application_Types.Base_Integer_Type := 1;
      Result_Integer61011 : Application_Types.Base_Integer_Type := 1;
      Result_Integer61314 : Application_Types.Base_Integer_Type := 1;
      Result_Integer61617 : Application_Types.Base_Integer_Type := 1;
      Result_Integer3     : Application_Types.Base_Integer_Type := 1;
      
      Local_Integer1   : UDT_Domain_Types.Subset_Minus_1_Of_Integer := UDT_Domain_Types.Subset_Minus_1_Of_Integer_first;
      Local_Integer2   : UDT_Domain_Types.Subset_1_Of_Integer := UDT_Domain_Types.Subset_1_Of_Integer_first;
      Local_Integer3   : UDT_Domain_Types.Subset_Minus_1_Of_Integer := UDT_Domain_Types.Subset_Minus_1_Of_Integer_first;
      Local_Integer4   : UDT_Domain_Types.Subset_Minus_1_Of_Integer := UDT_Domain_Types.Subset_Minus_1_Of_Integer_first;
      Local_Integer5   : UDT_Domain_Types.Subset_Zero_Of_Integer := UDT_Domain_Types.Subset_Zero_Of_Integer_first;
      Local_Integer6   : UDT_Domain_Types.Subset_Zero_Of_Integer := UDT_Domain_Types.Subset_Zero_Of_Integer_first;
      Local_Integer7   : UDT_Domain_Types.One_To_Maximum_Integer := UDT_Domain_Types.One_To_Maximum_Integer_first;
      Local_Integer8   : UDT_Domain_Types.One_To_Maximum_Integer := UDT_Domain_Types.One_To_Maximum_Integer_first;
      Local_Integer9   : UDT_Domain_Types.Minimum_To_Minus_One_Integer := UDT_Domain_Types.Minimum_To_Minus_One_Integer_first;
      Local_Integer10  : UDT_Domain_Types.Minimum_To_Minus_One_Integer := UDT_Domain_Types.Minimum_To_Minus_One_Integer_first;
      Local_Integer11  : UDT_Domain_Types.Minimum_To_Maximum_Integer := UDT_Domain_Types.Minimum_To_Maximum_Integer_first;
      Local_Integer12  : UDT_Domain_Types.Minimum_To_Maximum_Integer := UDT_Domain_Types.Minimum_To_Maximum_Integer_first;
      Local_Integer61  : UDT_Domain_Types.Subset_1_Of_Integer := UDT_Domain_Types.Subset_1_Of_Integer_first;
      Local_Integer62  : UDT_Domain_Types.Subset_1_Of_Integer := UDT_Domain_Types.Subset_1_Of_Integer_first;
      Local_Integer64  : UDT_Domain_Types.Subset_Minus_1_Of_Integer := UDT_Domain_Types.Subset_Minus_1_Of_Integer_first;
      Local_Integer65  : UDT_Domain_Types.Subset_Minus_1_Of_Integer := UDT_Domain_Types.Subset_Minus_1_Of_Integer_first;
      Local_Integer67  : UDT_Domain_Types.Subset_Zero_Of_Integer := UDT_Domain_Types.Subset_Zero_Of_Integer_first;
      Local_Integer68  : UDT_Domain_Types.Subset_Zero_Of_Integer := UDT_Domain_Types.Subset_Zero_Of_Integer_first;
      Local_Integer610 : UDT_Domain_Types.One_To_Maximum_Integer := UDT_Domain_Types.One_To_Maximum_Integer_first;
      Local_Integer611 : UDT_Domain_Types.One_To_Maximum_Integer := UDT_Domain_Types.One_To_Maximum_Integer_first;
      Local_Integer613 : UDT_Domain_Types.Minimum_To_Minus_One_Integer := UDT_Domain_Types.Minimum_To_Minus_One_Integer_first;
      Local_Integer614 : UDT_Domain_Types.Minimum_To_Minus_One_Integer := UDT_Domain_Types.Minimum_To_Minus_One_Integer_first;
      Local_Integer616 : UDT_Domain_Types.Minimum_To_Maximum_Integer := UDT_Domain_Types.Minimum_To_Maximum_Integer_first;
      Local_Integer617 : UDT_Domain_Types.Minimum_To_Maximum_Integer := UDT_Domain_Types.Minimum_To_Maximum_Integer_first;
      
      Test_Has_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of UDT2_Check_The_Predeclared_Integers
      
      --  type subset_1_of_integer is          integer range      1 .. 10
      --  type subset_minus_1_of_integer is    integer range    -10 .. -1
      --  type subset_zero_of_integer is       integer range    -10 .. 10
      --  type one_to_maximum_integer is       integer range      1 .. 32767
      --  type zero_to_maximum_integer is      integer range      0 .. 32767
      --  type minus_one_to_maximum_integer is integer range     -1 .. 32767
      --  type minimum_to_minus_one_integer is integer range -32768 .. -1
      --  type minimum_to_zero_integer is      integer range -32768 .. 0
      --  type minimum_to_maximum_integer is   integer range -32768 .. 32767
      -- Local_Integer1  : Subset_1_Of_Integer
      -- Local_Integer3 : Subset_Minus_1_Of_Integer
      -- Local_Integer5  : Subset_Zero_Of_Integer
      -- Local_Integer7 : One_To_Maximum_Integer
      -- Local_Integer9  : Minimum_To_Minus_One_Integer
      -- Local_Integer11  : Minimum_To_Maximum_Integer
      
      UDT_RPT1_Start_Test_Bridge.UDT_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "User Defined Types              ",
         Invoking_Object => "Predeclared Integer assignment  ",
         Purpose         => Testing_For);
      
      
      --  Set up some negative numbers. I-SIM doesn't like assigning a magic 
      --  negative number to an attribute. 
      --  These are defined by I-SIM as of base type.
      Minus_Ten       := -10;
      Minus_Max       := -32768;
      Minus_One       := -1;
      Plus_One        := 1;
      Plus_Ten        := 10;
      Plus_Max        := 32767;
      Big_Fat_Zero    := 0;
      Test_Has_Passed := False;
      Failure_Code    := Big_Fat_Zero;
      
      
      -- --------------------------------------------------------------------------
      --  Test 15
      -- --------------------------------------------------------------------------
      
      if Test =  15 then
         
         --  This test shall prove that I_SIM allows root data types to be used for
         --  User Defined Types, and in fact totally ignores data typing.
         --  Also note that the local data objects are UDT type, and reused by each
         --  assingment. This will cause problems for WACA as first use for a local
         --  object should defined it as being the same type as the attribute that
         --  is being copied into it. Subsequent copies should cause grief.
         --  This test has been modified to use unique local data and results identifiers.
         --  Non-unique data (ie. reused local objects) has been shown to cause a constraint 
         --  error exception to be generated in ADA. This is not a surprise.
         
         Other_Id  := Test + 1;
         Result_ID := Other_Id + 1;
         
         
         The_Object1 := Root_Object.UDT.INT.Create;
         Root_Object.UDT.INT.UDT_INT_Type(The_Object1.all).Unique_Identifier := Test;
         
         
         The_Object2 := Root_Object.UDT.INT.Create;
         Root_Object.UDT.INT.UDT_INT_Type(The_Object2.all).Unique_Identifier := Other_Id;
         
         
         Result_Object := Root_Object.UDT.INT.Create;
         Root_Object.UDT.INT.UDT_INT_Type(Result_Object.all).Unique_Identifier := Other_Id;
         
         
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).First_Integer  := Plus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Second_Integer := Minus_Ten;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Third_Integer  := Minus_Ten;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Fourth_Integer := Plus_Max;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Fifth_Integer  := Minus_Max;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Sixth_Integer  := Minus_Max;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).First_Integer  := Plus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Second_Integer := Minus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Third_Integer  := Minus_Ten;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Fourth_Integer := Plus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Fifth_Integer  := Minus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Sixth_Integer  := Plus_Max;
         
         
         --  1 + 1 in range 1..10 result 2 in range
         
         Local_Integer1   := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Second_Integer;
         Local_Integer2   := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).First_Integer;
         Result_Integer12 := Local_Integer1 + Local_Integer2;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).First_Integer := Result_Integer12;
         
         
         --  -10 - -1 in range -10 .. -1 result -9 inside range
         
         Local_Integer3   := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Second_Integer;
         Local_Integer4   := Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Second_Integer;
         Result_Integer34 := Local_Integer3 - Local_Integer4;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Second_Integer := Result_Integer34;
         
         
         --  -10 - -10 in range -10 .. 10 result 0 inside range
         
         Local_Integer5   := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Third_Integer;
         Local_Integer6   := Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Third_Integer;
         Result_Integer56 := Local_Integer5 - Local_Integer6;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Third_Integer := Result_Integer56;
         
         
         --  32767 - 1 in range 1..32767 result 32766 inside range
         
         Local_Integer7   := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Fourth_Integer;
         Local_Integer8   := Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Fourth_Integer;
         Result_Integer78 := Local_Integer7 - Local_Integer8;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Fourth_Integer := Result_Integer78;
         
         
         --  -32768 - -1 in range -32768 .. -1 result -32767 inside range
         
         Local_Integer9    := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Fifth_Integer;
         Local_Integer10   := Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Fifth_Integer;
         Result_Integer910 := Local_Integer9 - Local_Integer10;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Fifth_Integer := Result_Integer910;
         
         
         --  -32768 + 32767 in range -32768 .. 32767 result -1 inside range
         
         Local_Integer11    := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Sixth_Integer;
         Local_Integer12    := Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Sixth_Integer;
         Result_Integer1112 := Local_Integer11 + Local_Integer12;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Sixth_Integer := Result_Integer1112;
         
         
         --  Non unique binary operands
         
         if Result_Integer12   =  Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).First_Integer and then
            Result_Integer34   =  Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Second_Integer and then
            Result_Integer56   =  Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Third_Integer and then
            Result_Integer78   =  Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Fourth_Integer and then
            Result_Integer910  =  Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Fifth_Integer and then
            Result_Integer1112 =  Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Sixth_Integer then
            
            Test_Has_Passed := True;
            
         else
            
            Failure_Code := -1;
            
         end if;
         
         
         Root_Object.UDT.INT.Delete (
            Old_Instance => The_Object1);
         
         Root_Object.UDT.INT.Delete (
            Old_Instance => The_Object2);
      end if;
      
      
      --  End Test 15
      -- --------------------------------------------------------------------------
      --  Test 16
      -- --------------------------------------------------------------------------
      
      if Test =  16 then
         
         --  This test proves that individual local data objects must be used for different data
         --  types.
         --  This test is the same as test 5, with one important difference. The local
         --  data objects are not reused, thus first use should specify them as 
         --  of the attribute's type, and no conflict should arise.
         
         Other_Id := Test + 1;
         Result_ID := Other_Id + 1;
         
         
         The_Object1 := Root_Object.UDT.INT.Create;
         Root_Object.UDT.INT.UDT_INT_Type(The_Object1.all).Unique_Identifier := Test;
         
         
         The_Object2 := Root_Object.UDT.INT.Create;
         Root_Object.UDT.INT.UDT_INT_Type(The_Object2.all).Unique_Identifier := Other_Id;
         
         
         Result_Object := Root_Object.UDT.INT.Create;
         Root_Object.UDT.INT.UDT_INT_Type(Result_Object.all).Unique_Identifier := Other_Id;
         
         
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).First_Integer  := Plus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Second_Integer := Minus_Ten;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Third_Integer  := Minus_Ten;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Fourth_Integer := Plus_Max;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Fifth_Integer  := Minus_Max;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Sixth_Integer  := Minus_Max;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).First_Integer  := Plus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Second_Integer := Minus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Third_Integer  := Minus_Ten;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Fourth_Integer := Plus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Fifth_Integer  := Minus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Sixth_Integer  := Plus_Max;
         
         
         --  1 + 1 in range 1..10 result 2 in range
         
         Local_Integer61   := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).First_Integer;
         Local_Integer62   := Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).First_Integer;
         Result_Integer612 := Local_Integer61 + Local_Integer62;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).First_Integer := Result_Integer612;
         
         
         --  -10 - -1 in range -10 .. -1 result -9 inside range
         
         Local_Integer64   := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Second_Integer;
         Local_Integer65   := Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Second_Integer;
         Result_Integer645 := Local_Integer64 - Local_Integer65;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Second_Integer := Result_Integer645;
         
         
         --  -10 - -10 in range -10 .. 10 result 0 inside range
         
         Local_Integer67   := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Third_Integer;
         Local_Integer68   := Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Third_Integer;
         Result_Integer678 := Local_Integer67 - Local_Integer68;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Third_Integer := Result_Integer678;
         
         
         --  32767 - 1 in range 1..32767 result 32766 inside range
         
         Local_Integer610    := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Fourth_Integer;
         Local_Integer611    := Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Fourth_Integer;
         Result_Integer61011 := Local_Integer610 - Local_Integer611;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Fourth_Integer := Result_Integer61011;
         
         
         --  -32768 - -1 in range -32768 .. -1 result -32767 inside range
         
         Local_Integer613    := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Fifth_Integer;
         Local_Integer614    := Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Fifth_Integer;
         Result_Integer61314 := Local_Integer613 - Local_Integer614;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Fifth_Integer := Result_Integer61314;
         
         
         --  -32768 + 32767 in range -32768 .. 32767 result -1 inside range
         
         Local_Integer616    := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Sixth_Integer;
         Local_Integer617    := Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Sixth_Integer;
         Result_Integer61617 := Local_Integer616 + Local_Integer617;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Sixth_Integer := Result_Integer61617;
         
         
         --  Unique result_integer's and binary operands
         
         if Result_Integer612   =  Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).First_Integer and then
            Result_Integer645   =  Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Second_Integer and then
            Result_Integer678   =  Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Third_Integer and then
            Result_Integer61011 =  Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Fourth_Integer and then
            Result_Integer61314 =  Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Fifth_Integer and then
            Result_Integer61617 =  Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Sixth_Integer then
            
            Test_Has_Passed := True;
            
         else
            
            Failure_Code := -1;
            
         end if;
         
         
         Root_Object.UDT.INT.Delete (
            Old_Instance => The_Object1);
         
         Root_Object.UDT.INT.Delete (
            Old_Instance => The_Object2);
      end if;
      
      
      --  End Test 16
      -- --------------------------------------------------------------------------
      --  Test 17
      -- --------------------------------------------------------------------------
      
      if Test =  17 then
         
         --  This test proves that individual local data objects must be used for different data
         --  types.
         --  Add max values to minimum values.
         --  This test shall cause some attributes to go out of range on assignment
         --  to the results object attributes.
         --  Ada will raise a constraint error under these conditions.
         --  It highlights an important distinction between I-SIM and WACA. 
         --  UDT ARE TOTALLY UNSUPPORTED IN I-SIM, and trying to test for them here
         --  will give erroneous results.
         --  ADA will not allow this test to procede without exceptions being generated. Therefore
         --  these tests have been commented out for the moment.
         
         Other_Id := Test + 1;
         Result_ID := Other_Id + 1;
         
         
         The_Object1 := Root_Object.UDT.INT.Create;
         Root_Object.UDT.INT.UDT_INT_Type(The_Object1.all).Unique_Identifier := Test;
         
         
         The_Object2 := Root_Object.UDT.INT.Create;
         Root_Object.UDT.INT.UDT_INT_Type(The_Object2.all).Unique_Identifier := Other_Id;
         
         
         Result_Object := Root_Object.UDT.INT.Create;
         Root_Object.UDT.INT.UDT_INT_Type(Result_Object.all).Unique_Identifier := Other_Id;
         
         
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).First_Integer  := Minus_Ten;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Second_Integer := Minus_Ten;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Third_Integer  := Minus_Ten;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Fourth_Integer := Plus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Fifth_Integer  := Minus_Max;
         Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).Sixth_Integer  := Minus_Max;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).First_Integer  := Plus_Ten;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Second_Integer := Minus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Third_Integer  := Plus_Ten;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Fourth_Integer := Plus_Max;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Fifth_Integer  := Minus_One;
         Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).Sixth_Integer  := Plus_Max;
         
         
         --  REUSE local_integer5 predeclared as subset_zero_of_integer and assign an attribute of
         --  The_Object_1.First_Integer (which is of type Subset_1_Of_Integer)
         --  and local_integer_2 defined from first use as Subset_1_Of_Integer
         --  Adding the two should make Result_Integer_3 of type subset_zero_of_integer
         --  Assignment of The_Object1.First_Integer to Local_Integer5 should cause the Code Gen 
         --  to issue a warning.
         --  -10 + 10 in range -10 .. 10 result 0 inside range
         
         Local_Integer5  := Root_Object.UDT.INT.UDT_INT_type(The_Object1.all).First_Integer;
         Local_Integer2  := Root_Object.UDT.INT.UDT_INT_type(The_Object2.all).First_Integer;
         Result_Integer3 := Local_Integer5 + Local_Integer2;
         
         
         Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).First_Integer := Result_Integer3;
         
         
         if Result_Integer3 =  Big_Fat_Zero then
            
            Test_Has_Passed := True;
         else
            Test_Has_Passed := False;
            Failure_Code    := Result_Integer3;
            
         end if;
         
         
         Root_Object.UDT.INT.Delete (
            Old_Instance => The_Object1);
         
         Root_Object.UDT.INT.Delete (
            Old_Instance => The_Object2);
      end if;
      
      
      --  End Test 17
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
            
            --  This should cause problems for WACA, as the results attributes
            --  are all of different types.
            
            UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
               Test_Object_Domain => Testing_For,
               Test_Number        => Test,
               Test_Value         => Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).First_Integer);
            
            UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
               Test_Object_Domain => Testing_For,
               Test_Number        => Test,
               Test_Value         => Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Second_Integer);
            
            UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
               Test_Object_Domain => Testing_For,
               Test_Number        => Test,
               Test_Value         => Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Third_Integer);
            
            UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
               Test_Object_Domain => Testing_For,
               Test_Number        => Test,
               Test_Value         => Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Fourth_Integer);
            
            UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
               Test_Object_Domain => Testing_For,
               Test_Number        => Test,
               Test_Value         => Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Fifth_Integer);
            
            UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
               Test_Object_Domain => Testing_For,
               Test_Number        => Test,
               Test_Value         => Root_Object.UDT.INT.UDT_INT_type(Result_Object.all).Sixth_Integer);
            
         end if;
         
      else
         
         if Failure_Code =  Big_Fat_Zero then
            
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
         
         Root_Object.UDT.INT.Delete (
            Old_Instance => Result_Object);
      end if;
      
      
   end UDT_UDT2_Check_The_Predeclared_Integers;
   
end UDT_UDT2_Check_The_Predeclared_Integers_Service;

--
-- End of file UDT_UDT2_Check_The_Predeclared_Integers_Service.adb
--
