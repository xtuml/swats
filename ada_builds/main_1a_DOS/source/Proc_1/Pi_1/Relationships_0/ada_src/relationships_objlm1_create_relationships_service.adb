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
--* File Name:               Relationships_objLM1_Create_Relationships_Service.adb
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
with Root_Object.Relationships.objBM;
with Root_Object.Relationships.objLMRM;
with Root_Object.Relationships.objRM;
with Root_Object.Relationships.objLM;

-- List of relationships used
with Relationships_rel_R16;
with Relationships_rel_R15;

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


package body Relationships_objLM1_Create_Relationships_Service is
   
   procedure Relationships_objLM1_Create_Relationships (
      Test : in     Application_Types.Base_Integer_Type) is
      
      A_RM_Set         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      A_BM_Set         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      A_Assoc_Instance : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
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
      secondAssoc   : Root_Object.Object_Access;
      thirdAssoc    : Root_Object.Object_Access;
      fourthAssoc   : Root_Object.Object_Access;
      fifthAssoc    : Root_Object.Object_Access;
      eighthAssoc   : Root_Object.Object_Access;
      ninthAssoc    : Root_Object.Object_Access;
      tenthAssoc    : Root_Object.Object_Access;
      eleventhAssoc : Root_Object.Object_Access;
      twelthAssoc   : Root_Object.Object_Access;
      firstBM       : Root_Object.Object_Access;
      thirdBM       : Root_Object.Object_Access;
      fourthBM      : Root_Object.Object_Access;
      fifthBM       : Root_Object.Object_Access;
      tenthBM       : Root_Object.Object_Access;
      
      No_In_BM_Set : Application_Types.Base_Integer_Type := 1;
      No_In_Set    : Application_Types.Base_Integer_Type := 1;
      No_In_Assoc  : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objLM1_Create_Relationships
      
      -- --------------------------------------------------------------------
      --  Create relationships
      --  The architecture shall support the creation of a new object 
      --  instance at application start or and during execution
      --  1241-0000-01-0101
      --  A mapping shall be provided for the ASL create statment, including 
      --  the extension which allows some or all atributes to be specified
      --  1241-0000-01-0102
      --  The architecture shall provide a mechanism to allow creation of a 
      --  simple relationship link between two object instances
      --  1241-0000-01-0603
      --  The architectureshall support a translation of the ASL link 
      --  statement to map to the mechanism that allows creation of a 
      --  relationship link between two object instances
      --  1241-0000-01-1202
      --  The architecture shall support a translation of the ASL navigate
      --  statment to map to the mechanism that allows the traversal of
      --  relationship links
      --  1241-0000-01-1205
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0603               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objLM                           ",
         Purpose         => "Create relationships            ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1202               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0611               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0612               ");
      
      Has_Failed := True;
      
      
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
      
      
      --  Create associative Mc:Mc relationships
      Relationships_Rel_R15.Link (
         A_Instance => firstLM,
         B_Instance => firstRM,
         Using      => secondAssoc);
      
      Relationships_Rel_R15.Link (
         A_Instance => firstLM,
         B_Instance => thirdRM,
         Using      => thirdAssoc);
      
      Relationships_Rel_R15.Link (
         A_Instance => secondLM,
         B_Instance => secondRM,
         Using      => fifthAssoc);
      
      Relationships_Rel_R15.Link (
         A_Instance => thirdLM,
         B_Instance => firstRM,
         Using      => fourthAssoc);
      
      Relationships_Rel_R15.Link (
         A_Instance => tenthLM,
         B_Instance => tenthRM,
         Using      => tenthAssoc);
      
      Relationships_Rel_R15.Link (
         A_Instance => tenthLM,
         B_Instance => eleventhRM,
         Using      => eleventhAssoc);
      
      Relationships_Rel_R15.Link (
         A_Instance => tenthLM,
         B_Instance => twelthRM,
         Using      => twelthAssoc);
      
      Relationships_Rel_R15.Link (
         A_Instance => eleventhLM,
         B_Instance => eleventhRM,
         Using      => eighthAssoc);
      
      Relationships_Rel_R15.Link (
         A_Instance => twelthLM,
         B_Instance => eleventhRM,
         Using      => ninthAssoc);
      
      
      --  Create normal 1:Mc relationships
      Relationships_Rel_R16.Link (
         A_Instance => secondAssoc,
         B_Instance => firstBM);
      
      Relationships_Rel_R16.Link (
         A_Instance => thirdAssoc,
         B_Instance => firstBM);
      
      Relationships_Rel_R16.Link (
         A_Instance => thirdAssoc,
         B_Instance => fifthBM);
      
      Relationships_Rel_R16.Link (
         A_Instance => fourthAssoc,
         B_Instance => firstBM);
      
      Relationships_Rel_R16.Link (
         A_Instance => fourthAssoc,
         B_Instance => thirdBM);
      
      Relationships_Rel_R16.Link (
         A_Instance => fifthAssoc,
         B_Instance => fourthBM);
      
      Relationships_Rel_R16.Link (
         A_Instance => tenthAssoc,
         B_Instance => tenthBM);
      
      
      --  Create a couple of instances to prove the relationships
      --  For coding purposes, it is necessary to overspecify
      --  the relationship.
      
      Root_Object.Object_List.Clear (
         From => A_RM_Set);
      
      
      Relationships_Rel_R15.Navigate (
         From  => firstLM,
         Class => Root_Object.Relationships.objRM.Relationships_objRM_type'tag,
         To    => A_RM_Set);
      
      Root_Object.Object_List.Clear (
         From => A_BM_Set);
      
      
      Relationships_Rel_R16.Navigate (
         From  => fourthAssoc,
         Class => Root_Object.Relationships.objBM.Relationships_objBM_type'tag,
         To    => A_BM_Set);
      
      Root_Object.Object_List.Clear (
         From => A_Assoc_Instance);
      
      
      Relationships_Rel_R15.Navigate (
         From  => thirdLM,
         Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
         To    => A_Assoc_Instance);
      
      No_In_BM_Set := Root_Object.Object_List.Count_Of(A_BM_Set);
      No_In_Set    := Root_Object.Object_List.Count_Of(A_RM_Set);
      No_In_Assoc  := Root_Object.Object_List.Count_Of(A_Assoc_Instance);
      
      
      --  Now check that the navigations can be performed
      
      if No_In_Set /= 0 and then
         No_In_BM_Set /= 0 and then
         No_In_Assoc  /= 0 then
         
         Has_Failed := False;
         
      end if;
      
      
      -- --------------------------------------------------------------------
      --  Test complete
      -- --------------------------------------------------------------------
      
      if Has_Failed then
         
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objLM                           ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
      else
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "objLM                           ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (A_Assoc_Instance);
      Root_Object.Object_List.Destroy_List (A_BM_Set);
      Root_Object.Object_List.Destroy_List (A_RM_Set);
      
   end Relationships_objLM1_Create_Relationships;
   
end Relationships_objLM1_Create_Relationships_Service;

--
-- End of file Relationships_objLM1_Create_Relationships_Service.adb
--
