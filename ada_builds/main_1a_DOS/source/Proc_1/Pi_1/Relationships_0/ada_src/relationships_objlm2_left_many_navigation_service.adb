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
--* File Name:               Relationships_objLM2_Left_Many_Navigation_Service.adb
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
with Relationships_RPT4_Test_Unsupported_Bridge;
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


package body Relationships_objLM2_Left_Many_Navigation_Service is
   
   procedure Relationships_objLM2_Left_Many_Navigation (
      Iteration : in     Application_Types.Base_Integer_Type;
      Test      : in     Application_Types.Base_Integer_Type) is
      
      SetAssoc : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetBM    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetRM    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Assoc1   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Assoc2   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
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
      InstAssoc     : Root_Object.Object_Access;
      InstBM        : Root_Object.Object_Access;
      InstRM        : Root_Object.Object_Access;
      InstLM        : Root_Object.Object_Access;
      RMInst        : Root_Object.Object_Access;
      InstAssoc1    : Root_Object.Object_Access;
      InstAssoc2    : Root_Object.Object_Access;
      AssocInst1    : Root_Object.Object_Access;
      AssocInst2    : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      Val1         : Application_Types.Base_Integer_Type := 1;
      Val2         : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed      : Boolean := Application_Types.Boolean_first;
      Supported       : Boolean := Application_Types.Boolean_first;
      FirstInstFound  : Boolean := Application_Types.Boolean_first;
      SecondInstFound : Boolean := Application_Types.Boolean_first;
      ThirdInstFound  : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objLM2_Left_Many_Navigation
      
      -- --------------------------------------------------------------------
      --  Normal navigation
      --  The architecture shall implement  simple 1:M relationships
      --  1241-0000-01-0602
      --  The architecture shall implement associative 1-M:M relationships
      --  1241-0000-01-0610
      --  
      --  The architecture shall provide operations which, given a starting  
      --  instance handle and a relationship specification, return single
      --  handle of the related instance
      --  1241-0000-01-0701
      --  The architecture shall provide operations which, given a starting  
      --  instance handle and a relationship specification, return a set of
      --  handles of the related instance
      --  1241-0000-01-0702
      --  The architecture shall support chains of navigations expressed in 
      --  ASL 
      --  1241-0000-01-0704
      --  
      --  The architecture shall support navigations to associative objects
      --  expressed in ASL
      --  1241-0000-01-0706
      --  The architecture shall support navigations from singly associative
      --  objects expressed in ASL
      --  1241-0000-01-0707
      --  The architecture shall support a translation of the ASL navigate
      --  statment to map to the mechanism that allows the traversal of
      --  relationship links
      --  1241-0000-01-1205
      -- --------------------------------------------------------------------
      --  Initialise the variables
      Has_Failed   := False;
      Failure_Code := 0;
      Supported    := True;
      
      
      -- --------------------------------------------------------------------
      --  Find the desired instances for Left ManyObject
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
      
      
      --  Find the desired instances for Bottom Object
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
      
      
      -- --------------------------------------------------------------------
      --  Test 1 - Navigate from left many to associative object
      -- --------------------------------------------------------------------
      
      if Iteration =  1 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objLM                           ",
            Purpose         => "Nav from Left Many to Assoc     ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Root_Object.Object_List.Clear (
            From => SetAssoc);
         
         
         Relationships_Rel_R15.Navigate (
            From  => secondLM,
            Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
            To    => SetAssoc);
         
         if Root_Object.Object_List.Count_Of(SetAssoc) =  0 then
            
            Has_Failed := True;
            
         else
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
                  
                  if Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(InstAssoc.all).idLMRM /= 5 then
                     
                     Has_Failed   := True;
                     Failure_Code := -10;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetAssoc);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         end if;
         
      end if;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------
      --  Test 2 - Navigate from the associative object to the bottom object
      -- --------------------------------------------------------------------
      
      if Iteration =  2 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0707               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objLM                           ",
            Purpose         => "Assoc object to Bottom Object   ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Root_Object.Object_List.Clear (
            From => SetBM);
         
         
         Relationships_Rel_R16.Navigate (
            From  => thirdAssoc,
            Class => Root_Object.Relationships.objBM.Relationships_objBM_type'tag,
            To    => SetBM);
         
         if Root_Object.Object_List.Count_Of(SetBM) /= 2 then
            
            Has_Failed := True;
            
         else
            
            Val1 := -10;
            Val2 := -20;
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
                  
                  if Root_Object.Relationships.objBM.Relationships_objBM_type(InstBM.all).idBM =  1 then
                     Val1 := Root_Object.Relationships.objBM.Relationships_objBM_type(InstBM.all).idBM;
                  end if;
                  
                  
                  if Root_Object.Relationships.objBM.Relationships_objBM_type(InstBM.all).idBM =  5 then
                     Val2 := Root_Object.Relationships.objBM.Relationships_objBM_type(InstBM.all).idBM;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetBM);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Val1 =  1 then
               
               if Val2 /= 5 then
                  
                  Has_Failed := True;
                  Failure_Code := Val2;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := Val1;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------
      --  Test 3 - Chained navigation from object BM to associative obejct 
      --           then to object RM
      -- --------------------------------------------------------------------
      
      if Iteration =  3 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objLM                           ",
            Purpose         => "ObjBM to Assoc to ObjRM         ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0707               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R16.Navigate (
               From  => firstBM,
               Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R15.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objRM.Relationships_objRM_type'tag,
               To    => InstRM);
         end;
         
         if Root_Object.Relationships.objRM.Relationships_objRM_type(InstRM.all).idRM /= 1 then
            Has_Failed := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------
      --  Test 4 - Chained navigation from object BM to associative object 
      --           to object LM
      -- --------------------------------------------------------------------
      
      if Iteration =  4 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objLM                           ",
            Purpose         => "ObjBM to Assoc to ObjLM         ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0707               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R16.Navigate (
               From  => firstBM,
               Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R15.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objLM.Relationships_objLM_type'tag,
               To    => InstLM);
         end;
         
         if Root_Object.Relationships.objLM.Relationships_objLM_type(InstLM.all).idLM /= 3 then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------
      --  Test 5 - Full navigation
      -- --------------------------------------------------------------------
      
      if Iteration =  5 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objLM                           ",
            Purpose         => "Full navigation                 ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0706               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0707               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => secondLM,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R15.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => Temporary_Set);
            
            Relationships_Rel_R16.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.objBM.Relationships_objBM_type'tag,
               To    => Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => Second_Temporary_Set);
            
            Relationships_Rel_R16.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetRM);
            
            Relationships_Rel_R15.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.objRM.Relationships_objRM_type'tag,
               To    => SetRM);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         
         if Root_Object.Object_List.Count_Of(SetRM) /= 1 then
            Has_Failed   := True;
            Failure_Code := Root_Object.Object_List.Count_Of(SetRM);
            
         end if;
         
      end if;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------
      --  Test 6 - Correlated associative navigation
      -- --------------------------------------------------------------------
      
      if Iteration =  6 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objLM                           ",
            Purpose         => "Correlated Assoc                ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0701               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Root_Object.Object_List.Clear (
            From => Assoc1);
         
         
         Relationships_Rel_R15.Navigate (
            From  => firstLM,
            Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
            To    => Assoc1);
         
         Root_Object.Object_List.Clear (
            From => Assoc2);
         
         
         Relationships_Rel_R15.Navigate (
            From  => firstRM,
            Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
            To    => Assoc2);
         
         Root_Object.Object_List.Clear (
            From => SetRM);
         
         
         Relationships_Rel_R15.Navigate (
            From  => firstLM,
            Class => Root_Object.Relationships.objRM.Relationships_objRM_type'tag,
            To    => SetRM);
         
         FirstInstFound := False;
         SecondInstFound := False;
         ThirdInstFound  := False;
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetRM);
            
            while (Temp_Entry /= null) loop
               RMInst := Temp_Entry.Item;
               
               if Root_Object.Relationships.objRM.Relationships_objRM_type(RMInst.all).idRM =  1 then
                  
                  FirstInstFound := True;
                  
                  --
                  -- start of for loop
                  
                  declare
                     use type Root_Object.Object_List.Node_Access_Type;
                     Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                  begin
                     Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                        Target_List => Assoc1);
                     
                     while (Temp_Entry /= null) loop
                        InstAssoc1 := Temp_Entry.Item;
                        
                        if Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(InstAssoc1.all).idLMRM =  2 then
                           
                           SecondInstFound := True;
                           
                           --
                           -- start of for loop
                           
                           declare
                              use type Root_Object.Object_List.Node_Access_Type;
                              Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                           begin
                              Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                 Target_List => Assoc2);
                              
                              while (Temp_Entry /= null) loop
                                 InstAssoc2 := Temp_Entry.Item;
                                 
                                 if Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(InstAssoc2.all).idLMRM =  2 then
                                    
                                    ThirdInstFound := True;
                                    
                                    
                                    Relationships_Rel_R15.Navigate (
                                       From  => firstLM,
                                       Also  => firstRM,
                                       Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
                                       To    => InstAssoc);
                                    
                                 end if;
                                 
                                 
                                 Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                    Target_List => Assoc2);
                                 
                              end loop; -- end of (Temp_Entry /= null) loop
                              
                           end;
                           -- end of for loop
                           --
                           
                        end if;
                        
                        
                        Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                           Target_List => Assoc1);
                        
                     end loop; -- end of (Temp_Entry /= null) loop
                     
                  end;
                  -- end of for loop
                  --
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetRM);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         if FirstInstFound then
            
            if SecondInstFound then
               
               if ThirdInstFound then
                  
                  if InstAssoc /= Null then
                     
                     if Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(InstAssoc.all).idLMRM /= 2 then
                        
                        Has_Failed := True;
                        Failure_Code := Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(InstAssoc.all).idLMRM;
                     end if;
                     
                  else
                     Has_Failed := True;
                     Failure_Code := -20;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -30;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -40;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -50;
            
         end if;
         
      end if;
      
      
      --  End Test 6
      -- --------------------------------------------------------------------
      --  Test 7 - Navigate from the first instance of the right object to 
      --           the associative object to return a set
      -- --------------------------------------------------------------------
      
      if Iteration =  7 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objLM                           ",
            Purpose         => "ObjRM to Assoc to ObjBM         ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Root_Object.Object_List.Clear (
            From => SetAssoc);
         
         
         Relationships_Rel_R15.Navigate (
            From  => firstRM,
            Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
            To    => SetAssoc);
         
         if Root_Object.Object_List.Count_Of(SetAssoc) =  2 then
            
            Val1 := -10;
            Val2 := -20;
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
                  
                  if Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(InstAssoc.all).idLMRM =  2 then
                     Val1 := Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(InstAssoc.all).idLMRM;
                  end if;
                  
                  
                  if Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(InstAssoc.all).idLMRM =  4 then
                     Val2 := Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(InstAssoc.all).idLMRM;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetAssoc);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Val1 =  2 then
               
               if Val2 /= 4 then
                  
                  Has_Failed := True;
                  Failure_Code := Val2;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := Val1;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -30;
            
         end if;
         
      end if;
      
      
      --  End Test 7
      -- --------------------------------------------------------------------
      --  Test 8 - Correlated associative navigation from first instance of 
      --           the left many object and the first instance of the right
      --           many object to the associative object and then to the
      --           bottom many object
      --           N.B. Correlated associative navigation cannot form part of
      --           chained navigation
      -- --------------------------------------------------------------------
      
      if Iteration =  8 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objLM                           ",
            Purpose         => "ObjRM and Obj LM to Assoc to Obj");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0707               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0704               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Root_Object.Object_List.Clear (
            From => Assoc1);
         
         
         Relationships_Rel_R15.Navigate (
            From  => tenthLM,
            Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
            To    => Assoc1);
         
         Root_Object.Object_List.Clear (
            From => Assoc2);
         
         
         Relationships_Rel_R15.Navigate (
            From  => tenthRM,
            Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
            To    => Assoc2);
         
         FirstInstFound := False;
         SecondInstFound := False;
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Assoc1);
            
            while (Temp_Entry /= null) loop
               AssocInst1 := Temp_Entry.Item;
               
               if Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(AssocInst1.all).idLMRM =  10 then
                  
                  FirstInstFound := True;
                  
                  --
                  -- start of for loop
                  
                  declare
                     use type Root_Object.Object_List.Node_Access_Type;
                     Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                  begin
                     Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                        Target_List => Assoc2);
                     
                     while (Temp_Entry /= null) loop
                        AssocInst2 := Temp_Entry.Item;
                        
                        if Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(AssocInst2.all).idLMRM =  10 then
                           
                           SecondInstFound := True;
                           
                           
                           Relationships_Rel_R15.Navigate (
                              From  => tenthLM,
                              Also  => tenthRM,
                              Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
                              To    => InstAssoc);
                           
                        end if;
                        
                        
                        Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                           Target_List => Assoc2);
                        
                     end loop; -- end of (Temp_Entry /= null) loop
                     
                  end;
                  -- end of for loop
                  --
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Assoc1);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         if FirstInstFound then
            
            if SecondInstFound then
               
               if InstAssoc /= Null then
                  
                  Root_Object.Object_List.Clear (
                     From => SetBM);
                  
                  
                  Relationships_Rel_R16.Navigate (
                     From  => InstAssoc,
                     Class => Root_Object.Relationships.objBM.Relationships_objBM_type'tag,
                     To    => SetBM);
                  
                  if Root_Object.Object_List.Count_Of(SetBM) /= 1 then
                     
                     Has_Failed := True;
                     Failure_Code := -10;
                  else
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
                           
                           if Root_Object.Relationships.objBM.Relationships_objBM_type(InstBM.all).idBM /= 10 then
                              Has_Failed   := True;
                              Failure_Code := Root_Object.Relationships.objBM.Relationships_objBM_type(InstBM.all).idBM;
                           end if;
                           
                           
                           Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                              Target_List => SetBM);
                           
                        end loop; -- end of (Temp_Entry /= null) loop
                        
                     end;
                     -- end of for loop
                     --
                     
                  end if;
                  
               else
                  Has_Failed := True;
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
         
      end if;
      
      
      --  End Test 8
      -- --------------------------------------------------------------------
      --  Test 9 - Perform correlated associative navigation from the 11th
      --           instance of the Left Many object and the 11th instance of
      --           the Right Many object to the 8th instance of the 
      --           Associative object
      -- --------------------------------------------------------------------
      
      if Iteration =  9 then
         Failure_Code := 0;
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objLM                           ",
            Purpose         => "Correlated                      ");
         
         
         Relationships_Rel_R15.Navigate (
            From  => eleventhLM,
            Also  => eleventhRM,
            Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
            To    => InstAssoc);
         
         
         if InstAssoc /= Null then
            
            if Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(InstAssoc.all).idLMRM /= 8 then
               Has_Failed   := True;
               Failure_Code := -10;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 9
      -- --------------------------------------------------------------------
      --  Test 10 - Perform correlated associative navigation from the 10th
      --            instance of the Left Many object and the 11th instance of
      --            Right MAny object to the 11th instance of the Associative
      --            object
      -- --------------------------------------------------------------------
      
      if Iteration =  10 then
         Failure_Code := 0;
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objLM                           ",
            Purpose         => "Correlated                      ");
         
         
         Relationships_Rel_R15.Navigate (
            From  => tenthLM,
            Also  => eleventhRM,
            Class => Root_Object.Relationships.objLMRM.Relationships_objLMRM_type'tag,
            To    => InstAssoc);
         
         
         if InstAssoc /= Null then
            
            if Root_Object.Relationships.objLMRM.Relationships_objLMRM_type(InstAssoc.all).idLMRM /= 11 then
               Has_Failed   := True;
               Failure_Code := -10;
               
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 10
      -- --------------------------------------------------------------------
      --  Report start of the test
      -- --------------------------------------------------------------------
      
      if Supported =  True then
         
         if Has_Failed =  False then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "objLM                           ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "objLM                           ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Failure_Code);
            
         end if;
         
      else
         Relationships_RPT4_Test_Unsupported_Bridge.Relationships_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Assoc2);
      Root_Object.Object_List.Destroy_List (Assoc1);
      Root_Object.Object_List.Destroy_List (SetRM);
      Root_Object.Object_List.Destroy_List (SetBM);
      Root_Object.Object_List.Destroy_List (SetAssoc);
      
   end Relationships_objLM2_Left_Many_Navigation;
   
end Relationships_objLM2_Left_Many_Navigation_Service;

--
-- End of file Relationships_objLM2_Left_Many_Navigation_Service.adb
--
