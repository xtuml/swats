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
--* File Name:               ASL_Mapping_NstFOR1_do_nested_for_Service.adb
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
--* Domain Name              : ASL_Mapping
--* Domain Key Letter        : ASL_Mapping
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.ASL_Mapping.NstFOR;

-- List of bridges used
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_NstFOR1_do_nested_for_Service is
   
   procedure ASL_Mapping_NstFOR1_do_nested_for (
      Test_Start : in     Application_Types.Base_Integer_Type;
      Final_Test :    out Application_Types.Base_Integer_Type) is
      
      all_instances  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      all_instancesA : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      all_instancesB : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      all_instancesC : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      all_instancesD : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      all_instancesE : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      all_instancesF : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      each_instanceA : Root_Object.Object_Access;
      each_instanceB : Root_Object.Object_Access;
      each_instanceC : Root_Object.Object_Access;
      each_instanceD : Root_Object.Object_Access;
      each_instanceE : Root_Object.Object_Access;
      each_instanceF : Root_Object.Object_Access;
      each_instance  : Root_Object.Object_Access;
      
      Test  : Application_Types.Base_Integer_Type := 1;
      passA : Application_Types.Base_Integer_Type := 1;
      passB : Application_Types.Base_Integer_Type := 1;
      passC : Application_Types.Base_Integer_Type := 1;
      passD : Application_Types.Base_Integer_Type := 1;
      passE : Application_Types.Base_Integer_Type := 1;
      passF : Application_Types.Base_Integer_Type := 1;
      tempF : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of NstFOR1_do_nested_for
      
      -- -------------------------------------------------------------------------
      --  Nested FOR statements
      -- -------------------------------------------------------------------------
      Test := Test_Start;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Nested FOR statements
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0431               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objNESTEDFOR                    ",
         Purpose         => "Nested FOR statements           ");
      
      
      Has_Failed := False;
      
      
      --  Create a set of instances to loop over
      
      Root_Object.Object_List.Clear (
         From => all_instances);
      
      Root_Object.ASL_Mapping.NstFOR.Find (
         Add_To => all_instances);
      
      
      Root_Object.Object_List.Clear (
         From => all_instancesA);
      
      Root_Object.ASL_Mapping.NstFOR.Find (
         Add_To => all_instancesA);
      
      
      Root_Object.Object_List.Clear (
         From => all_instancesB);
      
      Root_Object.ASL_Mapping.NstFOR.Find (
         Add_To => all_instancesB);
      
      
      Root_Object.Object_List.Clear (
         From => all_instancesC);
      
      Root_Object.ASL_Mapping.NstFOR.Find (
         Add_To => all_instancesC);
      
      
      Root_Object.Object_List.Clear (
         From => all_instancesD);
      
      Root_Object.ASL_Mapping.NstFOR.Find (
         Add_To => all_instancesD);
      
      
      Root_Object.Object_List.Clear (
         From => all_instancesE);
      
      Root_Object.ASL_Mapping.NstFOR.Find (
         Add_To => all_instancesE);
      
      
      Root_Object.Object_List.Clear (
         From => all_instancesF);
      
      Root_Object.ASL_Mapping.NstFOR.Find (
         Add_To => all_instancesF);
      
      
      passA := 0;
      passB := 0;
      passC := 0;
      passD := 0;
      passE := 0;
      passF := 0;
      
      --  Perform the test
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instancesA);
         
         while (Temp_Entry /= null) loop
            each_instanceA := Temp_Entry.Item;
            passA := passA + 1;
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => all_instancesB);
               
               while (Temp_Entry /= null) loop
                  each_instanceB := Temp_Entry.Item;
                  passB := passB + 1;
                  --
                  -- start of for loop
                  
                  declare
                     use type Root_Object.Object_List.Node_Access_Type;
                     Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                  begin
                     Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                        Target_List => all_instancesC);
                     
                     while (Temp_Entry /= null) loop
                        each_instanceC := Temp_Entry.Item;
                        passC := passC + 1;
                        --
                        -- start of for loop
                        
                        declare
                           use type Root_Object.Object_List.Node_Access_Type;
                           Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                        begin
                           Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                              Target_List => all_instancesD);
                           
                           while (Temp_Entry /= null) loop
                              each_instanceD := Temp_Entry.Item;
                              passD := passD + 1;
                              --
                              -- start of for loop
                              
                              declare
                                 use type Root_Object.Object_List.Node_Access_Type;
                                 Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                              begin
                                 Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                    Target_List => all_instancesE);
                                 
                                 while (Temp_Entry /= null) loop
                                    each_instanceE := Temp_Entry.Item;
                                    passE := passE + 1;
                                    --
                                    -- start of for loop
                                    
                                    declare
                                       use type Root_Object.Object_List.Node_Access_Type;
                                       Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                                    begin
                                       Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                          Target_List => all_instancesF);
                                       
                                       while (Temp_Entry /= null) loop
                                          each_instanceF := Temp_Entry.Item;
                                          tempF := Root_Object.ASL_Mapping.NstFOR.ASL_Mapping_NstFOR_type(each_instanceF.all).ResultA + 1;
                                          
                                          
                                          Root_Object.ASL_Mapping.NstFOR.ASL_Mapping_NstFOR_type(each_instanceF.all).ResultA := tempF;
                                          
                                          
                                          passF := passF + 1;
                                          
                                          
                                          Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                             Target_List => all_instancesF);
                                          
                                       end loop; -- end of (Temp_Entry /= null) loop
                                       
                                    end;
                                    -- end of for loop
                                    --
                                    
                                    
                                    Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                       Target_List => all_instancesE);
                                    
                                 end loop; -- end of (Temp_Entry /= null) loop
                                 
                              end;
                              -- end of for loop
                              --
                              
                              
                              Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                 Target_List => all_instancesD);
                              
                           end loop; -- end of (Temp_Entry /= null) loop
                           
                        end;
                        -- end of for loop
                        --
                        
                        
                        Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                           Target_List => all_instancesC);
                        
                     end loop; -- end of (Temp_Entry /= null) loop
                     
                  end;
                  -- end of for loop
                  --
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => all_instancesB);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instancesA);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      --  Check that the attribute 'ResultA' contains the correct value
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_instances);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            if Root_Object.ASL_Mapping.NstFOR.ASL_Mapping_NstFOR_type(each_instance.all).ResultA /= 3125 then
               
               ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                  Failed_Domain_Object => "objNESTEDFOR                    ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -1);
               
               
               Has_Failed := True;
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_instances);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      --  Check that the loop variables are still valid
      
      if (each_instanceA =  Null) or else
         (each_instanceB =  Null) or else
         (each_instanceC =  Null) or else
         (each_instanceD =  Null) or else
         (each_instanceE =  Null) or else
         (each_instanceF =  Null) then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objNESTEDFOR                    ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -2);
         
         Has_Failed := True;
      end if;
      
      
      --  Test complete
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objNESTEDFOR                    ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      Test := Test + 1;
      Final_Test := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (all_instancesF);
      Root_Object.Object_List.Destroy_List (all_instancesE);
      Root_Object.Object_List.Destroy_List (all_instancesD);
      Root_Object.Object_List.Destroy_List (all_instancesC);
      Root_Object.Object_List.Destroy_List (all_instancesB);
      Root_Object.Object_List.Destroy_List (all_instancesA);
      Root_Object.Object_List.Destroy_List (all_instances);
      
   end ASL_Mapping_NstFOR1_do_nested_for;
   
end ASL_Mapping_NstFOR1_do_nested_for_Service;

--
-- End of file ASL_Mapping_NstFOR1_do_nested_for_Service.adb
--
