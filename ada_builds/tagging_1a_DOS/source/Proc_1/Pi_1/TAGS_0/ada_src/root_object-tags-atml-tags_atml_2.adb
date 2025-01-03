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
--* File Name:               TAGS_ATML_2.ada
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
--* Domain Name              : Tagging
--* Domain Key Letter        : TAGS
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.TAGS.ATSASSOC;
with Root_Object.TAGS.ATMR;

-- List of relationships used
with TAGS_rel_R5;

-- List of bridges used
with TAGS_RPT3_Test_Failed_Bridge;
with TAGS_RPT2_Test_Passed_Bridge;
with TAGS_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TAGS.ATML)
   
   procedure TAGS_ATML_2 (ATML_Test_No  : in     Application_Types.Base_Integer_Type;
                          This_Instance : in out Root_Object.Object_Access) is
   
      
      Set_Of_Right : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Set_Of_Assoc : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      individual_assoc : Root_Object.Object_Access;
      individual_right : Root_Object.Object_Access;
      
      how_many_in_right : Application_Types.Base_Integer_Type := 1;
      how_many_in_assoc : Application_Types.Base_Integer_Type := 1;
      
      Found_Assoc : Boolean := Application_Types.Boolean_first;
      Found_Right : Boolean := Application_Types.Boolean_first;
      
   begin
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => ATML_Test_No,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Active Tagged Many              ",
         Purpose         => "generate to ATML                ");
      
      
      --  Navigate to the set of instances and the single associated instance.
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Right);
      
      
      TAGS_Rel_R5.Navigate (
         From  => This_Instance,
         Class => Root_Object.TAGS.ATMR.TAGS_ATMR_type'tag,
         To    => Set_Of_Right);
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Assoc);
      
      
      TAGS_Rel_R5.Navigate (
         From  => This_Instance,
         Class => Root_Object.TAGS.ATSASSOC.TAGS_ATSASSOC_type'tag,
         To    => Set_Of_Assoc);
      Found_Assoc := False;
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Set_Of_Assoc);
         
         while (Temp_Entry /= null) loop
            individual_assoc := Temp_Entry.Item;
            
            if Root_Object.TAGS.ATSASSOC.TAGS_ATSASSOC_type(individual_assoc.all).Attribute_Three =  
            Root_Object.TAGS.ATML.TAGS_ATML_type(This_Instance.all).Attribute_One then
               Found_Assoc := True;
                  exit;
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Set_Of_Assoc);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      Found_Right := False;
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Set_Of_Right);
         
         while (Temp_Entry /= null) loop
            individual_right := Temp_Entry.Item;
            
            if Root_Object.TAGS.ATMR.TAGS_ATMR_type(individual_right.all).Attribute_Two =  Root_Object.TAGS.ATML.TAGS_ATML_type(This_Instance.all).Attribute_One then
               Found_Right := True;
               
                  exit;
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Set_Of_Right);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      how_many_in_right := Root_Object.Object_List.Count_Of(Set_Of_Right);
      how_many_in_assoc := Root_Object.Object_List.Count_Of(Set_Of_Assoc);
      
      
      if how_many_in_assoc >  0 then
         
         --  There should always be one or more linked instances on the right side
         
         if how_many_in_right >  0 then
            
            if Found_Right then
               
               if Found_Assoc then
                  
                  TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
                     Test_Object_Domain => "generate to ATML                ",
                     Test_Number        => ATML_Test_No,
                     Test_Value         => 0);
                  
               else
                  TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
                     Failed_Domain_Object => "generate to ATML                ",
                     Failed_Test_Number   => ATML_Test_No,
                     Failed_Test_Value    => -1);
                  
               end if;
               
            else
               TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
                  Failed_Domain_Object => "generate to ATML                ",
                  Failed_Test_Number   => ATML_Test_No,
                  Failed_Test_Value    => -2);
               
            end if;
            
         else
            TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
               Failed_Domain_Object => "generate to ATML                ",
               Failed_Test_Number   => ATML_Test_No,
               Failed_Test_Value    => -3);
            
         end if;
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "generate to ATML                ",
            Failed_Test_Number   => ATML_Test_No,
            Failed_Test_Value    => -4);
         
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Set_Of_Assoc);
      Root_Object.Object_List.Destroy_List (Set_Of_Right);
      Root_Object.TAGS.ATML.Process_Queue;
   end TAGS_ATML_2;
   
--
-- End of file TAGS_ATML_2.ada
--
