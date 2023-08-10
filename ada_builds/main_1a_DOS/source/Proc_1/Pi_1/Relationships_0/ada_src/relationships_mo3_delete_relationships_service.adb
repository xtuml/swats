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
--* File Name:               Relationships_MO3_Delete_Relationships_Service.adb
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
with Root_Object.Relationships.assMR;
with Root_Object.Relationships.RO;
with Root_Object.Relationships.MO;
with Root_Object.Relationships.LO;

-- List of relationships used
with Relationships_rel_R14;
with Relationships_rel_R12;

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


package body Relationships_MO3_Delete_Relationships_Service is
   
   procedure Relationships_MO3_Delete_Relationships (
      Test : in     Application_Types.Base_Integer_Type) is
      
      Set1M  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Set2M  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Set3M  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetLO  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMO  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetRO  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMRA : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      firstLeft    : Root_Object.Object_Access;
      secondLeft   : Root_Object.Object_Access;
      thirdLeft    : Root_Object.Object_Access;
      firstMiddle  : Root_Object.Object_Access;
      thirdMiddle  : Root_Object.Object_Access;
      fourthMiddle : Root_Object.Object_Access;
      fifthMiddle  : Root_Object.Object_Access;
      bigMiddle    : Root_Object.Object_Access;
      secondRight  : Root_Object.Object_Access;
      fourthRight  : Root_Object.Object_Access;
      fifthRight   : Root_Object.Object_Access;
      bigRight     : Root_Object.Object_Access;
      firstMR      : Root_Object.Object_Access;
      secondMR     : Root_Object.Object_Access;
      thirdMR      : Root_Object.Object_Access;
      fifthMR      : Root_Object.Object_Access;
      Inst1MRa     : Root_Object.Object_Access;
      Inst1MRb     : Root_Object.Object_Access;
      Inst5MRa     : Root_Object.Object_Access;
      Inst5MRb     : Root_Object.Object_Access;
      Inst2R       : Root_Object.Object_Access;
      Inst4R       : Root_Object.Object_Access;
      InstLO       : Root_Object.Object_Access;
      InstMO       : Root_Object.Object_Access;
      InstRO       : Root_Object.Object_Access;
      InstMRA      : Root_Object.Object_Access;
      
      No_In_Set_1M : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of MO3_Delete_Relationships
      
      -- --------------------------------------------------------------------
      --  Delete all relationships
      --  The architecture shall provide a mapping from the ASL delete 
      --  instance statment to the deletion mechanism
      --  1241-0000-01-0121
      --  The architecture shall provide a mechanism to allow deletion of a 
      --  simple relationship link between two object instances
      --  1241-0000-01-0604
      --  The architecture shall provide a mechanism to allow the deletion of 
      --  an associative link between an associative object and the link an
      --  between two objects
      --  1241-0000-01-0612
      --  The architecture shall provide a mechanism to allow the deletion of 
      --  a link between two objects in an associative relationship
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
      Has_Failed := False;
      
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0604               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "MO                              ",
         Purpose         => "Delete all relationships        ");
      
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
      
      
      --  Find the desired instances 
      --  Find the desired instances Left_Object
      firstLeft := Root_Object.Relationships.LO.Conditional_Find_One;
      while (firstLeft /= null) and then (not (Root_Object.Relationships.LO.Relationships_LO_Type(firstLeft.all).idLO =  1) ) loop
         
         firstLeft := firstLeft.Next_Object;
      end loop;
      
      secondLeft := Root_Object.Relationships.LO.Conditional_Find_One;
      while (secondLeft /= null) and then (not (Root_Object.Relationships.LO.Relationships_LO_Type(secondLeft.all).idLO =  2) ) loop
         
         secondLeft := secondLeft.Next_Object;
      end loop;
      
      thirdLeft := Root_Object.Relationships.LO.Conditional_Find_One;
      while (thirdLeft /= null) and then (not (Root_Object.Relationships.LO.Relationships_LO_Type(thirdLeft.all).idLO =  3) ) loop
         
         thirdLeft := thirdLeft.Next_Object;
      end loop;
      
      
      --  Find the desired instances Middle_Object
      firstMiddle := Root_Object.Relationships.MO.Conditional_Find_One;
      while (firstMiddle /= null) and then (not (Root_Object.Relationships.MO.Relationships_MO_Type(firstMiddle.all).idMO =  1) ) loop
         
         firstMiddle := firstMiddle.Next_Object;
      end loop;
      
      thirdMiddle := Root_Object.Relationships.MO.Conditional_Find_One;
      while (thirdMiddle /= null) and then (not (Root_Object.Relationships.MO.Relationships_MO_Type(thirdMiddle.all).idMO =  3) ) loop
         
         thirdMiddle := thirdMiddle.Next_Object;
      end loop;
      
      fourthMiddle := Root_Object.Relationships.MO.Conditional_Find_One;
      while (fourthMiddle /= null) and then (not (Root_Object.Relationships.MO.Relationships_MO_Type(fourthMiddle.all).idMO =  4) ) loop
         
         fourthMiddle := fourthMiddle.Next_Object;
      end loop;
      
      fifthMiddle := Root_Object.Relationships.MO.Conditional_Find_One;
      while (fifthMiddle /= null) and then (not (Root_Object.Relationships.MO.Relationships_MO_Type(fifthMiddle.all).idMO =  5) ) loop
         
         fifthMiddle := fifthMiddle.Next_Object;
      end loop;
      
      bigMiddle := Root_Object.Relationships.MO.Conditional_Find_One;
      while (bigMiddle /= null) and then (not (Root_Object.Relationships.MO.Relationships_MO_Type(bigMiddle.all).idMO =  1975) ) loop
         
         bigMiddle := bigMiddle.Next_Object;
      end loop;
      
      
      --  Find the desired instances Right_Object
      secondRight := Root_Object.Relationships.RO.Conditional_Find_One;
      while (secondRight /= null) and then (not (Root_Object.Relationships.RO.Relationships_RO_Type(secondRight.all).idRO =  2) ) loop
         
         secondRight := secondRight.Next_Object;
      end loop;
      
      fourthRight := Root_Object.Relationships.RO.Conditional_Find_One;
      while (fourthRight /= null) and then (not (Root_Object.Relationships.RO.Relationships_RO_Type(fourthRight.all).idRO =  4) ) loop
         
         fourthRight := fourthRight.Next_Object;
      end loop;
      
      fifthRight := Root_Object.Relationships.RO.Conditional_Find_One;
      while (fifthRight /= null) and then (not (Root_Object.Relationships.RO.Relationships_RO_Type(fifthRight.all).idRO =  5) ) loop
         
         fifthRight := fifthRight.Next_Object;
      end loop;
      
      bigRight := Root_Object.Relationships.RO.Conditional_Find_One;
      while (bigRight /= null) and then (not (Root_Object.Relationships.RO.Relationships_RO_Type(bigRight.all).idRO =  2001) ) loop
         
         bigRight := bigRight.Next_Object;
      end loop;
      
      
      --  Find the desired instances Associative_Object
      firstMR := Root_Object.Relationships.assMR.Conditional_Find_One;
      while (firstMR /= null) and then (not (Root_Object.Relationships.assMR.Relationships_assMR_Type(firstMR.all).idMR =  1) ) loop
         
         firstMR := firstMR.Next_Object;
      end loop;
      
      secondMR := Root_Object.Relationships.assMR.Conditional_Find_One;
      while (secondMR /= null) and then (not (Root_Object.Relationships.assMR.Relationships_assMR_Type(secondMR.all).idMR =  2) ) loop
         
         secondMR := secondMR.Next_Object;
      end loop;
      
      thirdMR := Root_Object.Relationships.assMR.Conditional_Find_One;
      while (thirdMR /= null) and then (not (Root_Object.Relationships.assMR.Relationships_assMR_Type(thirdMR.all).idMR =  3) ) loop
         
         thirdMR := thirdMR.Next_Object;
      end loop;
      
      fifthMR := Root_Object.Relationships.assMR.Conditional_Find_One;
      while (fifthMR /= null) and then (not (Root_Object.Relationships.assMR.Relationships_assMR_Type(fifthMR.all).idMR =  5) ) loop
         
         fifthMR := fifthMR.Next_Object;
      end loop;
      
      
      --  Delete all relationships
      
      Relationships_Rel_R12.Unlink (
         A_Instance => firstLeft,
         B_Instance => firstMiddle);
      
      
      Relationships_Rel_R12.Unlink (
         A_Instance => firstLeft,
         B_Instance => thirdMiddle);
      
      
      --  unlink secondLeft R12 firstMiddle
      
      Relationships_Rel_R12.Unlink (
         A_Instance => secondLeft,
         B_Instance => fifthMiddle);
      
      
      Relationships_Rel_R12.Unlink (
         A_Instance => thirdLeft,
         B_Instance => fourthMiddle);
      
      
      Relationships_Rel_R14.Unassociate(
         A_Instance => firstMiddle,
         B_Instance => secondRight,
         From       => firstMR);
      
      Relationships_Rel_R14.Unassociate(
         A_Instance => thirdMiddle,
         B_Instance => fourthRight,
         From       => fifthMR);
      
      Relationships_Rel_R14.Unassociate(
         A_Instance => fifthMiddle,
         B_Instance => fourthRight,
         From       => thirdMR);
      
      Relationships_Rel_R14.Unassociate(
         A_Instance => fourthMiddle,
         B_Instance => fifthRight,
         From       => secondMR);
      
      Relationships_Rel_R14.Unlink (
         A_Instance => firstMiddle,
         B_Instance => secondRight);
      
      
      Relationships_Rel_R14.Unlink (
         A_Instance => thirdMiddle,
         B_Instance => fourthRight);
      
      
      Relationships_Rel_R14.Unlink (
         A_Instance => fifthMiddle,
         B_Instance => fourthRight);
      
      
      Relationships_Rel_R14.Unlink (
         A_Instance => fourthMiddle,
         B_Instance => fifthRight);
      
      
      --  Explicitly check that all instances have been unlinked
      --  correctly.
      
      Root_Object.Object_List.Clear (
         From => Set1M);
      
      
      Relationships_Rel_R12.Navigate (
         From  => firstLeft,
         Class => Root_Object.Relationships.MO.Relationships_MO_type'tag,
         To    => Set1M);
      
      Root_Object.Object_List.Clear (
         From => Set2M);
      
      
      Relationships_Rel_R12.Navigate (
         From  => secondLeft,
         Class => Root_Object.Relationships.MO.Relationships_MO_type'tag,
         To    => Set2M);
      
      Root_Object.Object_List.Clear (
         From => Set3M);
      
      
      Relationships_Rel_R12.Navigate (
         From  => thirdLeft,
         Class => Root_Object.Relationships.MO.Relationships_MO_type'tag,
         To    => Set3M);
      
      Relationships_Rel_R14.Navigate (
         From  => firstMiddle,
         Class => Root_Object.Relationships.assMR.Relationships_assMR_type'tag,
         To    => Inst1MRa);
      
      
      Relationships_Rel_R14.Navigate (
         From  => fourthMiddle,
         Class => Root_Object.Relationships.assMR.Relationships_assMR_type'tag,
         To    => Inst1MRb);
      
      
      Relationships_Rel_R14.Navigate (
         From  => thirdMiddle,
         Class => Root_Object.Relationships.assMR.Relationships_assMR_type'tag,
         To    => Inst5MRa);
      
      
      Relationships_Rel_R14.Navigate (
         From  => fifthMiddle,
         Class => Root_Object.Relationships.assMR.Relationships_assMR_type'tag,
         To    => Inst5MRb);
      
      
      Relationships_Rel_R14.Navigate (
         From  => firstMR,
         Class => Root_Object.Relationships.RO.Relationships_RO_type'tag,
         To    => Inst2R);
      
      
      Relationships_Rel_R14.Navigate (
         From  => fifthMR,
         Class => Root_Object.Relationships.RO.Relationships_RO_type'tag,
         To    => Inst4R);
      
      
      No_In_Set_1M := Root_Object.Object_List.Count_Of(Set1M);
      
      --  Attempt to perform some illegal navigations
      
      if Root_Object.Object_List.Count_Of(Set1M) =  0 then
         
         if Inst1MRa =  Null then
            
            if Inst4R /= Null then
               Has_Failed   := True;
               Failure_Code := -30;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -20;
         end if;
         
      else
         Has_Failed := True;
         Failure_Code := -10;
      end if;
      
      
      if (not Has_Failed) then
         
         Root_Object.Object_List.Clear (
            From => SetLO);
         
         Root_Object.Relationships.LO.Find (
            Add_To => SetLO);
         
         
         Root_Object.Object_List.Clear (
            From => SetMO);
         
         Root_Object.Relationships.MO.Find (
            Add_To => SetMO);
         
         
         Root_Object.Object_List.Clear (
            From => SetRO);
         
         Root_Object.Relationships.RO.Find (
            Add_To => SetRO);
         
         
         Root_Object.Object_List.Clear (
            From => SetMRA);
         
         Root_Object.Relationships.assMR.Find (
            Add_To => SetMRA);
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetLO);
            
            while (Temp_Entry /= null) loop
               InstLO := Temp_Entry.Item;
               
               Root_Object.Relationships.LO.Delete (
                  Old_Instance => InstLO);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetLO);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetMO);
            
            while (Temp_Entry /= null) loop
               InstMO := Temp_Entry.Item;
               
               Root_Object.Relationships.MO.Delete (
                  Old_Instance => InstMO);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetMO);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetRO);
            
            while (Temp_Entry /= null) loop
               InstRO := Temp_Entry.Item;
               
               Root_Object.Relationships.RO.Delete (
                  Old_Instance => InstRO);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetRO);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetMRA);
            
            while (Temp_Entry /= null) loop
               InstMRA := Temp_Entry.Item;
               
               Root_Object.Relationships.assMR.Delete (
                  Old_Instance => InstMRA);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetMRA);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         Root_Object.Object_List.Clear (
            From => SetLO);
         
         Root_Object.Relationships.LO.Find (
            Add_To => SetLO);
         
         
         Root_Object.Object_List.Clear (
            From => SetMO);
         
         Root_Object.Relationships.MO.Find (
            Add_To => SetMO);
         
         
         Root_Object.Object_List.Clear (
            From => SetRO);
         
         Root_Object.Relationships.RO.Find (
            Add_To => SetRO);
         
         
         Root_Object.Object_List.Clear (
            From => SetMRA);
         
         Root_Object.Relationships.assMR.Find (
            Add_To => SetMRA);
         
         
         if Root_Object.Object_List.Count_Of(SetLO) =  0 then
            
            if Root_Object.Object_List.Count_Of(SetMO) =  0 then
               
               if Root_Object.Object_List.Count_Of(SetRO) =  0 then
                  
                  if Root_Object.Object_List.Count_Of(SetMRA) /= 0 then
                     Has_Failed   := True;
                     Failure_Code := -40;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -50;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -60;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -70;
            
         end if;
         
      end if;
      
      
      -- --------------------------------------------------------------------
      --  Test complete
      -- --------------------------------------------------------------------
      
      if Has_Failed then
         
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "MO                              ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "MO                              ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetMRA);
      Root_Object.Object_List.Destroy_List (SetRO);
      Root_Object.Object_List.Destroy_List (SetMO);
      Root_Object.Object_List.Destroy_List (SetLO);
      Root_Object.Object_List.Destroy_List (Set3M);
      Root_Object.Object_List.Destroy_List (Set2M);
      Root_Object.Object_List.Destroy_List (Set1M);
      
   end Relationships_MO3_Delete_Relationships;
   
end Relationships_MO3_Delete_Relationships_Service;

--
-- End of file Relationships_MO3_Delete_Relationships_Service.adb
--
