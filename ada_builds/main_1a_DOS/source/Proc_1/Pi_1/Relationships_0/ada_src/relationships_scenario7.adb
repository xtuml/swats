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
--* File Name:               Relationships_Scenario7.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Nav From Sets
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
--* Domain Name              : Relationships
--* Domain Key Letter        : Relationships
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Relationships.MRA;
with Root_Object.Relationships.MFR;
with Root_Object.Relationships.MA;
with Root_Object.Relationships.MR;
with Root_Object.Relationships.M;
with Root_Object.Relationships.FL;
with Root_Object.Relationships.TN;

-- List of relationships used
with Relationships_rel_R10;
with Relationships_rel_R8;
with Relationships_rel_R7;
with Relationships_rel_R6;

-- List of bridges used
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Relationships_Scenario7 is
   
      
      SetMFR : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMR  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetM   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMA  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test   : Root_Object.Object_Access;
      firstL    : Root_Object.Object_Access;
      secondL   : Root_Object.Object_Access;
      thirdL    : Root_Object.Object_Access;
      fourthL   : Root_Object.Object_Access;
      fifthL    : Root_Object.Object_Access;
      firstM    : Root_Object.Object_Access;
      secondM   : Root_Object.Object_Access;
      thirdM    : Root_Object.Object_Access;
      fourthM   : Root_Object.Object_Access;
      fifthM    : Root_Object.Object_Access;
      firstMR   : Root_Object.Object_Access;
      secondMR  : Root_Object.Object_Access;
      thirdMR   : Root_Object.Object_Access;
      fourthMR  : Root_Object.Object_Access;
      fifthMR   : Root_Object.Object_Access;
      firstMA   : Root_Object.Object_Access;
      secondMA  : Root_Object.Object_Access;
      thirdMA   : Root_Object.Object_Access;
      fourthMA  : Root_Object.Object_Access;
      fifthMA   : Root_Object.Object_Access;
      firstMFR  : Root_Object.Object_Access;
      secondMFR : Root_Object.Object_Access;
      thirdMFR  : Root_Object.Object_Access;
      fourthMFR : Root_Object.Object_Access;
      fifthMFR  : Root_Object.Object_Access;
      firstMRA  : Root_Object.Object_Access;
      secondMRA : Root_Object.Object_Access;
      thirdMRA  : Root_Object.Object_Access;
      fourthMRA : Root_Object.Object_Access;
      fifthMRA  : Root_Object.Object_Access;
      InstM     : Root_Object.Object_Access;
      InstMFR   : Root_Object.Object_Access;
      InstMA    : Root_Object.Object_Access;
      
      Test  : Application_Types.Base_Integer_Type := 1;
      temp  : Application_Types.Base_Integer_Type := 1;
      Total : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
      my_test := Root_Object.Relationships.TN.Unconditional_Find_One;
      Test       := Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number;
      Has_Failed := False;
      
      
      -- --------------------------------------------------------------------
      --  Create a few instances
      -- --------------------------------------------------------------------
      
      firstL := Root_Object.Relationships.FL.Create;
      Root_Object.Relationships.FL.Relationships_FL_Type(firstL.all).Left_Identifier := 1;
      Root_Object.Relationships.FL.Relationships_FL_Type(firstL.all).Left_Data       := 1;
      
      
      secondL := Root_Object.Relationships.FL.Create;
      Root_Object.Relationships.FL.Relationships_FL_Type(secondL.all).Left_Identifier := 2;
      Root_Object.Relationships.FL.Relationships_FL_Type(secondL.all).Left_Data       := 2;
      
      
      thirdL := Root_Object.Relationships.FL.Create;
      Root_Object.Relationships.FL.Relationships_FL_Type(thirdL.all).Left_Identifier := 3;
      Root_Object.Relationships.FL.Relationships_FL_Type(thirdL.all).Left_Data       := 3;
      
      
      fourthL := Root_Object.Relationships.FL.Create;
      Root_Object.Relationships.FL.Relationships_FL_Type(fourthL.all).Left_Identifier := 4;
      Root_Object.Relationships.FL.Relationships_FL_Type(fourthL.all).Left_Data       := 4;
      
      
      fifthL := Root_Object.Relationships.FL.Create;
      Root_Object.Relationships.FL.Relationships_FL_Type(fifthL.all).Left_Identifier := 5;
      Root_Object.Relationships.FL.Relationships_FL_Type(fifthL.all).Left_Data       := 5;
      
      
      firstM := Root_Object.Relationships.M.Create;
      Root_Object.Relationships.M.Relationships_M_Type(firstM.all).Middle_Identifier := 1;
      Root_Object.Relationships.M.Relationships_M_Type(firstM.all).Middle_Data       := 1;
      
      
      secondM := Root_Object.Relationships.M.Create;
      Root_Object.Relationships.M.Relationships_M_Type(secondM.all).Middle_Identifier := 2;
      Root_Object.Relationships.M.Relationships_M_Type(secondM.all).Middle_Data       := 2;
      
      
      thirdM := Root_Object.Relationships.M.Create;
      Root_Object.Relationships.M.Relationships_M_Type(thirdM.all).Middle_Identifier := 3;
      Root_Object.Relationships.M.Relationships_M_Type(thirdM.all).Middle_Data       := 3;
      
      
      fourthM := Root_Object.Relationships.M.Create;
      Root_Object.Relationships.M.Relationships_M_Type(fourthM.all).Middle_Identifier := 4;
      Root_Object.Relationships.M.Relationships_M_Type(fourthM.all).Middle_Data       := 4;
      
      
      fifthM := Root_Object.Relationships.M.Create;
      Root_Object.Relationships.M.Relationships_M_Type(fifthM.all).Middle_Identifier := 5;
      Root_Object.Relationships.M.Relationships_M_Type(fifthM.all).Middle_Data       := 5;
      
      
      firstMR := Root_Object.Relationships.MR.Create;
      Root_Object.Relationships.MR.Relationships_MR_Type(firstMR.all).Right_Identifier  := 1;
      Root_Object.Relationships.MR.Relationships_MR_Type(firstMR.all).Right_Data        := 1;
      
      
      secondMR := Root_Object.Relationships.MR.Create;
      Root_Object.Relationships.MR.Relationships_MR_Type(secondMR.all).Right_Identifier  := 2;
      Root_Object.Relationships.MR.Relationships_MR_Type(secondMR.all).Right_Data        := 2;
      
      
      thirdMR := Root_Object.Relationships.MR.Create;
      Root_Object.Relationships.MR.Relationships_MR_Type(thirdMR.all).Right_Identifier  := 3;
      Root_Object.Relationships.MR.Relationships_MR_Type(thirdMR.all).Right_Data        := 3;
      
      
      fourthMR := Root_Object.Relationships.MR.Create;
      Root_Object.Relationships.MR.Relationships_MR_Type(fourthMR.all).Right_Identifier  := 4;
      Root_Object.Relationships.MR.Relationships_MR_Type(fourthMR.all).Right_Data        := 4;
      
      
      fifthMR := Root_Object.Relationships.MR.Create;
      Root_Object.Relationships.MR.Relationships_MR_Type(fifthMR.all).Right_Identifier  := 5;
      Root_Object.Relationships.MR.Relationships_MR_Type(fifthMR.all).Right_Data        := 5;
      
      
      firstMA := Root_Object.Relationships.MA.Create;
      Root_Object.Relationships.MA.Relationships_MA_Type(firstMA.all).Above_Data := 1;
      
      
      secondMA := Root_Object.Relationships.MA.Create;
      Root_Object.Relationships.MA.Relationships_MA_Type(secondMA.all).Above_Data := 2;
      
      
      thirdMA := Root_Object.Relationships.MA.Create;
      Root_Object.Relationships.MA.Relationships_MA_Type(thirdMA.all).Above_Data := 3;
      
      
      fourthMA := Root_Object.Relationships.MA.Create;
      Root_Object.Relationships.MA.Relationships_MA_Type(fourthMA.all).Above_Data := 4;
      
      
      fifthMA := Root_Object.Relationships.MA.Create;
      Root_Object.Relationships.MA.Relationships_MA_Type(fifthMA.all).Above_Data := 5;
      
      
      firstMFR := Root_Object.Relationships.MFR.Create;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(firstMFR.all).MFR_Identifier    := 1;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(firstMFR.all).MFR_Data          := 1;
      
      
      secondMFR := Root_Object.Relationships.MFR.Create;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(secondMFR.all).MFR_Identifier    := 2;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(secondMFR.all).MFR_Data          := 2;
      
      
      thirdMFR := Root_Object.Relationships.MFR.Create;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(thirdMFR.all).MFR_Identifier    := 3;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(thirdMFR.all).MFR_Data          := 3;
      
      
      fourthMFR := Root_Object.Relationships.MFR.Create;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(fourthMFR.all).MFR_Identifier    := 4;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(fourthMFR.all).MFR_Data          := 4;
      
      
      fifthMFR := Root_Object.Relationships.MFR.Create;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(fifthMFR.all).MFR_Identifier    := 5;
      Root_Object.Relationships.MFR.Relationships_MFR_Type(fifthMFR.all).MFR_Data          := 5;
      
      
      firstMRA := Root_Object.Relationships.MRA.Create;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(firstMRA.all).MRA_Data          := 1;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(firstMRA.all).MRA_Identifier    := 1;
      
      
      secondMRA := Root_Object.Relationships.MRA.Create;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(secondMRA.all).MRA_Data          := 2;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(secondMRA.all).MRA_Identifier    := 2;
      
      
      thirdMRA := Root_Object.Relationships.MRA.Create;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(thirdMRA.all).MRA_Data          := 3;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(thirdMRA.all).MRA_Identifier    := 3;
      
      
      fourthMRA := Root_Object.Relationships.MRA.Create;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(fourthMRA.all).MRA_Data          := 4;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(fourthMRA.all).MRA_Identifier    := 4;
      
      
      fifthMRA := Root_Object.Relationships.MRA.Create;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(fifthMRA.all).MRA_Data          := 5;
      Root_Object.Relationships.MRA.Relationships_MRA_Type(fifthMRA.all).MRA_Identifier    := 5;
      
      
      -- --------------------------------------------------------------------
      --  Link
      -- --------------------------------------------------------------------
      Relationships_Rel_R6.Link (
         A_Instance => firstL,
         B_Instance => firstM);
      
      Relationships_Rel_R6.Link (
         A_Instance => secondL,
         B_Instance => thirdM);
      
      Relationships_Rel_R7.Link (
         A_Instance => firstM,
         B_Instance => firstMR);
      
      Relationships_Rel_R7.Link (
         A_Instance => firstM,
         B_Instance => thirdMR);
      
      Relationships_Rel_R7.Link (
         A_Instance => thirdM,
         B_Instance => fourthMR);
      
      Relationships_Rel_R8.Link (
         A_Instance => firstMR,
         B_Instance => firstMFR,
         Using      => firstMRA);
      
      Relationships_Rel_R8.Link (
         A_Instance => thirdMR,
         B_Instance => firstMFR,
         Using      => secondMRA);
      
      Relationships_Rel_R8.Link (
         A_Instance => thirdMR,
         B_Instance => thirdMFR,
         Using      => thirdMRA);
      
      Relationships_Rel_R8.Link (
         A_Instance => fourthMR,
         B_Instance => fourthMFR,
         Using      => fourthMRA);
      
      Relationships_Rel_R10.Link (
         A_Instance => firstMR,
         B_Instance => firstMA);
      
      Relationships_Rel_R10.Link (
         A_Instance => thirdMR,
         B_Instance => fourthMA);
      
      Relationships_Rel_R10.Link (
         A_Instance => thirdMR,
         B_Instance => fifthMA);
      
      Relationships_Rel_R10.Link (
         A_Instance => fourthMR,
         B_Instance => secondMA);
      
      
      -- --------------------------------------------------------------------
      --  Perform the navigation tests
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0101               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objE                            ",
         Purpose         => "Chained nav from set            ");
      
      
      temp  := 0;
      Total := 0;
      
      Root_Object.Object_List.Clear (
         From => SetMFR);
      
      Root_Object.Relationships.MFR.Find (
         Add_To => SetMFR);
      
      
      Root_Object.Object_List.Clear (
         From => SetMR);
      
      
      Relationships_Rel_R8.Navigate (
         From  => SetMFR,
         Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
         To    => SetMR);
      
      declare
         Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
      begin
         Temporary_Set := Root_Object.Object_List.Initialise;
         
         
         Relationships_Rel_R8.Navigate (
            From  => SetMFR,
            Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
            To    => Temporary_Set);
            
         Root_Object.Object_List.Clear (
            From => SetM);
         
         
         Relationships_Rel_R7.Navigate (
            From  => Temporary_Set,
            Class => Root_Object.Relationships.M.Relationships_M_type'tag,
            To    => SetM);
            
         Root_Object.Object_List.Destroy_List (
            Target_List => Temporary_Set);
      end;
      
      if Root_Object.Object_List.Count_Of(SetMR) =  4 then
         
         if Root_Object.Object_List.Count_Of(SetM) =  4 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetM);
               
               while (Temp_Entry /= null) loop
                  InstM := Temp_Entry.Item;
                  temp  := Root_Object.Relationships.M.Relationships_M_type(InstM.all).Middle_Identifier;
                  Total := Total + temp;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetM);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Total =  6 then
               
               Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
                  Test_Object_Domain => "Chained nav from set            ",
                  Test_Number        => Test,
                  Test_Value         => 0);
               
            else
               Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                  Failed_Domain_Object => "Chained nav from set            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => Total);
               
            end if;
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Chained nav from set            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "Chained nav from set            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -30);
         
      end if;
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0101               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objE                            ",
         Purpose         => "Chained nav from set            ");
      
      
      temp  := 0;
      Total := 0;
      
      Root_Object.Object_List.Clear (
         From => SetMR);
      
      
      Relationships_Rel_R7.Navigate (
         From  => firstM,
         Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
         To    => SetMR);
      
      declare
         Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
      begin
         Temporary_Set := Root_Object.Object_List.Initialise;
         Second_Temporary_Set := Root_Object.Object_List.Initialise;
         
         Root_Object.Object_List.Insert (
            New_Item => firstM,
            On_To    => Temporary_Set);
         
         Relationships_Rel_R7.Navigate (
            From  => Temporary_Set,
            Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
            To    => Second_Temporary_Set);
         
         Root_Object.Object_List.Clear (
            From => SetMFR);
         
         Relationships_Rel_R8.Navigate (
            From  => Second_Temporary_Set,
            Class => Root_Object.Relationships.MFR.Relationships_MFR_type'tag,
            To    => SetMFR);
            
         Root_Object.Object_List.Destroy_List (
            Target_List => Temporary_Set);
         Root_Object.Object_List.Destroy_List (
            Target_List => Second_Temporary_Set);
      end;
      
      if Root_Object.Object_List.Count_Of(SetMR) =  2 then
         
         if Root_Object.Object_List.Count_Of(SetMFR) =  3 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetMFR);
               
               while (Temp_Entry /= null) loop
                  InstMFR := Temp_Entry.Item;
                  temp  := Root_Object.Relationships.MFR.Relationships_MFR_type(InstMFR.all).MFR_Identifier;
                  Total := Total + temp;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetMFR);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Total =  5 then
               
               Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
                  Test_Object_Domain => "Chained nav from set            ",
                  Test_Number        => Test,
                  Test_Value         => 0);
               
            else
               Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                  Failed_Domain_Object => "Chained nav from set            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => Total);
               
            end if;
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Chained nav from set            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "Chained nav from set            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -30);
         
      end if;
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0101               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objE                            ",
         Purpose         => "Chained nav from set            ");
      
      
      temp  := 0;
      Total := 0;
      
      Root_Object.Object_List.Clear (
         From => SetMR);
      
      
      Relationships_Rel_R7.Navigate (
         From  => firstM,
         Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
         To    => SetMR);
      
      declare
         Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
      begin
         Temporary_Set := Root_Object.Object_List.Initialise;
         Second_Temporary_Set := Root_Object.Object_List.Initialise;
         
         Root_Object.Object_List.Insert (
            New_Item => firstM,
            On_To    => Temporary_Set);
         
         Relationships_Rel_R7.Navigate (
            From  => Temporary_Set,
            Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
            To    => Second_Temporary_Set);
         
         Root_Object.Object_List.Clear (
            From => SetMA);
         
         Relationships_Rel_R10.Navigate (
            From  => Second_Temporary_Set,
            Class => Root_Object.Relationships.MA.Relationships_MA_type'tag,
            To    => SetMA);
            
         Root_Object.Object_List.Destroy_List (
            Target_List => Temporary_Set);
         Root_Object.Object_List.Destroy_List (
            Target_List => Second_Temporary_Set);
      end;
      
      if Root_Object.Object_List.Count_Of(SetMR) =  2 then
         
         if Root_Object.Object_List.Count_Of(SetMA) =  3 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetMA);
               
               while (Temp_Entry /= null) loop
                  InstMA := Temp_Entry.Item;
                  temp  := Root_Object.Relationships.MA.Relationships_MA_type(InstMA.all).Above_Data;
                  Total := Total + temp;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetMA);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Total =  10 then
               
               Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
                  Test_Object_Domain => "Chained nav from set            ",
                  Test_Number        => Test,
                  Test_Value         => 0);
               
            else
               Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                  Failed_Domain_Object => "Chained nav from set            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => Total);
               
            end if;
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Chained nav from set            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "Chained nav from set            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -30);
         
      end if;
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0101               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objE                            ",
         Purpose         => "Chained nav from set            ");
      
      
      temp  := 0;
      Total := 0;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => SetM);
         
         Root_Object.Relationships.M.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Relationships.M.Relationships_M_Type(Temp_Entry.Item.all).Middle_Identifier =  1 or else
                  Root_Object.Relationships.M.Relationships_M_Type(Temp_Entry.Item.all).Middle_Identifier =  3 then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => SetM);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      Root_Object.Object_List.Clear (
         From => SetMR);
      
      
      Relationships_Rel_R7.Navigate (
         From  => SetM,
         Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
         To    => SetMR);
      
      declare
         Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
      begin
         Temporary_Set := Root_Object.Object_List.Initialise;
         
         
         Relationships_Rel_R7.Navigate (
            From  => SetM,
            Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
            To    => Temporary_Set);
            
         Root_Object.Object_List.Clear (
            From => SetMA);
         
         
         Relationships_Rel_R10.Navigate (
            From  => Temporary_Set,
            Class => Root_Object.Relationships.MA.Relationships_MA_type'tag,
            To    => SetMA);
            
         Root_Object.Object_List.Destroy_List (
            Target_List => Temporary_Set);
      end;
      
      if Root_Object.Object_List.Count_Of(SetMR) =  3 then
         
         if Root_Object.Object_List.Count_Of(SetMA) =  4 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetMA);
               
               while (Temp_Entry /= null) loop
                  InstMA := Temp_Entry.Item;
                  temp  := Root_Object.Relationships.MA.Relationships_MA_type(InstMA.all).Above_Data;
                  Total := Total + temp;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetMA);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Total =  12 then
               
               Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
                  Test_Object_Domain => "Chained nav from set            ",
                  Test_Number        => Test,
                  Test_Value         => 0);
               
            else
               Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                  Failed_Domain_Object => "Chained nav from set            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => Total);
               
            end if;
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Chained nav from set            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "Chained nav from set            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -30);
         
      end if;
      
      
      Test := Test + 1;
      
      
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0101               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objE                            ",
         Purpose         => "Chained nav from set            ");
      
      
      temp  := 0;
      Total := 0;
      
      Root_Object.Object_List.Clear (
         From => SetMA);
      
      Root_Object.Relationships.MA.Find (
         Add_To => SetMA);
      
      
      Root_Object.Object_List.Clear (
         From => SetMR);
      
      
      Relationships_Rel_R10.Navigate (
         From  => SetMA,
         Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
         To    => SetMR);
      
      declare
         Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
      begin
         Temporary_Set := Root_Object.Object_List.Initialise;
         
         
         Relationships_Rel_R10.Navigate (
            From  => SetMA,
            Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
            To    => Temporary_Set);
            
         Root_Object.Object_List.Clear (
            From => SetM);
         
         
         Relationships_Rel_R7.Navigate (
            From  => Temporary_Set,
            Class => Root_Object.Relationships.M.Relationships_M_type'tag,
            To    => SetM);
            
         Root_Object.Object_List.Destroy_List (
            Target_List => Temporary_Set);
      end;
      
      if Root_Object.Object_List.Count_Of(SetMR) =  4 then
         
         if Root_Object.Object_List.Count_Of(SetM) =  4 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetM);
               
               while (Temp_Entry /= null) loop
                  InstM := Temp_Entry.Item;
                  temp  := Root_Object.Relationships.M.Relationships_M_type(InstM.all).Middle_Identifier;
                  Total := Total + temp;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetM);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Total =  6 then
               
               Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
                  Test_Object_Domain => "Chained nav from set            ",
                  Test_Number        => Test,
                  Test_Value         => 0);
               
            else
               Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                  Failed_Domain_Object => "Chained nav from set            ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => Total);
               
            end if;
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Chained nav from set            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "Chained nav from set            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -30);
         
      end if;
      
      
      Test := Test + 1;
      
      
      Relationships_Rel_R8.Unassociate(
         A_Instance => firstMR,
         B_Instance => firstMFR,
         From       => firstMRA);
      
      Relationships_Rel_R8.Unassociate(
         A_Instance => thirdMR,
         B_Instance => firstMFR,
         From       => secondMRA);
      
      Relationships_Rel_R8.Unassociate(
         A_Instance => thirdMR,
         B_Instance => thirdMFR,
         From       => thirdMRA);
      
      Relationships_Rel_R8.Unassociate(
         A_Instance => fourthMR,
         B_Instance => fourthMFR,
         From       => fourthMRA);
      
      Relationships_Rel_R6.Unlink (
         A_Instance => firstL,
         B_Instance => firstM);
      
      
      Relationships_Rel_R6.Unlink (
         A_Instance => secondL,
         B_Instance => thirdM);
      
      
      Relationships_Rel_R7.Unlink (
         A_Instance => firstM,
         B_Instance => firstMR);
      
      
      Relationships_Rel_R7.Unlink (
         A_Instance => firstM,
         B_Instance => thirdMR);
      
      
      Relationships_Rel_R7.Unlink (
         A_Instance => thirdM,
         B_Instance => fourthMR);
      
      
      Relationships_Rel_R8.Unlink (
         A_Instance => firstMR,
         B_Instance => firstMFR);
      
      
      Relationships_Rel_R8.Unlink (
         A_Instance => thirdMR,
         B_Instance => firstMFR);
      
      
      Relationships_Rel_R8.Unlink (
         A_Instance => thirdMR,
         B_Instance => thirdMFR);
      
      
      Relationships_Rel_R8.Unlink (
         A_Instance => fourthMR,
         B_Instance => fourthMFR);
      
      
      Relationships_Rel_R10.Unlink (
         A_Instance => firstMR,
         B_Instance => firstMA);
      
      
      Relationships_Rel_R10.Unlink (
         A_Instance => thirdMR,
         B_Instance => fourthMA);
      
      
      Relationships_Rel_R10.Unlink (
         A_Instance => thirdMR,
         B_Instance => fifthMA);
      
      
      Relationships_Rel_R10.Unlink (
         A_Instance => fourthMR,
         B_Instance => secondMA);
      
      
      Root_Object.Relationships.FL.Delete (
         Old_Instance => firstL);
      
      Root_Object.Relationships.FL.Delete (
         Old_Instance => secondL);
      
      Root_Object.Relationships.FL.Delete (
         Old_Instance => thirdL);
      
      Root_Object.Relationships.FL.Delete (
         Old_Instance => fourthL);
      
      Root_Object.Relationships.FL.Delete (
         Old_Instance => fifthL);
      
      Root_Object.Relationships.M.Delete (
         Old_Instance => firstM);
      
      Root_Object.Relationships.M.Delete (
         Old_Instance => secondM);
      
      Root_Object.Relationships.M.Delete (
         Old_Instance => thirdM);
      
      Root_Object.Relationships.M.Delete (
         Old_Instance => fourthM);
      
      Root_Object.Relationships.M.Delete (
         Old_Instance => fifthM);
      
      Root_Object.Relationships.MR.Delete (
         Old_Instance => firstMR);
      
      Root_Object.Relationships.MR.Delete (
         Old_Instance => secondMR);
      
      Root_Object.Relationships.MR.Delete (
         Old_Instance => thirdMR);
      
      Root_Object.Relationships.MR.Delete (
         Old_Instance => fourthMR);
      
      Root_Object.Relationships.MR.Delete (
         Old_Instance => fifthMR);
      
      Root_Object.Relationships.MA.Delete (
         Old_Instance => firstMA);
      
      Root_Object.Relationships.MA.Delete (
         Old_Instance => secondMA);
      
      Root_Object.Relationships.MA.Delete (
         Old_Instance => thirdMA);
      
      Root_Object.Relationships.MA.Delete (
         Old_Instance => fourthMA);
      
      Root_Object.Relationships.MA.Delete (
         Old_Instance => fifthMA);
      
      Root_Object.Relationships.MFR.Delete (
         Old_Instance => firstMFR);
      
      Root_Object.Relationships.MFR.Delete (
         Old_Instance => secondMFR);
      
      Root_Object.Relationships.MFR.Delete (
         Old_Instance => thirdMFR);
      
      Root_Object.Relationships.MFR.Delete (
         Old_Instance => fourthMFR);
      
      Root_Object.Relationships.MFR.Delete (
         Old_Instance => fifthMFR);
      
      Root_Object.Relationships.TN.Relationships_TN_type(my_test.all).The_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetMA);
      Root_Object.Object_List.Destroy_List (SetM);
      Root_Object.Object_List.Destroy_List (SetMR);
      Root_Object.Object_List.Destroy_List (SetMFR);
   end Relationships_Scenario7;
   
--
-- End of file Relationships_Scenario7.ada
--
