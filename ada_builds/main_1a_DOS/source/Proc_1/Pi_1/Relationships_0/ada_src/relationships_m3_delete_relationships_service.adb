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
--* File Name:               Relationships_M3_Delete_Relationships_Service.adb
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
with Root_Object.Relationships.MA;
with Root_Object.Relationships.MFR;
with Root_Object.Relationships.MRA;
with Root_Object.Relationships.MR;
with Root_Object.Relationships.M;
with Root_Object.Relationships.FL;

-- List of relationships used
with Relationships_rel_R8;
with Relationships_rel_R10;
with Relationships_rel_R7;
with Relationships_rel_R6;

-- List of bridges used
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT8_Specify_Requid_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_M3_Delete_Relationships_Service is
   
   procedure Relationships_M3_Delete_Relationships (
      Test : in     Application_Types.Base_Integer_Type) is
      
      SetMR  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMA  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMRA : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetFL  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetM   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMFR : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      One_Left     : Root_Object.Object_Access;
      One_Middle   : Root_Object.Object_Access;
      One_Right    : Root_Object.Object_Access;
      Two_Right    : Root_Object.Object_Access;
      Three_Right  : Root_Object.Object_Access;
      Fourth_Right : Root_Object.Object_Access;
      Five_Right   : Root_Object.Object_Access;
      Six_Right    : Root_Object.Object_Access;
      One_MRA      : Root_Object.Object_Access;
      Two_MRA      : Root_Object.Object_Access;
      One_MFR      : Root_Object.Object_Access;
      Two_MFR      : Root_Object.Object_Access;
      One_Above    : Root_Object.Object_Access;
      Two_Above    : Root_Object.Object_Access;
      Three_Above  : Root_Object.Object_Access;
      Fourth_Above : Root_Object.Object_Access;
      InstM        : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      CountFL      : Application_Types.Base_Integer_Type := 1;
      CountM       : Application_Types.Base_Integer_Type := 1;
      CountMR      : Application_Types.Base_Integer_Type := 1;
      CountMA      : Application_Types.Base_Integer_Type := 1;
      CountMRA     : Application_Types.Base_Integer_Type := 1;
      CountMFR     : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of M3_Delete_Relationships
      
      -- --------------------------------------------------------------------
      --  Delete all relationships
      --  The architectre shall provide a mechanism to allow deletion of a 
      --  simple relationship link between two object instance
      --  1241-0000-01-0604
      --  The architecture shall provide a mechanism to allow the deletion of 
      --  an associative link between an associative object and the link 
      --  between two objects
      --  1241-0000-01-0612
      --  The architecture shall provide a mechanism to allow the deletion 
      --  of a link between two objects in a associative relationship
      --  1241-0000-01-0613
      --  The architecture shall support a translation of the ASL unassociate
      --  statment to map to the mechanism that allows the deletion of an 
      --  associative link between an associative object and the link between
      --  two objects
      --  1241-0000-01-1203
      --  The architecture shall support a translation of the ASL unlink
      --  statement to map to the mechanism that allow the deletion of a 
      --  link between two objects in a relationship
      --  1241-0000-01-1204
      --  The architecture shall support a translation of the ASL navigate
      --  statment to map to the mechanism that allows the traversal of
      --  relationship links
      --  1241-0000-01-1205
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0604               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "Set Navigation                  ",
         Purpose         => "Delete objects and relationships");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0612               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0613               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1203               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1204               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0621               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0622               ");
      
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
      
      Fourth_Right := Root_Object.Relationships.MR.Conditional_Find_One;
      while (Fourth_Right /= null) and then (not (Root_Object.Relationships.MR.Relationships_MR_Type(Fourth_Right.all).Right_Identifier =  4) ) loop
         
         Fourth_Right := Fourth_Right.Next_Object;
      end loop;
      
      Five_Right := Root_Object.Relationships.MR.Conditional_Find_One;
      while (Five_Right /= null) and then (not (Root_Object.Relationships.MR.Relationships_MR_Type(Five_Right.all).Right_Identifier =  5) ) loop
         
         Five_Right := Five_Right.Next_Object;
      end loop;
      
      Six_Right := Root_Object.Relationships.MR.Conditional_Find_One;
      while (Six_Right /= null) and then (not (Root_Object.Relationships.MR.Relationships_MR_Type(Six_Right.all).Right_Identifier =  6) ) loop
         
         Six_Right := Six_Right.Next_Object;
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
      
      One_Above := Root_Object.Relationships.MA.Conditional_Find_One;
      while (One_Above /= null) and then (not (Root_Object.Relationships.MA.Relationships_MA_Type(One_Above.all).Above_Data =  1) ) loop
         
         One_Above := One_Above.Next_Object;
      end loop;
      
      Two_Above := Root_Object.Relationships.MA.Conditional_Find_One;
      while (Two_Above /= null) and then (not (Root_Object.Relationships.MA.Relationships_MA_Type(Two_Above.all).Above_Data =  2) ) loop
         
         Two_Above := Two_Above.Next_Object;
      end loop;
      
      Three_Above := Root_Object.Relationships.MA.Conditional_Find_One;
      while (Three_Above /= null) and then (not (Root_Object.Relationships.MA.Relationships_MA_Type(Three_Above.all).Above_Data =  3) ) loop
         
         Three_Above := Three_Above.Next_Object;
      end loop;
      
      Fourth_Above := Root_Object.Relationships.MA.Conditional_Find_One;
      while (Fourth_Above /= null) and then (not (Root_Object.Relationships.MA.Relationships_MA_Type(Fourth_Above.all).Above_Data =  4) ) loop
         
         Fourth_Above := Fourth_Above.Next_Object;
      end loop;
      
      Has_Failed   := False;
      Failure_Code := 0;
      
      Relationships_Rel_R6.Unlink (
         A_Instance => One_Left,
         B_Instance => One_Middle);
      
      
      Relationships_Rel_R7.Unlink (
         A_Instance => One_Middle,
         B_Instance => One_Right);
      
      
      Relationships_Rel_R7.Unlink (
         A_Instance => One_Middle,
         B_Instance => Two_Right);
      
      
      Relationships_Rel_R7.Unlink (
         A_Instance => One_Middle,
         B_Instance => Three_Right);
      
      
      Relationships_Rel_R10.Unlink (
         A_Instance => One_Above,
         B_Instance => One_Right);
      
      
      Relationships_Rel_R10.Unlink (
         A_Instance => Two_Above,
         B_Instance => One_Right);
      
      
      Relationships_Rel_R10.Unlink (
         A_Instance => Two_Above,
         B_Instance => Three_Right);
      
      
      Relationships_Rel_R10.Unlink (
         A_Instance => Three_Above,
         B_Instance => Three_Right);
      
      
      Relationships_Rel_R10.Unlink (
         A_Instance => Fourth_Above,
         B_Instance => Fourth_Right);
      
      
      Relationships_Rel_R8.Unassociate(
         A_Instance => One_Right,
         B_Instance => One_MFR,
         From       => One_MRA);
      
      Relationships_Rel_R8.Unassociate(
         A_Instance => One_Right,
         B_Instance => Two_MFR,
         From       => Two_MRA);
      
      Relationships_Rel_R8.Unassociate(
         A_Instance => Two_Right,
         B_Instance => Two_MFR,
         From       => Two_MRA);
      
      Relationships_Rel_R8.Unlink (
         A_Instance => One_Right,
         B_Instance => One_MFR);
      
      
      Relationships_Rel_R8.Unlink (
         A_Instance => One_Right,
         B_Instance => Two_MFR);
      
      
      Relationships_Rel_R8.Unlink (
         A_Instance => Two_Right,
         B_Instance => Two_MFR);
      
      
      --  Test each object for any relationship links prior to deletion
      
      Relationships_Rel_R6.Navigate (
         From  => One_Left,
         Class => Root_Object.Relationships.M.Relationships_M_type'tag,
         To    => InstM);
      
      
      if InstM =  Null then
         
         Root_Object.Relationships.FL.Delete (
            Old_Instance => One_Left);
      else
         Has_Failed   := True;
         Failure_Code := -1;
      end if;
      
      
      Root_Object.Object_List.Clear (
         From => SetMR);
      
      
      Relationships_Rel_R7.Navigate (
         From  => One_Middle,
         Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
         To    => SetMR);
      
      if Root_Object.Object_List.Count_Of(SetMR) =  0 then
         
         Root_Object.Relationships.M.Delete (
            Old_Instance => One_Middle);
      else
         Has_Failed   := True;
         Failure_Code := Failure_Code - 2;
      end if;
      
      
      Root_Object.Object_List.Clear (
         From => SetMA);
      
      
      Relationships_Rel_R10.Navigate (
         From  => One_Right,
         Class => Root_Object.Relationships.MA.Relationships_MA_type'tag,
         To    => SetMA);
      
      if Root_Object.Object_List.Count_Of(SetMA) =  0 then
         
         Root_Object.Relationships.MA.Delete (
            Old_Instance => One_Above);
      else
         Has_Failed   := True;
         Failure_Code := Failure_Code - 4;
      end if;
      
      
      Root_Object.Object_List.Clear (
         From => SetMA);
      
      
      Relationships_Rel_R10.Navigate (
         From  => Three_Right,
         Class => Root_Object.Relationships.MA.Relationships_MA_type'tag,
         To    => SetMA);
      
      if Root_Object.Object_List.Count_Of(SetMA) =  0 then
         
         Root_Object.Relationships.MA.Delete (
            Old_Instance => Two_Above);
         
         Root_Object.Relationships.MA.Delete (
            Old_Instance => Three_Above);
         
         Root_Object.Relationships.MR.Delete (
            Old_Instance => Three_Right);
      else
         Has_Failed   := True;
         Failure_Code := Failure_Code - 8;
      end if;
      
      
      Root_Object.Object_List.Clear (
         From => SetMRA);
      
      
      Relationships_Rel_R8.Navigate (
         From  => One_Right,
         Class => Root_Object.Relationships.MRA.Relationships_MRA_type'tag,
         To    => SetMRA);
      
      if Root_Object.Object_List.Count_Of(SetMRA) =  0 then
         
         Root_Object.Relationships.MR.Delete (
            Old_Instance => One_Right);
         
         Root_Object.Relationships.MRA.Delete (
            Old_Instance => One_MRA);
         
         Root_Object.Relationships.MFR.Delete (
            Old_Instance => One_MFR);
      else
         Has_Failed   := True;
         Failure_Code := Failure_Code - 16;
      end if;
      
      
      Root_Object.Object_List.Clear (
         From => SetMRA);
      
      
      Relationships_Rel_R8.Navigate (
         From  => Two_MFR,
         Class => Root_Object.Relationships.MRA.Relationships_MRA_type'tag,
         To    => SetMRA);
      
      if Root_Object.Object_List.Count_Of(SetMRA) =  0 then
         
         Root_Object.Relationships.MRA.Delete (
            Old_Instance => Two_MRA);
         
         Root_Object.Relationships.MFR.Delete (
            Old_Instance => Two_MFR);
      else
         Has_Failed   := True;
         Failure_Code := Failure_Code - 32;
      end if;
      
      
      Root_Object.Object_List.Clear (
         From => SetMA);
      
      
      Relationships_Rel_R10.Navigate (
         From  => Fourth_Right,
         Class => Root_Object.Relationships.MA.Relationships_MA_type'tag,
         To    => SetMA);
      
      if Root_Object.Object_List.Count_Of(SetMA) =  0 then
         
         Root_Object.Relationships.MR.Delete (
            Old_Instance => Fourth_Right);
         
         Root_Object.Relationships.MA.Delete (
            Old_Instance => Fourth_Above);
      else
         Has_Failed   := True;
         Failure_Code := -64;
         
      end if;
      
      
      --  Delete remaining unlinked instances
      
      Root_Object.Relationships.MR.Delete (
         Old_Instance => Two_Right);
      
      if (not Has_Failed) then
         
         Root_Object.Object_List.Clear (
            From => SetFL);
         
         Root_Object.Relationships.FL.Find (
            Add_To => SetFL);
         
         
         Root_Object.Object_List.Clear (
            From => SetM);
         
         Root_Object.Relationships.M.Find (
            Add_To => SetM);
         
         
         Root_Object.Object_List.Clear (
            From => SetMR);
         
         Root_Object.Relationships.MR.Find (
            Add_To => SetMR);
         
         
         Root_Object.Object_List.Clear (
            From => SetMA);
         
         Root_Object.Relationships.MA.Find (
            Add_To => SetMA);
         
         
         Root_Object.Object_List.Clear (
            From => SetMRA);
         
         Root_Object.Relationships.MRA.Find (
            Add_To => SetMRA);
         
         
         Root_Object.Object_List.Clear (
            From => SetMFR);
         
         Root_Object.Relationships.MFR.Find (
            Add_To => SetMFR);
         
         
         CountFL  := Root_Object.Object_List.Count_Of(SetFL);
         CountM   := Root_Object.Object_List.Count_Of(SetM);
         CountMR  := Root_Object.Object_List.Count_Of(SetMR);
         CountMA  := Root_Object.Object_List.Count_Of(SetMA);
         CountMRA := Root_Object.Object_List.Count_Of(SetMRA);
         CountMFR := Root_Object.Object_List.Count_Of(SetMFR);
         
         
         if CountFL =  0 then
            
            if CountM =  0 then
               
               if CountMR =  0 then
                  
                  if CountMA =  0 then
                     
                     if CountMRA =  0 then
                        
                        if CountMFR /= 0 then
                           
                           Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                              Failed_Domain_Object => "Delete all objects and relations",
                              Failed_Test_Number   => Test,
                              Failed_Test_Value    => -10);
                           
                        else
                           Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
                              Test_Object_Domain => "Delete all objects and relations",
                              Test_Number        => Test,
                              Test_Value         => 0);
                           
                        end if;
                        
                     else
                        Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                           Failed_Domain_Object => "Delete all objects and relations",
                           Failed_Test_Number   => Test,
                           Failed_Test_Value    => -20);
                        
                     end if;
                     
                  else
                     Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                        Failed_Domain_Object => "Delete all objects and relations",
                        Failed_Test_Number   => Test,
                        Failed_Test_Value    => -30);
                     
                  end if;
                  
               else
                  Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                     Failed_Domain_Object => "Delete all objects and relations",
                     Failed_Test_Number   => Test,
                     Failed_Test_Value    => -40);
                  
               end if;
               
            else
               Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                  Failed_Domain_Object => "Delete all objects and relations",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -50);
               
            end if;
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Delete all objects and relations",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -60);
            
         end if;
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "Delete all objects and relations",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      --  End Test 21
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetMFR);
      Root_Object.Object_List.Destroy_List (SetM);
      Root_Object.Object_List.Destroy_List (SetFL);
      Root_Object.Object_List.Destroy_List (SetMRA);
      Root_Object.Object_List.Destroy_List (SetMA);
      Root_Object.Object_List.Destroy_List (SetMR);
      
   end Relationships_M3_Delete_Relationships;
   
end Relationships_M3_Delete_Relationships_Service;

--
-- End of file Relationships_M3_Delete_Relationships_Service.adb
--
