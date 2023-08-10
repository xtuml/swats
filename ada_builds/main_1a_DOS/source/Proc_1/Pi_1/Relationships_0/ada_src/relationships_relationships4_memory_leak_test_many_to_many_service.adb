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
--* File Name:               Relationships4_Memory_Leak_Test_Many_To_Many_Service.adb
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
with Root_Object.Relationships.M;
with Root_Object.Relationships.MRA;
with Root_Object.Relationships.MR;
with Root_Object.Relationships.MFR;

-- List of relationships used
with Relationships_rel_R6;
with Relationships_rel_R7;
with Relationships_rel_R8;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_Relationships4_Memory_Leak_Test_Many_To_Many_Service is
   
   procedure Relationships_Relationships4_Memory_Leak_Test_Many_To_Many is
      
      Set_Of_Far_Right : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Set_Of_Right     : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Other_Side       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Set_Of_Assoc     : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      Individual_Far_Right : Root_Object.Object_Access;
      Individual_Right     : Root_Object.Object_Access;
      The_Assoc            : Root_Object.Object_Access;
      A_Left               : Root_Object.Object_Access;
      
      temp_value : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of Relationships4_Memory_Leak_Test_Many_To_Many
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Far_Right);
      
      Root_Object.Relationships.MFR.Find (
         Add_To => Set_Of_Far_Right);
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Set_Of_Far_Right);
         
         while (Temp_Entry /= null) loop
            Individual_Far_Right := Temp_Entry.Item;
            
            Root_Object.Object_List.Clear (
               From => Set_Of_Right);
            
            
            Relationships_Rel_R8.Navigate (
               From  => Individual_Far_Right,
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
                  
                  --  Go back over the link to the far right side
                  
                  Root_Object.Object_List.Clear (
                     From => Other_Side);
                  
                  
                  Relationships_Rel_R8.Navigate (
                     From  => Individual_Right,
                     Class => Root_Object.Relationships.MFR.Relationships_MFR_type'tag,
                     To    => Other_Side);
                  temp_value := Root_Object.Object_List.Count_Of(Other_Side);
                  
                  --  Update the right data with how many of the far right it is linked to
                  Root_Object.Relationships.MR.Relationships_MR_type(Individual_Right.all).Right_Data := temp_value;
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => Set_Of_Right);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            --  Update the far right data with how many right it is linked to
            temp_value := Root_Object.Object_List.Count_Of(Set_Of_Right);
            
            
            Root_Object.Relationships.MFR.Relationships_MFR_type(Individual_Far_Right.all).MFR_Data := temp_value;
            
            
            --  Navigate to assocative object for this far right object
            
            Root_Object.Object_List.Clear (
               From => Set_Of_Assoc);
            
            
            Relationships_Rel_R8.Navigate (
               From  => Individual_Far_Right,
               Class => Root_Object.Relationships.MRA.Relationships_MRA_type'tag,
               To    => Set_Of_Assoc);
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => Set_Of_Assoc);
               
               while (Temp_Entry /= null) loop
                  The_Assoc := Temp_Entry.Item;
                  
                  --  Navigate from the associated object through to the far left.
                  
                  declare
                     Temp_Instance : Root_Object.Object_Access;
                  begin
                     
                     Relationships_Rel_R8.Navigate (
                        From  => The_Assoc,
                        Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
                        To    => Temp_Instance);
                     
                     Relationships_Rel_R7.Navigate (
                        From  => Temp_Instance,
                        Class => Root_Object.Relationships.M.Relationships_M_type'tag,
                        To    => Temp_Instance);
                     
                     Relationships_Rel_R6.Navigate (
                        From  => Temp_Instance,
                        Class => Root_Object.Relationships.FL.Relationships_FL_type'tag,
                        To    => A_Left);
                  end;
                  
                  temp_value := Root_Object.Relationships.FL.Relationships_FL_type(A_Left.all).Left_Data;
                  temp_value := temp_value + 1;
                  
                  
                  Root_Object.Relationships.FL.Relationships_FL_type(A_Left.all).Left_Data := temp_value;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => Set_Of_Assoc);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Set_Of_Far_Right);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Set_Of_Assoc);
      Root_Object.Object_List.Destroy_List (Other_Side);
      Root_Object.Object_List.Destroy_List (Set_Of_Right);
      Root_Object.Object_List.Destroy_List (Set_Of_Far_Right);
      
   end Relationships_Relationships4_Memory_Leak_Test_Many_To_Many;
   
end Relationships_Relationships4_Memory_Leak_Test_Many_To_Many_Service;

--
-- End of file Relationships_Relationships4_Memory_Leak_Test_Many_To_Many_Service.adb
--
