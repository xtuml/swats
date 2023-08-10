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
--* File Name:               Relationships_objE3_Delete_Relationships_Service.adb
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
with Root_Object.Relationships.objF;
with Root_Object.Relationships.OBJEF;
with Root_Object.Relationships.objE;

-- List of relationships used
with Relationships_rel_R5;

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


package body Relationships_objE3_Delete_Relationships_Service is
   
   procedure Relationships_objE3_Delete_Relationships (
      Test : in     Application_Types.Base_Integer_Type) is
      
      setAssoc : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetE     : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetEF    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetF     : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      InstE     : Root_Object.Object_Access;
      instAssoc : Root_Object.Object_Access;
      InstF     : Root_Object.Object_Access;
      InstEF    : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      CurrentID    : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objE3_Delete_Relationships
      
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
      --  Set the variable defaults
      Has_Failed   := False;
      Failure_Code := 0;
      
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0613               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "ObjE                            ",
         Purpose         => "Delete relationships            ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0604               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0612               ");
      
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
      
      
      CurrentID := 1;
      
      loop
         InstE := Root_Object.Relationships.objE.Conditional_Find_One;
         while (InstE /= null) and then (not (Root_Object.Relationships.objE.Relationships_objE_Type(InstE.all).idE =  CurrentID) ) loop
            
            InstE := InstE.Next_Object;
         end loop;
         
         exit when InstE =  Null;
         
         Root_Object.Object_List.Clear (
            From => setAssoc);
         
         
         Relationships_Rel_R5.Navigate (
            From  => InstE,
            Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
            To    => setAssoc);
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => setAssoc);
            
            while (Temp_Entry /= null) loop
               instAssoc := Temp_Entry.Item;
               
               Relationships_Rel_R5.Navigate (
                  From  => instAssoc,
                  Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
                  To    => InstF);
               
               
               Relationships_Rel_R5.Unassociate(
                  A_Instance => InstE,
                  B_Instance => InstF,
                  From       => instAssoc);
               
               Relationships_Rel_R5.Unlink (
                  A_Instance => InstE,
                  B_Instance => InstF);
               
               
               Root_Object.Relationships.OBJEF.Delete (
                  Old_Instance => instAssoc);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => setAssoc);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         Root_Object.Relationships.objE.Delete (
            Old_Instance => InstE);
         CurrentID := CurrentID + 1;
         
      end loop;
      
      
      --  Find the desired instances for Object_E
      -- firstE  = find-one Object_E where idE = 1
      -- thirdE  = find-one Object_E where idE = 3
      -- fifthE  = find-one Object_E where idE = 5
      --  Find the desired instances for Object_F
      -- firstF  = find-one Object_F where idF = 1
      -- fourthF = find-one Object_F where idF = 4
      --  Find the desired instances for Object_EF
      -- firstEF  = find-one Object_EF where idEF = 1
      -- secondEF = find-one Object_EF where idEF = 2
      -- thirdEF  = find-one Object_EF where idEF = 3
      -- fourthEF = find-one Object_EF where idEF = 4
      -- fifthEF  = find-one Object_EF where idEF = 5
      --  Delete relationships
      -- unassociate firstE R5 firstF  from fourthEF
      -- unassociate firstE R5 fourthF from thirdEF
      -- unassociate thirdE R5 fourthF from secondEF
      -- unassociate fifthE R5 fourthF from firstEF
      -- unlink firstE R5 firstF
      -- unlink firstE R5 fourthF
      -- unlink thirdE R5 fourthF
      -- unlink fifthE R5 fourthF
      
      Root_Object.Object_List.Clear (
         From => SetE);
      
      Root_Object.Relationships.objE.Find (
         Add_To => SetE);
      
      
      Root_Object.Object_List.Clear (
         From => SetEF);
      
      Root_Object.Relationships.OBJEF.Find (
         Add_To => SetEF);
      
      
      Root_Object.Object_List.Clear (
         From => SetF);
      
      Root_Object.Relationships.objF.Find (
         Add_To => SetF);
      
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
            
            Root_Object.Relationships.objE.Delete (
               Old_Instance => InstE);
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => SetE);
            
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
            
            Root_Object.Relationships.OBJEF.Delete (
               Old_Instance => InstEF);
            
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
            Target_List => SetF);
         
         while (Temp_Entry /= null) loop
            InstF := Temp_Entry.Item;
            
            Root_Object.Relationships.objF.Delete (
               Old_Instance => InstF);
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => SetF);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      Root_Object.Object_List.Clear (
         From => SetE);
      
      Root_Object.Relationships.objE.Find (
         Add_To => SetE);
      
      
      Root_Object.Object_List.Clear (
         From => SetEF);
      
      Root_Object.Relationships.OBJEF.Find (
         Add_To => SetEF);
      
      
      Root_Object.Object_List.Clear (
         From => SetF);
      
      Root_Object.Relationships.objF.Find (
         Add_To => SetF);
      
      
      if Root_Object.Object_List.Count_Of(SetE) =  0 then
         
         if Root_Object.Object_List.Count_Of(SetEF) =  0 then
            
            if Root_Object.Object_List.Count_Of(SetF) /= 0 then
               
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
      
      
      -- --------------------------------------------------------------------
      
      if Has_Failed then
         
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objE                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "ObjE                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetF);
      Root_Object.Object_List.Destroy_List (SetEF);
      Root_Object.Object_List.Destroy_List (SetE);
      Root_Object.Object_List.Destroy_List (setAssoc);
      
   end Relationships_objE3_Delete_Relationships;
   
end Relationships_objE3_Delete_Relationships_Service;

--
-- End of file Relationships_objE3_Delete_Relationships_Service.adb
--
