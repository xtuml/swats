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
--* File Name:               Relationships_objLM3_Delete_Relationships_Service.adb
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
with Root_Object.Relationships.objLMRM;
with Root_Object.Relationships.objBM;
with Root_Object.Relationships.objRM;
with Root_Object.Relationships.objLM;

-- List of relationships used
with Relationships_rel_R15;
with Relationships_rel_R16;

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


package body Relationships_objLM3_Delete_Relationships_Service is
   
   procedure Relationships_objLM3_Delete_Relationships (
      Test : in     Application_Types.Base_Integer_Type) is
      
      SetAssoc : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetBM    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetLM    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetRM    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      firstLM       : Root_Object.Object_Access;
      secondLM      : Root_Object.Object_Access;
      thirdLM       : Root_Object.Object_Access;
      tenthLM       : Root_Object.Object_Access;
      eleventhLM    : Root_Object.Object_Access;
      twelthLM      : Root_Object.Object_Access;
      firstRM       : Root_Object.Object_Access;
      secondRM      : Root_Object.Object_Access;
      thirdRM       : Root_Object.Object_Access;
      tenthRM       : Root_Object.Object_Access;
      eleventhRM    : Root_Object.Object_Access;
      twelthRM      : Root_Object.Object_Access;
      firstBM       : Root_Object.Object_Access;
      thirdBM       : Root_Object.Object_Access;
      fourthBM      : Root_Object.Object_Access;
      fifthBM       : Root_Object.Object_Access;
      tenthBM       : Root_Object.Object_Access;
      secondAssoc   : Root_Object.Object_Access;
      thirdAssoc    : Root_Object.Object_Access;
      fourthAssoc   : Root_Object.Object_Access;
      fifthAssoc    : Root_Object.Object_Access;
      eighthAssoc   : Root_Object.Object_Access;
      ninthAssoc    : Root_Object.Object_Access;
      tenthAssoc    : Root_Object.Object_Access;
      eleventhAssoc : Root_Object.Object_Access;
      twelthAssoc   : Root_Object.Object_Access;
      InstRM        : Root_Object.Object_Access;
      InstLM        : Root_Object.Object_Access;
      InstAssoc     : Root_Object.Object_Access;
      InstBM        : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objLM3_Delete_Relationships
      
      -- --------------------------------------------------------------------
      --  Delete all relationships
      --  The architecture shall provide a mapping from the ASL delete
      --  instance statement to the deletion mechanism
      --  1241-0000-01-0121
      --  The architecture shall provide a mechanism to allow deletion of a 
      --  simple relational link between two object instances
      --  1241-0000-01-0604
      --  The architecture shall provide a mechanism to allow the deletion of
      --  an associative object and the link between two objects
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
      --  Initialise the variables
      Has_Failed   := False;
      Failure_Code := 0;
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0604               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objLM                           ",
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
      
      
      --  Find the desired instances for Left Many Object
      firstLM := Root_Object.Relationships.objLM.Conditional_Find_One;
      while (firstLM /= null) and then (not (Root_Object.Relationships.objLM.Relationships_objLM_Type(firstLM.all).idLM =  1) ) loop
         
         firstLM := firstLM.Next_Object;
      end loop;
      
      secondLM := Root_Object.Relationships.objLM.Conditional_Find_One;
      while (secondLM /= null) and then (not (Root_Object.Relationships.objLM.Relationships_objLM_Type(secondLM.all).idLM =  2) ) loop
         
         secondLM := secondLM.Next_Object;
      end loop;
      
      thirdLM := Root_Object.Relationships.objLM.Conditional_Find_One;
      while (thirdLM /= null) and then (not (Root_Object.Relationships.objLM.Relationships_objLM_Type(thirdLM.all).idLM =  3) ) loop
         
         thirdLM := thirdLM.Next_Object;
      end loop;
      
      tenthLM := Root_Object.Relationships.objLM.Conditional_Find_One;
      while (tenthLM /= null) and then (not (Root_Object.Relationships.objLM.Relationships_objLM_Type(tenthLM.all).idLM =  10) ) loop
         
         tenthLM := tenthLM.Next_Object;
      end loop;
      
      eleventhLM := Root_Object.Relationships.objLM.Conditional_Find_One;
      while (eleventhLM /= null) and then (not (Root_Object.Relationships.objLM.Relationships_objLM_Type(eleventhLM.all).idLM =  11) ) loop
         
         eleventhLM := eleventhLM.Next_Object;
      end loop;
      
      twelthLM := Root_Object.Relationships.objLM.Conditional_Find_One;
      while (twelthLM /= null) and then (not (Root_Object.Relationships.objLM.Relationships_objLM_Type(twelthLM.all).idLM =  12) ) loop
         
         twelthLM := twelthLM.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Right Many Object
      firstRM := Root_Object.Relationships.objRM.Conditional_Find_One;
      while (firstRM /= null) and then (not (Root_Object.Relationships.objRM.Relationships_objRM_Type(firstRM.all).idRM =  1) ) loop
         
         firstRM := firstRM.Next_Object;
      end loop;
      
      secondRM := Root_Object.Relationships.objRM.Conditional_Find_One;
      while (secondRM /= null) and then (not (Root_Object.Relationships.objRM.Relationships_objRM_Type(secondRM.all).idRM =  2) ) loop
         
         secondRM := secondRM.Next_Object;
      end loop;
      
      thirdRM := Root_Object.Relationships.objRM.Conditional_Find_One;
      while (thirdRM /= null) and then (not (Root_Object.Relationships.objRM.Relationships_objRM_Type(thirdRM.all).idRM =  3) ) loop
         
         thirdRM := thirdRM.Next_Object;
      end loop;
      
      tenthRM := Root_Object.Relationships.objRM.Conditional_Find_One;
      while (tenthRM /= null) and then (not (Root_Object.Relationships.objRM.Relationships_objRM_Type(tenthRM.all).idRM =  10) ) loop
         
         tenthRM := tenthRM.Next_Object;
      end loop;
      
      eleventhRM := Root_Object.Relationships.objRM.Conditional_Find_One;
      while (eleventhRM /= null) and then (not (Root_Object.Relationships.objRM.Relationships_objRM_Type(eleventhRM.all).idRM =  11) ) loop
         
         eleventhRM := eleventhRM.Next_Object;
      end loop;
      
      twelthRM := Root_Object.Relationships.objRM.Conditional_Find_One;
      while (twelthRM /= null) and then (not (Root_Object.Relationships.objRM.Relationships_objRM_Type(twelthRM.all).idRM =  12) ) loop
         
         twelthRM := twelthRM.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Bottom Many Object
      firstBM := Root_Object.Relationships.objBM.Conditional_Find_One;
      while (firstBM /= null) and then (not (Root_Object.Relationships.objBM.Relationships_objBM_Type(firstBM.all).idBM =  1) ) loop
         
         firstBM := firstBM.Next_Object;
      end loop;
      
      thirdBM := Root_Object.Relationships.objBM.Conditional_Find_One;
      while (thirdBM /= null) and then (not (Root_Object.Relationships.objBM.Relationships_objBM_Type(thirdBM.all).idBM =  3) ) loop
         
         thirdBM := thirdBM.Next_Object;
      end loop;
      
      fourthBM := Root_Object.Relationships.objBM.Conditional_Find_One;
      while (fourthBM /= null) and then (not (Root_Object.Relationships.objBM.Relationships_objBM_Type(fourthBM.all).idBM =  4) ) loop
         
         fourthBM := fourthBM.Next_Object;
      end loop;
      
      fifthBM := Root_Object.Relationships.objBM.Conditional_Find_One;
      while (fifthBM /= null) and then (not (Root_Object.Relationships.objBM.Relationships_objBM_Type(fifthBM.all).idBM =  5) ) loop
         
         fifthBM := fifthBM.Next_Object;
      end loop;
      
      tenthBM := Root_Object.Relationships.objBM.Conditional_Find_One;
      while (tenthBM /= null) and then (not (Root_Object.Relationships.objBM.Relationships_objBM_Type(tenthBM.all).idBM =  10) ) loop
         
         tenthBM := tenthBM.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Associative Object
      secondAssoc := Root_Object.Relationships.objLMRM.Conditional_Find_One;
      while (secondAssoc /= null) and then (not (Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(secondAssoc.all).idLMRM =  2) ) loop
         
         secondAssoc := secondAssoc.Next_Object;
      end loop;
      
      thirdAssoc := Root_Object.Relationships.objLMRM.Conditional_Find_One;
      while (thirdAssoc /= null) and then (not (Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(thirdAssoc.all).idLMRM =  3) ) loop
         
         thirdAssoc := thirdAssoc.Next_Object;
      end loop;
      
      fourthAssoc := Root_Object.Relationships.objLMRM.Conditional_Find_One;
      while (fourthAssoc /= null) and then (not (Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(fourthAssoc.all).idLMRM =  4) ) loop
         
         fourthAssoc := fourthAssoc.Next_Object;
      end loop;
      
      fifthAssoc := Root_Object.Relationships.objLMRM.Conditional_Find_One;
      while (fifthAssoc /= null) and then (not (Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(fifthAssoc.all).idLMRM =  5) ) loop
         
         fifthAssoc := fifthAssoc.Next_Object;
      end loop;
      
      eighthAssoc := Root_Object.Relationships.objLMRM.Conditional_Find_One;
      while (eighthAssoc /= null) and then (not (Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(eighthAssoc.all).idLMRM =  8) ) loop
         
         eighthAssoc := eighthAssoc.Next_Object;
      end loop;
      
      ninthAssoc := Root_Object.Relationships.objLMRM.Conditional_Find_One;
      while (ninthAssoc /= null) and then (not (Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(ninthAssoc.all).idLMRM =  9) ) loop
         
         ninthAssoc := ninthAssoc.Next_Object;
      end loop;
      
      tenthAssoc := Root_Object.Relationships.objLMRM.Conditional_Find_One;
      while (tenthAssoc /= null) and then (not (Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(tenthAssoc.all).idLMRM =  10) ) loop
         
         tenthAssoc := tenthAssoc.Next_Object;
      end loop;
      
      eleventhAssoc := Root_Object.Relationships.objLMRM.Conditional_Find_One;
      while (eleventhAssoc /= null) and then (not (Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(eleventhAssoc.all).idLMRM =  11) ) loop
         
         eleventhAssoc := eleventhAssoc.Next_Object;
      end loop;
      
      twelthAssoc := Root_Object.Relationships.objLMRM.Conditional_Find_One;
      while (twelthAssoc /= null) and then (not (Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(twelthAssoc.all).idLMRM =  12) ) loop
         
         twelthAssoc := twelthAssoc.Next_Object;
      end loop;
      
      
      --  Delete all relationships
      
      Relationships_Rel_R15.Unassociate(
         A_Instance => firstLM,
         B_Instance => firstRM,
         From       => secondAssoc);
      
      Relationships_Rel_R15.Unassociate(
         A_Instance => firstLM,
         B_Instance => thirdRM,
         From       => thirdAssoc);
      
      Relationships_Rel_R15.Unassociate(
         A_Instance => secondLM,
         B_Instance => secondRM,
         From       => fifthAssoc);
      
      Relationships_Rel_R15.Unassociate(
         A_Instance => thirdLM,
         B_Instance => firstRM,
         From       => fourthAssoc);
      
      Relationships_Rel_R15.Unassociate(
         A_Instance => tenthLM,
         B_Instance => tenthRM,
         From       => tenthAssoc);
      
      Relationships_Rel_R15.Unassociate(
         A_Instance => tenthLM,
         B_Instance => eleventhRM,
         From       => eleventhAssoc);
      
      Relationships_Rel_R15.Unassociate(
         A_Instance => tenthLM,
         B_Instance => twelthRM,
         From       => twelthAssoc);
      
      Relationships_Rel_R15.Unassociate(
         A_Instance => eleventhLM,
         B_Instance => eleventhRM,
         From       => eighthAssoc);
      
      Relationships_Rel_R15.Unassociate(
         A_Instance => twelthLM,
         B_Instance => eleventhRM,
         From       => ninthAssoc);
      
      Relationships_Rel_R16.Unlink (
         A_Instance => tenthAssoc,
         B_Instance => tenthBM);
      
      
      Relationships_Rel_R16.Unlink (
         A_Instance => secondAssoc,
         B_Instance => firstBM);
      
      
      Relationships_Rel_R16.Unlink (
         A_Instance => thirdAssoc,
         B_Instance => firstBM);
      
      
      Relationships_Rel_R16.Unlink (
         A_Instance => thirdAssoc,
         B_Instance => fifthBM);
      
      
      Relationships_Rel_R16.Unlink (
         A_Instance => fourthAssoc,
         B_Instance => firstBM);
      
      
      Relationships_Rel_R16.Unlink (
         A_Instance => fourthAssoc,
         B_Instance => thirdBM);
      
      
      Relationships_Rel_R16.Unlink (
         A_Instance => fifthAssoc,
         B_Instance => fourthBM);
      
      
      Relationships_Rel_R15.Unlink (
         A_Instance => firstLM,
         B_Instance => firstRM);
      
      
      Relationships_Rel_R15.Unlink (
         A_Instance => firstLM,
         B_Instance => thirdRM);
      
      
      Relationships_Rel_R15.Unlink (
         A_Instance => secondLM,
         B_Instance => secondRM);
      
      
      Relationships_Rel_R15.Unlink (
         A_Instance => thirdLM,
         B_Instance => firstRM);
      
      
      Relationships_Rel_R15.Unlink (
         A_Instance => tenthLM,
         B_Instance => tenthRM);
      
      
      Relationships_Rel_R15.Unlink (
         A_Instance => tenthLM,
         B_Instance => eleventhRM);
      
      
      Relationships_Rel_R15.Unlink (
         A_Instance => tenthLM,
         B_Instance => twelthRM);
      
      
      Relationships_Rel_R15.Unlink (
         A_Instance => eleventhLM,
         B_Instance => eleventhRM);
      
      
      Relationships_Rel_R15.Unlink (
         A_Instance => twelthLM,
         B_Instance => eleventhRM);
      
      
      --  Test that the unlinking has been performed
      
      Root_Object.Object_List.Clear (
         From => SetAssoc);
      
      
      Relationships_Rel_R15.Navigate (
         From  => firstLM,
         Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
         To    => SetAssoc);
      
      Root_Object.Object_List.Clear (
         From => SetBM);
      
      
      Relationships_Rel_R16.Navigate (
         From  => thirdAssoc,
         Class => Root_Object.Relationships.objBM.Relationships_objBM_type'tag,
         To    => SetBM);
      
      Relationships_Rel_R15.Navigate (
         From  => fifthAssoc,
         Class => Root_Object.Relationships.objRM.Relationships_objRM_type'tag,
         To    => InstRM);
      
      
      if Root_Object.Object_List.Count_Of(SetAssoc) =  0 then
         
         if Root_Object.Object_List.Count_Of(SetBM) =  0 then
            
            if InstRM /= Null then
               Has_Failed   := True;
               Failure_Code := -10;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -20;
         end if;
         
      else
         Has_Failed := True;
         Failure_Code := -30;
      end if;
      
      
      if (not Has_Failed) then
         
         Root_Object.Object_List.Clear (
            From => SetLM);
         
         Root_Object.Relationships.objLM.Find (
            Add_To => SetLM);
         
         
         Root_Object.Object_List.Clear (
            From => SetRM);
         
         Root_Object.Relationships.objRM.Find (
            Add_To => SetRM);
         
         
         Root_Object.Object_List.Clear (
            From => SetAssoc);
         
         Root_Object.Relationships.objLMRM.Find (
            Add_To => SetAssoc);
         
         
         Root_Object.Object_List.Clear (
            From => SetBM);
         
         Root_Object.Relationships.objBM.Find (
            Add_To => SetBM);
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetLM);
            
            while (Temp_Entry /= null) loop
               InstLM := Temp_Entry.Item;
               
               Root_Object.Relationships.objLM.Delete (
                  Old_Instance => InstLM);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetLM);
               
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
               Target_List => SetRM);
            
            while (Temp_Entry /= null) loop
               InstRM := Temp_Entry.Item;
               
               Root_Object.Relationships.objRM.Delete (
                  Old_Instance => InstRM);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetRM);
               
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
               Target_List => SetAssoc);
            
            while (Temp_Entry /= null) loop
               InstAssoc := Temp_Entry.Item;
               
               Root_Object.Relationships.objLMRM.Delete (
                  Old_Instance => InstAssoc);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetAssoc);
               
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
               Target_List => SetBM);
            
            while (Temp_Entry /= null) loop
               InstBM := Temp_Entry.Item;
               
               Root_Object.Relationships.objBM.Delete (
                  Old_Instance => InstBM);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetBM);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         Root_Object.Object_List.Clear (
            From => SetLM);
         
         Root_Object.Relationships.objLM.Find (
            Add_To => SetLM);
         
         
         Root_Object.Object_List.Clear (
            From => SetRM);
         
         Root_Object.Relationships.objRM.Find (
            Add_To => SetRM);
         
         
         Root_Object.Object_List.Clear (
            From => SetAssoc);
         
         Root_Object.Relationships.objLMRM.Find (
            Add_To => SetAssoc);
         
         
         Root_Object.Object_List.Clear (
            From => SetBM);
         
         Root_Object.Relationships.objBM.Find (
            Add_To => SetBM);
         
         
         if Root_Object.Object_List.Count_Of(SetLM) =  0 then
            
            if Root_Object.Object_List.Count_Of(SetRM) =  0 then
               
               if Root_Object.Object_List.Count_Of(SetAssoc) =  0 then
                  
                  if Root_Object.Object_List.Count_Of(SetBM) /= 0 then
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
            Failed_Domain_Object => "objLM                           ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "objLM                           ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetRM);
      Root_Object.Object_List.Destroy_List (SetLM);
      Root_Object.Object_List.Destroy_List (SetBM);
      Root_Object.Object_List.Destroy_List (SetAssoc);
      
   end Relationships_objLM3_Delete_Relationships;
   
end Relationships_objLM3_Delete_Relationships_Service;

--
-- End of file Relationships_objLM3_Delete_Relationships_Service.adb
--
