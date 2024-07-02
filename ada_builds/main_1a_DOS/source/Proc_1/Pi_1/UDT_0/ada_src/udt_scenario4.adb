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
--* File Name:               UDT_Scenario4.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Real_Numbers_Scenario
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
with Root_Object.UDT.TD;
with Root_Object.UDT.FTD;

-- List of relationships used
with UDT_rel_R1;

-- List of services used
with UDT_UDT7_Tidy_Up_Test_Data_Service;
with UDT_UDT5_Report_No_UDT_Used_Service;
with UDT_RL1_Check_The_Reals_Service;
with UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service;

-- List of bridges used
with UDT_RPT5_Test_Text_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure UDT_Scenario4 is
   
      
      my_final_test  : Root_Object.Object_Access;
      Dummy_TD       : Root_Object.Object_Access;
      A_Test_Data_IH : Root_Object.Object_Access;
      
      Test          : Application_Types.Base_Integer_Type := 1;
      local_counter : Application_Types.Base_Integer_Type := 1;
      
      New_Object   : Boolean := Application_Types.Boolean_first;
      Final_Object : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- Call object based synchronous service
      my_final_test := Root_Object.UDT.FTD.Unconditional_Find_One;
      Test         := Root_Object.UDT.FTD.UDT_FTD_type(my_final_test.all).Final_Test_Number;
      New_Object   := True;
      Final_Object := False;
      
      Dummy_TD := Root_Object.UDT.TD.Create_Unique;
      Root_Object.UDT.TD.UDT_TD_Type(Dummy_TD.all).The_Test_Number  := 99;
      Root_Object.UDT.TD.UDT_TD_Type(Dummy_TD.all).Testing_For_What := "Nothing                         ";
      
      
      A_Test_Data_IH := Dummy_TD;
      
      
      UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service.UDT_TD1_Create_New_Test_Data_Object_And_Link_It (
         New_Set              => New_Object,
         Previous_IH          => Dummy_TD,
         This_Test_Number     => Test,
         Testing_For          => "Object data assignment          ",
         Final_Entry          => Final_Object,
         Returned_IH          => A_Test_Data_IH,
         Returned_Test_Number => Test);
      
      
      --  Don't need this beasty any more, it was only ever a dummy.
      
      Root_Object.UDT.TD.Delete (
         Old_Instance => Dummy_TD);
      
      New_Object := False;
      
      
      UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service.UDT_TD1_Create_New_Test_Data_Object_And_Link_It (
         New_Set              => New_Object,
         Previous_IH          => A_Test_Data_IH,
         This_Test_Number     => Test,
         Testing_For          => "Max value assignment            ",
         Final_Entry          => Final_Object,
         Returned_IH          => A_Test_Data_IH,
         Returned_Test_Number => Test);
      
      UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service.UDT_TD1_Create_New_Test_Data_Object_And_Link_It (
         New_Set              => New_Object,
         Previous_IH          => A_Test_Data_IH,
         This_Test_Number     => Test,
         Testing_For          => "Min value assignment            ",
         Final_Entry          => Final_Object,
         Returned_IH          => A_Test_Data_IH,
         Returned_Test_Number => Test);
      
      UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service.UDT_TD1_Create_New_Test_Data_Object_And_Link_It (
         New_Set              => New_Object,
         Previous_IH          => A_Test_Data_IH,
         This_Test_Number     => Test,
         Testing_For          => "Common local assignment         ",
         Final_Entry          => Final_Object,
         Returned_IH          => A_Test_Data_IH,
         Returned_Test_Number => Test);
      
      UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service.UDT_TD1_Create_New_Test_Data_Object_And_Link_It (
         New_Set              => New_Object,
         Previous_IH          => A_Test_Data_IH,
         This_Test_Number     => Test,
         Testing_For          => "Unique local assignment         ",
         Final_Entry          => Final_Object,
         Returned_IH          => A_Test_Data_IH,
         Returned_Test_Number => Test);
      
      UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service.UDT_TD1_Create_New_Test_Data_Object_And_Link_It (
         New_Set              => New_Object,
         Previous_IH          => A_Test_Data_IH,
         This_Test_Number     => Test,
         Testing_For          => "Unique local assignment         ",
         Final_Entry          => Final_Object,
         Returned_IH          => A_Test_Data_IH,
         Returned_Test_Number => Test);
      
      UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service.UDT_TD1_Create_New_Test_Data_Object_And_Link_It (
         New_Set              => New_Object,
         Previous_IH          => A_Test_Data_IH,
         This_Test_Number     => Test,
         Testing_For          => "Min plus max                    ",
         Final_Entry          => Final_Object,
         Returned_IH          => A_Test_Data_IH,
         Returned_Test_Number => Test);
      
      
      Final_Object := True;
      
      
      UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service.UDT_TD1_Create_New_Test_Data_Object_And_Link_It (
         New_Set              => New_Object,
         Previous_IH          => A_Test_Data_IH,
         This_Test_Number     => Test,
         Testing_For          => "Report Number Of UDTs           ",
         Final_Entry          => Final_Object,
         Returned_IH          => A_Test_Data_IH,
         Returned_Test_Number => Test);
      
      
      local_counter := 8;
      
      if A_Test_Data_IH /= Null then
         
         UDT_RL1_Check_The_Reals_Service.UDT_RL1_Check_The_Reals (
            Test        => local_counter,
            Testing_For => Root_Object.UDT.TD.UDT_TD_type(A_Test_Data_IH.all).Testing_For_What,
            The_Requid  => "1241-0000-01-0111               ");
         
         
         loop
            exit when local_counter =  Test;
            local_counter := local_counter + 1;
            
            
            UDT_Rel_R1.Navigate (
               From  => A_Test_Data_IH,
               Role  => "Has_a",
               To    => A_Test_Data_IH);
            
            
            if A_Test_Data_IH /= Null then
               
               if local_counter =  14 then
                  
                  UDT_RL1_Check_The_Reals_Service.UDT_RL1_Check_The_Reals (
                     Test        => local_counter,
                     Testing_For => Root_Object.UDT.TD.UDT_TD_type(A_Test_Data_IH.all).Testing_For_What,
                     The_Requid  => "Null Requid                     ");
                  
               end if;
               
               
               if local_counter /= 14 and then
                  local_counter /= 15 then
                  
                  UDT_RL1_Check_The_Reals_Service.UDT_RL1_Check_The_Reals (
                     Test        => local_counter,
                     Testing_For => Root_Object.UDT.TD.UDT_TD_type(A_Test_Data_IH.all).Testing_For_What,
                     The_Requid  => "1241-0000-01-0111               ");
                  
               end if;
               
               
               if local_counter =  15 then
                  
                  UDT_UDT5_Report_No_UDT_Used_Service.UDT_UDT5_Report_No_UDT_Used (
                     Test        => local_counter,
                     Testing_For => Root_Object.UDT.TD.UDT_TD_type(A_Test_Data_IH.all).Testing_For_What);
                  
               end if;
               
            else
               
               --  Oops
                  exit;
            end if;
            
         end loop;
         
      else
         
         UDT_RPT5_Test_Text_Bridge.UDT_RPT5_Test_Text (
            Test_Number => local_counter,
            Free_Text   => "First Test Data object corrupt  ");
         
      end if;
      
      
      --  Tidy up the test data objects starting at the final one
      
      UDT_UDT7_Tidy_Up_Test_Data_Service.UDT_UDT7_Tidy_Up_Test_Data;
      
   end UDT_Scenario4;
   
--
-- End of file UDT_Scenario4.ada
--
