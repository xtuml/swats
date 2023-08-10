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
--* File Name:               Relationships3_Memory_Leak_Test_One_To_Many_Service.adb
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
with Root_Object.Relationships.FL;
with Root_Object.Relationships.MR;
with Root_Object.Relationships.M;

-- List of relationships used
with Relationships_rel_R6;
with Relationships_rel_R7;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_Relationships3_Memory_Leak_Test_One_To_Many_Service is
   
   procedure Relationships_Relationships3_Memory_Leak_Test_One_To_Many is
      
      Set_Of_Middle : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Set_Of_Right  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Some_Right    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      Individual_Middle : Root_Object.Object_Access;
      Individual_Right  : Root_Object.Object_Access;
      Single_Left       : Root_Object.Object_Access;
      
      Right_Updater : Application_Types.Base_Integer_Type := 1;
      Updater       : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of Relationships3_Memory_Leak_Test_One_To_Many
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Middle);
      
      Root_Object.Relationships.M.Find (
         Add_To => Set_Of_Middle);
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Set_Of_Middle);
         
         while (Temp_Entry /= null) loop
            Individual_Middle := Temp_Entry.Item;
            
            Root_Object.Object_List.Clear (
               From => Set_Of_Right);
            
            
            Relationships_Rel_R7.Navigate (
               From  => Individual_Middle,
               Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
               To    => Set_Of_Right);
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => Set_Of_Right);
               
               while (Temp_Entry /= null) loop
                  Individual_Right := Temp_Entry.Item;
                  
                  -- Go from a right instance back through the middle to the left instance
                  
                  declare
                     Temp_Instance : Root_Object.Object_Access;
                  begin
                     
                     Relationships_Rel_R7.Navigate (
                        From  => Individual_Right,
                        Class => Root_Object.Relationships.M.Relationships_M_type'tag,
                        To    => Temp_Instance);
                     
                     Relationships_Rel_R6.Navigate (
                        From  => Temp_Instance,
                        Class => Root_Object.Relationships.FL.Relationships_FL_type'tag,
                        To    => Single_Left);
                  end;
                  
                  --  Return back up the trail, from the left instance to the set of right
                  
                  declare
                     Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
                     Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
                  begin
                     Temporary_Set := Root_Object.Object_List.Initialise;
                     Second_Temporary_Set := Root_Object.Object_List.Initialise;
                     
                     Root_Object.Object_List.Insert (
                        New_Item => Single_Left,
                        On_To    => Temporary_Set);
                     
                     Relationships_Rel_R6.Navigate (
                        From  => Temporary_Set,
                        Class => Root_Object.Relationships.M.Relationships_M_type'tag,
                        To    => Second_Temporary_Set);
                     
                     Root_Object.Object_List.Clear (
                        From => Some_Right);
                     
                     Relationships_Rel_R7.Navigate (
                        From  => Second_Temporary_Set,
                        Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
                        To    => Some_Right);
                        
                     Root_Object.Object_List.Destroy_List (
                        Target_List => Temporary_Set);
                     Root_Object.Object_List.Destroy_List (
                        Target_List => Second_Temporary_Set);
                  end;
                  Right_Updater := Root_Object.Object_List.Count_Of(Some_Right);
                  
                  
                  Root_Object.Relationships.MR.Relationships_MR_type(Individual_Right.all).Right_Data := Right_Updater;
                  
                  
                  Updater := Root_Object.Relationships.FL.Relationships_FL_type(Single_Left.all).Left_Data;
                  Updater := Updater + 1;
                  
                  
                  Root_Object.Relationships.FL.Relationships_FL_type(Single_Left.all).Left_Data := Updater;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => Set_Of_Right);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Set_Of_Middle);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Some_Right);
      Root_Object.Object_List.Destroy_List (Set_Of_Right);
      Root_Object.Object_List.Destroy_List (Set_Of_Middle);
      
   end Relationships_Relationships3_Memory_Leak_Test_One_To_Many;
   
end Relationships_Relationships3_Memory_Leak_Test_One_To_Many_Service;

--
-- End of file Relationships_Relationships3_Memory_Leak_Test_One_To_Many_Service.adb
--
