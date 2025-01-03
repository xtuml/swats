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
--* File Name:               Relationships_objD2_ObjD_Navigation_Service.adb
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
with Root_Object.Relationships.objDO;
with Root_Object.Relationships.objO;
with Root_Object.Relationships.objD;
with Root_Object.Relationships.objC;

-- List of relationships used
with Relationships_rel_R19;
with Relationships_rel_R3;

-- List of bridges used
with Relationships_RPT4_Test_Unsupported_Bridge;
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT8_Specify_Requid_Bridge;
with Relationships_RPT1_Start_Test_Bridge;
with Relationships_WAW1_What_Env_Bridge;

-- List of domain types used
with Relationships_Domain_Types;
use type Relationships_Domain_Types.Colour;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_objD2_ObjD_Navigation_Service is
   
   procedure Relationships_objD2_ObjD_Navigation (
      Iteration : in     Application_Types.Base_Integer_Type;
      Test      : in     Application_Types.Base_Integer_Type) is
      
      SetC  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetO  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetD  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetDO : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      firstC    : Root_Object.Object_Access;
      secondC   : Root_Object.Object_Access;
      thirdC    : Root_Object.Object_Access;
      fourthC   : Root_Object.Object_Access;
      fifthC    : Root_Object.Object_Access;
      firstD    : Root_Object.Object_Access;
      secondD   : Root_Object.Object_Access;
      thirdD    : Root_Object.Object_Access;
      fourthD   : Root_Object.Object_Access;
      secondO   : Root_Object.Object_Access;
      thirdO    : Root_Object.Object_Access;
      fifthO    : Root_Object.Object_Access;
      firstDO   : Root_Object.Object_Access;
      thirdDO   : Root_Object.Object_Access;
      fifthDO   : Root_Object.Object_Access;
      InstC     : Root_Object.Object_Access;
      InstO     : Root_Object.Object_Access;
      InstD     : Root_Object.Object_Access;
      tmpInst   : Root_Object.Object_Access;
      InstDO    : Root_Object.Object_Access;
      BigD      : Root_Object.Object_Access;
      BigO      : Root_Object.Object_Access;
      NewInstD  : Root_Object.Object_Access;
      NewInstO  : Root_Object.Object_Access;
      NewInstDO : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      Val1         : Application_Types.Base_Integer_Type := 1;
      Val2         : Application_Types.Base_Integer_Type := 1;
      Val3         : Application_Types.Base_Integer_Type := 1;
      
      Testing_For_What : Application_Types.Base_Text_Type := (others => ' ');
      Host             : Application_Types.Base_Text_Type := (others => ' ');
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      Supported  : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objD2_ObjD_Navigation
      
      -- --------------------------------------------------------------------
      --  Normal navigation
      --  
      --  The architecture shall implement simple 1:M relationships
      --  1241-0000-01-0602
      --  The architecture shall implement associative 1-1:M relationships
      --  1241-0000-01-0609
      --  The architecture shall provide a mechanismto allow the creation of
      --  associative relationship link between two object instances and an
      --  associative instance
      --  1241-0000-01-0611
      --  The architecture shall provide a mechanismto allow the deletion of
      --  an associative link between an associative object and the link 
      --  between two objects
      --  1241-0000-01-0612
      --  The architecture shall provide a mechanism to allow the deletion of
      --  a link between two objects in an associative relationship
      --  1241-0000-01-0613
      --  The architecture shall provide operations which, given a starting 
      --  instance handle and a relationshipspecification, return a single 
      --  handle of the related instance
      --  1241-0000-01-0701
      --  The architecture shall provide operations which, given a starting 
      --  instance handle and a relationship specification , return a set of
      --  handles of the related instances
      --  1241-0000-01-0703
      --  The architecture shall support chains of navigations expressed in 
      --  ASL
      --  1241-0000-01-0704
      --  The architecture shall support navigations to associative objects
      --  expressed in ASL
      --  1241-0000-01-0706
      --  The architecture shall support navigations from singly associative
      --  objects expressed in ASL
      --  1241-0000-01-0707
      --  The architecture shall support a translation of the ASL link 
      --  statment to map to the mechanism that allows creation of a 
      --  relationship link between two object instances
      --  1241-0000-01-1202
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
      Has_Failed       := False;
      Supported        := True;
      Failure_Code     := 0;
      Testing_For_What := "UNDEFINED                       ";
      
      
      Relationships_WAW1_What_Env_Bridge.Relationships_WAW1_What_Env (
         Env_Text => Host);
      
      
      -- --------------------------------------------------------------------
      --  Find the desired instances for Object_C
      firstC := Root_Object.Relationships.objC.Conditional_Find_One;
      while (firstC /= null) and then (not (Root_Object.Relationships.objC.Relationships_objC_Type(firstC.all).idC =  1) ) loop
         
         firstC := firstC.Next_Object;
      end loop;
      
      secondC := Root_Object.Relationships.objC.Conditional_Find_One;
      while (secondC /= null) and then (not (Root_Object.Relationships.objC.Relationships_objC_Type(secondC.all).idC =  2) ) loop
         
         secondC := secondC.Next_Object;
      end loop;
      
      thirdC := Root_Object.Relationships.objC.Conditional_Find_One;
      while (thirdC /= null) and then (not (Root_Object.Relationships.objC.Relationships_objC_Type(thirdC.all).idC =  3) ) loop
         
         thirdC := thirdC.Next_Object;
      end loop;
      
      fourthC := Root_Object.Relationships.objC.Conditional_Find_One;
      while (fourthC /= null) and then (not (Root_Object.Relationships.objC.Relationships_objC_Type(fourthC.all).idC =  4) ) loop
         
         fourthC := fourthC.Next_Object;
      end loop;
      
      fifthC := Root_Object.Relationships.objC.Conditional_Find_One;
      while (fifthC /= null) and then (not (Root_Object.Relationships.objC.Relationships_objC_Type(fifthC.all).idC =  5) ) loop
         
         fifthC := fifthC.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Object_D
      firstD := Root_Object.Relationships.objD.Conditional_Find_One;
      while (firstD /= null) and then (not (Root_Object.Relationships.objD.Relationships_objD_Type(firstD.all).idD         =  1 and then
                                               Root_Object.Relationships.objD.Relationships_objD_Type(firstD.all).Colour_Of_D =  Relationships_Domain_Types.Red) ) loop
         
         firstD := firstD.Next_Object;
      end loop;
      
      secondD := Root_Object.Relationships.objD.Conditional_Find_One;
      while (secondD /= null) and then (not (Root_Object.Relationships.objD.Relationships_objD_Type(secondD.all).idD         =  2 and then
                                                Root_Object.Relationships.objD.Relationships_objD_Type(secondD.all).Colour_Of_D =  
         Relationships_Domain_Types.Red) ) loop
         
         secondD := secondD.Next_Object;
      end loop;
      
      thirdD := Root_Object.Relationships.objD.Conditional_Find_One;
      while (thirdD /= null) and then (not (Root_Object.Relationships.objD.Relationships_objD_Type(thirdD.all).idD         =  3 and then
                                               Root_Object.Relationships.objD.Relationships_objD_Type(thirdD.all).Colour_Of_D =  Relationships_Domain_Types.Red) ) loop
         
         thirdD := thirdD.Next_Object;
      end loop;
      
      fourthD := Root_Object.Relationships.objD.Conditional_Find_One;
      while (fourthD /= null) and then (not (Root_Object.Relationships.objD.Relationships_objD_Type(fourthD.all).idD         =  4 and then
                                                Root_Object.Relationships.objD.Relationships_objD_Type(fourthD.all).Colour_Of_D =  
         Relationships_Domain_Types.Red) ) loop
         
         fourthD := fourthD.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Object_O
      secondO := Root_Object.Relationships.objO.Conditional_Find_One;
      while (secondO /= null) and then (not (Root_Object.Relationships.objO.Relationships_objO_Type(secondO.all).idO =  2) ) loop
         
         secondO := secondO.Next_Object;
      end loop;
      
      thirdO := Root_Object.Relationships.objO.Conditional_Find_One;
      while (thirdO /= null) and then (not (Root_Object.Relationships.objO.Relationships_objO_Type(thirdO.all).idO =  3) ) loop
         
         thirdO := thirdO.Next_Object;
      end loop;
      
      fifthO := Root_Object.Relationships.objO.Conditional_Find_One;
      while (fifthO /= null) and then (not (Root_Object.Relationships.objO.Relationships_objO_Type(fifthO.all).idO =  5) ) loop
         
         fifthO := fifthO.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Object_DO
      firstDO := Root_Object.Relationships.objDO.Conditional_Find_One;
      while (firstDO /= null) and then (not (Root_Object.Relationships.objDO.Relationships_objDO_Type(firstDO.all).idDO =  1) ) loop
         
         firstDO := firstDO.Next_Object;
      end loop;
      
      thirdDO := Root_Object.Relationships.objDO.Conditional_Find_One;
      while (thirdDO /= null) and then (not (Root_Object.Relationships.objDO.Relationships_objDO_Type(thirdDO.all).idDO =  3) ) loop
         
         thirdDO := thirdDO.Next_Object;
      end loop;
      
      fifthDO := Root_Object.Relationships.objDO.Conditional_Find_One;
      while (fifthDO /= null) and then (not (Root_Object.Relationships.objDO.Relationships_objDO_Type(fifthDO.all).idDO =  5) ) loop
         
         fifthDO := fifthDO.Next_Object;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Test 1 - Navigate from a single instance in Object_D to a set in 
      --           Object_C
      -- --------------------------------------------------------------------
      
      if Iteration =  1 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0602               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Simple navigation to set IH     ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetC);
         
         
         Relationships_Rel_R3.Navigate (
            From  => firstD,
            Class => Root_Object.Relationships.objC.Relationships_objC_type'tag,
            To    => SetC);
         
         --  Check the results of the navigation
         
         if Root_Object.Object_List.Count_Of(SetC) /= 2 then
            
            Failure_Code := -10;
            Has_Failed   := True;
            
         else
            
            --  Check the contents of the set
            
            Val1 := -20;
            Val2 := -30;
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetC);
               
               while (Temp_Entry /= null) loop
                  InstC := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objC.Relationships_objC_type(InstC.all).idC =  1 then
                     Val1 := Root_Object.Relationships.objC.Relationships_objC_type(InstC.all).idC;
                  end if;
                  
                  
                  if Root_Object.Relationships.objC.Relationships_objC_type(InstC.all).idC =  3 then
                     Val2 := Root_Object.Relationships.objC.Relationships_objC_type(InstC.all).idC;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetC);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            --  Check found values
            
            if Val1 =  1 then
               
               if Val2 =  3 then
                  
                  Has_Failed := False;
                  
               else
                  
                  Has_Failed   := True;
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
      --  Test 2 - Relationship role, set of instance handles returned
      -- --------------------------------------------------------------------
      
      if Iteration =  2 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Navigate to a set using role    ");
         
         
         --  Target object must be specified for WACA
         --  Perform the navigation
         --  Relationship Role is unsupported by the WACA so the set
         --  returned should be empty. 
         --       if Host = "WACA" then
         
         Supported := False;
         
         
         --       else      
         --          {SetC} = fourthD -> R3."Has_many".Object_C
         --          CountC = countof {SetC}
         --  Check the results of the navigation
         --          if CountC != 0 then
         --             Failure_Code = -10
         --             Has_Failed   = TRUE
         --          endif
         --       endif
      end if;
      
      --  End Test 2
      -- --------------------------------------------------------------------
      --  Test 3 - Navigate from an instance of Object_D to a set of Object_O
      --           ignoring the assocciative object DO
      -- --------------------------------------------------------------------
      
      if Iteration =  3 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0702               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Navigate from ObjD to a set in O");
         
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
            From => SetO);
         
         
         Relationships_Rel_R19.Navigate (
            From  => firstD,
            Class => Root_Object.Relationships.objO.Relationships_objO_type'tag,
            To    => SetO);
         
         --  Check the results of the navigation
         
         if Root_Object.Object_List.Count_Of(SetO) /= 2 then
            
            Failure_Code := -10;
            Has_Failed   := True;
            
         else
            
            --  Check the contents of the set
            
            Val1 := -20;
            Val2 := -30;
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetO);
               
               while (Temp_Entry /= null) loop
                  InstO := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objO.Relationships_objO_type(InstO.all).idO =  2 then
                     Val1 := Root_Object.Relationships.objO.Relationships_objO_type(InstO.all).idO;
                  end if;
                  
                  
                  if Root_Object.Relationships.objO.Relationships_objO_type(InstO.all).idO =  3 then
                     Val2 := Root_Object.Relationships.objO.Relationships_objO_type(InstO.all).idO;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetO);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            --  Check the values
            
            if Val1 =  2 then
               
               if Val2 =  3 then
                  
                  Has_Failed := False;
                  
               else
                  
                  Has_Failed   := True;
                  Failure_Code := Val2;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := Val1;
               
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------
      --  Test 4 - Navigate from a single instance of a set within Object_C
      --           to an instance within Object_D
      -- --------------------------------------------------------------------
      
      if Iteration =  4 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0701               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Navigate from Object C to Object");
         
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
         
         Relationships_Rel_R3.Navigate (
            From  => thirdC,
            Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
            To    => InstD);
         
         
         --  Check the results of the navigation
         
         if InstD /= Null then
            
            if Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD =  1 then
               
               if Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).Colour_Of_D =  Relationships_Domain_Types.Red then
                  
                  Has_Failed := False;
                  
               else
                  
                  Failure_Code := -10;
                  Has_Failed   := True;
               end if;
               
            else
               Failure_Code := Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD;
               Has_Failed   := True;
            end if;
            
         else
            Failure_Code := -20;
            Has_Failed   := True;
            
         end if;
         
      end if;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------
      --  Test 5 - Navigate from a single instance of a set within Object_O
      --           to an instance within Object_D
      -- --------------------------------------------------------------------
      
      if Iteration =  5 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0701               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Navigate from Object O to Object");
         
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
         
         Relationships_Rel_R19.Navigate (
            From  => thirdO,
            Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
            To    => InstD);
         
         
         --  Check the results of the navigation
         
         if InstD /= Null then
            
            if Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD =  1 then
               
               Has_Failed := False;
               
            else
               
               Failure_Code := Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD;
               Has_Failed   := True;
            end if;
            
         else
            Failure_Code := -10;
            Has_Failed   := True;
            
         end if;
         
      end if;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------
      --  Test 6 -  Navigate from an instance of the associated object DO to 
      --            an instance within object D
      -- --------------------------------------------------------------------
      
      if Iteration =  6 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0707               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav from assoc object to ObjD   ");
         
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
         
         Relationships_Rel_R19.Navigate (
            From  => fifthDO,
            Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
            To    => InstD);
         
         
         --  Check the results of the navigation
         
         if InstD /= Null then
            
            if Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD =  1 then
               
               Has_Failed := False;
               
            else
               
               Has_Failed   := True;
               Failure_Code := Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 6
      -- --------------------------------------------------------------------
      --  Test 7 - Navigate from a set of one instance to a set of one 
      --           instance
      -- --------------------------------------------------------------------
      
      if Iteration =  7 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0703               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Navigate from set C to D        ");
         
         Relationships_Rel_R3.Link (
            A_Instance => secondC,
            B_Instance => secondD);
         
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
         begin
            Root_Object.Object_List.Clear (
               From => SetC);
            
            Root_Object.Relationships.objC.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objC.Relationships_objC_Type(Temp_Entry.Item.all).idC =  2 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetC);
                  
               end if;
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Temp_List);
               
            end loop;
            
            Root_Object.Object_List.Destroy_List (
               Target_List => Temp_List);
         end;
         
         if Root_Object.Object_List.Count_Of(SetC) =  1 then
            
            Root_Object.Object_List.Clear (
               From => SetD);
            
            
            Relationships_Rel_R3.Navigate (
               From  => SetC,
               Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
               To    => SetD);
            
            if Root_Object.Object_List.Count_Of(SetD) /= 1 then
               Has_Failed   := True;
               Failure_Code := -20;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -10;
            
         end if;
         
         
         Relationships_Rel_R3.Unlink (
            A_Instance => secondC,
            B_Instance => secondD);
         
      end if;
      
      
      --  End Test 7
      -- --------------------------------------------------------------------
      --  Test 8 - Navigate from a set on the MANY side of the relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  8 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0703               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Navigate from set C to D        ");
         
         
         Val1 := 0;
         Val2 := 0;
         
         
         Root_Object.Object_List.Clear (
            From => SetC);
         
         
         Relationships_Rel_R3.Navigate (
            From  => firstD,
            Class => Root_Object.Relationships.objC.Relationships_objC_type'tag,
            To    => SetC);
         
         if Root_Object.Object_List.Count_Of(SetC) =  2 then
            
            Root_Object.Object_List.Clear (
               From => SetD);
            
            
            Relationships_Rel_R3.Navigate (
               From  => SetC,
               Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
               To    => SetD);
            
            if Root_Object.Object_List.Count_Of(SetD) /= 2 then
               
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
                     Target_List => SetD);
                  
                  while (Temp_Entry /= null) loop
                     tmpInst := Temp_Entry.Item;
                     
                     if Val1 =  0 then
                        
                        Val1 := Root_Object.Relationships.objD.Relationships_objD_type(tmpInst.all).idD;
                     else
                        Val2 := Root_Object.Relationships.objD.Relationships_objD_type(tmpInst.all).idD;
                        
                     end if;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => SetD);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               
               if Val1 =  1 then
                  
                  if Val2 /= 1 then
                     
                     Has_Failed := True;
                     Failure_Code := -20;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -30;
               end if;
               
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -30;
            
         end if;
         
      end if;
      
      
      --  End Test 8
      -- --------------------------------------------------------------------
      --  Test 9 - Navigate from a set on the MANY side of the relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  9 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0703               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Navigate from set C to D        ");
         
         
         Val1 := 0;
         Val2 := 0;
         Val3 := 0;
         
         Relationships_Rel_R3.Link (
            A_Instance => secondC,
            B_Instance => secondD);
         
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
         begin
            Root_Object.Object_List.Clear (
               From => SetC);
            
            Root_Object.Relationships.objC.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objC.Relationships_objC_Type(Temp_Entry.Item.all).idC =  1 or else
                     Root_Object.Relationships.objC.Relationships_objC_Type(Temp_Entry.Item.all).idC =  2 or else
                     Root_Object.Relationships.objC.Relationships_objC_Type(Temp_Entry.Item.all).idC =  3 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetC);
                  
               end if;
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Temp_List);
               
            end loop;
            
            Root_Object.Object_List.Destroy_List (
               Target_List => Temp_List);
         end;
         
         if Root_Object.Object_List.Count_Of(SetC) =  3 then
            
            Root_Object.Object_List.Clear (
               From => SetD);
            
            
            Relationships_Rel_R3.Navigate (
               From  => SetC,
               Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
               To    => SetD);
            
            if Root_Object.Object_List.Count_Of(SetD) /= 3 then
               
               Has_Failed   := True;
               Failure_Code := Root_Object.Object_List.Count_Of(SetD);
               
            else
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => SetD);
                  
                  while (Temp_Entry /= null) loop
                     tmpInst := Temp_Entry.Item;
                     
                     if Val1 =  0 then
                        
                        Val1 := Root_Object.Relationships.objD.Relationships_objD_type(tmpInst.all).idD;
                     else
                        
                        if Val2 =  0 then
                           Val2 := Root_Object.Relationships.objD.Relationships_objD_type(tmpInst.all).idD;
                        else
                           Val3 := Root_Object.Relationships.objD.Relationships_objD_type(tmpInst.all).idD;
                           
                        end if;
                        
                     end if;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => SetD);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               
               if Val1 =  1 and then
                  Val2 =  1 and then
                  Val3 =  2 then
                  
                  Has_Failed := False;
               else
                  
                  if Val1 =  1 and then
                     Val2 =  2 and then
                     Val3 =  1 then
                     Has_Failed := False;
                  else
                     
                     if Val1 =  2 and then
                        Val2 =  1 and then
                        Val3 =  1 then
                        Has_Failed := False;
                        
                     else
                        
                        Has_Failed   := True;
                        Failure_Code := -20;
                     end if;
                     
                  end if;
                  
               end if;
               
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -30;
            
         end if;
         
         
         Relationships_Rel_R3.Unlink (
            A_Instance => secondC,
            B_Instance => secondD);
         
      end if;
      
      
      --  End Test 9
      -- --------------------------------------------------------------------
      --  Test 10 - Navigate from a set to a set in a one to many assoc 
      --            relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  10 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav from set O to D             ");
         
         
         Val1 := 0;
         Val2 := 0;
         
         Root_Object.Object_List.Clear (
            From => SetO);
         
         
         Relationships_Rel_R19.Navigate (
            From  => firstD,
            Class => Root_Object.Relationships.objO.Relationships_objO_type'tag,
            To    => SetO);
         
         if Root_Object.Object_List.Count_Of(SetO) =  2 then
            
            Root_Object.Object_List.Clear (
               From => SetD);
            
            
            Relationships_Rel_R19.Navigate (
               From  => SetO,
               Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
               To    => SetD);
            
            if Root_Object.Object_List.Count_Of(SetD) =  2 then
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => SetD);
                  
                  while (Temp_Entry /= null) loop
                     InstD := Temp_Entry.Item;
                     
                     if Val1 =  0 then
                        Val1 := Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD;
                     else
                        Val2 := Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD;
                        
                     end if;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => SetD);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               
               if Val1 /= 1 or else
                  Val2 /= 1 then
                  
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
      
      
      --  End Test 10
      -- --------------------------------------------------------------------
      --  Test 11 - Navigate from a set to a set in a one to many assoc 
      --            relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  11 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav from set O to DO            ");
         
         
         Val1 := 0;
         Val2 := 0;
         
         Root_Object.Object_List.Clear (
            From => SetO);
         
         
         Relationships_Rel_R19.Navigate (
            From  => firstD,
            Class => Root_Object.Relationships.objO.Relationships_objO_type'tag,
            To    => SetO);
         
         if Root_Object.Object_List.Count_Of(SetO) =  2 then
            
            Root_Object.Object_List.Clear (
               From => SetDO);
            
            
            Relationships_Rel_R19.Navigate (
               From  => SetO,
               Class => Root_Object.Relationships.objDO.Relationships_objDO_type'tag,
               To    => SetDO);
            
            if Root_Object.Object_List.Count_Of(SetDO) =  2 then
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => SetDO);
                  
                  while (Temp_Entry /= null) loop
                     InstDO := Temp_Entry.Item;
                     
                     if Val1 =  0 then
                        Val1 := Root_Object.Relationships.objDO.Relationships_objDO_type(InstDO.all).idDO;
                     else
                        Val2 := Root_Object.Relationships.objDO.Relationships_objDO_type(InstDO.all).idDO;
                        
                     end if;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => SetDO);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               
               if Val1 =  1 and then
                  Val2 =  5 then
                  
                  Has_Failed := False;
               else
                  
                  if Val1 =  5 and then
                     Val2 =  1 then
                     Has_Failed := False;
                     
                  else
                     
                     Has_Failed   := True;
                     Failure_Code := -10;
                  end if;
                  
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
      
      
      --  End Test 11
      -- --------------------------------------------------------------------
      --  Test 12 - Attempt to navigate from an instance that does not form 
      --           any part of a relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  12 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav from D to O while not linked");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetO);
         
         
         Relationships_Rel_R19.Navigate (
            From  => fourthD,
            Class => Root_Object.Relationships.objO.Relationships_objO_type'tag,
            To    => SetO);
         
         --  Check the results of the navigation
         
         if Root_Object.Object_List.Count_Of(SetO) /= 0 then
            Failure_Code := -10;
            Has_Failed   := True;
         end if;
         
      end if;
      
      
      --  End Test 12
      -- --------------------------------------------------------------------
      --  Test 13 - Attempt to navigate from an instance that does not form 
      --           any part of a relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  13 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav from D to C while not linked");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetC);
         
         
         Relationships_Rel_R3.Navigate (
            From  => thirdD,
            Class => Root_Object.Relationships.objC.Relationships_objC_type'tag,
            To    => SetC);
         
         --  Check the results of the navigation
         
         if Root_Object.Object_List.Count_Of(SetC) /= 0 then
            Failure_Code := -10;
            Has_Failed   := True;
         end if;
         
      end if;
      
      
      --  End Test 13
      -- --------------------------------------------------------------------
      --  Test 14 - Attempt to navigate from an instance that does not form 
      --            any part of a relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  14 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav from C to D while not linked");
         
         
         --  Perform the navigation      
         
         Relationships_Rel_R3.Navigate (
            From  => secondC,
            Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
            To    => InstD);
         
         
         --  Check the results of the navigation
         
         if InstD /= Null then
            Failure_Code := -10;
            Has_Failed   := True;
         end if;
         
      end if;
      
      
      --  End Test 14
      -- --------------------------------------------------------------------
      --  Test 15 - Attempt to navigate to the associative from an instance 
      --            that does not form any part of a relationship  
      -- --------------------------------------------------------------------
      
      if Iteration =  15 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav from D to DO while not linke");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetDO);
         
         
         Relationships_Rel_R19.Navigate (
            From  => fourthD,
            Class => Root_Object.Relationships.objDO.Relationships_objDO_type'tag,
            To    => SetDO);
         
         --  Check the results of the navigation
         
         if Root_Object.Object_List.Count_Of(SetDO) /= 0 then
            Failure_Code := -10;
            Has_Failed   := True;
         end if;
         
      end if;
      
      
      --  End Test 15
      -- --------------------------------------------------------------------
      --  Test 16 - Navigate to the associative object from Object D
      -- --------------------------------------------------------------------
      
      if Iteration =  16 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Navigate from ObjD to assoc obje");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         --  Perform The Navigation
         
         Root_Object.Object_List.Clear (
            From => SetDO);
         
         
         Relationships_Rel_R19.Navigate (
            From  => firstD,
            Class => Root_Object.Relationships.objDO.Relationships_objDO_type'tag,
            To    => SetDO);
         
         if Root_Object.Object_List.Count_Of(SetDO) /= 2 then
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
                  Target_List => SetDO);
               
               while (Temp_Entry /= null) loop
                  InstDO := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objDO.Relationships_objDO_type(InstDO.all).idDO =  1 then
                     Val1 := Root_Object.Relationships.objDO.Relationships_objDO_type(InstDO.all).idDO;
                  end if;
                  
                  
                  if Root_Object.Relationships.objDO.Relationships_objDO_type(InstDO.all).idDO =  5 then
                     Val2 := Root_Object.Relationships.objDO.Relationships_objDO_type(InstDO.all).idDO;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetDO);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         end if;
         
         
         if Val1 =  1 then
            
            if Val2 =  5 then
               
               Has_Failed := False;
               
            else
               
               Has_Failed   := True;
               Failure_Code := Val2;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := Val1;
         end if;
         
      end if;
      
      
      --  End Test 16
      -- --------------------------------------------------------------------
      --  Test 17 - Navigate from associative object to Object D
      -- --------------------------------------------------------------------
      
      if Iteration =  17 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0707               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Navigate from the assoc to Objec");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Perform The Navigation
         
         Relationships_Rel_R19.Navigate (
            From  => fifthDO,
            Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
            To    => InstD);
         
         
         if Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD /= 1 then
            Has_Failed   := True;
            Failure_Code := Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD;
         end if;
         
      end if;
      
      
      --  End Test 17
      -- --------------------------------------------------------------------
      --  Test 18 - Navigate from associative object to Object O
      -- --------------------------------------------------------------------
      
      if Iteration =  18 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0707               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav from the assoc to Obj O     ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Perform The Navigation
         
         Relationships_Rel_R19.Navigate (
            From  => firstDO,
            Class => Root_Object.Relationships.objO.Relationships_objO_type'tag,
            To    => InstO);
         
         
         if Root_Object.Relationships.objO.Relationships_objO_type(InstO.all).idO /= 2 then
            Has_Failed   := True;
            Failure_Code := Root_Object.Relationships.objO.Relationships_objO_type(InstO.all).idO;
         end if;
         
      end if;
      
      
      --  End Test 18
      -- --------------------------------------------------------------------
      --  Test 19 - Navigate from Object O to the asociative object
      -- --------------------------------------------------------------------
      
      if Iteration =  19 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav from Obj O to Obj DO        ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Perform The Navigation
         
         Relationships_Rel_R19.Navigate (
            From  => secondO,
            Class => Root_Object.Relationships.objDO.Relationships_objDO_type'tag,
            To    => InstDO);
         
         
         if Root_Object.Relationships.objDO.Relationships_objDO_type(InstDO.all).idDO /= 1 then
            Has_Failed   := True;
            Failure_Code := Root_Object.Relationships.objDO.Relationships_objDO_type(InstDO.all).idDO;
         end if;
         
      end if;
      
      
      --  End Test 19
      -- --------------------------------------------------------------------
      --  Test 20 - Attempt to navigate an unlinked relationship 
      -- --------------------------------------------------------------------
      
      if Iteration =  20 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-1205               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav from O to D which isn't link");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         BigD := Root_Object.Relationships.objD.Create;
         Root_Object.Relationships.objD.Relationships_objD_Type(BigD.all).idD := 1000;
         
         
         BigO := Root_Object.Relationships.objO.Create;
         Root_Object.Relationships.objO.Relationships_objO_Type(BigO.all).idO := 1001;
         
         
         --  Perform The Navigation
         
         Relationships_Rel_R19.Navigate (
            From  => BigO,
            Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
            To    => InstD);
         
         
         if InstD /= Null then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
         
         Root_Object.Relationships.objD.Delete (
            Old_Instance => BigD);
         
         Root_Object.Relationships.objO.Delete (
            Old_Instance => BigO);
      end if;
      
      
      --  End Test 20
      -- --------------------------------------------------------------------
      --  Test 21 - Create some new instances and link them and then attempt
      --            to navigate them
      -- --------------------------------------------------------------------
      
      if Iteration =  21 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0609               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav from O to D                 ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0612               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0613               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0701               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1203               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         NewInstD := Root_Object.Relationships.objD.Create;
         Root_Object.Relationships.objD.Relationships_objD_Type(NewInstD.all).idD := 101;
         
         
         NewInstO := Root_Object.Relationships.objO.Create;
         Root_Object.Relationships.objO.Relationships_objO_Type(NewInstO.all).idO := 202;
         
         
         NewInstDO := Root_Object.Relationships.objDO.Create;
         Root_Object.Relationships.objDO.Relationships_objDO_Type(NewInstDO.all).idDO      := 303;
         Root_Object.Relationships.objDO.Relationships_objDO_Type(NewInstDO.all).idO       := 
            Root_Object.Relationships.objO.Relationships_objO_type(NewInstO.all).idO;
         
         Relationships_Rel_R19.Link (
            A_Instance => NewInstD,
            B_Instance => NewInstO,
            Using      => NewInstDO);
         
         
         -- Perform The Navigation
         
         Relationships_Rel_R19.Navigate (
            From  => NewInstO,
            Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
            To    => InstD);
         
         
         if InstD /= Null then
            
            if Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD /= 101 then
               Has_Failed   := True;
               Failure_Code := Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -10;
         end if;
         
         
         Relationships_Rel_R19.Unassociate(
            A_Instance => NewInstD,
            B_Instance => NewInstO,
            From       => NewInstDO);
         
         Relationships_Rel_R19.Unlink (
            A_Instance => NewInstD,
            B_Instance => NewInstO);
         
         
         Root_Object.Relationships.objD.Delete (
            Old_Instance => NewInstD);
         
         Root_Object.Relationships.objO.Delete (
            Old_Instance => NewInstO);
         
         Root_Object.Relationships.objDO.Delete (
            Old_Instance => NewInstDO);
      end if;
      
      
      --  End Test 21
      -- --------------------------------------------------------------------
      --  Test 22 - Chained navigation from a single instance in Object C
      --            through Object D to Object O
      -- --------------------------------------------------------------------
      
      if Iteration =  22 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "ObjC to ObjD to ObjO            ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
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
         
         Relationships_Rel_R3.Navigate (
            From  => thirdC,
            Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
            To    => InstD);
         
         
         if InstD /= Null then
            
            declare
               Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
               Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            begin
               Temporary_Set := Root_Object.Object_List.Initialise;
               Second_Temporary_Set := Root_Object.Object_List.Initialise;
               
               Root_Object.Object_List.Insert (
                  New_Item => thirdC,
                  On_To    => Temporary_Set);
               
               Relationships_Rel_R3.Navigate (
                  From  => Temporary_Set,
                  Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
                  To    => Second_Temporary_Set);
               
               Root_Object.Object_List.Clear (
                  From => SetO);
               
               Relationships_Rel_R19.Navigate (
                  From  => Second_Temporary_Set,
                  Class => Root_Object.Relationships.objO.Relationships_objO_type'tag,
                  To    => SetO);
                  
               Root_Object.Object_List.Destroy_List (
                  Target_List => Temporary_Set);
               Root_Object.Object_List.Destroy_List (
                  Target_List => Second_Temporary_Set);
            end;
            
            if Root_Object.Object_List.Count_Of(SetO) /= 2 then
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
                     Target_List => SetO);
                  
                  while (Temp_Entry /= null) loop
                     InstO := Temp_Entry.Item;
                     
                     if Root_Object.Relationships.objO.Relationships_objO_type(InstO.all).idO =  2 then
                        Val1 := Root_Object.Relationships.objO.Relationships_objO_type(InstO.all).idO;
                     end if;
                     
                     
                     if Root_Object.Relationships.objO.Relationships_objO_type(InstO.all).idO =  3 then
                        Val2 := Root_Object.Relationships.objO.Relationships_objO_type(InstO.all).idO;
                        
                     end if;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => SetO);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               
               if Val1 =  2 then
                  
                  if Val2 =  3 then
                     
                     Has_Failed := False;
                     
                  else
                     
                     Has_Failed   := True;
                     Failure_Code := Val2;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := Val1;
               end if;
               
            end if;
            
         else
            Failure_Code := -100;
         end if;
         
      end if;
      
      
      --  End Test 22
      -- --------------------------------------------------------------------
      --  Test 23 - Chained navigation from a single instance in Object O
      --            through Object D to Object C
      -- --------------------------------------------------------------------
      
      if Iteration =  23 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "ObjO to ObjD to ObjC            ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0609               ");
         
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
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => secondO,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R19.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetC);
            
            Relationships_Rel_R3.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.objC.Relationships_objC_type'tag,
               To    => SetC);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         
         if Root_Object.Object_List.Count_Of(SetC) /= 2 then
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
                  Target_List => SetC);
               
               while (Temp_Entry /= null) loop
                  InstC := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objC.Relationships_objC_type(InstC.all).idC =  1 then
                     Val1 := Root_Object.Relationships.objC.Relationships_objC_type(InstC.all).idC;
                  end if;
                  
                  
                  if Root_Object.Relationships.objC.Relationships_objC_type(InstC.all).idC =  3 then
                     Val2 := Root_Object.Relationships.objC.Relationships_objC_type(InstC.all).idC;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetC);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Val1 =  1 then
               
               if Val2 =  3 then
                  
                  Has_Failed := False;
                  
               else
                  
                  Has_Failed   := True;
                  Failure_Code := Val2;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := Val1;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 23
      -- --------------------------------------------------------------------
      --  Test 24 - Chained navigation from a single instance in Object O
      --            to Object D via an instance of Object DO
      -- --------------------------------------------------------------------
      
      if Iteration =  24 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "ObjO to ObjD via ObjDO          ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0704               ");
         
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
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R19.Navigate (
               From  => secondO,
               Class => Root_Object.Relationships.objDO.Relationships_objDO_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R19.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
               To    => InstD);
         end;
         
         if Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD /= 1 then
            Has_Failed := True;
            Failure_Code := Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD;
         end if;
         
      end if;
      
      
      --  End Test 24
      -- --------------------------------------------------------------------
      --  Test 25 - Chained navigation from a single instance in Object C to
      --            Object DO via Object D
      -- --------------------------------------------------------------------
      
      if Iteration =  25 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "ObjC to ObjDO via ObjD          ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0704               ");
         
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
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => thirdC,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R3.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetDO);
            
            Relationships_Rel_R19.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.objDO.Relationships_objDO_type'tag,
               To    => SetDO);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         
         if Root_Object.Object_List.Count_Of(SetDO) /= 2 then
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
                  Target_List => SetDO);
               
               while (Temp_Entry /= null) loop
                  InstDO := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objDO.Relationships_objDO_type(InstDO.all).idDO =  1 then
                     Val1 := Root_Object.Relationships.objDO.Relationships_objDO_type(InstDO.all).idDO;
                  end if;
                  
                  
                  if Root_Object.Relationships.objDO.Relationships_objDO_type(InstDO.all).idDO =  5 then
                     Val2 := Root_Object.Relationships.objDO.Relationships_objDO_type(InstDO.all).idDO;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetDO);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         end if;
         
         
         if Val1 =  1 then
            
            if Val2 =  5 then
               
               Has_Failed := False;
               
            else
               
               Has_Failed   := True;
               Failure_Code := Val2;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := Val1;
         end if;
         
      end if;
      
      
      --  End Test 25
      -- --------------------------------------------------------------------
      --  Test 26 - Chained navigation from a single instance in Object O to
      --            Object C via Objects DO and D
      -- --------------------------------------------------------------------
      
      if Iteration =  26 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "ObjO to ObjC via ObjD and ObjDO ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0704               ");
         
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
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => secondO,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R19.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.objDO.Relationships_objDO_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => Temporary_Set);
            
            Relationships_Rel_R19.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
               To    => Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetC);
            
            Relationships_Rel_R3.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.objC.Relationships_objC_type'tag,
               To    => SetC);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
         end;
         
         if Root_Object.Object_List.Count_Of(SetC) /= 2 then
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
                  Target_List => SetC);
               
               while (Temp_Entry /= null) loop
                  InstC := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objC.Relationships_objC_type(InstC.all).idC =  1 then
                     Val1 := Root_Object.Relationships.objC.Relationships_objC_type(InstC.all).idC;
                  end if;
                  
                  
                  if Root_Object.Relationships.objC.Relationships_objC_type(InstC.all).idC =  3 then
                     Val2 := Root_Object.Relationships.objC.Relationships_objC_type(InstC.all).idC;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetC);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         end if;
         
         
         if Val1 =  1 then
            
            if Val2 =  3 then
               
               Has_Failed := False;
               
            else
               
               Has_Failed   := True;
               Failure_Code := Val2;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := Val1;
         end if;
         
      end if;
      
      
      --  End Test 26
      -- --------------------------------------------------------------------
      --  Test 27 - Attempt to navigate an unlinked relationship 
      -- --------------------------------------------------------------------
      
      if Iteration =  27 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav ObjDO to ObjO while unlinked");
         
         
         --  Perform The Navigation
         
         Relationships_Rel_R19.Navigate (
            From  => thirdDO,
            Class => Root_Object.Relationships.objO.Relationships_objO_type'tag,
            To    => InstO);
         
         
         if InstO /= Null then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 27
      -- --------------------------------------------------------------------
      --  Test 28 - Attempt to navigate an unlinked relationship 
      -- --------------------------------------------------------------------
      
      if Iteration =  28 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav ObjDO to ObjO while unlinked");
         
         
         --  Perform The Navigation
         
         Relationships_Rel_R19.Navigate (
            From  => thirdDO,
            Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
            To    => InstD);
         
         
         if InstD /= Null then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 28
      -- --------------------------------------------------------------------
      --  Test 29 - Attempt to navigate an unlinked relationship 
      -- --------------------------------------------------------------------
      
      if Iteration =  29 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objD                            ",
            Purpose         => "Nav ObjO to ObjD while unlinked ");
         
         
         --  Perform The Navigation
         
         Relationships_Rel_R19.Navigate (
            From  => fifthO,
            Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
            To    => InstD);
         
         
         if InstD /= Null then
            Has_Failed   := True;
            Failure_Code := -10;
            
         end if;
         
      end if;
      
      
      --  End Test 29
      -- --------------------------------------------------------------------
      --  Tests complete
      -- --------------------------------------------------------------------
      
      if Supported =  True then
         
         if Has_Failed =  False then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "objD                            ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "objD                            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Failure_Code);
            
         end if;
         
      else
         Relationships_RPT4_Test_Unsupported_Bridge.Relationships_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetDO);
      Root_Object.Object_List.Destroy_List (SetD);
      Root_Object.Object_List.Destroy_List (SetO);
      Root_Object.Object_List.Destroy_List (SetC);
      
   end Relationships_objD2_ObjD_Navigation;
   
end Relationships_objD2_ObjD_Navigation_Service;

--
-- End of file Relationships_objD2_ObjD_Navigation_Service.adb
--
