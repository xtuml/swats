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
--* File Name:               Relationships_objG3_One_To_Many_Reflexive_Service.adb
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
with Root_Object.Relationships.objG;

-- List of relationships used
with Relationships_rel_R4;
with Relationships_rel_R4;
with Relationships_rel_R4;
with Relationships_rel_R13;
with Relationships_rel_R13;
with Relationships_rel_R13;

-- List of bridges used
with Relationships_RPT4_Test_Unsupported_Bridge;
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT5_Test_Text_Bridge;
with Relationships_RPT8_Specify_Requid_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_objG3_One_To_Many_Reflexive_Service is
   
   procedure Relationships_objG3_One_To_Many_Reflexive (
      Iteration : in     Application_Types.Base_Integer_Type;
      Test      : in     Application_Types.Base_Integer_Type) is
      
      SetG           : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Next_SetG      : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Next_Next_SetG : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      firstG        : Root_Object.Object_Access;
      secondG       : Root_Object.Object_Access;
      thirdG        : Root_Object.Object_Access;
      fourthG       : Root_Object.Object_Access;
      fifthG        : Root_Object.Object_Access;
      sixthG        : Root_Object.Object_Access;
      seventhG      : Root_Object.Object_Access;
      eigthG        : Root_Object.Object_Access;
      ninthG        : Root_Object.Object_Access;
      InstG         : Root_Object.Object_Access;
      Sub_InstG     : Root_Object.Object_Access;
      tenthG        : Root_Object.Object_Access;
      newThird      : Root_Object.Object_Access;
      new_tenth     : Root_Object.Object_Access;
      new_first     : Root_Object.Object_Access;
      Sub_Sub_InstG : Root_Object.Object_Access;
      new_third     : Root_Object.Object_Access;
      
      Failure_Code     : Application_Types.Base_Integer_Type := 1;
      Val1             : Application_Types.Base_Integer_Type := 1;
      Val2             : Application_Types.Base_Integer_Type := 1;
      Local_Counter    : Application_Types.Base_Integer_Type := 1;
      No_Instances     : Application_Types.Base_Integer_Type := 1;
      what             : Application_Types.Base_Integer_Type := 1;
      No_Next_Next_Set : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed  : Boolean := Application_Types.Boolean_first;
      Inst_Failed : Boolean := Application_Types.Boolean_first;
      Unsupported : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objG3_One_To_Many_Reflexive
      
      -- --------------------------------------------------------------------
      -- Reflexive navigations 1c:Mc
      -- --------------------------------------------------------------------
      --  Initialise the fault flag
      Has_Failed  := False;
      Inst_Failed := False;
      Unsupported := False;
      
      
      --  Tests 11 to 15 are copies of tests 6 to 10, using a reflexive navigation with the A and B
      --  conditional roles reversed.
      -- --------------------------------------------------------------------
      --  Find the desired instances for Object_G
      firstG := Root_Object.Relationships.objG.Conditional_Find_One;
      while (firstG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(firstG.all).idG =  1) ) loop
         
         firstG := firstG.Next_Object;
      end loop;
      
      secondG := Root_Object.Relationships.objG.Conditional_Find_One;
      while (secondG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(secondG.all).idG =  2) ) loop
         
         secondG := secondG.Next_Object;
      end loop;
      
      thirdG := Root_Object.Relationships.objG.Conditional_Find_One;
      while (thirdG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(thirdG.all).idG =  3) ) loop
         
         thirdG := thirdG.Next_Object;
      end loop;
      
      fourthG := Root_Object.Relationships.objG.Conditional_Find_One;
      while (fourthG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(fourthG.all).idG =  4) ) loop
         
         fourthG := fourthG.Next_Object;
      end loop;
      
      fifthG := Root_Object.Relationships.objG.Conditional_Find_One;
      while (fifthG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(fifthG.all).idG =  5) ) loop
         
         fifthG := fifthG.Next_Object;
      end loop;
      
      sixthG := Root_Object.Relationships.objG.Conditional_Find_One;
      while (sixthG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(sixthG.all).idG =  6) ) loop
         
         sixthG := sixthG.Next_Object;
      end loop;
      
      seventhG := Root_Object.Relationships.objG.Conditional_Find_One;
      while (seventhG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(seventhG.all).idG =  7) ) loop
         
         seventhG := seventhG.Next_Object;
      end loop;
      
      eigthG := Root_Object.Relationships.objG.Conditional_Find_One;
      while (eigthG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(eigthG.all).idG =  8) ) loop
         
         eigthG := eigthG.Next_Object;
      end loop;
      
      ninthG := Root_Object.Relationships.objG.Conditional_Find_One;
      while (ninthG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(ninthG.all).idG =  9) ) loop
         
         ninthG := ninthG.Next_Object;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Formalise some relationships
      --  This section initialise relationships depending upon which test
      --  is being performed.
      
      if Iteration >= 2 and then
         Iteration <= 5 then
         
         --  Formalise some relationships
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => fifthG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      --  Test 1 - Navigate an undefined relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  1 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R13.Navigate (
            From  => sixthG,
            Role  => "Has_a",
            To    => InstG);
         
         
         --  Check the result of the navigation
         
         if InstG /= Null then
            
            Has_Failed := True;
            
         end if;
         
      end if;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------
      --  Test 2 - Navigate to the MANY side of the relationship
      --           Relationship role, single instance handle as the source
      -- --------------------------------------------------------------------
      
      if Iteration =  2 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0606               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         --  Perform the navigation
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R13.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         
         --  Check the result of the navigation
         
         if Root_Object.Object_List.Count_Of(SetG) /= 2 then
            
            Has_Failed   := True;
            Failure_Code := -30;
            
         else
            
            --  Check the contents of the set
            
            Val1 := -10;
            Val2 := -20;
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetG);
               
               while (Temp_Entry /= null) loop
                  InstG := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objG.Relationships_objG_type(InstG.all).idG =  3 then
                     Val1 := Root_Object.Relationships.objG.Relationships_objG_type(InstG.all).idG;
                  end if;
                  
                  
                  if Root_Object.Relationships.objG.Relationships_objG_type(InstG.all).idG =  4 then
                     Val2 := Root_Object.Relationships.objG.Relationships_objG_type(InstG.all).idG;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetG);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            --  Check counter values
            
            if Val1 =  3 then
               
               if Val2 /= 4 then
                  
                  Has_Failed := True;
                  Failure_Code := Val2;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := Val1;
               
            end if;
            
         end if;
         
      end if;
      
      
      -- End Test 2
      -- --------------------------------------------------------------------
      --  Test 3 - Navigate to the MANY side of the relationship
      --           Qualified role, set of instance handles as the source
      -- --------------------------------------------------------------------
      
      if Iteration =  3 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0703               ");
         
         Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "Navigation from sets unsupported");
         
         
         Unsupported := True;
         
      end if;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------
      --  Test 4 -Navigate to the SINGLE side of the relationship
      --          Relationship role, single instance handle as the source
      -- --------------------------------------------------------------------
      
      if Iteration =  4 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0606               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R13.Navigate (
            From  => fifthG,
            Role  => "Has_a",
            To    => InstG);
         
         
         --  Check the result of the navigation
         
         if InstG /= Null then
            
            if Root_Object.Relationships.objG.Relationships_objG_type(InstG.all).idG /= 2 then
               
               Has_Failed   := True;
               Failure_Code := -10;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -20;
            
         end if;
         
      end if;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------
      --  Test 5 - Navigate to the SINGLE side of the relationship
      --           Qualified role, set of instance handles as the source
      -- --------------------------------------------------------------------
      
      if Iteration =  5 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0703               ");
         
         Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "Navigation from set unsupported ");
         
         
         Unsupported := True;
         
      end if;
      
      
      -- End Test 5
      -- --------------------------------------------------------------------
      --  Test 6 - Attempt to navigate a deleted relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  6 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0606               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0607               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0608               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         --  Formalise some relationships
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => fifthG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         
         --  Delete the formalised relationships
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => fifthG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         
         --  Navigate to the MANY side
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R13.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         
         --  Check the result of the navigation
         
         if Root_Object.Object_List.Count_Of(SetG) /= 0 then
            
            Has_Failed   := True;
            Failure_Code := -10;
         else
            
            --  Navigate to the SINGLE side
            
            Relationships_Rel_R13.Navigate (
               From  => fifthG,
               Role  => "Has_a",
               To    => InstG);
            
            
            --  Check the result of the navigation
            
            if InstG /= Null then
               Has_Failed   := True;
               Failure_Code := -2;
               
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 6
      -- --------------------------------------------------------------------
      --  Test 7 - Attempt to link one to many and navigate to the end of 
      --           each link
      -- --------------------------------------------------------------------
      
      if Iteration =  7 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "Navigate to the end of each link");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0606               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0607               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0608               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         --  Formalise some relationships
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         Relationships_Rel_R13.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
         
         --  Prove that we can navigate from first to fifth and sixth
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R13.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         
         --  Count of number of instances in this little empire.
         --  Include the instance that we are navigating from.
         
         Local_Counter := 1;
         
         
         if Root_Object.Object_List.Count_Of(SetG) =  3 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetG);
               
               while (Temp_Entry /= null) loop
                  InstG := Temp_Entry.Item;
                  
                  if InstG =  Null then
                     
                     Inst_Failed  := True;
                     Failure_Code := -10;
                     
                  else
                     
                     Local_Counter := Local_Counter + 1;
                     
                     
                     Root_Object.Object_List.Clear (
                        From => Next_SetG);
                     
                     
                     Relationships_Rel_R13.Navigate (
                        From  => InstG,
                        Role  => "Has_many",
                        To    => Next_SetG);
                     --
                     -- start of for loop
                     
                     declare
                        use type Root_Object.Object_List.Node_Access_Type;
                        Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                     begin
                        Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                           Target_List => Next_SetG);
                        
                        while (Temp_Entry /= null) loop
                           Sub_InstG := Temp_Entry.Item;
                           
                           if Sub_InstG =  Null then
                              
                              Inst_Failed  := True;
                              Failure_Code := -20;
                              
                           else
                              
                              Local_Counter := Local_Counter + 1;
                              
                           end if;
                           
                           
                           Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                              Target_List => Next_SetG);
                           
                        end loop; -- end of (Temp_Entry /= null) loop
                        
                     end;
                     -- end of for loop
                     --
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetG);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            
            Inst_Failed := True;
            Failure_Code := Root_Object.Object_List.Count_Of(SetG);
            
         end if;
         
         
         if Inst_Failed =  False then
            
            if Local_Counter =  9 then
               
               Has_Failed := False;
               
            else
               
               Has_Failed   := True;
               Failure_Code := Local_Counter;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := Local_Counter;
            
         end if;
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
      end if;
      
      
      --  End Test 7
      -- --------------------------------------------------------------------
      --  Test 8 - Attempt to link one to many and navigate to the end of 
      --           each link
      --           Add in a new instance as a last instance in a chain.
      -- --------------------------------------------------------------------
      
      if Iteration =  8 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0606               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0607               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0608               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Local_Counter := 0;
         
         --  Formalise some relationships
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         Relationships_Rel_R13.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
         tenthG := Root_Object.Relationships.objG.Conditional_Find_One;
         while (tenthG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(tenthG.all).idG =  10) ) loop
            
            tenthG := tenthG.Next_Object;
         end loop;
         
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R13.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         
         --  Count of number of instances in this little empire.
         --  Include the instance that we are navigating from.
         Local_Counter := 1;
         
         
         if Root_Object.Object_List.Count_Of(SetG) =  3 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetG);
               
               while (Temp_Entry /= null) loop
                  InstG := Temp_Entry.Item;
                  
                  if InstG =  Null then
                     
                     Inst_Failed  := True;
                     Failure_Code := -10;
                     
                  else
                     
                     Local_Counter := Local_Counter + 1;
                     
                     
                     Root_Object.Object_List.Clear (
                        From => Next_SetG);
                     
                     
                     Relationships_Rel_R13.Navigate (
                        From  => InstG,
                        Role  => "Has_many",
                        To    => Next_SetG);
                     --
                     -- start of for loop
                     
                     declare
                        use type Root_Object.Object_List.Node_Access_Type;
                        Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                     begin
                        Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                           Target_List => Next_SetG);
                        
                        while (Temp_Entry /= null) loop
                           Sub_InstG := Temp_Entry.Item;
                           
                           if Sub_InstG =  Null then
                              
                              Inst_Failed  := True;
                              Failure_Code := -20;
                              
                           else
                              
                              Local_Counter := Local_Counter + 1;
                              Inst_Failed   := False;
                              
                           end if;
                           
                           
                           Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                              Target_List => Next_SetG);
                           
                        end loop; -- end of (Temp_Entry /= null) loop
                        
                     end;
                     -- end of for loop
                     --
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetG);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            
            Inst_Failed := True;
            Failure_Code := Root_Object.Object_List.Count_Of(SetG);
         end if;
         
         
         if Inst_Failed =  False then
            
            if Local_Counter =  9 then
               
               --  Link in new element
               Relationships_Rel_R13.Link (
                  A_Instance => thirdG,
                  B_Role     => "Has_many",
                  B_Instance => tenthG);
               
               
               -- Can we navigate back from tenthG to thirdG
               
               Relationships_Rel_R13.Navigate (
                  From  => tenthG,
                  Role  => "Has_a",
                  To    => newThird);
               
               
               if newThird =  Null then
                  Inst_Failed  := True;
                  Failure_Code := -30;
                  
               else
                  
                  --  New instance is not undefined
                  
                  Inst_Failed   := False;
                  Local_Counter := 1;
                  
                  
                  Root_Object.Object_List.Clear (
                     From => SetG);
                  
                  
                  Relationships_Rel_R13.Navigate (
                     From  => firstG,
                     Role  => "Has_many",
                     To    => SetG);
                  --
                  -- start of for loop
                  
                  declare
                     use type Root_Object.Object_List.Node_Access_Type;
                     Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                  begin
                     Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                        Target_List => SetG);
                     
                     while (Temp_Entry /= null) loop
                        InstG := Temp_Entry.Item;
                        
                        if InstG =  Null then
                           
                           Inst_Failed  := True;
                           Failure_Code := -40;
                           
                        else
                           
                           Local_Counter := Local_Counter + 1;
                           
                           
                           Root_Object.Object_List.Clear (
                              From => Next_SetG);
                           
                           
                           Relationships_Rel_R13.Navigate (
                              From  => InstG,
                              Role  => "Has_many",
                              To    => Next_SetG);
                           --
                           -- start of for loop
                           
                           declare
                              use type Root_Object.Object_List.Node_Access_Type;
                              Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                           begin
                              Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                 Target_List => Next_SetG);
                              
                              while (Temp_Entry /= null) loop
                                 Sub_InstG := Temp_Entry.Item;
                                 
                                 if Sub_InstG =  Null then
                                    
                                    Inst_Failed  := True;
                                    Failure_Code := -50;
                                    
                                 else
                                    
                                    Local_Counter := Local_Counter + 1;
                                    
                                 end if;
                                 
                                 
                                 Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                    Target_List => Next_SetG);
                                 
                              end loop; -- end of (Temp_Entry /= null) loop
                              
                           end;
                           -- end of for loop
                           --
                           
                        end if;
                        
                        
                        Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                           Target_List => SetG);
                        
                     end loop; -- end of (Temp_Entry /= null) loop
                     
                  end;
                  -- end of for loop
                  --
                  
               end if;
               
               
               if Inst_Failed =  False then
                  
                  if Local_Counter =  10 then
                     
                     Failure_Code := 0;
                     Has_Failed   := False;
                  else
                     Failure_Code := -100 - Local_Counter;
                     Has_Failed   := True;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -60;
               end if;
               
            else
               Failure_Code := -200 - Local_Counter;
               Has_Failed   := True;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -70;
            
         end if;
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => tenthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
      end if;
      
      
      --  End Test 8
      -- --------------------------------------------------------------------
      --  Test 9 - Attempt to link one to many and navigate to the end of
      --           each link
      --           Add in a new instance in the middle of a chain with one 
      --           end object.
      -- --------------------------------------------------------------------
      
      if Iteration =  9 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0606               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0607               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0608               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Local_Counter := 0;
         No_Instances  := 0;
         
         --  Formalise some relationships
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         Relationships_Rel_R13.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
         tenthG := Root_Object.Relationships.objG.Conditional_Find_One;
         while (tenthG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(tenthG.all).idG =  10) ) loop
            
            tenthG := tenthG.Next_Object;
         end loop;
         
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R13.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         
         --  Count of number of instances in this little empire.
         --  Include the instance that we are navigating from.
         Local_Counter := 1;
         
         
         if Root_Object.Object_List.Count_Of(SetG) =  3 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetG);
               
               while (Temp_Entry /= null) loop
                  InstG := Temp_Entry.Item;
                  
                  if InstG =  Null then
                     
                     Inst_Failed  := True;
                     Failure_Code := -10;
                     
                  else
                     
                     Local_Counter := Local_Counter + 1;
                     
                     
                     Root_Object.Object_List.Clear (
                        From => Next_SetG);
                     
                     
                     Relationships_Rel_R13.Navigate (
                        From  => InstG,
                        Role  => "Has_many",
                        To    => Next_SetG);
                     --
                     -- start of for loop
                     
                     declare
                        use type Root_Object.Object_List.Node_Access_Type;
                        Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                     begin
                        Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                           Target_List => Next_SetG);
                        
                        while (Temp_Entry /= null) loop
                           Sub_InstG := Temp_Entry.Item;
                           
                           if Sub_InstG =  Null then
                              
                              Inst_Failed  := True;
                              Failure_Code := -20;
                              
                           else
                              
                              Local_Counter := Local_Counter + 1;
                              
                           end if;
                           
                           
                           Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                              Target_List => Next_SetG);
                           
                        end loop; -- end of (Temp_Entry /= null) loop
                        
                     end;
                     -- end of for loop
                     --
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetG);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            
            Inst_Failed := True;
            Failure_Code := Root_Object.Object_List.Count_Of(SetG);
         end if;
         
         
         if Inst_Failed =  False then
            
            if Local_Counter =  9 then
               
               --  Unlink old element and splice in a new element, making sure that the links are
               --  still correct.
               
               Relationships_Rel_R13.Unlink (
                  A_Instance => firstG,
                  B_Role     => "Has_many",
                  B_Instance => thirdG);
               
               
               --  Link in new element
               Relationships_Rel_R13.Link (
                  A_Instance => firstG,
                  B_Role     => "Has_many",
                  B_Instance => tenthG);
               
               
               --  Relink new element to old element
               Relationships_Rel_R13.Link (
                  A_Instance => tenthG,
                  B_Role     => "Has_many",
                  B_Instance => thirdG);
               
               
               --  Can we navigate back from thirdG to tenthG
               
               Relationships_Rel_R13.Navigate (
                  From  => thirdG,
                  Role  => "Has_a",
                  To    => new_tenth);
               
               
               --  And while we're at it, can we navigate from last back to first,
               --  taking into account the newly added link
               
               declare
                  Temp_Instance : Root_Object.Object_Access;
               begin
                  
                  Relationships_Rel_R13.Navigate (
                     From  => seventhG,
                     Role  => "Has_a",
                     To    => Temp_Instance);
                  
                  Relationships_Rel_R13.Navigate (
                     From  => Temp_Instance,
                     Role  => "Has_a",
                     To    => Temp_Instance);
                  
                  Relationships_Rel_R13.Navigate (
                     From  => Temp_Instance,
                     Role  => "Has_a",
                     To    => new_first);
               end;
               
               if new_tenth =  Null then
                  Inst_Failed  := True;
                  Failure_Code := -30;
               else
                  
                  if new_first =  Null then
                     Inst_Failed  := True;
                     Failure_Code := -40;
                     
                  else
                     
                     --  New instance is not undefined
                     
                     Inst_Failed   := False;
                     Failure_Code  := 0;
                     Local_Counter := 1;
                     
                     
                     Root_Object.Object_List.Clear (
                        From => SetG);
                     
                     
                     Relationships_Rel_R13.Navigate (
                        From  => firstG,
                        Role  => "Has_many",
                        To    => SetG);
                     --
                     -- start of for loop
                     
                     declare
                        use type Root_Object.Object_List.Node_Access_Type;
                        Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                     begin
                        Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                           Target_List => SetG);
                        
                        while (Temp_Entry /= null) loop
                           InstG := Temp_Entry.Item;
                           
                           if InstG =  Null then
                              
                              Inst_Failed  := True;
                              Failure_Code := -50;
                              
                           else
                              
                              Local_Counter := Local_Counter + 1;
                              
                              
                              Root_Object.Object_List.Clear (
                                 From => Next_SetG);
                              
                              
                              Relationships_Rel_R13.Navigate (
                                 From  => InstG,
                                 Role  => "Has_many",
                                 To    => Next_SetG);
                              --
                              -- start of for loop
                              
                              declare
                                 use type Root_Object.Object_List.Node_Access_Type;
                                 Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                              begin
                                 Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                    Target_List => Next_SetG);
                                 
                                 while (Temp_Entry /= null) loop
                                    Sub_InstG := Temp_Entry.Item;
                                    
                                    if Sub_InstG =  Null then
                                       
                                       Inst_Failed  := True;
                                       Failure_Code := -60;
                                       
                                    else
                                       
                                       Local_Counter := Local_Counter + 1;
                                       
                                       
                                       Root_Object.Object_List.Clear (
                                          From => Next_Next_SetG);
                                       
                                       
                                       Relationships_Rel_R13.Navigate (
                                          From  => Sub_InstG,
                                          Role  => "Has_many",
                                          To    => Next_Next_SetG);
                                       --
                                       -- start of for loop
                                       
                                       declare
                                          use type Root_Object.Object_List.Node_Access_Type;
                                          Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                                       begin
                                          Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                             Target_List => Next_Next_SetG);
                                          
                                          while (Temp_Entry /= null) loop
                                             Sub_Sub_InstG := Temp_Entry.Item;
                                             
                                             if Sub_Sub_InstG =  Null then
                                                
                                                Inst_Failed  := True;
                                                Failure_Code := -70;
                                                
                                             else
                                                
                                                Local_Counter := Local_Counter + 1;
                                                
                                             end if;
                                             
                                             
                                             Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                                Target_List => Next_Next_SetG);
                                             
                                          end loop; -- end of (Temp_Entry /= null) loop
                                          
                                       end;
                                       -- end of for loop
                                       --
                                       
                                    end if;
                                    
                                    
                                    Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                       Target_List => Next_SetG);
                                    
                                 end loop; -- end of (Temp_Entry /= null) loop
                                 
                              end;
                              -- end of for loop
                              --
                              
                           end if;
                           
                           
                           Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                              Target_List => SetG);
                           
                        end loop; -- end of (Temp_Entry /= null) loop
                        
                     end;
                     -- end of for loop
                     --
                     
                  end if;
                  
               end if;
               
               
               if Inst_Failed =  False then
                  
                  if Local_Counter =  10 then
                     
                     Failure_Code := 0;
                     Has_Failed   := False;
                  else
                     Has_Failed   := True;
                     Failure_Code := -100 - Local_Counter;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -80;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -200 - Local_Counter;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -90;
            
         end if;
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => tenthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => tenthG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
      end if;
      
      
      --  End Test 9
      -- --------------------------------------------------------------------
      --  Test 10 - Attempt to link one to many and navigate to the end of 
      --            each link
      --            Add in a new instance in the middle of a chain with two 
      --            end objects.
      -- --------------------------------------------------------------------
      
      if Iteration =  10 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0606               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0607               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0608               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Local_Counter := 0;
         Has_Failed    := True;
         Inst_Failed   := False;
         
         --  Formalise some relationships
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         Relationships_Rel_R13.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         Relationships_Rel_R13.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         Relationships_Rel_R13.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
         tenthG := Root_Object.Relationships.objG.Conditional_Find_One;
         while (tenthG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(tenthG.all).idG =  10) ) loop
            
            tenthG := tenthG.Next_Object;
         end loop;
         
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R13.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         
         --  Count of number of instances in this little empire.
         --  Include the instance that we are navigating from.
         Local_Counter := 1;
         No_Instances  := Root_Object.Object_List.Count_Of(SetG);
         
         
         if No_Instances =  3 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetG);
               
               while (Temp_Entry /= null) loop
                  InstG := Temp_Entry.Item;
                  
                  if InstG =  Null then
                     
                     Inst_Failed  := True;
                     Failure_Code := -10;
                     
                  else
                     
                     Local_Counter := Local_Counter + 1;
                     
                     
                     Root_Object.Object_List.Clear (
                        From => Next_SetG);
                     
                     
                     Relationships_Rel_R13.Navigate (
                        From  => InstG,
                        Role  => "Has_many",
                        To    => Next_SetG);
                     --
                     -- start of for loop
                     
                     declare
                        use type Root_Object.Object_List.Node_Access_Type;
                        Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                     begin
                        Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                           Target_List => Next_SetG);
                        
                        while (Temp_Entry /= null) loop
                           Sub_InstG := Temp_Entry.Item;
                           
                           if Sub_InstG =  Null then
                              
                              Inst_Failed  := True;
                              Failure_Code := -3;
                              
                           else
                              
                              Local_Counter := Local_Counter + 1;
                              
                           end if;
                           
                           
                           Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                              Target_List => Next_SetG);
                           
                        end loop; -- end of (Temp_Entry /= null) loop
                        
                     end;
                     -- end of for loop
                     --
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetG);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            
            Inst_Failed := True;
            Failure_Code := No_Instances;
         end if;
         
         
         if Inst_Failed   =  False and then
            Local_Counter =  9 then
            
            --  Unlink old element and splice in a new element, making sure that the links are
            --  still correct.
            
            Relationships_Rel_R13.Unlink (
               A_Instance => firstG,
               B_Role     => "Has_many",
               B_Instance => fourthG);
            
            
            --  Link in new element
            Relationships_Rel_R13.Link (
               A_Instance => firstG,
               B_Role     => "Has_many",
               B_Instance => tenthG);
            
            
            --  Relink new element to old element
            Relationships_Rel_R13.Link (
               A_Instance => tenthG,
               B_Role     => "Has_many",
               B_Instance => fourthG);
            
            
            --  Can we navigate back from thirdG to tenthG
            
            Relationships_Rel_R13.Navigate (
               From  => fourthG,
               Role  => "Has_a",
               To    => new_tenth);
            
            
            --  And while we're at it, can we navigate from last back to first,
            --  taking into account the newly added link
            
            declare
               Temp_Instance : Root_Object.Object_Access;
            begin
               
               Relationships_Rel_R13.Navigate (
                  From  => eigthG,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R13.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R13.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => new_first);
            end;
            
            if new_tenth =  Null then
               Inst_Failed  := True;
               Failure_Code := -30;
            else
               
               if new_first =  Null then
                  Inst_Failed  := True;
                  Failure_Code := -40;
                  
               else
                  
                  --  New instance is not undefined
                  
                  Inst_Failed   := False;
                  Failure_Code  := 0;
                  Local_Counter := 1;
                  
                  
                  Root_Object.Object_List.Clear (
                     From => SetG);
                  
                  
                  Relationships_Rel_R13.Navigate (
                     From  => firstG,
                     Role  => "Has_many",
                     To    => SetG);
                  --
                  -- start of for loop
                  
                  declare
                     use type Root_Object.Object_List.Node_Access_Type;
                     Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                  begin
                     Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                        Target_List => SetG);
                     
                     while (Temp_Entry /= null) loop
                        InstG := Temp_Entry.Item;
                        
                        if InstG =  Null then
                           
                           Inst_Failed  := True;
                           Failure_Code := -50;
                           
                        else
                           
                           Local_Counter := Local_Counter + 1;
                           
                           
                           Root_Object.Object_List.Clear (
                              From => Next_SetG);
                           
                           
                           Relationships_Rel_R13.Navigate (
                              From  => InstG,
                              Role  => "Has_many",
                              To    => Next_SetG);
                           --
                           -- start of for loop
                           
                           declare
                              use type Root_Object.Object_List.Node_Access_Type;
                              Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                           begin
                              Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                 Target_List => Next_SetG);
                              
                              while (Temp_Entry /= null) loop
                                 Sub_InstG := Temp_Entry.Item;
                                 
                                 if Sub_InstG =  Null then
                                    
                                    Inst_Failed  := True;
                                    Failure_Code := -60;
                                    
                                 else
                                    
                                    Local_Counter := Local_Counter + 1;
                                    
                                    
                                    Root_Object.Object_List.Clear (
                                       From => Next_Next_SetG);
                                    
                                    
                                    Relationships_Rel_R13.Navigate (
                                       From  => Sub_InstG,
                                       Role  => "Has_many",
                                       To    => Next_Next_SetG);
                                    --
                                    -- start of for loop
                                    
                                    declare
                                       use type Root_Object.Object_List.Node_Access_Type;
                                       Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                                    begin
                                       Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                          Target_List => Next_Next_SetG);
                                       
                                       while (Temp_Entry /= null) loop
                                          Sub_Sub_InstG := Temp_Entry.Item;
                                          
                                          if Sub_Sub_InstG =  Null then
                                             
                                             Inst_Failed  := True;
                                             Failure_Code := -8;
                                             
                                          else
                                             
                                             Local_Counter := Local_Counter + 1;
                                             
                                          end if;
                                          
                                          
                                          Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                             Target_List => Next_Next_SetG);
                                          
                                       end loop; -- end of (Temp_Entry /= null) loop
                                       
                                    end;
                                    -- end of for loop
                                    --
                                    
                                 end if;
                                 
                                 
                                 Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                    Target_List => Next_SetG);
                                 
                              end loop; -- end of (Temp_Entry /= null) loop
                              
                           end;
                           -- end of for loop
                           --
                           
                        end if;
                        
                        
                        Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                           Target_List => SetG);
                        
                     end loop; -- end of (Temp_Entry /= null) loop
                     
                  end;
                  -- end of for loop
                  --
                  
               end if;
               
            end if;
            
            
            if Inst_Failed   =  False and then
               Local_Counter =  10 then
               
               Failure_Code := 0;
               Has_Failed   := False;
               
               Relationships_Rel_R13.Unlink (
                  A_Instance => firstG,
                  B_Role     => "Has_many",
                  B_Instance => secondG);
               
               
               Relationships_Rel_R13.Unlink (
                  A_Instance => firstG,
                  B_Role     => "Has_many",
                  B_Instance => thirdG);
               
               
               Relationships_Rel_R13.Unlink (
                  A_Instance => firstG,
                  B_Role     => "Has_many",
                  B_Instance => tenthG);
               
               
               Relationships_Rel_R13.Unlink (
                  A_Instance => tenthG,
                  B_Role     => "Has_many",
                  B_Instance => fourthG);
               
               
               Relationships_Rel_R13.Unlink (
                  A_Instance => secondG,
                  B_Role     => "Has_many",
                  B_Instance => fifthG);
               
               
               Relationships_Rel_R13.Unlink (
                  A_Instance => secondG,
                  B_Role     => "Has_many",
                  B_Instance => sixthG);
               
               
               Relationships_Rel_R13.Unlink (
                  A_Instance => thirdG,
                  B_Role     => "Has_many",
                  B_Instance => seventhG);
               
               
               Relationships_Rel_R13.Unlink (
                  A_Instance => fourthG,
                  B_Role     => "Has_many",
                  B_Instance => eigthG);
               
               
               Relationships_Rel_R13.Unlink (
                  A_Instance => fourthG,
                  B_Role     => "Has_many",
                  B_Instance => ninthG);
               
            else
               Has_Failed   := True;
               Failure_Code := Local_Counter;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := Local_Counter;
         end if;
         
      end if;
      
      
      --  End Test 10
      -- --------------------------------------------------------------------
      --  Test 11 - Attempt to navigate a deleted relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  11 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "Attempt to navigate a deleted re");
         
         
         --  Formalise some relationships
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => fifthG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         
         --  Delete the formalised relationships
         
         Relationships_Rel_R4.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => fifthG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         
         --  Navigate to the MANY side
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R4.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         
         --  Check the result of the navigation
         
         if Root_Object.Object_List.Count_Of(SetG) /= 0 then
            Has_Failed   := True;
            Failure_Code := -10;
         else
            
            --  Navigate to the SINGLE side
            
            Relationships_Rel_R4.Navigate (
               From  => fifthG,
               Role  => "Has_a",
               To    => InstG);
            
            
            --  Check the result of the navigation
            
            if InstG /= Null then
               Has_Failed   := True;
               Failure_Code := -20;
               
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 11
      -- --------------------------------------------------------------------
      --  Test 12 - Attempt to link one to many and navigate to the end of 
      --            each link
      -- --------------------------------------------------------------------
      
      if Iteration =  12 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0606               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0607               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0608               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         -- Navigate to the MANY side
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R4.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         
         --  Check the result of the navigation
         
         what := Root_Object.Object_List.Count_Of(SetG);
         
         
         -- Formalise some relationships
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         Relationships_Rel_R4.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
         
         --  Prove that we can navigate from first to fifth and sixth
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R4.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         
         --  Count of number of instances in this little empire.
         --  Include the instance that we are navigating from.
         
         Local_Counter := 1;
         
         
         if Root_Object.Object_List.Count_Of(SetG) =  3 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetG);
               
               while (Temp_Entry /= null) loop
                  InstG := Temp_Entry.Item;
                  
                  if InstG =  Null then
                     
                     Inst_Failed  := True;
                     Failure_Code := -10;
                     
                  else
                     
                     Local_Counter := Local_Counter + 1;
                     
                     
                     Root_Object.Object_List.Clear (
                        From => Next_SetG);
                     
                     
                     Relationships_Rel_R4.Navigate (
                        From  => InstG,
                        Role  => "Has_many",
                        To    => Next_SetG);
                     --
                     -- start of for loop
                     
                     declare
                        use type Root_Object.Object_List.Node_Access_Type;
                        Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                     begin
                        Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                           Target_List => Next_SetG);
                        
                        while (Temp_Entry /= null) loop
                           Sub_InstG := Temp_Entry.Item;
                           
                           if Sub_InstG =  Null then
                              
                              Inst_Failed  := True;
                              Failure_Code := -3;
                              
                           else
                              
                              Local_Counter := Local_Counter + 1;
                              
                           end if;
                           
                           
                           Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                              Target_List => Next_SetG);
                           
                        end loop; -- end of (Temp_Entry /= null) loop
                        
                     end;
                     -- end of for loop
                     --
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetG);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            
            Inst_Failed := True;
            Failure_Code := Root_Object.Object_List.Count_Of(SetG);
         end if;
         
         
         if Inst_Failed   =  False and then
            Local_Counter =  9 then
            Has_Failed   := False;
            Failure_Code := 0;
         else
            Has_Failed   := True;
            Failure_Code := Local_Counter;
            
         end if;
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
      end if;
      
      
      --  End Test 12
      -- --------------------------------------------------------------------
      --  Test 13 - Attempt to link one to many and navigate to the end of 
      --            each link
      --            Add in a new instance as a last instance in a chain.
      -- --------------------------------------------------------------------
      
      if Iteration =  13 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0606               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0607               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0608               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Local_Counter := 0;
         Has_Failed    := True;
         Inst_Failed   := True;
         
         --  Formalise some relationships
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         Relationships_Rel_R4.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
         tenthG := Root_Object.Relationships.objG.Conditional_Find_One;
         while (tenthG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(tenthG.all).idG =  10) ) loop
            
            tenthG := tenthG.Next_Object;
         end loop;
         
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R4.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         
         --  Count of number of instances in this little empire.
         --  Include the instance that we are navigating from.
         Local_Counter := 1;
         No_Instances  := Root_Object.Object_List.Count_Of(SetG);
         
         
         if No_Instances =  3 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetG);
               
               while (Temp_Entry /= null) loop
                  InstG := Temp_Entry.Item;
                  
                  if InstG =  Null then
                     
                     Inst_Failed  := True;
                     Failure_Code := -10;
                     
                  else
                     
                     Local_Counter := Local_Counter + 1;
                     
                     
                     Root_Object.Object_List.Clear (
                        From => Next_SetG);
                     
                     
                     Relationships_Rel_R4.Navigate (
                        From  => InstG,
                        Role  => "Has_many",
                        To    => Next_SetG);
                     --
                     -- start of for loop
                     
                     declare
                        use type Root_Object.Object_List.Node_Access_Type;
                        Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                     begin
                        Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                           Target_List => Next_SetG);
                        
                        while (Temp_Entry /= null) loop
                           Sub_InstG := Temp_Entry.Item;
                           
                           if Sub_InstG =  Null then
                              
                              Inst_Failed  := True;
                              Failure_Code := -20;
                              
                           else
                              
                              Local_Counter := Local_Counter + 1;
                              Inst_Failed   := False;
                              
                           end if;
                           
                           
                           Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                              Target_List => Next_SetG);
                           
                        end loop; -- end of (Temp_Entry /= null) loop
                        
                     end;
                     -- end of for loop
                     --
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetG);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            
            Inst_Failed := True;
            Failure_Code := No_Instances;
         end if;
         
         
         if Inst_Failed   =  False and then
            Local_Counter =  9 then
            
            --  Link in new element
            Relationships_Rel_R4.Link (
               A_Instance => thirdG,
               B_Role     => "Has_many",
               B_Instance => tenthG);
            
            
            --  Can we navigate back from tenthG to thirdG
            
            Relationships_Rel_R4.Navigate (
               From  => tenthG,
               Role  => "Has_a",
               To    => new_third);
            
            
            if new_third =  Null then
               Inst_Failed  := True;
               Failure_Code := -30;
               
            else
               
               --  New instance is not undefined
               
               Inst_Failed   := False;
               Failure_Code  := 0;
               Local_Counter := 1;
               
               
               Root_Object.Object_List.Clear (
                  From => SetG);
               
               
               Relationships_Rel_R4.Navigate (
                  From  => firstG,
                  Role  => "Has_many",
                  To    => SetG);
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => SetG);
                  
                  while (Temp_Entry /= null) loop
                     InstG := Temp_Entry.Item;
                     
                     if InstG =  Null then
                        
                        Inst_Failed  := True;
                        Failure_Code := -40;
                        
                     else
                        
                        Local_Counter := Local_Counter + 1;
                        
                        
                        Root_Object.Object_List.Clear (
                           From => Next_SetG);
                        
                        
                        Relationships_Rel_R4.Navigate (
                           From  => InstG,
                           Role  => "Has_many",
                           To    => Next_SetG);
                        --
                        -- start of for loop
                        
                        declare
                           use type Root_Object.Object_List.Node_Access_Type;
                           Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                        begin
                           Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                              Target_List => Next_SetG);
                           
                           while (Temp_Entry /= null) loop
                              Sub_InstG := Temp_Entry.Item;
                              
                              if Sub_InstG =  Null then
                                 
                                 Inst_Failed  := True;
                                 Failure_Code := -50;
                                 
                              else
                                 
                                 Local_Counter := Local_Counter + 1;
                                 
                              end if;
                              
                              
                              Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                 Target_List => Next_SetG);
                              
                           end loop; -- end of (Temp_Entry /= null) loop
                           
                        end;
                        -- end of for loop
                        --
                        
                     end if;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => SetG);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
            end if;
            
            
            if Inst_Failed   =  False and then
               Local_Counter =  10 then
               
               Failure_Code := 0;
               Has_Failed   := False;
               
               Relationships_Rel_R4.Unlink (
                  A_Instance => firstG,
                  B_Role     => "Has_many",
                  B_Instance => secondG);
               
               
               Relationships_Rel_R4.Unlink (
                  A_Instance => firstG,
                  B_Role     => "Has_many",
                  B_Instance => thirdG);
               
               
               Relationships_Rel_R4.Unlink (
                  A_Instance => firstG,
                  B_Role     => "Has_many",
                  B_Instance => fourthG);
               
               
               Relationships_Rel_R4.Unlink (
                  A_Instance => secondG,
                  B_Role     => "Has_many",
                  B_Instance => fifthG);
               
               
               Relationships_Rel_R4.Unlink (
                  A_Instance => secondG,
                  B_Role     => "Has_many",
                  B_Instance => sixthG);
               
               
               Relationships_Rel_R4.Unlink (
                  A_Instance => thirdG,
                  B_Role     => "Has_many",
                  B_Instance => seventhG);
               
               
               Relationships_Rel_R4.Unlink (
                  A_Instance => thirdG,
                  B_Role     => "Has_many",
                  B_Instance => tenthG);
               
               
               Relationships_Rel_R4.Unlink (
                  A_Instance => fourthG,
                  B_Role     => "Has_many",
                  B_Instance => eigthG);
               
               
               Relationships_Rel_R4.Unlink (
                  A_Instance => fourthG,
                  B_Role     => "Has_many",
                  B_Instance => ninthG);
               
            else
               Has_Failed   := True;
               Failure_Code := Local_Counter;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := Local_Counter;
            
         end if;
         
      end if;
      
      
      --  End Test 13
      -- --------------------------------------------------------------------
      --  Test 14 - Attempt to link one to many and navigate to the end of 
      --            each link
      --            Add in a new instance in the missle of a chain with one 
      --            end object.
      -- --------------------------------------------------------------------
      
      if Iteration =  14 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0606               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0607               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0608               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Local_Counter := 0;
         Inst_Failed   := False;
         Unsupported   := False;
         No_Instances  := 0;
         
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R4.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         
         No_Instances := Root_Object.Object_List.Count_Of(SetG);
         
         
         --  Formalise some relationships
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         Relationships_Rel_R4.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
         tenthG := Root_Object.Relationships.objG.Conditional_Find_One;
         while (tenthG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(tenthG.all).idG =  10) ) loop
            
            tenthG := tenthG.Next_Object;
         end loop;
         
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R4.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         
         --  Count of number of instances in this little empire.
         --  Include the instance that we are navigating from.
         
         Local_Counter := 1;
         
         
         if Root_Object.Object_List.Count_Of(SetG) =  3 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetG);
               
               while (Temp_Entry /= null) loop
                  InstG := Temp_Entry.Item;
                  
                  if InstG =  Null then
                     
                     Inst_Failed  := True;
                     Failure_Code := -10;
                     
                  else
                     
                     Local_Counter := Local_Counter + 1;
                     
                     
                     Root_Object.Object_List.Clear (
                        From => Next_SetG);
                     
                     
                     Relationships_Rel_R4.Navigate (
                        From  => InstG,
                        Role  => "Has_many",
                        To    => Next_SetG);
                     --
                     -- start of for loop
                     
                     declare
                        use type Root_Object.Object_List.Node_Access_Type;
                        Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                     begin
                        Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                           Target_List => Next_SetG);
                        
                        while (Temp_Entry /= null) loop
                           Sub_InstG := Temp_Entry.Item;
                           
                           if Sub_InstG =  Null then
                              
                              Inst_Failed  := True;
                              Failure_Code := -20;
                              
                           else
                              
                              Local_Counter := Local_Counter + 1;
                              
                           end if;
                           
                           
                           Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                              Target_List => Next_SetG);
                           
                        end loop; -- end of (Temp_Entry /= null) loop
                        
                     end;
                     -- end of for loop
                     --
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetG);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            
            Inst_Failed := True;
            Failure_Code := Root_Object.Object_List.Count_Of(SetG);
         end if;
         
         
         if Inst_Failed =  False then
            
            if Local_Counter =  9 then
               
               --  Unlink old element and splice in a new element, making sure that the links are
               --  still correct.
               
               Relationships_Rel_R4.Unlink (
                  A_Instance => firstG,
                  B_Role     => "Has_many",
                  B_Instance => thirdG);
               
               
               --  Link in new element
               Relationships_Rel_R4.Link (
                  A_Instance => firstG,
                  B_Role     => "Has_many",
                  B_Instance => tenthG);
               
               
               --  Relink new element to old element
               Relationships_Rel_R4.Link (
                  A_Instance => tenthG,
                  B_Role     => "Has_many",
                  B_Instance => thirdG);
               
               
               --  Can we navigate back from thirdG to tenthG
               
               Relationships_Rel_R4.Navigate (
                  From  => thirdG,
                  Role  => "Has_a",
                  To    => new_tenth);
               
               
               --  And while we're at it, can we navigate from last back to first,
               --  taking into account the newly added link
               
               declare
                  Temp_Instance : Root_Object.Object_Access;
               begin
                  
                  Relationships_Rel_R4.Navigate (
                     From  => seventhG,
                     Role  => "Has_a",
                     To    => Temp_Instance);
                  
                  Relationships_Rel_R4.Navigate (
                     From  => Temp_Instance,
                     Role  => "Has_a",
                     To    => Temp_Instance);
                  
                  Relationships_Rel_R4.Navigate (
                     From  => Temp_Instance,
                     Role  => "Has_a",
                     To    => new_first);
               end;
               
               if new_tenth =  Null then
                  Inst_Failed  := True;
                  Failure_Code := -30;
               else
                  
                  if new_first =  Null then
                     Inst_Failed  := True;
                     Failure_Code := -40;
                     
                  else
                     
                     --  New instance is not undefined
                     
                     Inst_Failed   := False;
                     Failure_Code  := 0;
                     Local_Counter := 1;
                     
                     
                     Root_Object.Object_List.Clear (
                        From => SetG);
                     
                     
                     Relationships_Rel_R4.Navigate (
                        From  => firstG,
                        Role  => "Has_many",
                        To    => SetG);
                     
                     No_Instances := Root_Object.Object_List.Count_Of(SetG);
                     --
                     -- start of for loop
                     
                     declare
                        use type Root_Object.Object_List.Node_Access_Type;
                        Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                     begin
                        Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                           Target_List => SetG);
                        
                        while (Temp_Entry /= null) loop
                           InstG := Temp_Entry.Item;
                           
                           if InstG =  Null then
                              Inst_Failed  := True;
                              Failure_Code := -50;
                              
                           else
                              
                              Local_Counter := Local_Counter + 1;
                              
                              
                              Root_Object.Object_List.Clear (
                                 From => Next_SetG);
                              
                              
                              Relationships_Rel_R4.Navigate (
                                 From  => InstG,
                                 Role  => "Has_many",
                                 To    => Next_SetG);
                              --
                              -- start of for loop
                              
                              declare
                                 use type Root_Object.Object_List.Node_Access_Type;
                                 Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                              begin
                                 Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                    Target_List => Next_SetG);
                                 
                                 while (Temp_Entry /= null) loop
                                    Sub_InstG := Temp_Entry.Item;
                                    
                                    if Sub_InstG =  Null then
                                       
                                       Inst_Failed  := True;
                                       Failure_Code := -60;
                                       
                                    else
                                       
                                       Local_Counter := Local_Counter + 1;
                                       
                                       
                                       Root_Object.Object_List.Clear (
                                          From => Next_Next_SetG);
                                       
                                       
                                       Relationships_Rel_R4.Navigate (
                                          From  => Sub_InstG,
                                          Role  => "Has_many",
                                          To    => Next_Next_SetG);
                                       
                                       No_Next_Next_Set := Root_Object.Object_List.Count_Of(Next_Next_SetG);
                                       
                                       --
                                       -- start of for loop
                                       
                                       declare
                                          use type Root_Object.Object_List.Node_Access_Type;
                                          Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                                       begin
                                          Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                             Target_List => Next_Next_SetG);
                                          
                                          while (Temp_Entry /= null) loop
                                             Sub_Sub_InstG := Temp_Entry.Item;
                                             
                                             if Sub_Sub_InstG =  Null then
                                                
                                                Inst_Failed  := True;
                                                Failure_Code := -70;
                                                
                                             else
                                                
                                                Local_Counter := Local_Counter + 1;
                                                
                                             end if;
                                             
                                             
                                             Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                                Target_List => Next_Next_SetG);
                                             
                                          end loop; -- end of (Temp_Entry /= null) loop
                                          
                                       end;
                                       -- end of for loop
                                       --
                                       
                                    end if;
                                    
                                    
                                    Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                       Target_List => Next_SetG);
                                    
                                 end loop; -- end of (Temp_Entry /= null) loop
                                 
                              end;
                              -- end of for loop
                              --
                              
                           end if;
                           
                           
                           Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                              Target_List => SetG);
                           
                        end loop; -- end of (Temp_Entry /= null) loop
                        
                     end;
                     -- end of for loop
                     --
                     
                  end if;
                  
               end if;
               
               
               if Inst_Failed =  False then
                  
                  if Local_Counter =  10 then
                     
                     Failure_Code := 0;
                     Has_Failed   := False;
                  else
                     Has_Failed   := True;
                     Failure_Code := -100 - Local_Counter;
                  end if;
                  
               else
                  Failure_Code := -80;
                  Has_Failed   := True;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -200 - Local_Counter;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := Local_Counter;
            
         end if;
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => tenthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => tenthG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
      end if;
      
      
      --  End Test 14
      -- --------------------------------------------------------------------
      --  Test 15 - Attempt to link one to many and navigate to the end of 
      --            each link
      --            Add in a new instance in the middle of a chain with two 
      --            end objects.
      -- --------------------------------------------------------------------
      
      if Iteration =  15 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objG                            ",
            Purpose         => "1c to Mc reflexive navigations  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0606               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0607               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0608               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Local_Counter := 0;
         Inst_Failed   := False;
         Unsupported   := False;
         
         --  Formalise some relationships
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         Relationships_Rel_R4.Link (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         Relationships_Rel_R4.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         Relationships_Rel_R4.Link (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
         tenthG := Root_Object.Relationships.objG.Conditional_Find_One;
         while (tenthG /= null) and then (not (Root_Object.Relationships.objG.Relationships_objG_Type(tenthG.all).idG =  10) ) loop
            
            tenthG := tenthG.Next_Object;
         end loop;
         
         
         Root_Object.Object_List.Clear (
            From => SetG);
         
         
         Relationships_Rel_R4.Navigate (
            From  => firstG,
            Role  => "Has_many",
            To    => SetG);
         Local_Counter := 1;
         
         
         if Root_Object.Object_List.Count_Of(SetG) =  3 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetG);
               
               while (Temp_Entry /= null) loop
                  InstG := Temp_Entry.Item;
                  
                  if InstG =  Null then
                     
                     Inst_Failed  := True;
                     Failure_Code := -10;
                     
                  else
                     
                     Local_Counter := Local_Counter + 1;
                     
                     
                     Root_Object.Object_List.Clear (
                        From => Next_SetG);
                     
                     
                     Relationships_Rel_R4.Navigate (
                        From  => InstG,
                        Role  => "Has_many",
                        To    => Next_SetG);
                     --
                     -- start of for loop
                     
                     declare
                        use type Root_Object.Object_List.Node_Access_Type;
                        Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                     begin
                        Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                           Target_List => Next_SetG);
                        
                        while (Temp_Entry /= null) loop
                           Sub_InstG := Temp_Entry.Item;
                           
                           if Sub_InstG =  Null then
                              
                              Inst_Failed  := True;
                              Failure_Code := -20;
                              
                           else
                              
                              Local_Counter := Local_Counter + 1;
                              
                           end if;
                           
                           
                           Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                              Target_List => Next_SetG);
                           
                        end loop; -- end of (Temp_Entry /= null) loop
                        
                     end;
                     -- end of for loop
                     --
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetG);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            
            Inst_Failed := True;
            Failure_Code := Root_Object.Object_List.Count_Of(SetG);
         end if;
         
         
         if Inst_Failed =  False then
            
            if Local_Counter =  9 then
               
               --  Unlink old element and splice in a new element, making sure that the links are
               --  still correct.
               
               Relationships_Rel_R4.Unlink (
                  A_Instance => firstG,
                  B_Role     => "Has_many",
                  B_Instance => fourthG);
               
               
               --  Link in new element
               Relationships_Rel_R4.Link (
                  A_Instance => firstG,
                  B_Role     => "Has_many",
                  B_Instance => tenthG);
               
               
               --  Relink new element to old element
               Relationships_Rel_R4.Link (
                  A_Instance => tenthG,
                  B_Role     => "Has_many",
                  B_Instance => fourthG);
               
               
               --  Can we navigate back from thirdG to tenthG
               
               Relationships_Rel_R4.Navigate (
                  From  => fourthG,
                  Role  => "Has_a",
                  To    => new_tenth);
               
               
               --  And while we're at it, can we navigate from last back to first,
               --  taking into account the newly added link
               
               declare
                  Temp_Instance : Root_Object.Object_Access;
               begin
                  
                  Relationships_Rel_R4.Navigate (
                     From  => eigthG,
                     Role  => "Has_a",
                     To    => Temp_Instance);
                  
                  Relationships_Rel_R4.Navigate (
                     From  => Temp_Instance,
                     Role  => "Has_a",
                     To    => Temp_Instance);
                  
                  Relationships_Rel_R4.Navigate (
                     From  => Temp_Instance,
                     Role  => "Has_a",
                     To    => new_first);
               end;
               
               if new_tenth =  Null then
                  Inst_Failed  := True;
                  Failure_Code := -30;
               else
                  
                  if new_first =  Null then
                     Inst_Failed  := True;
                     Failure_Code := -40;
                     
                  else
                     
                     --  New instance is not undefined
                     
                     Inst_Failed   := False;
                     Failure_Code  := 0;
                     Local_Counter := 1;
                     
                     
                     Root_Object.Object_List.Clear (
                        From => SetG);
                     
                     
                     Relationships_Rel_R4.Navigate (
                        From  => firstG,
                        Role  => "Has_many",
                        To    => SetG);
                     --
                     -- start of for loop
                     
                     declare
                        use type Root_Object.Object_List.Node_Access_Type;
                        Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                     begin
                        Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                           Target_List => SetG);
                        
                        while (Temp_Entry /= null) loop
                           InstG := Temp_Entry.Item;
                           
                           if InstG =  Null then
                              
                              Inst_Failed  := True;
                              Failure_Code := -50;
                              
                           else
                              
                              Local_Counter := Local_Counter + 1;
                              
                              
                              Root_Object.Object_List.Clear (
                                 From => Next_SetG);
                              
                              
                              Relationships_Rel_R4.Navigate (
                                 From  => InstG,
                                 Role  => "Has_many",
                                 To    => Next_SetG);
                              --
                              -- start of for loop
                              
                              declare
                                 use type Root_Object.Object_List.Node_Access_Type;
                                 Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                              begin
                                 Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                    Target_List => Next_SetG);
                                 
                                 while (Temp_Entry /= null) loop
                                    Sub_InstG := Temp_Entry.Item;
                                    
                                    if Sub_InstG =  Null then
                                       
                                       Inst_Failed  := True;
                                       Failure_Code := -60;
                                       
                                    else
                                       
                                       Local_Counter := Local_Counter + 1;
                                       
                                       
                                       Root_Object.Object_List.Clear (
                                          From => Next_Next_SetG);
                                       
                                       
                                       Relationships_Rel_R4.Navigate (
                                          From  => Sub_InstG,
                                          Role  => "Has_many",
                                          To    => Next_Next_SetG);
                                       --
                                       -- start of for loop
                                       
                                       declare
                                          use type Root_Object.Object_List.Node_Access_Type;
                                          Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                                       begin
                                          Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                                             Target_List => Next_Next_SetG);
                                          
                                          while (Temp_Entry /= null) loop
                                             Sub_Sub_InstG := Temp_Entry.Item;
                                             
                                             if Sub_Sub_InstG =  Null then
                                                
                                                Inst_Failed  := True;
                                                Failure_Code := -70;
                                                
                                             else
                                                
                                                Local_Counter := Local_Counter + 1;
                                                
                                             end if;
                                             
                                             
                                             Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                                Target_List => Next_Next_SetG);
                                             
                                          end loop; -- end of (Temp_Entry /= null) loop
                                          
                                       end;
                                       -- end of for loop
                                       --
                                       
                                    end if;
                                    
                                    
                                    Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                       Target_List => Next_SetG);
                                    
                                 end loop; -- end of (Temp_Entry /= null) loop
                                 
                              end;
                              -- end of for loop
                              --
                              
                           end if;
                           
                           
                           Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                              Target_List => SetG);
                           
                        end loop; -- end of (Temp_Entry /= null) loop
                        
                     end;
                     -- end of for loop
                     --
                     
                  end if;
                  
               end if;
               
               
               if Inst_Failed =  False then
                  
                  if Local_Counter =  10 then
                     
                     Failure_Code := 0;
                     Has_Failed   := False;
                  else
                     Has_Failed   := True;
                     Failure_Code := -100 - Local_Counter;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -80;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -200 - Local_Counter;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -90;
            
         end if;
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => secondG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => tenthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => tenthG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => fifthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => secondG,
            B_Role     => "Has_many",
            B_Instance => sixthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => thirdG,
            B_Role     => "Has_many",
            B_Instance => seventhG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => eigthG);
         
         
         Relationships_Rel_R4.Unlink (
            A_Instance => fourthG,
            B_Role     => "Has_many",
            B_Instance => ninthG);
         
      end if;
      
      
      --  End Test 15
      -- --------------------------------------------------------------------
      --  Delete some relationships
      --  This section deletes relationships depending upon which test
      --  has been performed.
      -- --------------------------------------------------------------------
      
      if Iteration >= 2 and then
         Iteration <= 5 then
         
         --  Delete the formalised relationships
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => thirdG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_many",
            B_Instance => fourthG);
         
         
         Relationships_Rel_R13.Unlink (
            A_Instance => fifthG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      --  Tests complete
      -- --------------------------------------------------------------------
      
      if Unsupported =  False then
         
         if Has_Failed =  False then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "objG                            ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "objG                            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Failure_Code);
            
         end if;
         
      else
         Relationships_RPT4_Test_Unsupported_Bridge.Relationships_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Next_Next_SetG);
      Root_Object.Object_List.Destroy_List (Next_SetG);
      Root_Object.Object_List.Destroy_List (SetG);
      
   end Relationships_objG3_One_To_Many_Reflexive;
   
end Relationships_objG3_One_To_Many_Reflexive_Service;

--
-- End of file Relationships_objG3_One_To_Many_Reflexive_Service.adb
--
