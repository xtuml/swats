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
--* File Name:               Relationships_MO2_Middle_Object_Navigation_Service.adb
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
with Relationships_RPT4_Test_Unsupported_Bridge;
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT5_Test_Text_Bridge;
with Relationships_RPT8_Specify_Requid_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_MO2_Middle_Object_Navigation_Service is
   
   procedure Relationships_MO2_Middle_Object_Navigation (
      Iteration : in     Application_Types.Base_Integer_Type;
      Test      : in     Application_Types.Base_Integer_Type) is
      
      SetMO    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetAssoc : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetRO    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetLO    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      firstLeft    : Root_Object.Object_Access;
      secondLeft   : Root_Object.Object_Access;
      thirdLeft    : Root_Object.Object_Access;
      firstMiddle  : Root_Object.Object_Access;
      thirdMiddle  : Root_Object.Object_Access;
      fourthMiddle : Root_Object.Object_Access;
      fifthMiddle  : Root_Object.Object_Access;
      secondRight  : Root_Object.Object_Access;
      fourthRight  : Root_Object.Object_Access;
      fifthRight   : Root_Object.Object_Access;
      firstMR      : Root_Object.Object_Access;
      secondMR     : Root_Object.Object_Access;
      InstMO       : Root_Object.Object_Access;
      InstLO       : Root_Object.Object_Access;
      InstRO       : Root_Object.Object_Access;
      InstAssoc    : Root_Object.Object_Access;
      bigMiddle    : Root_Object.Object_Access;
      bigRight     : Root_Object.Object_Access;
      
      Val1         : Application_Types.Base_Integer_Type := 1;
      Val2         : Application_Types.Base_Integer_Type := 1;
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      No_In_Set    : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      Supported  : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of MO2_Middle_Object_Navigation
      
      -- --------------------------------------------------------------------
      --  Normal navigation
      --  
      --  The architecture shall implement simple 1:M relationships
      --  1241-0000-01-0602
      --  The architecture shall implement associative 1-1:M relationships
      --  1241-0000-01-0609
      --  The architecture shall provide operations which, given a starting 
      --  instance handle and a relationshipspecification, return a single 
      --  handle of the related instance
      --  1241-0000-01-0701
      --  The architecture shall provide operations which, given a starting 
      --  instance handle and a relationship specification , return a set of
      --  handles of the related instances
      --  1241-0000-01-0702
      --  The architecture shall support chains of navigations expressed in 
      --  ASL
      --  1241-0000-01-0704
      --  The architecture shall support navigations to associative objects
      --  expressed in ASL
      --  1241-0000-01-0706
      --  The architecture shall support navigations from singly associative
      --  objects expressed in ASL
      --  1241-0000-01-0707
      --  The architectureshall support a translation of the ASL link 
      --  statement to map to the mechanism that allows creation of a 
      --  relationship link between two object instances
      --  1241-0000-01-1202
      --  The architecture shall support a translation of the ASL navigate
      --  statment to map to the mechanism that allows the traversal of
      --  relationship links
      --  1241-0000-01-1205
      -- --------------------------------------------------------------------
      --  Initialise the fault flag
      Has_Failed := False;
      Supported  := True;
      
      -- --------------------------------------------------------------------
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
      
      
      --  Find the desired instances Associative Object
      firstMR := Root_Object.Relationships.assMR.Conditional_Find_One;
      while (firstMR /= null) and then (not (Root_Object.Relationships.assMR.Relationships_assMR_Type(firstMR.all).idMR =  1) ) loop
         
         firstMR := firstMR.Next_Object;
      end loop;
      
      secondMR := Root_Object.Relationships.assMR.Conditional_Find_One;
      while (secondMR /= null) and then (not (Root_Object.Relationships.assMR.Relationships_assMR_Type(secondMR.all).idMR =  2) ) loop
         
         secondMR := secondMR.Next_Object;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Test 1 - Navigate from Left to Middle using relationship number
      -- --------------------------------------------------------------------
      
      if Iteration =  1 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0702               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Navigate from Left to Middle    ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetMO);
         
         
         Relationships_Rel_R12.Navigate (
            From  => firstLeft,
            Class => Root_Object.Relationships.MO.Relationships_MO_type'tag,
            To    => SetMO);
         
         if Root_Object.Object_List.Count_Of(SetMO) =  0 then
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
                  Target_List => SetMO);
               
               while (Temp_Entry /= null) loop
                  InstMO := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.MO.Relationships_MO_type(InstMO.all).idMO =  1 then
                     Val1 := Root_Object.Relationships.MO.Relationships_MO_type(InstMO.all).idMO;
                  end if;
                  
                  
                  if Root_Object.Relationships.MO.Relationships_MO_type(InstMO.all).idMO =  3 then
                     Val2 := Root_Object.Relationships.MO.Relationships_MO_type(InstMO.all).idMO;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetMO);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Val1 =  1 then
               
               if Val2 /= 3 then
                  
                  Has_Failed := True;
                  Failure_Code := Val2;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := Val1;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------
      --  Test 2 - Navigate From Middle To Left using relationship number
      -- --------------------------------------------------------------------
      
      if Iteration =  2 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0701               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Navigate From Middle To Left    ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R12.Navigate (
            From  => fifthMiddle,
            Class => Root_Object.Relationships.LO.Relationships_LO_type'tag,
            To    => InstLO);
         
         
         --  Check the result of the navigation
         
         if InstLO /= Null then
            
            if Root_Object.Relationships.LO.Relationships_LO_type(InstLO.all).idLO /= 2 then
               Has_Failed   := True;
               Failure_Code := -10;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------
      --  Test 3 - Navigate from an instance of the middle object to an
      --           instance in the right object using relationship number
      -- --------------------------------------------------------------------
      
      if Iteration =  3 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0701               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Navigate From Middle To Right   ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R14.Navigate (
            From  => firstMiddle,
            Class => Root_Object.Relationships.RO.Relationships_RO_type'tag,
            To    => InstRO);
         
         
         --  Check the result of the navigation
         
         if InstRO /= Null then
            
            if Root_Object.Relationships.RO.Relationships_RO_type(InstRO.all).idRO /= 2 then
               Has_Failed   := True;
               Failure_Code := Root_Object.Relationships.RO.Relationships_RO_type(InstRO.all).idRO;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -20;
         end if;
         
      end if;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------
      --  Test 4 - Navigate from an instance in the right object to a set in
      --           the middle object
      -- --------------------------------------------------------------------
      
      if Iteration =  4 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0702               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Navigate From Right To Middle   ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetMO);
         
         
         Relationships_Rel_R14.Navigate (
            From  => fourthRight,
            Class => Root_Object.Relationships.MO.Relationships_MO_type'tag,
            To    => SetMO);
         
         if Root_Object.Object_List.Count_Of(SetMO) =  0 then
            Has_Failed   := True;
            Failure_Code := -10;
            
         else
            
            Val1 := -20;
            Val2 := -30;
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
                  
                  if (Root_Object.Relationships.MO.Relationships_MO_type(InstMO.all).idMO =  3) then
                     Val1 := Root_Object.Relationships.MO.Relationships_MO_type(InstMO.all).idMO;
                  end if;
                  
                  
                  if Root_Object.Relationships.MO.Relationships_MO_type(InstMO.all).idMO =  5 then
                     Val2 := Root_Object.Relationships.MO.Relationships_MO_type(InstMO.all).idMO;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetMO);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Val1 =  3 then
               
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
      
      
      --  End Test 4
      -- --------------------------------------------------------------------
      --  Test 5 - Navigate to the associative object from the Middle Object
      -- --------------------------------------------------------------------
      
      if Iteration =  5 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Nav from MO to Assoc            ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Relationships_Rel_R14.Navigate (
            From  => firstMiddle,
            Class => Root_Object.Relationships.assMR.Relationships_assMR_type'tag,
            To    => InstAssoc);
         
         
         if InstAssoc /= Null then
            
            if Root_Object.Relationships.assMR.Relationships_assMR_type(InstAssoc.all).idMR /= 1 then
               Has_Failed   := True;
               Failure_Code := Root_Object.Relationships.assMR.Relationships_assMR_type(InstAssoc.all).idMR;
               
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------
      --  Test 6 - Navigation from a set of instance handles as the source
      -- --------------------------------------------------------------------
      
      if Iteration =  6 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0703               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Navigation from set of IH       ");
         
         Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "Naviagation from sets unsupporte");
         
         
         Supported := False;
         
      end if;
      
      
      --  End Test 6
      -- --------------------------------------------------------------------
      --  Test 7 - Attempt to perform a navigation on instance that is not 
      --           linked to another instance
      -- --------------------------------------------------------------------
      
      if Iteration =  7 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Nav non-linked rel M to L       ");
         
         
         --  Fourth Middle is not currently linked to any instances of Left Object.
         --  Perform the navigation
         
         Relationships_Rel_R12.Navigate (
            From  => fourthMiddle,
            Class => Root_Object.Relationships.LO.Relationships_LO_type'tag,
            To    => InstLO);
         
         
         --  Check the result of the navigation
         
         if InstLO /= Null then
            
            Has_Failed := True;
            
         end if;
         
      end if;
      
      
      --  End Test 7
      -- --------------------------------------------------------------------
      --  Test 8 - Attempt to perform a navigation on instance that is not 
      --           linked to another instance
      -- --------------------------------------------------------------------
      
      if Iteration =  8 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Nav non-linked rel M to R       ");
         
         
         --  Create two new instances
         
         bigMiddle := Root_Object.Relationships.MO.Create;
         Root_Object.Relationships.MO.Relationships_MO_Type(bigMiddle.all).idMO := 1975;
         
         
         bigRight := Root_Object.Relationships.RO.Create;
         Root_Object.Relationships.RO.Relationships_RO_Type(bigRight.all).idRO := 2001;
         
         
         --  Seventh Middle is not currently linked to any instances of Right Object.
         --  Perform the navigation
         
         Relationships_Rel_R14.Navigate (
            From  => bigMiddle,
            Class => Root_Object.Relationships.RO.Relationships_RO_type'tag,
            To    => InstRO);
         
         
         --  Check the result of the navigation
         
         if InstRO /= Null then
            
            Failure_Code := Root_Object.Relationships.RO.Relationships_RO_type(InstRO.all).idRO;
            Has_Failed   := True;
         end if;
         
      end if;
      
      
      --  End Test 8
      -- --------------------------------------------------------------------
      --  Test 9 - Attempt to perform a navigation on instance that is not 
      --           linked to another instance
      -- --------------------------------------------------------------------
      
      if Iteration =  9 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Nav non-linked rel L to M       ");
         
         
         --  Third Left is not currently linked to any instances of Middle Object.
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetMO);
         
         
         Relationships_Rel_R12.Navigate (
            From  => thirdLeft,
            Class => Root_Object.Relationships.MO.Relationships_MO_type'tag,
            To    => SetMO);
         
         if Root_Object.Object_List.Count_Of(SetMO) /= 0 then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 9
      -- --------------------------------------------------------------------
      --  Test 10 - Attempt to perform a navigation on instance that is not
      --            linked to another instance
      -- --------------------------------------------------------------------
      
      if Iteration =  10 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Nav non-linked rel R to M       ");
         
         
         --  Fifth Right is not currently linked to any instances of Middle Object.
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetMO);
         
         
         Relationships_Rel_R14.Navigate (
            From  => fifthRight,
            Class => Root_Object.Relationships.MO.Relationships_MO_type'tag,
            To    => SetMO);
         
         if Root_Object.Object_List.Count_Of(SetMO) /= 0 then
            Has_Failed   := True;
            Failure_Code := -10;
            
         end if;
         
      end if;
      
      
      --  End Test 10
      -- --------------------------------------------------------------------
      --  Test 11 - Navigate to the associative object from the Right Object
      -- --------------------------------------------------------------------
      
      if Iteration =  11 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Nav from RO to Assoc            ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Root_Object.Object_List.Clear (
            From => SetAssoc);
         
         
         Relationships_Rel_R14.Navigate (
            From  => fourthRight,
            Class => Root_Object.Relationships.assMR.Relationships_assMR_type'tag,
            To    => SetAssoc);
         
         No_In_Set := Root_Object.Object_List.Count_Of(SetAssoc);
         
         
         if Root_Object.Object_List.Count_Of(SetAssoc) /= 2 then
            
            Has_Failed   := True;
            Failure_Code := -10;
            
         else
            
            Val1 := -20;
            Val2 := -30;
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
                  
                  if Root_Object.Relationships.assMR.Relationships_assMR_type(InstAssoc.all).idMR =  3 then
                     Val1 := Root_Object.Relationships.assMR.Relationships_assMR_type(InstAssoc.all).idMR;
                  end if;
                  
                  
                  if Root_Object.Relationships.assMR.Relationships_assMR_type(InstAssoc.all).idMR =  5 then
                     Val2 := Root_Object.Relationships.assMR.Relationships_assMR_type(InstAssoc.all).idMR;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetAssoc);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Val1 =  3 then
               
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
      
      
      --  End Test 11
      -- --------------------------------------------------------------------
      --  Test 12 - Navigate to the associative object from a middle instance 
      --            that isn't linked to the associated object
      -- --------------------------------------------------------------------
      
      if Iteration =  12 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Nav from RO to Assoc which isnt ");
         
         
         Root_Object.Object_List.Clear (
            From => SetAssoc);
         
         
         Relationships_Rel_R14.Navigate (
            From  => fifthRight,
            Class => Root_Object.Relationships.assMR.Relationships_assMR_type'tag,
            To    => SetAssoc);
         
         if Root_Object.Object_List.Count_Of(SetAssoc) /= 0 then
            Has_Failed := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 12
      -- --------------------------------------------------------------------
      --  Test 13 - Navigate to the associative object from a right instance 
      --            that isn't linked to the associated object
      -- --------------------------------------------------------------------
      
      if Iteration =  13 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Nav from MO to Assoc which isnt ");
         
         
         Relationships_Rel_R14.Navigate (
            From  => fourthMiddle,
            Class => Root_Object.Relationships.assMR.Relationships_assMR_type'tag,
            To    => InstAssoc);
         
         
         if InstAssoc /= Null then
            Failure_Code := Root_Object.Relationships.assMR.Relationships_assMR_type(InstAssoc.all).idMR;
            Has_Failed   := True;
         end if;
         
      end if;
      
      
      --  End Test 13
      -- --------------------------------------------------------------------
      --  Test 14 - Navigate to the associative object from a middle instance 
      --            then to the right object
      -- --------------------------------------------------------------------
      
      if Iteration =  14 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Navigate from middle to associat");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0704               ");
         
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
            
            Relationships_Rel_R14.Navigate (
               From  => firstMiddle,
               Class => Root_Object.Relationships.assMR.Relationships_assMR_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R14.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.RO.Relationships_RO_type'tag,
               To    => InstRO);
         end;
         
         if InstRO /= Null then
            
            if Root_Object.Relationships.RO.Relationships_RO_type(InstRO.all).idRO /= 2 then
               Has_Failed   := True;
               Failure_Code := Root_Object.Relationships.RO.Relationships_RO_type(InstRO.all).idRO;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 14
      -- --------------------------------------------------------------------
      --  Test 15 - Navigate to the associative object from a right instance 
      --            then to a set in the middle object
      -- --------------------------------------------------------------------
      
      if Iteration =  15 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Navigate from right to associati");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0704               ");
         
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
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => fourthRight,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R14.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.assMR.Relationships_assMR_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetMO);
            
            Relationships_Rel_R14.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.MO.Relationships_MO_type'tag,
               To    => SetMO);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         
         if Root_Object.Object_List.Count_Of(SetMO) =  0 then
            Has_Failed   := True;
            Failure_Code := -10;
            
         else
            
            Val1 := -20;
            Val2 := -30;
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
                  
                  if Root_Object.Relationships.MO.Relationships_MO_type(InstMO.all).idMO =  3 then
                     Val1 := Root_Object.Relationships.MO.Relationships_MO_type(InstMO.all).idMO;
                  end if;
                  
                  
                  if Root_Object.Relationships.MO.Relationships_MO_type(InstMO.all).idMO =  5 then
                     Val2 := Root_Object.Relationships.MO.Relationships_MO_type(InstMO.all).idMO;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetMO);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Val1 =  3 then
               
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
      
      
      --  End Test 15
      -- --------------------------------------------------------------------
      --  Test 16 - Navigate from Left to Middle to Right
      -- --------------------------------------------------------------------
      
      if Iteration =  16 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Navigate from left to middle to ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         Relationships_Rel_R12.Link (
            A_Instance => thirdLeft,
            B_Instance => fourthMiddle);
         
         Relationships_Rel_R14.Link (
            A_Instance => fourthMiddle,
            B_Instance => fifthRight,
            Using      => secondMR);
         
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => thirdLeft,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R12.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.MO.Relationships_MO_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetRO);
            
            Relationships_Rel_R14.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.RO.Relationships_RO_type'tag,
               To    => SetRO);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         
         if Root_Object.Object_List.Count_Of(SetRO) /= 1 then
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
                  Target_List => SetRO);
               
               while (Temp_Entry /= null) loop
                  InstRO := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.RO.Relationships_RO_type(InstRO.all).idRO /= 5 then
                     Has_Failed   := True;
                     Failure_Code := -20;
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetRO);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         end if;
         
      end if;
      
      
      --  End Test 16
      -- --------------------------------------------------------------------
      --  Test 17 - Navigate from Right to Middle to Left
      -- --------------------------------------------------------------------
      
      if Iteration =  17 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "Navigate from Right to middle to");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
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
               New_Item => fifthRight,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R14.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.MO.Relationships_MO_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetLO);
            
            Relationships_Rel_R12.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.LO.Relationships_LO_type'tag,
               To    => SetLO);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         
         if Root_Object.Object_List.Count_Of(SetLO) /= 1 then
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
                  Target_List => SetLO);
               
               while (Temp_Entry /= null) loop
                  InstLO := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.LO.Relationships_LO_type(InstLO.all).idLO /= 3 then
                     Has_Failed   := True;
                     Failure_Code := Root_Object.Relationships.LO.Relationships_LO_type(InstLO.all).idLO;
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetLO);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         end if;
         
      end if;
      
      
      --  End Test 17
      -- --------------------------------------------------------------------
      --  Test 18 - Navigate from second instance of right object to the 
      --            associative object to the middle object to the left 
      --            object
      -- --------------------------------------------------------------------
      
      if Iteration =  18 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "MO                              ",
            Purpose         => "RO to Assoc to MO to LO         ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
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
               New_Item => secondRight,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R14.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.assMR.Relationships_assMR_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => Temporary_Set);
            
            Relationships_Rel_R14.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.MO.Relationships_MO_type'tag,
               To    => Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetLO);
            
            Relationships_Rel_R12.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.LO.Relationships_LO_type'tag,
               To    => SetLO);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
         end;
         
         if Root_Object.Object_List.Count_Of(SetLO) /= 1 then
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
                  Target_List => SetLO);
               
               while (Temp_Entry /= null) loop
                  InstLO := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.LO.Relationships_LO_type(InstLO.all).idLO /= 1 then
                     Has_Failed   := True;
                     Failure_Code := Root_Object.Relationships.LO.Relationships_LO_type(InstLO.all).idLO;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetLO);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         end if;
         
      end if;
      
      
      --  End Test 18
      -- --------------------------------------------------------------------
      --  Tests complete
      -- --------------------------------------------------------------------
      
      if Supported =  True then
         
         if Has_Failed =  False then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "MO                              ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "MO                              ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Failure_Code);
            
         end if;
         
      else
         Relationships_RPT4_Test_Unsupported_Bridge.Relationships_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetLO);
      Root_Object.Object_List.Destroy_List (SetRO);
      Root_Object.Object_List.Destroy_List (SetAssoc);
      Root_Object.Object_List.Destroy_List (SetMO);
      
   end Relationships_MO2_Middle_Object_Navigation;
   
end Relationships_MO2_Middle_Object_Navigation_Service;

--
-- End of file Relationships_MO2_Middle_Object_Navigation_Service.adb
--
