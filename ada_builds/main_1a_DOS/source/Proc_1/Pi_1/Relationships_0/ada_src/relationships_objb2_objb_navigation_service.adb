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
--* File Name:               Relationships_objB2_ObjB_Navigation_Service.adb
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
with Root_Object.Relationships.objM;
with Root_Object.Relationships.objB;
with Root_Object.Relationships.objA;

-- List of relationships used
with Relationships_rel_R18;
with Relationships_rel_R1;

-- List of bridges used
with Relationships_RPT4_Test_Unsupported_Bridge;
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT8_Specify_Requid_Bridge;
with Relationships_RPT1_Start_Test_Bridge;
with Relationships_WAW1_What_Env_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_objB2_ObjB_Navigation_Service is
   
   procedure Relationships_objB2_ObjB_Navigation (
      Iteration : in     Application_Types.Base_Integer_Type;
      Test      : in     Application_Types.Base_Integer_Type) is
      
      firstA  : Root_Object.Object_Access;
      thirdA  : Root_Object.Object_Access;
      firstB  : Root_Object.Object_Access;
      fourthB : Root_Object.Object_Access;
      fifthB  : Root_Object.Object_Access;
      secondM : Root_Object.Object_Access;
      thirdM  : Root_Object.Object_Access;
      InstA   : Root_Object.Object_Access;
      InstM   : Root_Object.Object_Access;
      InstB   : Root_Object.Object_Access;
      
      The_Result : Application_Types.Base_Integer_Type := 1;
      
      Host : Application_Types.Base_Text_Type := (others => ' ');
      
      Supported  : Boolean := Application_Types.Boolean_first;
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objB2_ObjB_Navigation
      
      -- --------------------------------------------------------------------
      --  Normal navigation
      --  The architecture shall implement simple 1:1 relationships
      --  1241-0000-01-0601
      --  
      --  Given a starting instance handle and a relationship specification
      --  return a single handle of the related instance
      --  1241-0000-01-0701
      --  The architecture shall support chains of navigations
      --  1241-0000-10-0704
      --  The architecture shall support a translation of the ASL navigate
      --  statment to map to the mechanism that allows the traversal of
      --  relationship links
      --  1241-0000-01-1205
      -- --------------------------------------------------------------------
      --  Initialise the all variables
      Supported  := True;
      Has_Failed := False;
      The_Result := 0;
      
      -- --------------------------------------------------------------------
      -- Find the desired instances for Object_A
      firstA := Root_Object.Relationships.objA.Conditional_Find_One;
      while (firstA /= null) and then (not (Root_Object.Relationships.objA.Relationships_objA_Type(firstA.all).idA =  1) ) loop
         
         firstA := firstA.Next_Object;
      end loop;
      
      thirdA := Root_Object.Relationships.objA.Conditional_Find_One;
      while (thirdA /= null) and then (not (Root_Object.Relationships.objA.Relationships_objA_Type(thirdA.all).idA =  3) ) loop
         
         thirdA := thirdA.Next_Object;
      end loop;
      
      
      -- Find the desired instances for Object_B
      firstB := Root_Object.Relationships.objB.Conditional_Find_One;
      while (firstB /= null) and then (not (Root_Object.Relationships.objB.Relationships_objB_Type(firstB.all).idB =  1) ) loop
         
         firstB := firstB.Next_Object;
      end loop;
      
      fourthB := Root_Object.Relationships.objB.Conditional_Find_One;
      while (fourthB /= null) and then (not (Root_Object.Relationships.objB.Relationships_objB_Type(fourthB.all).idB =  4) ) loop
         
         fourthB := fourthB.Next_Object;
      end loop;
      
      fifthB := Root_Object.Relationships.objB.Conditional_Find_One;
      while (fifthB /= null) and then (not (Root_Object.Relationships.objB.Relationships_objB_Type(fifthB.all).idB =  5) ) loop
         
         fifthB := fifthB.Next_Object;
      end loop;
      
      
      -- Find the desired instances for Object_M
      secondM := Root_Object.Relationships.objM.Conditional_Find_One;
      while (secondM /= null) and then (not (Root_Object.Relationships.objM.Relationships_objM_Type(secondM.all).idM =  2) ) loop
         
         secondM := secondM.Next_Object;
      end loop;
      
      thirdM := Root_Object.Relationships.objM.Conditional_Find_One;
      while (thirdM /= null) and then (not (Root_Object.Relationships.objM.Relationships_objM_Type(thirdM.all).idM =  3) ) loop
         
         thirdM := thirdM.Next_Object;
      end loop;
      
      
      Relationships_WAW1_What_Env_Bridge.Relationships_WAW1_What_Env (
         Env_Text => Host);
      
      
      -- --------------------------------------------------------------------
      --  Test 1 - Navigate from first instance of Object_B to Object_A using 
      --           relationship number
      -- --------------------------------------------------------------------
      
      if Iteration =  1 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0701               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Navigate from Obj B to Obj A    ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0601               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R1.Navigate (
            From  => firstB,
            Class => Root_Object.Relationships.objA.Relationships_objA_type'tag,
            To    => InstA);
         
         
         --  Check the result of the navigation
         
         if InstA =  Null then
            Has_Failed := True;
         else
            
            if Root_Object.Relationships.objA.Relationships_objA_type(InstA.all).idA /= 1 then
               Has_Failed := True;
               The_Result := Root_Object.Relationships.objA.Relationships_objA_type(InstA.all).idA;
            else
               The_Result := Root_Object.Relationships.objA.Relationships_objA_type(InstA.all).idA;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------
      --  Test 2 - Navigate from fourh instance of Object_B to Object_M using 
      --           relationship number
      -- --------------------------------------------------------------------
      
      if Iteration =  2 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0701               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Navigate from Obj B to Obj M    ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0601               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R18.Navigate (
            From  => fourthB,
            Class => Root_Object.Relationships.objM.Relationships_objM_type'tag,
            To    => InstM);
         
         
         --  Check the result of the navigation
         
         if InstM =  Null then
            Has_Failed := True;
         else
            
            if Root_Object.Relationships.objM.Relationships_objM_type(InstM.all).idM /= 3 then
               Has_Failed := True;
               The_Result := Root_Object.Relationships.objM.Relationships_objM_type(InstM.all).idM;
            else
               The_Result := Root_Object.Relationships.objM.Relationships_objM_type(InstM.all).idM;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------
      --  Test 3 - Navigate from third instance of Object_A to Object_B using 
      --           relationship number
      -- --------------------------------------------------------------------
      
      if Iteration =  3 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0701               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Navigate from Obj A to Obj B    ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0601               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R1.Navigate (
            From  => thirdA,
            Class => Root_Object.Relationships.objB.Relationships_objB_type'tag,
            To    => InstB);
         
         
         -- Check the result of the navigation
         
         if InstB =  Null then
            Has_Failed := True;
         else
            
            if Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB /= 4 then
               Has_Failed := True;
               The_Result := Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB;
            else
               The_Result := Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------
      --  Test 4 - Navigate from third instance of Object_M to Object_B using 
      --           relationship number
      -- --------------------------------------------------------------------
      
      if Iteration =  4 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0701               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Navigate from Obj M to Obj B    ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0601               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R18.Navigate (
            From  => thirdM,
            Class => Root_Object.Relationships.objB.Relationships_objB_type'tag,
            To    => InstB);
         
         
         --  Check the result of the navigation
         
         if InstB =  Null then
            Has_Failed := True;
         else
            
            if Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB /= 4 then
               Has_Failed := True;
               The_Result := Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB;
            else
               The_Result := Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB;
               
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------
      --  Test 5 - Navigate from fourth instance of Object_B to Object_A 
      --           using relationship role. 
      --           This is not currently supported by the WACA
      -- --------------------------------------------------------------------
      
      if Iteration =  5 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Relationship navigation with rol");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R1.Navigate (
            From  => fourthB,
            Role  => "May_have_a",
            To    => InstA);
         
         
         --  Check the result of the navigation. Role navigation is only
         --  supported with reflexive navigations. So should return an 
         --  undefined instance.
         
         if Host =  "ISIM                            " then
            
            Supported := False;
            
         else
            
            if InstA =  Null then
               
               Has_Failed := False;
            else
               Has_Failed := True;
               The_Result := Root_Object.Relationships.objA.Relationships_objA_type(InstA.all).idA;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------
      --  Test 6 - Attempt to perform a navigation on instance that is not 
      --           linked to another instance
      -- --------------------------------------------------------------------
      
      if Iteration =  6 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Navigate non-linked relationship");
         
         
         --  Fifth B is not currently linked to any instances of Object A.
         --  Perform the navigation
         
         Relationships_Rel_R1.Navigate (
            From  => fifthB,
            Class => Root_Object.Relationships.objA.Relationships_objA_type'tag,
            To    => InstA);
         
         
         -- Check the result of the navigation
         
         if InstA /= Null then
            Has_Failed := True;
            The_Result := Root_Object.Relationships.objA.Relationships_objA_type(InstA.all).idA;
         end if;
         
      end if;
      
      
      --  End Test 6
      -- --------------------------------------------------------------------
      --  Test 7 - Perform a chained navigation from the third instance of
      --           Object_A through Object_B and finish at Object_M
      -- --------------------------------------------------------------------
      
      if Iteration =  7 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Navigate from A to B to M       ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0601               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R1.Navigate (
               From  => thirdA,
               Class => Root_Object.Relationships.objB.Relationships_objB_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R18.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objM.Relationships_objM_type'tag,
               To    => InstM);
         end;
         
         --  Check the result of the navigation
         
         if InstM =  Null then
            Has_Failed := True;
         else
            
            if Root_Object.Relationships.objM.Relationships_objM_type(InstM.all).idM /= 3 then
               Has_Failed := True;
               The_Result := Root_Object.Relationships.objM.Relationships_objM_type(InstM.all).idM;
            else
               The_Result := Root_Object.Relationships.objM.Relationships_objM_type(InstM.all).idM;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 7
      -- --------------------------------------------------------------------
      --  Test 8 - Perform a chained navigation starting at the first 
      --           instance of Object_A and returning back to Object_A via
      --           Object_B
      -- --------------------------------------------------------------------
      
      if Iteration =  8 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Navigate from A to B to A       ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0601               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R1.Navigate (
               From  => firstA,
               Class => Root_Object.Relationships.objB.Relationships_objB_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R1.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objA.Relationships_objA_type'tag,
               To    => InstA);
         end;
         
         --  Check the result of the navigation
         
         if InstA =  Null then
            Has_Failed := True;
         else
            
            if Root_Object.Relationships.objA.Relationships_objA_type(InstA.all).idA /= 1 then
               Has_Failed := True;
               The_Result := Root_Object.Relationships.objA.Relationships_objA_type(InstA.all).idA;
            else
               The_Result := Root_Object.Relationships.objA.Relationships_objA_type(InstA.all).idA;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 8 
      -- --------------------------------------------------------------------
      --  Test 9 - Perform a chained navigation starting at the third 
      --           instance of Object_M and navigating to Object_A via
      --           Object_B
      -- --------------------------------------------------------------------
      
      if Iteration =  9 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Navigate from M to B to A       ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0601               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R18.Navigate (
               From  => thirdM,
               Class => Root_Object.Relationships.objB.Relationships_objB_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R1.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objA.Relationships_objA_type'tag,
               To    => InstA);
         end;
         
         --  Check the result of the navigation
         
         if InstA =  Null then
            Has_Failed := True;
         else
            
            if Root_Object.Relationships.objA.Relationships_objA_type(InstA.all).idA /= 3 then
               Has_Failed := True;
               The_Result := Root_Object.Relationships.objA.Relationships_objA_type(InstA.all).idA;
            else
               The_Result := Root_Object.Relationships.objA.Relationships_objA_type(InstA.all).idA;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 9
      -- --------------------------------------------------------------------
      --  Test 10 - Perform a chained navigation starting at the third 
      --            instance of Object_M and returning back to Object_M via
      --            Object_B
      -- --------------------------------------------------------------------
      
      if Iteration =  10 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Navigate from M to B to M       ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0601               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R18.Navigate (
               From  => thirdM,
               Class => Root_Object.Relationships.objB.Relationships_objB_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R18.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objM.Relationships_objM_type'tag,
               To    => InstM);
         end;
         
         --  Check the result of the navigation
         
         if InstM =  Null then
            Has_Failed := True;
         else
            
            if Root_Object.Relationships.objM.Relationships_objM_type(InstM.all).idM /= 3 then
               Has_Failed := True;
               The_Result := Root_Object.Relationships.objM.Relationships_objM_type(InstM.all).idM;
            else
               The_Result := Root_Object.Relationships.objM.Relationships_objM_type(InstM.all).idM;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 10
      -- --------------------------------------------------------------------
      --  Test 11 - Perform a chained navigation starting at the fourth 
      --            instance of Object_B and returning back to Object_B via
      --            Object_M
      -- --------------------------------------------------------------------
      
      if Iteration =  11 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Navigate from B to M to B       ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0601               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R18.Navigate (
               From  => fourthB,
               Class => Root_Object.Relationships.objM.Relationships_objM_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R18.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objB.Relationships_objB_type'tag,
               To    => InstB);
         end;
         
         --  Check the result of the navigation
         
         if InstB =  Null then
            Has_Failed := True;
         else
            
            if Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB /= 4 then
               Has_Failed := True;
               The_Result := Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB;
            else
               The_Result := Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 11
      -- --------------------------------------------------------------------
      --  Test 12 - Perform a chained navigation starting at the fourth 
      --            instance of Object_B and returning back to Object_B via
      --            Object_A
      -- --------------------------------------------------------------------
      
      if Iteration =  12 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Navigate from B to A to B       ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0601               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R1.Navigate (
               From  => fourthB,
               Class => Root_Object.Relationships.objA.Relationships_objA_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R1.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objB.Relationships_objB_type'tag,
               To    => InstB);
         end;
         
         --  Check the result of the navigation
         
         if InstB =  Null then
            Has_Failed := True;
         else
            
            if Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB /= 4 then
               Has_Failed := True;
               The_Result := Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB;
            else
               The_Result := Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 12
      -- --------------------------------------------------------------------
      --  Test 13 - Attempt to navigate to Object_M from Object_B through a 
      --            link thats not yet been established
      -- --------------------------------------------------------------------
      
      if Iteration =  13 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "Navigate to M when not linked to");
         
         
         Relationships_Rel_R18.Navigate (
            From  => firstB,
            Class => Root_Object.Relationships.objM.Relationships_objM_type'tag,
            To    => InstM);
         
         
         if InstM /= Null then
            Has_Failed := True;
            The_Result := Root_Object.Relationships.objM.Relationships_objM_type(InstM.all).idM;
         end if;
         
      end if;
      
      
      --  End Test 13
      -- --------------------------------------------------------------------
      --  Test 14 - Attempt to navigate from Object_M to Object_B via a link
      --            that has not been established
      -- --------------------------------------------------------------------
      
      if Iteration =  14 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objB                            ",
            Purpose         => "B to M while not linked         ");
         
         
         Relationships_Rel_R18.Navigate (
            From  => secondM,
            Class => Root_Object.Relationships.objB.Relationships_objB_type'tag,
            To    => InstB);
         
         
         if InstB /= Null then
            Has_Failed := True;
            The_Result := Root_Object.Relationships.objB.Relationships_objB_type(InstB.all).idB;
            
         end if;
         
      end if;
      
      
      --  End Test 14
      -- --------------------------------------------------------------------
      --  Tests complete
      -- --------------------------------------------------------------------
      --  If the test is supported
      
      if Supported =  True then
         
         if Has_Failed =  False then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "objB                            ",
               Test_Number        => Test,
               Test_Value         => The_Result);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "objB                            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => The_Result);
            
         end if;
         
      else
         Relationships_RPT4_Test_Unsupported_Bridge.Relationships_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
   end Relationships_objB2_ObjB_Navigation;
   
end Relationships_objB2_ObjB_Navigation_Service;

--
-- End of file Relationships_objB2_ObjB_Navigation_Service.adb
--
