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
--* File Name:               Relationships_objD4_Delete_Instances_Service.adb
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
with Root_Object.Relationships.objO;
with Root_Object.Relationships.objDO;
with Root_Object.Relationships.objD;
with Root_Object.Relationships.objC;

-- List of bridges used
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_objD4_Delete_Instances_Service is
   
   procedure Relationships_objD4_Delete_Instances (
      Test : in     Application_Types.Base_Integer_Type) is
      
      SetC  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetD  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetDO : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetO  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objD4_Delete_Instances
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0612               ",
         Invoking_Domain => "Relationship                    ",
         Invoking_Object => "objD                            ",
         Purpose         => "Delete relationships            ");
      
      
      --  Delete set of instances
      -- InstRedD = find-one Object_D where Colour_Of_D = 'Red'
      -- delete InstRedD
      -- InstBlackD = find-one Object_D where Colour_Of_D = 'Black'
      -- delete InstBlackD
      
      Root_Object.Object_List.Clear (
         From => SetC);
      
      Root_Object.Relationships.objC.Find (
         Add_To => SetC);
      
      
      Root_Object.Object_List.Clear (
         From => SetD);
      
      Root_Object.Relationships.objD.Find (
         Add_To => SetD);
      
      
      Root_Object.Object_List.Clear (
         From => SetDO);
      
      Root_Object.Relationships.objDO.Find (
         Add_To => SetDO);
      
      
      Root_Object.Object_List.Clear (
         From => SetO);
      
      Root_Object.Relationships.objO.Find (
         Add_To => SetO);
      
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Delete_Instance : Root_Object.Object_Access;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => SetC);
         
         while (Temp_Entry /= null) loop
            Delete_Instance := Temp_Entry.Item;
            Root_Object.Relationships.objC.Delete (
               Old_Instance => Delete_Instance);
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => SetC);
            
         end loop;
         
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Delete_Instance : Root_Object.Object_Access;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => SetD);
         
         while (Temp_Entry /= null) loop
            Delete_Instance := Temp_Entry.Item;
            Root_Object.Relationships.objD.Delete (
               Old_Instance => Delete_Instance);
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => SetD);
            
         end loop;
         
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Delete_Instance : Root_Object.Object_Access;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => SetDO);
         
         while (Temp_Entry /= null) loop
            Delete_Instance := Temp_Entry.Item;
            Root_Object.Relationships.objDO.Delete (
               Old_Instance => Delete_Instance);
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => SetDO);
            
         end loop;
         
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Delete_Instance : Root_Object.Object_Access;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => SetO);
         
         while (Temp_Entry /= null) loop
            Delete_Instance := Temp_Entry.Item;
            Root_Object.Relationships.objO.Delete (
               Old_Instance => Delete_Instance);
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => SetO);
            
         end loop;
         
      end;
      
      Root_Object.Object_List.Clear (
         From => SetC);
      
      Root_Object.Relationships.objC.Find (
         Add_To => SetC);
      
      
      Root_Object.Object_List.Clear (
         From => SetD);
      
      Root_Object.Relationships.objD.Find (
         Add_To => SetD);
      
      
      Root_Object.Object_List.Clear (
         From => SetDO);
      
      Root_Object.Relationships.objDO.Find (
         Add_To => SetDO);
      
      
      Root_Object.Object_List.Clear (
         From => SetO);
      
      Root_Object.Relationships.objO.Find (
         Add_To => SetO);
      
      
      --  Test to ensure that all instances have been deleted
      
      if Root_Object.Object_List.Count_Of(SetC) =  0 then
         
         if Root_Object.Object_List.Count_Of(SetD) =  0 then
            
            if Root_Object.Object_List.Count_Of(SetDO) =  0 then
               
               if Root_Object.Object_List.Count_Of(SetO) =  0 then
                  Has_Failed := False;
                  
               else
                  
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
         
      else
         Has_Failed := True;
         Failure_Code := -40;
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      if Has_Failed then
         
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetO);
      Root_Object.Object_List.Destroy_List (SetDO);
      Root_Object.Object_List.Destroy_List (SetD);
      Root_Object.Object_List.Destroy_List (SetC);
      
   end Relationships_objD4_Delete_Instances;
   
end Relationships_objD4_Delete_Instances_Service;

--
-- End of file Relationships_objD4_Delete_Instances_Service.adb
--
