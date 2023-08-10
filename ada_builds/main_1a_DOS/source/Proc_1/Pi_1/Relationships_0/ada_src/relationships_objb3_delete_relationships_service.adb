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
--* File Name:               Relationships_objB3_Delete_Relationships_Service.adb
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


package body Relationships_objB3_Delete_Relationships_Service is
   
   procedure Relationships_objB3_Delete_Relationships (
      Test : in     Application_Types.Base_Integer_Type) is
      
      SetA : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetB : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetM : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      firstA  : Root_Object.Object_Access;
      secondA : Root_Object.Object_Access;
      thirdA  : Root_Object.Object_Access;
      fourthA : Root_Object.Object_Access;
      fifthA  : Root_Object.Object_Access;
      firstB  : Root_Object.Object_Access;
      secondB : Root_Object.Object_Access;
      thirdB  : Root_Object.Object_Access;
      fourthB : Root_Object.Object_Access;
      fifthB  : Root_Object.Object_Access;
      firstM  : Root_Object.Object_Access;
      secondM : Root_Object.Object_Access;
      thirdM  : Root_Object.Object_Access;
      fourthM : Root_Object.Object_Access;
      fifthM  : Root_Object.Object_Access;
      InstB1  : Root_Object.Object_Access;
      InstB2  : Root_Object.Object_Access;
      InstM1  : Root_Object.Object_Access;
      InstM2  : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objB3_Delete_Relationships
      
      --  --------------------------------------------------------------------
      --  Delete all relationships
      --  The architecture shall provide a mapping from the ASL delete 
      --  instance statement to the deletion mechanism
      --  1241-0000-01-0121
      --  The architecture shall provide a mechanism to allow deletion of a 
      --  simple relationship link between two object instances
      --  1241-0000-01-0604
      --  The architecture shall support a translation of the ASL unlink
      --  statement to map to the mechanism that allow the deletion of a 
      --  link between two objects in a relationship
      --  1241-0000-01-1204
      --  The architecture shall support a translation of the ASL navigate
      --  statment to map to the mechanism that allows the traversal of
      --  relationship links
      --  1241-0000-01-1205
      --  --------------------------------------------------------------------
      Has_Failed := True;
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0604               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objB                            ",
         Purpose         => "Delete all relationships        ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1204               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0621               ");
      
      
      --  Find the desired instances of Object_A
      firstA := Root_Object.Relationships.objA.Conditional_Find_One;
      while (firstA /= null) and then (not (Root_Object.Relationships.objA.Relationships_objA_Type(firstA.all).idA =  1) ) loop
         
         firstA := firstA.Next_Object;
      end loop;
      
      secondA := Root_Object.Relationships.objA.Conditional_Find_One;
      while (secondA /= null) and then (not (Root_Object.Relationships.objA.Relationships_objA_Type(secondA.all).idA =  2) ) loop
         
         secondA := secondA.Next_Object;
      end loop;
      
      thirdA := Root_Object.Relationships.objA.Conditional_Find_One;
      while (thirdA /= null) and then (not (Root_Object.Relationships.objA.Relationships_objA_Type(thirdA.all).idA =  3) ) loop
         
         thirdA := thirdA.Next_Object;
      end loop;
      
      fourthA := Root_Object.Relationships.objA.Conditional_Find_One;
      while (fourthA /= null) and then (not (Root_Object.Relationships.objA.Relationships_objA_Type(fourthA.all).idA =  4) ) loop
         
         fourthA := fourthA.Next_Object;
      end loop;
      
      fifthA := Root_Object.Relationships.objA.Conditional_Find_One;
      while (fifthA /= null) and then (not (Root_Object.Relationships.objA.Relationships_objA_Type(fifthA.all).idA =  5) ) loop
         
         fifthA := fifthA.Next_Object;
      end loop;
      
      
      --  Find the desired instances of Object_B
      firstB := Root_Object.Relationships.objB.Conditional_Find_One;
      while (firstB /= null) and then (not (Root_Object.Relationships.objB.Relationships_objB_Type(firstB.all).idB =  1) ) loop
         
         firstB := firstB.Next_Object;
      end loop;
      
      secondB := Root_Object.Relationships.objB.Conditional_Find_One;
      while (secondB /= null) and then (not (Root_Object.Relationships.objB.Relationships_objB_Type(secondB.all).idB =  2) ) loop
         
         secondB := secondB.Next_Object;
      end loop;
      
      thirdB := Root_Object.Relationships.objB.Conditional_Find_One;
      while (thirdB /= null) and then (not (Root_Object.Relationships.objB.Relationships_objB_Type(thirdB.all).idB =  3) ) loop
         
         thirdB := thirdB.Next_Object;
      end loop;
      
      fourthB := Root_Object.Relationships.objB.Conditional_Find_One;
      while (fourthB /= null) and then (not (Root_Object.Relationships.objB.Relationships_objB_Type(fourthB.all).idB =  4) ) loop
         
         fourthB := fourthB.Next_Object;
      end loop;
      
      fifthB := Root_Object.Relationships.objB.Conditional_Find_One;
      while (fifthB /= null) and then (not (Root_Object.Relationships.objB.Relationships_objB_Type(fifthB.all).idB =  5) ) loop
         
         fifthB := fifthB.Next_Object;
      end loop;
      
      
      --  Find the desired instances of Object_M
      firstM := Root_Object.Relationships.objM.Conditional_Find_One;
      while (firstM /= null) and then (not (Root_Object.Relationships.objM.Relationships_objM_Type(firstM.all).idM =  1) ) loop
         
         firstM := firstM.Next_Object;
      end loop;
      
      secondM := Root_Object.Relationships.objM.Conditional_Find_One;
      while (secondM /= null) and then (not (Root_Object.Relationships.objM.Relationships_objM_Type(secondM.all).idM =  2) ) loop
         
         secondM := secondM.Next_Object;
      end loop;
      
      thirdM := Root_Object.Relationships.objM.Conditional_Find_One;
      while (thirdM /= null) and then (not (Root_Object.Relationships.objM.Relationships_objM_Type(thirdM.all).idM =  3) ) loop
         
         thirdM := thirdM.Next_Object;
      end loop;
      
      fourthM := Root_Object.Relationships.objM.Conditional_Find_One;
      while (fourthM /= null) and then (not (Root_Object.Relationships.objM.Relationships_objM_Type(fourthM.all).idM =  4) ) loop
         
         fourthM := fourthM.Next_Object;
      end loop;
      
      fifthM := Root_Object.Relationships.objM.Conditional_Find_One;
      while (fifthM /= null) and then (not (Root_Object.Relationships.objM.Relationships_objM_Type(fifthM.all).idM =  5) ) loop
         
         fifthM := fifthM.Next_Object;
      end loop;
      
      
      --  Delete all relationships
      
      Relationships_Rel_R1.Unlink (
         A_Instance => firstA,
         B_Instance => firstB);
      
      
      Relationships_Rel_R1.Unlink (
         A_Instance => thirdA,
         B_Instance => fourthB);
      
      
      Relationships_Rel_R18.Unlink (
         A_Instance => fourthB,
         B_Instance => thirdM);
      
      
      --  Explicitly check that all instances have been unlinked
      --  correctly.
      
      Relationships_Rel_R1.Navigate (
         From  => firstA,
         Class => Root_Object.Relationships.objB.Relationships_objB_type'tag,
         To    => InstB1);
      
      
      Relationships_Rel_R1.Navigate (
         From  => thirdA,
         Class => Root_Object.Relationships.objB.Relationships_objB_type'tag,
         To    => InstB2);
      
      
      Relationships_Rel_R18.Navigate (
         From  => firstB,
         Class => Root_Object.Relationships.objM.Relationships_objM_type'tag,
         To    => InstM1);
      
      
      Relationships_Rel_R18.Navigate (
         From  => fourthB,
         Class => Root_Object.Relationships.objM.Relationships_objM_type'tag,
         To    => InstM2);
      
      
      --  Attempt to perform some illegal navigations
      
      if InstB1 =  Null then
         
         if InstB2 =  Null then
            
            if InstM1 =  Null then
               
               if InstM2 =  Null then
                  
                  declare
                     Temp_Instance   : Root_Object.Object_Access := Root_Object.Relationships.objA.Return_List;
                     Delete_Instance : Root_Object.Object_Access;
                  begin
                     while (Temp_Instance /= null) loop
                        
                        if Root_Object.Relationships.objA.Relationships_objA_Type(Temp_Instance.all).idA =  1 then
                           Delete_Instance := Temp_Instance;
                           Temp_Instance := Temp_Instance.Next_Object;
                           Root_Object.Relationships.objA.Delete (
                              Old_Instance => Delete_Instance);
                        else
                           Temp_Instance := Temp_Instance.Next_Object;
                        end if;
                        
                     end loop;
                     
                  end;
                  
                  declare
                     Temp_Instance   : Root_Object.Object_Access := Root_Object.Relationships.objA.Return_List;
                     Delete_Instance : Root_Object.Object_Access;
                  begin
                     while (Temp_Instance /= null) loop
                        
                        if Root_Object.Relationships.objA.Relationships_objA_Type(Temp_Instance.all).idA =  2 then
                           Delete_Instance := Temp_Instance;
                           Temp_Instance := Temp_Instance.Next_Object;
                           Root_Object.Relationships.objA.Delete (
                              Old_Instance => Delete_Instance);
                        else
                           Temp_Instance := Temp_Instance.Next_Object;
                        end if;
                        
                     end loop;
                     
                  end;
                  
                  declare
                     Temp_Instance   : Root_Object.Object_Access := Root_Object.Relationships.objA.Return_List;
                     Delete_Instance : Root_Object.Object_Access;
                  begin
                     while (Temp_Instance /= null) loop
                        
                        if Root_Object.Relationships.objA.Relationships_objA_Type(Temp_Instance.all).idA =  3 then
                           Delete_Instance := Temp_Instance;
                           Temp_Instance := Temp_Instance.Next_Object;
                           Root_Object.Relationships.objA.Delete (
                              Old_Instance => Delete_Instance);
                        else
                           Temp_Instance := Temp_Instance.Next_Object;
                        end if;
                        
                     end loop;
                     
                  end;
                  
                  declare
                     Temp_Instance   : Root_Object.Object_Access := Root_Object.Relationships.objA.Return_List;
                     Delete_Instance : Root_Object.Object_Access;
                  begin
                     while (Temp_Instance /= null) loop
                        
                        if Root_Object.Relationships.objA.Relationships_objA_Type(Temp_Instance.all).idA =  4 then
                           Delete_Instance := Temp_Instance;
                           Temp_Instance := Temp_Instance.Next_Object;
                           Root_Object.Relationships.objA.Delete (
                              Old_Instance => Delete_Instance);
                        else
                           Temp_Instance := Temp_Instance.Next_Object;
                        end if;
                        
                     end loop;
                     
                  end;
                  
                  declare
                     Temp_Instance   : Root_Object.Object_Access := Root_Object.Relationships.objA.Return_List;
                     Delete_Instance : Root_Object.Object_Access;
                  begin
                     while (Temp_Instance /= null) loop
                        
                        if Root_Object.Relationships.objA.Relationships_objA_Type(Temp_Instance.all).idA =  5 then
                           Delete_Instance := Temp_Instance;
                           Temp_Instance := Temp_Instance.Next_Object;
                           Root_Object.Relationships.objA.Delete (
                              Old_Instance => Delete_Instance);
                        else
                           Temp_Instance := Temp_Instance.Next_Object;
                        end if;
                        
                     end loop;
                     
                  end;
                  
                  --             delete firstA
                  --             delete secondA
                  --             delete thirdA
                  --             delete fourthA
                  --             delete fifthA
                  
                  Root_Object.Relationships.objB.Delete (
                     Old_Instance => firstB);
                  
                  Root_Object.Relationships.objB.Delete (
                     Old_Instance => secondB);
                  
                  Root_Object.Relationships.objB.Delete (
                     Old_Instance => thirdB);
                  
                  Root_Object.Relationships.objB.Delete (
                     Old_Instance => fourthB);
                  
                  Root_Object.Relationships.objB.Delete (
                     Old_Instance => fifthB);
                  
                  Root_Object.Relationships.objM.Delete (
                     Old_Instance => firstM);
                  
                  Root_Object.Relationships.objM.Delete (
                     Old_Instance => secondM);
                  
                  Root_Object.Relationships.objM.Delete (
                     Old_Instance => thirdM);
                  
                  Root_Object.Relationships.objM.Delete (
                     Old_Instance => fourthM);
                  
                  Root_Object.Relationships.objM.Delete (
                     Old_Instance => fifthM);
                  
                  Root_Object.Object_List.Clear (
                     From => SetA);
                  
                  Root_Object.Relationships.objA.Find (
                     Add_To => SetA);
                  
                  
                  Root_Object.Object_List.Clear (
                     From => SetB);
                  
                  Root_Object.Relationships.objB.Find (
                     Add_To => SetB);
                  
                  
                  Root_Object.Object_List.Clear (
                     From => SetM);
                  
                  Root_Object.Relationships.objM.Find (
                     Add_To => SetM);
                  
                  
                  if Root_Object.Object_List.Count_Of(SetA) =  0 then
                     
                     if Root_Object.Object_List.Count_Of(SetB) =  0 then
                        
                        if Root_Object.Object_List.Count_Of(SetM) =  0 then
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
                  Failure_Code := -40;
               end if;
               
               Failure_Code := -50;
            end if;
            
            Failure_Code := -60;
         end if;
         
         Failure_Code := -70;
         
      end if;
      
      
      -- --------------------------------------------------------------------
      --  Test complete
      -- --------------------------------------------------------------------
      
      if Has_Failed then
         
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objB                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "objB                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetM);
      Root_Object.Object_List.Destroy_List (SetB);
      Root_Object.Object_List.Destroy_List (SetA);
      
   end Relationships_objB3_Delete_Relationships;
   
end Relationships_objB3_Delete_Relationships_Service;

--
-- End of file Relationships_objB3_Delete_Relationships_Service.adb
--
