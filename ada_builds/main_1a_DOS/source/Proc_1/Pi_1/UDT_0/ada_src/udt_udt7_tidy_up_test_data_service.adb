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
--* File Name:               UDT7_Tidy_Up_Test_Data_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Remove a set of reflexive objects.
--*                          
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
--* Domain Name              : User_Defined_Types
--* Domain Key Letter        : UDT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.UDT.TD;
with Root_Object.UDT.FTD;

-- List of relationships used
with UDT_rel_R1;
with UDT_rel_R1;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_UDT7_Tidy_Up_Test_Data_Service is
   
   procedure UDT_UDT7_Tidy_Up_Test_Data is
      
      All_Test_Data : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      Final_Test      : Root_Object.Object_Access;
      Single_Instance : Root_Object.Object_Access;
      Next_Instance   : Root_Object.Object_Access;
      Previous_Entry  : Root_Object.Object_Access;
      
      Last_Test     : Application_Types.Base_Integer_Type := 1;
      number_in_set : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of UDT7_Tidy_Up_Test_Data
      Final_Test := Root_Object.UDT.FTD.Unconditional_Find_One;
      Last_Test := 0;
      
      
      loop
         
         Root_Object.Object_List.Clear (
            From => All_Test_Data);
         
         Root_Object.UDT.TD.Find (
            Add_To => All_Test_Data);
         
         
         number_in_set := Root_Object.Object_List.Count_Of(All_Test_Data);
         
         exit when number_in_set =  0;
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => All_Test_Data);
            
            while (Temp_Entry /= null) loop
               Single_Instance := Temp_Entry.Item;
               
               UDT_Rel_R1.Navigate (
                  From  => Single_Instance,
                  Role  => "Has_a",
                  To    => Next_Instance);
               
               
               if Next_Instance =  Null then
                  
                  --  we have reached the last entry, check to see if it is the first also
                  
                  if number_in_set >  1 then
                     
                     UDT_Rel_R1.Navigate (
                        From  => Single_Instance,
                        Role  => "Has_one",
                        To    => Previous_Entry);
                     
                     
                     --             unlink Previous_Entry R1."Has_a" Single_Instance
                     
                     UDT_Rel_R1.Unlink (
                        A_Instance => Single_Instance,
                        B_Role     => "Has_one",
                        B_Instance => Previous_Entry);
                     
                  end if;
                  
                  
                  if Last_Test <= Root_Object.UDT.TD.UDT_TD_type(Single_Instance.all).The_Test_Number then
                     
                     Last_Test := Root_Object.UDT.TD.UDT_TD_type(Single_Instance.all).The_Test_Number;
                  end if;
                  
                  
                  Root_Object.UDT.TD.Delete (
                     Old_Instance => Single_Instance);
               end if;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => All_Test_Data);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
      end loop;
      
      
      if Root_Object.UDT.FTD.UDT_FTD_type(Final_Test.all).Final_Test_Number <= Last_Test then
         Last_Test := Last_Test + 1;
         
         
         Root_Object.UDT.FTD.UDT_FTD_type(Final_Test.all).Final_Test_Number := Last_Test;
         
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (All_Test_Data);
      
   end UDT_UDT7_Tidy_Up_Test_Data;
   
end UDT_UDT7_Tidy_Up_Test_Data_Service;

--
-- End of file UDT_UDT7_Tidy_Up_Test_Data_Service.adb
--
