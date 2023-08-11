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
--* File Name:               Relationships_objE2_ObjE_Navigation_Service.adb
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
with Root_Object.Relationships.OBJEF;
with Root_Object.Relationships.objF;
with Root_Object.Relationships.objE;

-- List of relationships used
with Relationships_rel_R5;

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


package body Relationships_objE2_ObjE_Navigation_Service is
   
   procedure Relationships_objE2_ObjE_Navigation (
      Iteration : in     Application_Types.Base_Integer_Type;
      Test      : in     Application_Types.Base_Integer_Type) is
      
      SetF     : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetE     : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetEF    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      newSetEF : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      firstE      : Root_Object.Object_Access;
      thirdE      : Root_Object.Object_Access;
      fourthE     : Root_Object.Object_Access;
      fifthE      : Root_Object.Object_Access;
      firstF      : Root_Object.Object_Access;
      fourthF     : Root_Object.Object_Access;
      fifthF      : Root_Object.Object_Access;
      firstEF     : Root_Object.Object_Access;
      secondEF    : Root_Object.Object_Access;
      thirdEF     : Root_Object.Object_Access;
      fourtEF     : Root_Object.Object_Access;
      fifthEF     : Root_Object.Object_Access;
      InstF       : Root_Object.Object_Access;
      InstE       : Root_Object.Object_Access;
      InstEF      : Root_Object.Object_Access;
      BigE        : Root_Object.Object_Access;
      BigF        : Root_Object.Object_Access;
      firstNewE   : Root_Object.Object_Access;
      secondNewE  : Root_Object.Object_Access;
      firstNewF   : Root_Object.Object_Access;
      secondNewF  : Root_Object.Object_Access;
      firstNewEF  : Root_Object.Object_Access;
      secondNewEF : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      Val1         : Application_Types.Base_Integer_Type := 1;
      Val2         : Application_Types.Base_Integer_Type := 1;
      Val3         : Application_Types.Base_Integer_Type := 1;
      Val4         : Application_Types.Base_Integer_Type := 1;
      Total        : Application_Types.Base_Integer_Type := 1;
      temp         : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed  : Boolean := Application_Types.Boolean_first;
      Unsupported : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objE2_ObjE_Navigation
      
      -- --------------------------------------------------------------------
      --  Normal navigation
      --  The architecture shall implement simple 1:M relationships
      --  1241-0000-01-0602
      --  The architecture shall implement associative 1-M:M relationships
      --  1241-0000-01-0610
      --  The architecture shall provide a mechanism to allow the creation of
      --  associative relationship link between two object instances and an
      --  associative instance
      --  1241-0000-01-0611
      --  The architecture shall provide a mechanism to allow the deletion of
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
      --  1241-0000-01-0702
      --  The architecture shall provide operations which, given a starting 
      --  instance handle and a relationship specification, return a set of 
      --  handles of the related instances
      --  1241-0000-01-0703 **** NOT SUPPORTED BY WACA ****
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
      Has_Failed   := False;
      Unsupported  := False;
      Failure_Code := -1;
      
      -- --------------------------------------------------------------------
      --  Find the desired instances for Object_E
      firstE := Root_Object.Relationships.objE.Conditional_Find_One;
      while (firstE /= null) and then (not (Root_Object.Relationships.objE.Relationships_objE_Type(firstE.all).idE =  1) ) loop
         
         firstE := firstE.Next_Object;
      end loop;
      
      thirdE := Root_Object.Relationships.objE.Conditional_Find_One;
      while (thirdE /= null) and then (not (Root_Object.Relationships.objE.Relationships_objE_Type(thirdE.all).idE =  3) ) loop
         
         thirdE := thirdE.Next_Object;
      end loop;
      
      fourthE := Root_Object.Relationships.objE.Conditional_Find_One;
      while (fourthE /= null) and then (not (Root_Object.Relationships.objE.Relationships_objE_Type(fourthE.all).idE =  4) ) loop
         
         fourthE := fourthE.Next_Object;
      end loop;
      
      fifthE := Root_Object.Relationships.objE.Conditional_Find_One;
      while (fifthE /= null) and then (not (Root_Object.Relationships.objE.Relationships_objE_Type(fifthE.all).idE =  5) ) loop
         
         fifthE := fifthE.Next_Object;
      end loop;
      
      
      -- Find the desired instances for Object_F
      firstF := Root_Object.Relationships.objF.Conditional_Find_One;
      while (firstF /= null) and then (not (Root_Object.Relationships.objF.Relationships_objF_Type(firstF.all).idF =  1) ) loop
         
         firstF := firstF.Next_Object;
      end loop;
      
      fourthF := Root_Object.Relationships.objF.Conditional_Find_One;
      while (fourthF /= null) and then (not (Root_Object.Relationships.objF.Relationships_objF_Type(fourthF.all).idF =  4) ) loop
         
         fourthF := fourthF.Next_Object;
      end loop;
      
      fifthF := Root_Object.Relationships.objF.Conditional_Find_One;
      while (fifthF /= null) and then (not (Root_Object.Relationships.objF.Relationships_objF_Type(fifthF.all).idF =  5) ) loop
         
         fifthF := fifthF.Next_Object;
      end loop;
      
      
      -- Find the desired instances for Object_EF
      firstEF := Root_Object.Relationships.OBJEF.Conditional_Find_One;
      while (firstEF /= null) and then (not (Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(firstEF.all).idEF =  1) ) loop
         
         firstEF := firstEF.Next_Object;
      end loop;
      
      secondEF := Root_Object.Relationships.OBJEF.Conditional_Find_One;
      while (secondEF /= null) and then (not (Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(secondEF.all).idEF =  2) ) loop
         
         secondEF := secondEF.Next_Object;
      end loop;
      
      thirdEF := Root_Object.Relationships.OBJEF.Conditional_Find_One;
      while (thirdEF /= null) and then (not (Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(thirdEF.all).idEF =  3) ) loop
         
         thirdEF := thirdEF.Next_Object;
      end loop;
      
      fourtEF := Root_Object.Relationships.OBJEF.Conditional_Find_One;
      while (fourtEF /= null) and then (not (Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(fourtEF.all).idEF =  4) ) loop
         
         fourtEF := fourtEF.Next_Object;
      end loop;
      
      fifthEF := Root_Object.Relationships.OBJEF.Conditional_Find_One;
      while (fifthEF /= null) and then (not (Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(fifthEF.all).idEF =  5) ) loop
         
         fifthEF := fifthEF.Next_Object;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Test 1 - Navigate from first instance of Object E to Object F
      --           using qualified number
      -- --------------------------------------------------------------------
      
      if Iteration =  1 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0702               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Navigate from ObjE to ObjF      ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetF);
         
         
         Relationships_Rel_R5.Navigate (
            From  => firstE,
            Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
            To    => SetF);
         
         --  Check the result of the navigation
         
         if Root_Object.Object_List.Count_Of(SetF) /= 2 then
            Has_Failed   := True;
            Failure_Code := -10;
            
         else
            
            --  Check the set contents
            
            Val1 := -11;
            Val2 := -12;
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetF);
               
               while (Temp_Entry /= null) loop
                  InstF := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objF.Relationships_objF_type(InstF.all).idF =  1 then
                     Val1 := Root_Object.Relationships.objF.Relationships_objF_type(InstF.all).idF;
                  end if;
                  
                  
                  if Root_Object.Relationships.objF.Relationships_objF_type(InstF.all).idF =  4 then
                     Val2 := Root_Object.Relationships.objF.Relationships_objF_type(InstF.all).idF;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetF);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Val1 =  1 then
               
               if Val2 =  4 then
                  
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
      --  Test 2 - Navigate from Object F back to Object E
      -- --------------------------------------------------------------------
      
      if Iteration =  2 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0702               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Object F to Object E            ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Root_Object.Object_List.Clear (
            From => SetE);
         
         
         Relationships_Rel_R5.Navigate (
            From  => fourthF,
            Class => Root_Object.Relationships.objE.Relationships_objE_type'tag,
            To    => SetE);
         
         if Root_Object.Object_List.Count_Of(SetE) =  0 then
            Has_Failed := True;
            Failure_Code := -30;
            
         else
            
            Val1 := -10;
            Val2 := -20;
            Val3 := -30;
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetE);
               
               while (Temp_Entry /= null) loop
                  InstE := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objE.Relationships_objE_type(InstE.all).idE =  1 then
                     Val1 := Root_Object.Relationships.objE.Relationships_objE_type(InstE.all).idE;
                  end if;
                  
                  
                  if Root_Object.Relationships.objE.Relationships_objE_type(InstE.all).idE =  3 then
                     Val2 := Root_Object.Relationships.objE.Relationships_objE_type(InstE.all).idE;
                  end if;
                  
                  
                  if Root_Object.Relationships.objE.Relationships_objE_type(InstE.all).idE =  5 then
                     Val3 := Root_Object.Relationships.objE.Relationships_objE_type(InstE.all).idE;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetE);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Val1 =  1 then
               
               if Val2 =  3 then
                  
                  if Val3 =  5 then
                     
                     Has_Failed := False;
                     
                  else
                     
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
         
      end if;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------
      --  Test 3 - Navigate from third instance of Object E to Object F
      -- --------------------------------------------------------------------
      
      if Iteration =  3 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0702               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Navigate from ObjE to ObjF      ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetF);
         
         
         Relationships_Rel_R5.Navigate (
            From  => thirdE,
            Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
            To    => SetF);
         
         --  Check the result of the navigation
         
         if Root_Object.Object_List.Count_Of(SetF) /= 1 then
            Has_Failed := True;
            Failure_Code := -10;
            
         else
            
            --  Check the set contents
            
            Val1 := -20;
            
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetF);
               
               while (Temp_Entry /= null) loop
                  InstF := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objF.Relationships_objF_type(InstF.all).idF /= 4 then
                     
                     Failure_Code := Val1;
                     Has_Failed   := True;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetF);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         end if;
         
      end if;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------
      --  Test 4 - Navigate from a set of instance handles
      -- --------------------------------------------------------------------
      
      if Iteration =  4 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0703               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Navigate from set F to E        ");
         
         
         Val1 := 0;
         Val2 := 0;
         Val3 := 0;
         Val4 := 0;
         
         Root_Object.Object_List.Clear (
            From => SetF);
         
         
         Relationships_Rel_R5.Navigate (
            From  => firstE,
            Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
            To    => SetF);
         
         if Root_Object.Object_List.Count_Of(SetF) =  2 then
            
            Root_Object.Object_List.Clear (
               From => SetE);
            
            
            Relationships_Rel_R5.Navigate (
               From  => SetF,
               Class => Root_Object.Relationships.objE.Relationships_objE_type'tag,
               To    => SetE);
            
            if Root_Object.Object_List.Count_Of(SetE) =  4 then
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => SetE);
                  
                  while (Temp_Entry /= null) loop
                     InstE := Temp_Entry.Item;
                     
                     if Val1 =  0 then
                        Val1 := Root_Object.Relationships.objE.Relationships_objE_type(InstE.all).idE;
                     else
                        
                        if Val2 =  0 then
                           Val2 := Root_Object.Relationships.objE.Relationships_objE_type(InstE.all).idE;
                        else
                           
                           if Val3 =  0 then
                              Val3 := Root_Object.Relationships.objE.Relationships_objE_type(InstE.all).idE;
                              
                           else
                              
                              Val4  := Root_Object.Relationships.objE.Relationships_objE_type(InstE.all).idE;
                           end if;
                           
                        end if;
                        
                     end if;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => SetE);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               Total := 0;
               Total := Val1 + Val2 + Val3 + Val4;
               
               
               if Total /= 10 then
                  
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
         
      end if;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------
      --  Test 5 - Navigate from a set of instance handles
      -- --------------------------------------------------------------------
      
      if Iteration =  5 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0703               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Navigate from set E to F        ");
         
         
         temp := 0;
         Total := 0;
         
         Root_Object.Object_List.Clear (
            From => SetE);
         
         
         Relationships_Rel_R5.Navigate (
            From  => fourthF,
            Class => Root_Object.Relationships.objE.Relationships_objE_type'tag,
            To    => SetE);
         
         if Root_Object.Object_List.Count_Of(SetE) =  3 then
            
            Root_Object.Object_List.Clear (
               From => SetF);
            
            
            Relationships_Rel_R5.Navigate (
               From  => SetE,
               Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
               To    => SetF);
            
            if Root_Object.Object_List.Count_Of(SetF) =  4 then
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => SetF);
                  
                  while (Temp_Entry /= null) loop
                     InstF := Temp_Entry.Item;
                     temp  := Root_Object.Relationships.objF.Relationships_objF_type(InstF.all).idF;
                     Total := Total + temp;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => SetF);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               
               if Total /= 13 then
                  
                  Has_Failed := True;
                  Failure_Code := Total;
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
      
      
      --  End Test 5
      -- --------------------------------------------------------------------
      --  Test 6 - Navigate from a set of instance handles
      -- --------------------------------------------------------------------
      
      if Iteration =  6 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0703               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Navigate from set F to EF       ");
         
         
         Val1 := 0;
         Val2 := 0;
         Val3 := 0;
         Val4 := 0;
         
         Root_Object.Object_List.Clear (
            From => SetF);
         
         
         Relationships_Rel_R5.Navigate (
            From  => firstE,
            Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
            To    => SetF);
         
         if Root_Object.Object_List.Count_Of(SetF) =  2 then
            
            Root_Object.Object_List.Clear (
               From => SetEF);
            
            
            Relationships_Rel_R5.Navigate (
               From  => SetF,
               Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
               To    => SetEF);
            
            if Root_Object.Object_List.Count_Of(SetEF) =  4 then
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => SetEF);
                  
                  while (Temp_Entry /= null) loop
                     InstEF := Temp_Entry.Item;
                     
                     if Val1 =  0 then
                        Val1 := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                     else
                        
                        if Val2 =  0 then
                           Val2 := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                        else
                           
                           if Val3 =  0 then
                              Val3 := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                              
                           else
                              
                              Val4  := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                           end if;
                           
                        end if;
                        
                     end if;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => SetEF);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               Total := 0;
               Total := Val1 + Val2 + Val3 + Val4;
               
               
               if Total /= 10 then
                  
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
         
      end if;
      
      
      --  End Test 6
      -- --------------------------------------------------------------------
      --  Test 7 - Navigate from a set of instance handles
      -- --------------------------------------------------------------------
      
      if Iteration =  7 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0703               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Navigate from set E to EF       ");
         
         
         Val1 := 0;
         Val2 := 0;
         Val3 := 0;
         Val4 := 0;
         
         Root_Object.Object_List.Clear (
            From => SetE);
         
         
         Relationships_Rel_R5.Navigate (
            From  => fourthF,
            Class => Root_Object.Relationships.objE.Relationships_objE_type'tag,
            To    => SetE);
         
         if Root_Object.Object_List.Count_Of(SetE) =  3 then
            
            Root_Object.Object_List.Clear (
               From => SetEF);
            
            
            Relationships_Rel_R5.Navigate (
               From  => SetE,
               Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
               To    => SetEF);
            
            if Root_Object.Object_List.Count_Of(SetEF) =  4 then
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => SetEF);
                  
                  while (Temp_Entry /= null) loop
                     InstEF := Temp_Entry.Item;
                     
                     if Val1 =  0 then
                        Val1 := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                     else
                        
                        if Val2 =  0 then
                           Val2 := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                        else
                           
                           if Val3 =  0 then
                              Val3 := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                              
                           else
                              
                              Val4  := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                           end if;
                           
                        end if;
                        
                     end if;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => SetEF);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               Total := 0;
               Total := Val1 + Val2 + Val3 + Val4;
               
               
               if Total /= 10 then
                  
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
         
      end if;
      
      
      --  End Test 7
      -- --------------------------------------------------------------------
      --  Test 8 - Navigate to the associative object from the fifth instance
      --           of Object E
      -- --------------------------------------------------------------------
      
      if Iteration =  8 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Navigate to associative object  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetEF);
         
         
         Relationships_Rel_R5.Navigate (
            From  => fifthE,
            Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
            To    => SetEF);
         
         --  Check the result of the navigation
         
         if Root_Object.Object_List.Count_Of(SetEF) /= 1 then
            
            Has_Failed := True;
            
         else
            
            --  Check the contents of the set
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetEF);
               
               while (Temp_Entry /= null) loop
                  InstEF := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF /= 1 then
                     
                     Failure_Code := -10;
                     Has_Failed   := True;
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetEF);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         end if;
         
      end if;
      
      
      --  End Test 8
      -- --------------------------------------------------------------------
      --  Test 9 - Navigate from Object F to the associated object EF
      -- --------------------------------------------------------------------
      
      if Iteration =  9 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0706               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "ObjF to associated Object EF    ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Root_Object.Object_List.Clear (
            From => SetEF);
         
         
         Relationships_Rel_R5.Navigate (
            From  => fourthF,
            Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
            To    => SetEF);
         
         if Root_Object.Object_List.Count_Of(SetEF) =  0 then
            Has_Failed := True;
            Failure_Code := -70;
            
         else
            
            Val1 := -10;
            Val2 := -20;
            Val3 := -30;
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetEF);
               
               while (Temp_Entry /= null) loop
                  InstEF := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF =  1 then
                     Val1 := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                  end if;
                  
                  
                  if Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF =  2 then
                     Val2 := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                  end if;
                  
                  
                  if Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF =  3 then
                     Val3 := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetEF);
                  
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
                  Target_List => SetEF);
               
               while (Temp_Entry /= null) loop
                  InstEF := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF =  1 then
                     Val1 := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                  end if;
                  
                  
                  if Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF =  2 then
                     Val2 := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                  end if;
                  
                  
                  if Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF =  3 then
                     Val3 := Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetEF);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Val1 =  1 then
               
               if Val2 =  2 then
                  
                  if Val3 =  3 then
                     
                     Has_Failed := False;
                     
                  else
                     
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
         
      end if;
      
      
      --  End Test 9
      -- --------------------------------------------------------------------
      --  Test 10 - Navigate from the associated object EF to object F
      -- --------------------------------------------------------------------
      
      if Iteration =  10 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0707               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Associated object EF to object F");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Root_Object.Object_List.Clear (
            From => SetEF);
         
         Root_Object.Relationships.OBJEF.Find (
            Add_To => SetEF);
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetEF);
            
            while (Temp_Entry /= null) loop
               InstEF := Temp_Entry.Item;
               
               if Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF =  1 then
                  
                  Relationships_Rel_R5.Navigate (
                     From  => InstEF,
                     Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
                     To    => InstF);
                  
                  
                  if Root_Object.Relationships.objF.Relationships_objF_type(InstF.all).idF /= 4 then
                     Has_Failed   := True;
                     Failure_Code := -10;
                        exit;
                  end if;
                  
               end if;
               
               
               if Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF =  2 then
                  
                  Relationships_Rel_R5.Navigate (
                     From  => InstEF,
                     Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
                     To    => InstF);
                  
                  
                  if Root_Object.Relationships.objF.Relationships_objF_type(InstF.all).idF /= 4 then
                     Has_Failed   := True;
                     Failure_Code := -20;
                        exit;
                  end if;
                  
               end if;
               
               
               if Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF =  3 then
                  
                  Relationships_Rel_R5.Navigate (
                     From  => InstEF,
                     Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
                     To    => InstF);
                  
                  
                  if Root_Object.Relationships.objF.Relationships_objF_type(InstF.all).idF /= 4 then
                     Has_Failed   := True;
                     Failure_Code := -30;
                        exit;
                  end if;
                  
               end if;
               
               
               if Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF =  4 then
                  
                  Relationships_Rel_R5.Navigate (
                     From  => InstEF,
                     Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
                     To    => InstF);
                  
                  
                  if Root_Object.Relationships.objF.Relationships_objF_type(InstF.all).idF /= 1 then
                     Has_Failed   := True;
                     Failure_Code := -40;
                        exit;
                  end if;
                  
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetEF);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
      end if;
      
      
      --  End Test 10
      -- --------------------------------------------------------------------
      --  Test 11 - Navigate from the associated object EF to object E
      -- --------------------------------------------------------------------
      
      if Iteration =  11 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0707               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Associated Object EF to Object E");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Relationships_Rel_R5.Navigate (
            From  => thirdEF,
            Class => Root_Object.Relationships.objE.Relationships_objE_type'tag,
            To    => InstE);
         
         
         if InstE =  Null then
            Has_Failed := True;
            Failure_Code := -10;
         else
            
            if Root_Object.Relationships.objE.Relationships_objE_type(InstE.all).idE /= 1 then
               Has_Failed   := True;
               Failure_Code := -20;
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 11
      -- --------------------------------------------------------------------
      --  Test 12  - Navigate from object E to the associated object EF and 
      --            then to object F
      -- --------------------------------------------------------------------
      
      if Iteration =  12 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "ObjE to assoc ObjEF to ObjF     ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0706               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0707               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         
         --  Unsupported by WACA 301 beta
         --  Will be supported for WACA 500
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => fifthE,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R5.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetF);
            
            Relationships_Rel_R5.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
               To    => SetF);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         
         if Root_Object.Object_List.Count_Of(SetF) =  1 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetF);
               
               while (Temp_Entry /= null) loop
                  InstF := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objF.Relationships_objF_type(InstF.all).idF /= 4 then
                     Has_Failed   := True;
                     Failure_Code := -10;
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetF);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            Has_Failed := True;
            Failure_Code := -20;
         end if;
         
      end if;
      
      
      --  End Test 12
      -- --------------------------------------------------------------------
      --  Test 13 - Navigate from object F to the associated object EF then  
      --            to object E
      -- --------------------------------------------------------------------
      
      if Iteration =  13 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Object F to assoc object EF to o");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
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
         
         
         --  Will be supported for WACA 500
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => firstF,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R5.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetE);
            
            Relationships_Rel_R5.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.objE.Relationships_objE_type'tag,
               To    => SetE);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         
         if Root_Object.Object_List.Count_Of(SetE) =  1 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetE);
               
               while (Temp_Entry /= null) loop
                  InstE := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objE.Relationships_objE_type(InstE.all).idE /= 1 then
                     Has_Failed   := True;
                     Failure_Code := -10;
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetE);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            Has_Failed := True;
            Failure_Code := -20;
         end if;
         
      end if;
      
      
      --  End Test 13
      -- --------------------------------------------------------------------
      --  Test 14 - Navigate a relationships where the source instance does 
      --            not form any part of a relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  14 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Source forms no part of relation");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetF);
         
         
         Relationships_Rel_R5.Navigate (
            From  => fourthE,
            Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
            To    => SetF);
         
         --  Check the result of the navigation
         
         if Root_Object.Object_List.Count_Of(SetF) /= 0 then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 14
      -- --------------------------------------------------------------------
      --  Test 15 - Navigate a relationships where the source instance does 
      --            not form any part of a relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  15 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Source forms no part of relation");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetE);
         
         
         Relationships_Rel_R5.Navigate (
            From  => fifthF,
            Class => Root_Object.Relationships.objE.Relationships_objE_type'tag,
            To    => SetE);
         
         --  Check the result of the navigation
         
         if Root_Object.Object_List.Count_Of(SetF) /= 0 then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 15
      -- --------------------------------------------------------------------
      --  Test 16 - Navigate to an associative object where the source 
      --            instance does not form part of the relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  16 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Source forms no part of relation");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetEF);
         
         
         Relationships_Rel_R5.Navigate (
            From  => fourthE,
            Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
            To    => SetEF);
         
         --  Check the result of the navigation
         
         if Root_Object.Object_List.Count_Of(SetEF) /= 0 then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 16
      -- --------------------------------------------------------------------
      --  Test 17 - Navigate to an associative object where the source 
      --            instance does not form part of the relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  17 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Source forms no part of relation");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetEF);
         
         
         Relationships_Rel_R5.Navigate (
            From  => fifthF,
            Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
            To    => SetEF);
         
         --  Check the result of the navigation
         
         if Root_Object.Object_List.Count_Of(SetEF) /= 0 then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 17
      -- --------------------------------------------------------------------
      --  Test 18 - Navigate to an associative object where the source 
      --            instance does not form part of the relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  18 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Source forms no part of relation");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R5.Navigate (
            From  => fifthEF,
            Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
            To    => InstF);
         
         
         --  Check the result of the navigation
         
         if InstF /= Null then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 18
      -- --------------------------------------------------------------------
      --  Test 19 - Navigate to an associative object where the source 
      --            instance does not form part of the relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  19 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Source forms no part of relation");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R5.Navigate (
            From  => fifthEF,
            Class => Root_Object.Relationships.objE.Relationships_objE_type'tag,
            To    => InstE);
         
         
         --  Check the result of the navigation
         
         if InstE /= Null then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 19
      -- --------------------------------------------------------------------
      --  Test 20 - Correlated associative navigation
      -- --------------------------------------------------------------------
      
      if Iteration =  20 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-1205               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Correlated Assoc Navigation     ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Relationships_Rel_R5.Navigate (
            From  => firstE,
            Also  => firstF,
            Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
            To    => InstEF);
         
         
         if Root_Object.Relationships.OBJEF.Relationships_OBJEF_type(InstEF.all).idEF /= 4 then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
      end if;
      
      
      --  End Test 20
      -- --------------------------------------------------------------------
      --  Test 21 - Attempt to naviagate from Object E to Object F via 
      --            unlinked relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  21 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Nav from E to F                 ");
         
         
         BigE := Root_Object.Relationships.objE.Create;
         Root_Object.Relationships.objE.Relationships_objE_Type(BigE.all).idE := 10000;
         
         
         BigF := Root_Object.Relationships.objF.Create;
         Root_Object.Relationships.objF.Relationships_objF_Type(BigF.all).idF := 20000;
         
         
         Root_Object.Object_List.Clear (
            From => SetF);
         
         
         Relationships_Rel_R5.Navigate (
            From  => BigE,
            Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
            To    => SetF);
         
         if Root_Object.Object_List.Count_Of(SetF) /= 0 then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
         
         Root_Object.Relationships.objE.Delete (
            Old_Instance => BigE);
         
         Root_Object.Relationships.objF.Delete (
            Old_Instance => BigF);
      end if;
      
      
      --  End Test 21
      -- --------------------------------------------------------------------
      --  Test 22 - This test ensures that when instances of an object are
      --            linked, unlinked then relinked that the linking of the
      --            new instances is correct
      -- --------------------------------------------------------------------
      
      if Iteration =  22 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0603               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objE                            ",
            Purpose         => "Check that no in assoc inst is c");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0604               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0612               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0613               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
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
         
         
         firstNewE := Root_Object.Relationships.objE.Create;
         Root_Object.Relationships.objE.Relationships_objE_Type(firstNewE.all).idE := 10;
         
         
         secondNewE := Root_Object.Relationships.objE.Create;
         Root_Object.Relationships.objE.Relationships_objE_Type(secondNewE.all).idE := 11;
         
         
         firstNewF := Root_Object.Relationships.objF.Create;
         Root_Object.Relationships.objF.Relationships_objF_Type(firstNewF.all).idF := 20;
         
         
         secondNewF := Root_Object.Relationships.objF.Create;
         Root_Object.Relationships.objF.Relationships_objF_Type(secondNewF.all).idF := 21;
         
         
         firstNewEF := Root_Object.Relationships.OBJEF.Create;
         Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(firstNewEF.all).idE := 30;
         
         
         secondNewEF := Root_Object.Relationships.OBJEF.Create;
         Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(secondNewEF.all).idE := 31;
         
         Relationships_Rel_R5.Link (
            A_Instance => firstNewE,
            B_Instance => firstNewF,
            Using      => firstNewEF);
         
         Relationships_Rel_R5.Link (
            A_Instance => secondNewE,
            B_Instance => secondNewF,
            Using      => secondNewEF);
         
         
         Root_Object.Object_List.Clear (
            From => SetEF);
         
         
         Relationships_Rel_R5.Navigate (
            From  => firstNewE,
            Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
            To    => SetEF);
         
         if Root_Object.Object_List.Count_Of(SetEF) /= 1 then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
         
         Relationships_Rel_R5.Unassociate(
            A_Instance => firstNewE,
            B_Instance => firstNewF,
            From       => firstNewEF);
         
         Relationships_Rel_R5.Unassociate(
            A_Instance => secondNewE,
            B_Instance => secondNewF,
            From       => secondNewEF);
         
         Relationships_Rel_R5.Unlink (
            A_Instance => firstNewE,
            B_Instance => firstNewF);
         
         
         Relationships_Rel_R5.Unlink (
            A_Instance => secondNewE,
            B_Instance => secondNewF);
         
         
         if (not Has_Failed) then
            Relationships_Rel_R5.Link (
               A_Instance => firstNewE,
               B_Instance => firstNewF,
               Using      => firstNewEF);
            
            Relationships_Rel_R5.Link (
               A_Instance => secondNewE,
               B_Instance => secondNewF,
               Using      => secondNewEF);
            
            
            Root_Object.Object_List.Clear (
               From => newSetEF);
            
            
            Relationships_Rel_R5.Navigate (
               From  => firstNewE,
               Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
               To    => newSetEF);
            
            if Root_Object.Object_List.Count_Of(newSetEF) /= 1 then
               Has_Failed   := True;
               Failure_Code := -20;
               
            end if;
            
         end if;
         
         
         Relationships_Rel_R5.Unassociate(
            A_Instance => firstNewE,
            B_Instance => firstNewF,
            From       => firstNewEF);
         
         Relationships_Rel_R5.Unassociate(
            A_Instance => secondNewE,
            B_Instance => secondNewF,
            From       => secondNewEF);
         
         Relationships_Rel_R5.Unlink (
            A_Instance => firstNewE,
            B_Instance => firstNewF);
         
         
         Relationships_Rel_R5.Unlink (
            A_Instance => secondNewE,
            B_Instance => secondNewF);
         
         
         Root_Object.Relationships.objE.Delete (
            Old_Instance => firstNewE);
         
         Root_Object.Relationships.objE.Delete (
            Old_Instance => secondNewE);
         
         Root_Object.Relationships.objF.Delete (
            Old_Instance => firstNewF);
         
         Root_Object.Relationships.objF.Delete (
            Old_Instance => secondNewF);
         
         Root_Object.Relationships.OBJEF.Delete (
            Old_Instance => firstNewEF);
         
         Root_Object.Relationships.OBJEF.Delete (
            Old_Instance => secondNewEF);
      end if;
      
      
      --  End Test 22
      -- --------------------------------------------------------------------
      --  Tests complete
      -- --------------------------------------------------------------------
      
      if Unsupported =  False then
         
         if Has_Failed =  False then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "objE                            ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "objE                            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Failure_Code);
            
         end if;
         
      else
         Relationships_RPT4_Test_Unsupported_Bridge.Relationships_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (newSetEF);
      Root_Object.Object_List.Destroy_List (SetEF);
      Root_Object.Object_List.Destroy_List (SetE);
      Root_Object.Object_List.Destroy_List (SetF);
      
   end Relationships_objE2_ObjE_Navigation;
   
end Relationships_objE2_ObjE_Navigation_Service;

--
-- End of file Relationships_objE2_ObjE_Navigation_Service.adb
--
