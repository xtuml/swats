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
--* File Name:               Relationships_M1_Create_Relationships_Service.adb
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
with Root_Object.Relationships.MFR;
with Root_Object.Relationships.MRA;
with Root_Object.Relationships.MR;
with Root_Object.Relationships.M;
with Root_Object.Relationships.FL;

-- List of relationships used
with Relationships_rel_R8;
with Relationships_rel_R7;
with Relationships_rel_R6;

-- List of bridges used
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT8_Specify_Requid_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_M1_Create_Relationships_Service is
   
   procedure Relationships_M1_Create_Relationships (
      Test : in     Application_Types.Base_Integer_Type) is
      
      SetMR : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      One_Left    : Root_Object.Object_Access;
      One_Middle  : Root_Object.Object_Access;
      One_Right   : Root_Object.Object_Access;
      Two_Right   : Root_Object.Object_Access;
      Three_Right : Root_Object.Object_Access;
      One_MRA     : Root_Object.Object_Access;
      Two_MRA     : Root_Object.Object_Access;
      One_MFR     : Root_Object.Object_Access;
      Two_MFR     : Root_Object.Object_Access;
      InstMR      : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      Val1         : Application_Types.Base_Integer_Type := 1;
      Val2         : Application_Types.Base_Integer_Type := 1;
      Val3         : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of M1_Create_Relationships
      
      -- ---------------------------------------------------------------------------------------------
      --  Create the relationships
      --  The architectureshall support a translation of the ASL link 
      --  statement to map to the mechanism that allows creation of a 
      --  relationship link between two object instances
      --  1241-0000-01-1202
      -- ---------------------------------------------------------------------------------------------
      Has_Failed := False;
      
      One_Left := Root_Object.Relationships.FL.Conditional_Find_One;
      while (One_Left /= null) and then (not (Root_Object.Relationships.FL.Relationships_FL_Type(One_Left.all).Left_Identifier =  1) ) loop
         
         One_Left := One_Left.Next_Object;
      end loop;
      
      One_Middle := Root_Object.Relationships.M.Conditional_Find_One;
      while (One_Middle /= null) and then (not (Root_Object.Relationships.M.Relationships_M_Type(One_Middle.all).Middle_Identifier =  1) ) loop
         
         One_Middle := One_Middle.Next_Object;
      end loop;
      
      One_Right := Root_Object.Relationships.MR.Conditional_Find_One;
      while (One_Right /= null) and then (not (Root_Object.Relationships.MR.Relationships_MR_Type(One_Right.all).Right_Identifier =  1) ) loop
         
         One_Right := One_Right.Next_Object;
      end loop;
      
      Two_Right := Root_Object.Relationships.MR.Conditional_Find_One;
      while (Two_Right /= null) and then (not (Root_Object.Relationships.MR.Relationships_MR_Type(Two_Right.all).Right_Identifier =  2) ) loop
         
         Two_Right := Two_Right.Next_Object;
      end loop;
      
      Three_Right := Root_Object.Relationships.MR.Conditional_Find_One;
      while (Three_Right /= null) and then (not (Root_Object.Relationships.MR.Relationships_MR_Type(Three_Right.all).Right_Identifier =  3) ) loop
         
         Three_Right := Three_Right.Next_Object;
      end loop;
      
      One_MRA := Root_Object.Relationships.MRA.Conditional_Find_One;
      while (One_MRA /= null) and then (not (Root_Object.Relationships.MRA.Relationships_MRA_Type(One_MRA.all).MRA_Identifier =  1) ) loop
         
         One_MRA := One_MRA.Next_Object;
      end loop;
      
      Two_MRA := Root_Object.Relationships.MRA.Conditional_Find_One;
      while (Two_MRA /= null) and then (not (Root_Object.Relationships.MRA.Relationships_MRA_Type(Two_MRA.all).MRA_Identifier =  2) ) loop
         
         Two_MRA := Two_MRA.Next_Object;
      end loop;
      
      One_MFR := Root_Object.Relationships.MFR.Conditional_Find_One;
      while (One_MFR /= null) and then (not (Root_Object.Relationships.MFR.Relationships_MFR_Type(One_MFR.all).MFR_Identifier =  1) ) loop
         
         One_MFR := One_MFR.Next_Object;
      end loop;
      
      Two_MFR := Root_Object.Relationships.MFR.Conditional_Find_One;
      while (Two_MFR /= null) and then (not (Root_Object.Relationships.MFR.Relationships_MFR_Type(Two_MFR.all).MFR_Identifier =  2) ) loop
         
         Two_MFR := Two_MFR.Next_Object;
      end loop;
      
      Relationships_Rel_R6.Link (
         A_Instance => One_Left,
         B_Instance => One_Middle);
      
      Relationships_Rel_R7.Link (
         A_Instance => One_Middle,
         B_Instance => One_Right);
      
      Relationships_Rel_R7.Link (
         A_Instance => One_Middle,
         B_Instance => Two_Right);
      
      Relationships_Rel_R7.Link (
         A_Instance => One_Middle,
         B_Instance => Three_Right);
      
      Relationships_Rel_R8.Link (
         A_Instance => One_Right,
         B_Instance => One_MFR,
         Using      => One_MRA);
      
      Relationships_Rel_R8.Link (
         A_Instance => One_Right,
         B_Instance => Two_MFR,
         Using      => Two_MRA);
      
      Relationships_Rel_R8.Link (
         A_Instance => Two_Right,
         B_Instance => Two_MFR,
         Using      => Two_MRA);
      
      
      -- ---------------------------------------------------------------------------------------------
      --  Check that the relationships have been correctly established
      -- ---------------------------------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0602               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "Set Navigation                  ",
         Purpose         => "Create objects and relationships");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0603               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1202               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0611               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0612               ");
      
      
      Root_Object.Object_List.Clear (
         From => SetMR);
      
      
      Relationships_Rel_R7.Navigate (
         From  => One_Middle,
         Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
         To    => SetMR);
      
      if Root_Object.Object_List.Count_Of(SetMR) /= 3 then
         
         Has_Failed   := True;
         Failure_Code := -10;
         
      else
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetMR);
            
            while (Temp_Entry /= null) loop
               InstMR := Temp_Entry.Item;
               
               if Root_Object.Relationships.MR.Relationships_MR_type(InstMR.all).Right_Identifier =  1 then
                  
                  Val1 := 1;
               end if;
               
               
               if Root_Object.Relationships.MR.Relationships_MR_type(InstMR.all).Right_Identifier =  2 then
                  Val2 := 2;
               end if;
               
               
               if Root_Object.Relationships.MR.Relationships_MR_type(InstMR.all).Right_Identifier =  3 then
                  Val3 := 3;
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetMR);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         if Val1 =  1 then
            
            if Val2 =  2 then
               
               if Val3 /= 3 then
                  
                  Has_Failed   := True;
                  Failure_Code := Val3;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := Val2;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := Val1;
            
         end if;
         
      end if;
      
      
      if (not Has_Failed) then
         
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "Objects created and linked      ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "Error in creation of objects or ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetMR);
      
   end Relationships_M1_Create_Relationships;
   
end Relationships_M1_Create_Relationships_Service;

--
-- End of file Relationships_M1_Create_Relationships_Service.adb
--
