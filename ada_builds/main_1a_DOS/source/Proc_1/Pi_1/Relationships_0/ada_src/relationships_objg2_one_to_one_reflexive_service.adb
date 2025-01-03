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
--* File Name:               Relationships_objG2_One_To_One_Reflexive_Service.adb
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
with Relationships_rel_R2;
with Relationships_rel_R2;
with Relationships_rel_R2;
with Relationships_rel_R11;
with Relationships_rel_R11;
with Relationships_rel_R11;

-- List of services used
with Relationships_objG1_Is_It_Defined_Service;

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


package body Relationships_objG2_One_To_One_Reflexive_Service is
   
   procedure Relationships_objG2_One_To_One_Reflexive (
      Iteration : in     Application_Types.Base_Integer_Type;
      Test      : in     Application_Types.Base_Integer_Type) is
      
      firstG                   : Root_Object.Object_Access;
      secondG                  : Root_Object.Object_Access;
      thirdG                   : Root_Object.Object_Access;
      fourthG                  : Root_Object.Object_Access;
      fifthG                   : Root_Object.Object_Access;
      sixthG                   : Root_Object.Object_Access;
      InstG                    : Root_Object.Object_Access;
      second_instanceG         : Root_Object.Object_Access;
      third_instanceG          : Root_Object.Object_Access;
      fourth_instanceG         : Root_Object.Object_Access;
      fifth_instanceG          : Root_Object.Object_Access;
      final_instance           : Root_Object.Object_Access;
      first_instance           : Root_Object.Object_Access;
      fourth_instance          : Root_Object.Object_Access;
      third_instance           : Root_Object.Object_Access;
      local_objectG            : Root_Object.Object_Access;
      first_undefined_instance : Root_Object.Object_Access;
      last_undefined_instance  : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed  : Boolean := Application_Types.Boolean_first;
      Unsupported : Boolean := Application_Types.Boolean_first;
      Defined     : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objG2_One_To_One_Reflexive
      
      -- --------------------------------------------------------------------
      --  Reflexive navigations 1c:1c
      -- --------------------------------------------------------------------
      -- Initialise the fault flag
      Has_Failed   := False;
      Unsupported  := False;
      Failure_Code := -1;
      
      
      -- --------------------------------------------------------------------
      -- Find the desired instances of Object_G
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
      
      
      -- --------------------------------------------------------------------
      --  Formalise some relationships 
      --  This section initialise relationships depending upon which test
      --  is being performed.
      -- --------------------------------------------------------------------
      
      if Iteration >= 2 and then
         Iteration <= 6 then
         
         --  Formalise some relationships
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => fifthG);
         
         Relationships_Rel_R11.Link (
            A_Instance => secondG,
            B_Role     => "May_have",
            B_Instance => thirdG);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      --  Test 1 - Navigate an undefined relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  1 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R11.Navigate (
            From  => sixthG,
            Role  => "Has_a",
            To    => InstG);
         
         
         -- Check the result of the navigation
         
         if InstG /= Null then
            
            Has_Failed := True;
            
         end if;
         
      end if;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------
      --  Test 2 - Relationship role, single instance handle as the source
      -- --------------------------------------------------------------------
      
      if Iteration =  2 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "Has_a",
            To    => InstG);
         
         
         --  Check the result of the navigation
         
         if InstG /= Null then
            
            if Root_Object.Relationships.objG.Relationships_objG_type(InstG.all).idG /= 5 then
               
               Has_Failed   := True;
               Failure_Code := -10;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -20;
         end if;
         
      end if;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------
      --  Test 3 - Qualified role, single instance handle as the source
      -- --------------------------------------------------------------------
      
      if Iteration =  3 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R11.Navigate (
            From  => secondG,
            Role  => "May_have",
            To    => InstG);
         
         
         --  Check the result of the navigation
         
         if InstG /= Null then
            
            if Root_Object.Relationships.objG.Relationships_objG_type(InstG.all).idG /= 3 then
               Has_Failed   := True;
               Failure_Code := -10;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -20;
            
         end if;
         
      end if;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------
      --  Test 4 - Relationship role, set of instance handles as the source
      -- --------------------------------------------------------------------
      
      if Iteration =  4 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0703               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "Navigate from set unsupported   ");
         
         
         Unsupported := True;
      end if;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------
      --  Test 5 - Qualified role, set of instance handles as the source
      -- --------------------------------------------------------------------
      
      if Iteration =  5 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0703               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "Navigate from set unsupported   ");
         
         Unsupported := True;
         
      end if;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------
      --  Test 6 - Navigate the relationship in reverse 
      --           Relationship role, single instance handle as the source
      -- --------------------------------------------------------------------
      
      if Iteration =  6 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         
         --  Perform the navigation
         
         Relationships_Rel_R11.Navigate (
            From  => fifthG,
            Role  => "May_have",
            To    => InstG);
         
         
         --  Check the result of the navigation
         
         if InstG /= Null then
            
            if Root_Object.Relationships.objG.Relationships_objG_type(InstG.all).idG /= 1 then
               
               Has_Failed   := True;
               Failure_Code := -10;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -20;
         end if;
         
      end if;
      
      
      --  End Test 6
      -- --------------------------------------------------------------------
      --  Test 7 - Attempt to navigate a deleted relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  7 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Define a relationship
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => thirdG);
         
         
         --  Perform the navigation
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "Has_a",
            To    => InstG);
         
         
         --  Check the result of the navigation
         
         if InstG /= Null then
            
            if Root_Object.Relationships.objG.Relationships_objG_type(InstG.all).idG /= 3 then
               Has_Failed   := True;
               Failure_Code := -10;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -20;
         end if;
         
         
         --  Delete relationship
         
         Relationships_Rel_R11.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => thirdG);
         
         
         --  Perform the navigation, again
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "Has_a",
            To    => InstG);
         
         
         --  Check the result of the navigation
         
         if InstG /= Null then
            Has_Failed   := True;
            Failure_Code := -2;
            
         end if;
         
      end if;
      
      
      --  End Test 7
      --  ---------------------------------------------------------------------------
      --  Test 8 - Link a series of instances together and prove that navigation is 
      --           possible from the first through to the last
      --  ---------------------------------------------------------------------------
      
      if Iteration =  8 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Defined := False;
         
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         Relationships_Rel_R11.Link (
            A_Instance => secondG,
            B_Role     => "Has_a",
            B_Instance => thirdG);
         
         Relationships_Rel_R11.Link (
            A_Instance => thirdG,
            B_Role     => "Has_a",
            B_Instance => fourthG);
         
         Relationships_Rel_R11.Link (
            A_Instance => fourthG,
            B_Role     => "Has_a",
            B_Instance => fifthG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "Has_a",
            To    => second_instanceG);
         
         
         Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
            The_IH        => second_instanceG,
            It_Is_Defined => Defined);
         
         
         if Defined then
            
            Relationships_Rel_R11.Navigate (
               From  => second_instanceG,
               Role  => "Has_a",
               To    => third_instanceG);
            
            
            Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
               The_IH        => third_instanceG,
               It_Is_Defined => Defined);
            
            
            if Defined then
               
               Relationships_Rel_R11.Navigate (
                  From  => third_instanceG,
                  Role  => "Has_a",
                  To    => fourth_instanceG);
               
               
               Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                  The_IH        => fourth_instanceG,
                  It_Is_Defined => Defined);
               
               
               if Defined then
                  
                  Relationships_Rel_R11.Navigate (
                     From  => fourth_instanceG,
                     Role  => "Has_a",
                     To    => fifth_instanceG);
                  
                  
                  Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                     The_IH        => fifth_instanceG,
                     It_Is_Defined => Defined);
                  
                  
                  if Defined then
                     
                     --  Everything has linked through to the final instance.
                     --  It would have been easier to traverse the link to the end
                     --  in one go, but that would not have shown up any failure at a
                     --  particular node.
                     
                     Has_Failed := False;
                     
                     
                     --  Now unlink the formalised relationships to clean up tidily.
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => fourthG,
                        B_Role     => "Has_a",
                        B_Instance => fifthG);
                     
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => thirdG,
                        B_Role     => "Has_a",
                        B_Instance => fourthG);
                     
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => secondG,
                        B_Role     => "Has_a",
                        B_Instance => thirdG);
                     
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => firstG,
                        B_Role     => "Has_a",
                        B_Instance => secondG);
                     
                  else
                     
                     Has_Failed   := True;
                     Failure_Code := -5;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -4;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -3;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -2;
            
         end if;
         
      end if;
      
      
      --  End Test 8
      --  -------------------------------------------------------------------------
      --  Test 9 - Link a series of instances together and prove that navigation 
      --           is possible from the first through to the last using the other 
      --           role parameter.
      --  -------------------------------------------------------------------------
      
      if Iteration =  9 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Defined := False;
         
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "May_have",
            B_Instance => secondG);
         
         Relationships_Rel_R11.Link (
            A_Instance => secondG,
            B_Role     => "May_have",
            B_Instance => thirdG);
         
         Relationships_Rel_R11.Link (
            A_Instance => thirdG,
            B_Role     => "May_have",
            B_Instance => fourthG);
         
         Relationships_Rel_R11.Link (
            A_Instance => fourthG,
            B_Role     => "May_have",
            B_Instance => fifthG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "May_have",
            To    => second_instanceG);
         
         
         Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
            The_IH        => second_instanceG,
            It_Is_Defined => Defined);
         
         
         if Defined then
            
            Relationships_Rel_R11.Navigate (
               From  => second_instanceG,
               Role  => "May_have",
               To    => third_instanceG);
            
            
            Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
               The_IH        => third_instanceG,
               It_Is_Defined => Defined);
            
            
            if Defined then
               
               Relationships_Rel_R11.Navigate (
                  From  => third_instanceG,
                  Role  => "May_have",
                  To    => fourth_instanceG);
               
               
               Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                  The_IH        => fourth_instanceG,
                  It_Is_Defined => Defined);
               
               
               if Defined then
                  
                  Relationships_Rel_R11.Navigate (
                     From  => fourth_instanceG,
                     Role  => "May_have",
                     To    => fifth_instanceG);
                  
                  
                  Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                     The_IH        => fifth_instanceG,
                     It_Is_Defined => Defined);
                  
                  
                  if Defined then
                     
                     --  Everything has linked through to the final instance.
                     --  It would have been easier to traverse the link to the end
                     --  in one go, but that would not have shown up any failure at a
                     --  particular node.
                     
                     Has_Failed := False;
                     
                     
                     --  Now unlink the formalised relationships to clean up tidily.
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => fourthG,
                        B_Role     => "May_have",
                        B_Instance => fifthG);
                     
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => thirdG,
                        B_Role     => "May_have",
                        B_Instance => fourthG);
                     
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => secondG,
                        B_Role     => "May_have",
                        B_Instance => thirdG);
                     
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => firstG,
                        B_Role     => "May_have",
                        B_Instance => secondG);
                     
                  else
                     
                     Has_Failed   := True;
                     Failure_Code := -5;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -4;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -3;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -2;
            
         end if;
         
      end if;
      
      
      --  End Test 9
      --  -------------------------------------------------------------------------
      --  Test 10 - Link a series of instances together and prove that navigation 
      --            is possible from the first through to the last
      --  -------------------------------------------------------------------------
      
      if Iteration =  10 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Defined := False;
         
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         Relationships_Rel_R11.Link (
            A_Instance => secondG,
            B_Role     => "Has_a",
            B_Instance => thirdG);
         
         Relationships_Rel_R11.Link (
            A_Instance => thirdG,
            B_Role     => "Has_a",
            B_Instance => fourthG);
         
         Relationships_Rel_R11.Link (
            A_Instance => fourthG,
            B_Role     => "Has_a",
            B_Instance => fifthG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "Has_a",
            To    => second_instanceG);
         
         
         Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
            The_IH        => second_instanceG,
            It_Is_Defined => Defined);
         
         
         if Defined then
            
            Relationships_Rel_R11.Navigate (
               From  => second_instanceG,
               Role  => "Has_a",
               To    => third_instanceG);
            
            
            Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
               The_IH        => third_instanceG,
               It_Is_Defined => Defined);
            
            
            if Defined then
               
               Relationships_Rel_R11.Navigate (
                  From  => third_instanceG,
                  Role  => "Has_a",
                  To    => fourth_instanceG);
               
               
               Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                  The_IH        => fourth_instanceG,
                  It_Is_Defined => Defined);
               
               
               if Defined then
                  
                  Relationships_Rel_R11.Navigate (
                     From  => fourth_instanceG,
                     Role  => "Has_a",
                     To    => fifth_instanceG);
                  
                  
                  Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                     The_IH        => fifth_instanceG,
                     It_Is_Defined => Defined);
                  
                  
                  if Defined then
                     
                     --  Everything has linked through to the final instance.
                     --  It would have been easier to traverse the link to the end
                     --  in one go, but that would not have shown up any failure at a
                     --  particular node.
                     
                     Has_Failed := False;
                     
                     
                     --  Now unlink the formalised relationships to clean up tidily.
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => fifthG,
                        B_Role     => "May_have",
                        B_Instance => fourthG);
                     
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => fourthG,
                        B_Role     => "May_have",
                        B_Instance => thirdG);
                     
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => thirdG,
                        B_Role     => "May_have",
                        B_Instance => secondG);
                     
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => secondG,
                        B_Role     => "May_have",
                        B_Instance => firstG);
                     
                  else
                     
                     Has_Failed   := True;
                     Failure_Code := -5;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -4;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -3;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -2;
            
         end if;
         
      end if;
      
      
      --  End Test 10
      --  -------------------------------------------------------------------------
      --  Test 11 - Link a series of instances together and prove that navigation 
      --            is possible from the first through to the last
      --  -------------------------------------------------------------------------
      
      if Iteration =  11 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Defined := False;
         
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "May_have",
            B_Instance => secondG);
         
         Relationships_Rel_R11.Link (
            A_Instance => secondG,
            B_Role     => "May_have",
            B_Instance => thirdG);
         
         Relationships_Rel_R11.Link (
            A_Instance => thirdG,
            B_Role     => "May_have",
            B_Instance => fourthG);
         
         Relationships_Rel_R11.Link (
            A_Instance => fourthG,
            B_Role     => "May_have",
            B_Instance => fifthG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "May_have",
            To    => second_instanceG);
         
         
         Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
            The_IH        => second_instanceG,
            It_Is_Defined => Defined);
         
         
         if Defined then
            
            Relationships_Rel_R11.Navigate (
               From  => second_instanceG,
               Role  => "May_have",
               To    => third_instanceG);
            
            
            Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
               The_IH        => third_instanceG,
               It_Is_Defined => Defined);
            
            
            if Defined then
               
               Relationships_Rel_R11.Navigate (
                  From  => third_instanceG,
                  Role  => "May_have",
                  To    => fourth_instanceG);
               
               
               Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                  The_IH        => fourth_instanceG,
                  It_Is_Defined => Defined);
               
               
               if Defined then
                  
                  Relationships_Rel_R11.Navigate (
                     From  => fourth_instanceG,
                     Role  => "May_have",
                     To    => fifth_instanceG);
                  
                  
                  Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                     The_IH        => fifth_instanceG,
                     It_Is_Defined => Defined);
                  
                  
                  if Defined then
                     
                     --  Everything has linked through to the final instance.
                     --  It would have been easier to traverse the link to the end
                     --  in one go, but that would not have shown up any failure at a
                     --  particular node.
                     
                     Has_Failed := False;
                     
                     
                     --  Now unlink the formalised relationships to clean up tidily.
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => fifthG,
                        B_Role     => "Has_a",
                        B_Instance => fourthG);
                     
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => fourthG,
                        B_Role     => "Has_a",
                        B_Instance => thirdG);
                     
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => thirdG,
                        B_Role     => "Has_a",
                        B_Instance => secondG);
                     
                     
                     Relationships_Rel_R11.Unlink (
                        A_Instance => secondG,
                        B_Role     => "Has_a",
                        B_Instance => firstG);
                     
                  else
                     
                     Has_Failed   := True;
                     Failure_Code := -5;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -4;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -3;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -2;
         end if;
         
      end if;
      
      
      --  End Test 11
      -- --------------------------------------------------------------------
      --  Test 12 - 
      -- -------------------------------------------------------------------- 
      
      if Iteration =  12 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         Relationships_Rel_R2.Link (
            A_Instance => firstG,
            B_Role     => "A_Large_relationship_role",
            B_Instance => secondG);
         
         
         Relationships_Rel_R2.Navigate (
            From  => firstG,
            Role  => "A_Large_relationship_role",
            To    => InstG);
         
         
         if InstG =  Null then
            Has_Failed   := True;
            Failure_Code := -1;
            
         else
            
            Has_Failed := False;
            
         end if;
         
         
         Relationships_Rel_R2.Unlink (
            A_Instance => firstG,
            B_Role     => "A_Large_relationship_role",
            B_Instance => secondG);
         
      end if;
      
      
      --  End Test 12
      -- --------------------------------------------------------------------
      --  Test 13 -
      -- -------------------------------------------------------------------- 
      
      if Iteration =  13 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         Relationships_Rel_R2.Link (
            A_Instance => firstG,
            B_Role     => "qwertyuiopasdfghjklzxcvbnmqwerty",
            B_Instance => secondG);
         
         
         Relationships_Rel_R2.Navigate (
            From  => firstG,
            Role  => "qwertyuiopasdfghjklzxcvbnmqwerty",
            To    => InstG);
         
         
         if InstG =  Null then
            
            Has_Failed   := True;
            Failure_Code := -1;
            
         else
            
            Has_Failed := False;
            
         end if;
         
         
         Relationships_Rel_R2.Unlink (
            A_Instance => firstG,
            B_Role     => "qwertyuiopasdfghjklzxcvbnmqwerty",
            B_Instance => secondG);
         
      end if;
      
      
      --  End Test 13
      -- --------------------------------------------------------------------
      --  Test 14 -
      -- --------------------------------------------------------------------
      
      if Iteration =  14 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         Relationships_Rel_R2.Link (
            A_Instance => firstG,
            B_Role     => "A_Large_relationship_role",
            B_Instance => secondG);
         
         
         Relationships_Rel_R2.Navigate (
            From  => secondG,
            Role  => "qwertyuiopasdfghjklzxcvbnmqwerty",
            To    => InstG);
         
         
         if InstG =  Null then
            
            Has_Failed   := True;
            Failure_Code := -1;
            
         else
            
            Has_Failed := False;
            
         end if;
         
         
         Relationships_Rel_R2.Unlink (
            A_Instance => firstG,
            B_Role     => "A_Large_relationship_role",
            B_Instance => secondG);
         
      end if;
      
      
      --  End Test 14
      -- --------------------------------------------------------------------
      --  Test 15
      -- -------------------------------------------------------------------- 
      
      if Iteration =  15 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         Relationships_Rel_R2.Link (
            A_Instance => firstG,
            B_Role     => "qwertyuiopasdfghjklzxcvbnmqwerty",
            B_Instance => secondG);
         
         
         Relationships_Rel_R2.Navigate (
            From  => secondG,
            Role  => "A_Large_relationship_role",
            To    => InstG);
         
         
         if InstG =  Null then
            
            Has_Failed   := True;
            Failure_Code := -1;
            
         else
            
            Has_Failed := False;
            
         end if;
         
         
         Relationships_Rel_R2.Unlink (
            A_Instance => firstG,
            B_Role     => "qwertyuiopasdfghjklzxcvbnmqwerty",
            B_Instance => secondG);
         
      end if;
      
      
      --  End Test 15
      -- --------------------------------------------------------------------
      --  Test 16 - 
      -- -------------------------------------------------------------------- 
      
      if Iteration =  16 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Defined := False;
         
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         Relationships_Rel_R11.Link (
            A_Instance => secondG,
            B_Role     => "Has_a",
            B_Instance => thirdG);
         
         Relationships_Rel_R11.Link (
            A_Instance => thirdG,
            B_Role     => "Has_a",
            B_Instance => fourthG);
         
         Relationships_Rel_R11.Link (
            A_Instance => fourthG,
            B_Role     => "Has_a",
            B_Instance => fifthG);
         
         
         --  We know this works, see test 8
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "Has_a",
            To    => second_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => second_instanceG,
            Role  => "Has_a",
            To    => third_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => third_instanceG,
            Role  => "Has_a",
            To    => fourth_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => fourth_instanceG,
            Role  => "Has_a",
            To    => fifth_instanceG);
         
         
         --  Belt and braces, prove it
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R11.Navigate (
               From  => firstG,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => final_instance);
         end;
         
         Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
            The_IH        => final_instance,
            It_Is_Defined => Defined);
         
         
         if Defined then
            
            --  Now unlink the formalised relationship thirdG to fourthG, using same order and role
            --  to unlink that they were linked in
            
            Relationships_Rel_R11.Unlink (
               A_Instance => thirdG,
               B_Role     => "Has_a",
               B_Instance => fourthG);
            
            
            --  Check that navigation from first to second, second to third and fourth to fifth
            --  is still possible,
            --  First to third
            
            declare
               Temp_Instance : Root_Object.Object_Access;
            begin
               
               Relationships_Rel_R11.Navigate (
                  From  => firstG,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R11.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => final_instance);
            end;
            
            Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
               The_IH        => final_instance,
               It_Is_Defined => Defined);
            
            
            if Root_Object.Relationships.objG.Relationships_objG_type(final_instance.all).idG =  
            Root_Object.Relationships.objG.Relationships_objG_type(thirdG.all).idG then
               
               --  Third to first
               
               declare
                  Temp_Instance : Root_Object.Object_Access;
               begin
                  
                  Relationships_Rel_R11.Navigate (
                     From  => thirdG,
                     Role  => "May_have",
                     To    => Temp_Instance);
                  
                  Relationships_Rel_R11.Navigate (
                     From  => Temp_Instance,
                     Role  => "May_have",
                     To    => first_instance);
               end;
               
               if Root_Object.Relationships.objG.Relationships_objG_type(first_instance.all).idG =  
               Root_Object.Relationships.objG.Relationships_objG_type(firstG.all).idG then
                  
                  --  Fourth to fifth
                  
                  Relationships_Rel_R11.Navigate (
                     From  => fourthG,
                     Role  => "Has_a",
                     To    => final_instance);
                  
                  
                  if Root_Object.Relationships.objG.Relationships_objG_type(final_instance.all).idG =  
                  Root_Object.Relationships.objG.Relationships_objG_type(fifthG.all).idG then
                     
                     --  Fifth to fourth
                     
                     Relationships_Rel_R11.Navigate (
                        From  => fifthG,
                        Role  => "May_have",
                        To    => first_instance);
                     
                     
                     if Root_Object.Relationships.objG.Relationships_objG_type(first_instance.all).idG =  
                     Root_Object.Relationships.objG.Relationships_objG_type(fourthG.all).idG then
                        
                        --  and navigation from third to fourth, or fourth to third is not possible.
                        
                        Relationships_Rel_R11.Navigate (
                           From  => thirdG,
                           Role  => "Has_a",
                           To    => fourth_instance);
                        
                        
                        Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                           The_IH        => fourth_instance,
                           It_Is_Defined => Defined);
                        
                        
                        if Defined =  False then
                           
                           Relationships_Rel_R11.Navigate (
                              From  => fourthG,
                              Role  => "May_have",
                              To    => third_instance);
                           
                           
                           Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                              The_IH        => third_instance,
                              It_Is_Defined => Defined);
                           
                           
                           if Defined =  False then
                              
                              --  Navigating from third to fourth, and fourth to third returns an
                              --  undefined instance
                              --  And for a finale, relink third to fourth and try the full traverse, first to fifth.
                              Relationships_Rel_R11.Link (
                                 A_Instance => thirdG,
                                 B_Role     => "Has_a",
                                 B_Instance => fourthG);
                              
                              
                              declare
                                 Temp_Instance : Root_Object.Object_Access;
                              begin
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => firstG,
                                    Role  => "Has_a",
                                    To    => Temp_Instance);
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => Temp_Instance,
                                    Role  => "Has_a",
                                    To    => Temp_Instance);
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => Temp_Instance,
                                    Role  => "Has_a",
                                    To    => Temp_Instance);
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => Temp_Instance,
                                    Role  => "Has_a",
                                    To    => final_instance);
                              end;
                              
                              Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                                 The_IH        => final_instance,
                                 It_Is_Defined => Defined);
                              
                              
                              if Defined then
                                 
                                 Has_Failed   := False;
                                 Failure_Code := 0;
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => firstG,
                                    B_Role     => "Has_a",
                                    B_Instance => secondG);
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => secondG,
                                    B_Role     => "Has_a",
                                    B_Instance => thirdG);
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => thirdG,
                                    B_Role     => "Has_a",
                                    B_Instance => fourthG);
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => fourthG,
                                    B_Role     => "Has_a",
                                    B_Instance => fifthG);
                                 
                              else
                                 Has_Failed   := True;
                                 Failure_Code := -12;
                              end if;
                              
                           else
                              Has_Failed := True;
                              Failure_Code := -11;
                           end if;
                           
                        else
                           Has_Failed := True;
                           Failure_Code := -10;
                        end if;
                        
                     else
                        Has_Failed := True;
                        Failure_Code := -9;
                     end if;
                     
                  else
                     Has_Failed := True;
                     Failure_Code := -8;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -7;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -6;
            end if;
            
         else
            
            --  Link didn't work, 
            Failure_Code := -1;
            Has_Failed   := True;
            
         end if;
         
      end if;
      
      
      --  End Test 16
      -- --------------------------------------------------------------------
      --  Test 17
      -- --------------------------------------------------------------------
      
      if Iteration =  17 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Defined := False;
         
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         Relationships_Rel_R11.Link (
            A_Instance => secondG,
            B_Role     => "Has_a",
            B_Instance => thirdG);
         
         Relationships_Rel_R11.Link (
            A_Instance => thirdG,
            B_Role     => "Has_a",
            B_Instance => fourthG);
         
         Relationships_Rel_R11.Link (
            A_Instance => fourthG,
            B_Role     => "Has_a",
            B_Instance => fifthG);
         
         
         --  We know this works, see test 8
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "Has_a",
            To    => second_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => second_instanceG,
            Role  => "Has_a",
            To    => third_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => third_instanceG,
            Role  => "Has_a",
            To    => fourth_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => fourth_instanceG,
            Role  => "Has_a",
            To    => fifth_instanceG);
         
         
         --  Belt and braces, prove it
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R11.Navigate (
               From  => firstG,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => final_instance);
         end;
         
         Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
            The_IH        => final_instance,
            It_Is_Defined => Defined);
         
         
         if Defined then
            
            --  Now unlink the formalised relationship thirdG to fourthG, using opposite order and role
            --  to unlink that they were linked in
            
            Relationships_Rel_R11.Unlink (
               A_Instance => fourthG,
               B_Role     => "May_have",
               B_Instance => thirdG);
            
            
            --  Check that navigation from first to second, second to third and fourth to fifth
            --  is still possible,
            --  First to third
            
            declare
               Temp_Instance : Root_Object.Object_Access;
            begin
               
               Relationships_Rel_R11.Navigate (
                  From  => firstG,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R11.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => final_instance);
            end;
            
            Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
               The_IH        => final_instance,
               It_Is_Defined => Defined);
            
            
            if Root_Object.Relationships.objG.Relationships_objG_type(final_instance.all).idG =  
            Root_Object.Relationships.objG.Relationships_objG_type(thirdG.all).idG then
               
               --  Third to first
               
               declare
                  Temp_Instance : Root_Object.Object_Access;
               begin
                  
                  Relationships_Rel_R11.Navigate (
                     From  => thirdG,
                     Role  => "May_have",
                     To    => Temp_Instance);
                  
                  Relationships_Rel_R11.Navigate (
                     From  => Temp_Instance,
                     Role  => "May_have",
                     To    => first_instance);
               end;
               
               if Root_Object.Relationships.objG.Relationships_objG_type(first_instance.all).idG =  
               Root_Object.Relationships.objG.Relationships_objG_type(firstG.all).idG then
                  
                  --  Fourth to fifth
                  
                  Relationships_Rel_R11.Navigate (
                     From  => fourthG,
                     Role  => "Has_a",
                     To    => final_instance);
                  
                  
                  if Root_Object.Relationships.objG.Relationships_objG_type(final_instance.all).idG =  
                  Root_Object.Relationships.objG.Relationships_objG_type(fifthG.all).idG then
                     
                     --  Fifth to fourth
                     
                     Relationships_Rel_R11.Navigate (
                        From  => fifthG,
                        Role  => "May_have",
                        To    => first_instance);
                     
                     
                     if Root_Object.Relationships.objG.Relationships_objG_type(first_instance.all).idG =  
                     Root_Object.Relationships.objG.Relationships_objG_type(fourthG.all).idG then
                        
                        --  and navigation from third to fourth, or fourth to third is not possible.
                        
                        Relationships_Rel_R11.Navigate (
                           From  => thirdG,
                           Role  => "Has_a",
                           To    => fourth_instance);
                        
                        
                        Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                           The_IH        => fourth_instance,
                           It_Is_Defined => Defined);
                        
                        
                        if Defined =  False then
                           
                           Relationships_Rel_R11.Navigate (
                              From  => fourthG,
                              Role  => "May_have",
                              To    => third_instance);
                           
                           
                           Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                              The_IH        => third_instance,
                              It_Is_Defined => Defined);
                           
                           
                           if Defined =  False then
                              
                              --  Navigating from third to fourth, and fourth to third returns an
                              --  undefined instance
                              --  And for a finale, relink third to fourth and try the full traverse, first to fifth.
                              Relationships_Rel_R11.Link (
                                 A_Instance => thirdG,
                                 B_Role     => "Has_a",
                                 B_Instance => fourthG);
                              
                              
                              declare
                                 Temp_Instance : Root_Object.Object_Access;
                              begin
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => firstG,
                                    Role  => "Has_a",
                                    To    => Temp_Instance);
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => Temp_Instance,
                                    Role  => "Has_a",
                                    To    => Temp_Instance);
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => Temp_Instance,
                                    Role  => "Has_a",
                                    To    => Temp_Instance);
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => Temp_Instance,
                                    Role  => "Has_a",
                                    To    => final_instance);
                              end;
                              
                              Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                                 The_IH        => final_instance,
                                 It_Is_Defined => Defined);
                              
                              
                              if Defined then
                                 
                                 Has_Failed   := False;
                                 Failure_Code := 0;
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => firstG,
                                    B_Role     => "Has_a",
                                    B_Instance => secondG);
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => secondG,
                                    B_Role     => "Has_a",
                                    B_Instance => thirdG);
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => thirdG,
                                    B_Role     => "Has_a",
                                    B_Instance => fourthG);
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => fourthG,
                                    B_Role     => "Has_a",
                                    B_Instance => fifthG);
                                 
                              else
                                 Has_Failed   := True;
                                 Failure_Code := -12;
                              end if;
                              
                           else
                              Has_Failed := True;
                              Failure_Code := -11;
                           end if;
                           
                        else
                           Has_Failed := True;
                           Failure_Code := -10;
                        end if;
                        
                     else
                        Has_Failed := True;
                        Failure_Code := -9;
                     end if;
                     
                  else
                     Has_Failed := True;
                     Failure_Code := -8;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -7;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -6;
            end if;
            
         else
            
            --  Link didn't work, 
            Failure_Code := -1;
            Has_Failed   := True;
            
         end if;
         
      end if;
      
      
      --  End Test 17
      -- --------------------------------------------------------------------
      --  Test 18
      -- -------------------------------------------------------------------- 
      
      if Iteration =  18 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Defined := False;
         
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         Relationships_Rel_R11.Link (
            A_Instance => secondG,
            B_Role     => "Has_a",
            B_Instance => thirdG);
         
         Relationships_Rel_R11.Link (
            A_Instance => thirdG,
            B_Role     => "Has_a",
            B_Instance => fourthG);
         
         Relationships_Rel_R11.Link (
            A_Instance => fourthG,
            B_Role     => "Has_a",
            B_Instance => fifthG);
         
         
         --  We know this works, see test 8
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "Has_a",
            To    => second_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => second_instanceG,
            Role  => "Has_a",
            To    => third_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => third_instanceG,
            Role  => "Has_a",
            To    => fourth_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => fourth_instanceG,
            Role  => "Has_a",
            To    => fifth_instanceG);
         
         
         --  Belt and braces, prove it
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R11.Navigate (
               From  => firstG,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => final_instance);
         end;
         
         Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
            The_IH        => final_instance,
            It_Is_Defined => Defined);
         
         
         if Defined then
            
            --  Now unlink the formalised relationship thirdG to fourthG, using same order and role
            --  to unlink that they were linked in
            
            Relationships_Rel_R11.Unlink (
               A_Instance => thirdG,
               B_Role     => "Has_a",
               B_Instance => fourthG);
            
            
            --  Check that navigation from first to second, second to third and fourth to fifth
            --  is still possible,
            --  First to third
            
            declare
               Temp_Instance : Root_Object.Object_Access;
            begin
               
               Relationships_Rel_R11.Navigate (
                  From  => firstG,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R11.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => final_instance);
            end;
            
            Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
               The_IH        => final_instance,
               It_Is_Defined => Defined);
            
            
            if Root_Object.Relationships.objG.Relationships_objG_type(final_instance.all).idG =  
            Root_Object.Relationships.objG.Relationships_objG_type(thirdG.all).idG then
               
               --  Third to first
               
               declare
                  Temp_Instance : Root_Object.Object_Access;
               begin
                  
                  Relationships_Rel_R11.Navigate (
                     From  => thirdG,
                     Role  => "May_have",
                     To    => Temp_Instance);
                  
                  Relationships_Rel_R11.Navigate (
                     From  => Temp_Instance,
                     Role  => "May_have",
                     To    => first_instance);
               end;
               
               if Root_Object.Relationships.objG.Relationships_objG_type(first_instance.all).idG =  
               Root_Object.Relationships.objG.Relationships_objG_type(firstG.all).idG then
                  
                  --  Fourth to fifth
                  
                  Relationships_Rel_R11.Navigate (
                     From  => fourthG,
                     Role  => "Has_a",
                     To    => final_instance);
                  
                  
                  if Root_Object.Relationships.objG.Relationships_objG_type(final_instance.all).idG =  
                  Root_Object.Relationships.objG.Relationships_objG_type(fifthG.all).idG then
                     
                     --  Fifth to fourth
                     
                     Relationships_Rel_R11.Navigate (
                        From  => fifthG,
                        Role  => "May_have",
                        To    => first_instance);
                     
                     
                     if Root_Object.Relationships.objG.Relationships_objG_type(first_instance.all).idG =  
                     Root_Object.Relationships.objG.Relationships_objG_type(fourthG.all).idG then
                        
                        --  and navigation from third to fourth, or fourth to third is not possible.
                        
                        Relationships_Rel_R11.Navigate (
                           From  => thirdG,
                           Role  => "Has_a",
                           To    => fourth_instance);
                        
                        
                        Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                           The_IH        => fourth_instance,
                           It_Is_Defined => Defined);
                        
                        
                        if Defined =  False then
                           
                           Relationships_Rel_R11.Navigate (
                              From  => fourthG,
                              Role  => "May_have",
                              To    => third_instance);
                           
                           
                           Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                              The_IH        => third_instance,
                              It_Is_Defined => Defined);
                           
                           
                           if Defined =  False then
                              
                              --  Navigating from third to fourth and fourth to third returns an
                              --  undefined instance
                              --  And for a finale, relink fourth to third and try the full traverse, first to fifth.
                              Relationships_Rel_R11.Link (
                                 A_Instance => fourthG,
                                 B_Role     => "May_have",
                                 B_Instance => thirdG);
                              
                              
                              declare
                                 Temp_Instance : Root_Object.Object_Access;
                              begin
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => firstG,
                                    Role  => "Has_a",
                                    To    => Temp_Instance);
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => Temp_Instance,
                                    Role  => "Has_a",
                                    To    => Temp_Instance);
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => Temp_Instance,
                                    Role  => "Has_a",
                                    To    => Temp_Instance);
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => Temp_Instance,
                                    Role  => "Has_a",
                                    To    => final_instance);
                              end;
                              
                              Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                                 The_IH        => final_instance,
                                 It_Is_Defined => Defined);
                              
                              
                              if Defined then
                                 
                                 Has_Failed   := False;
                                 Failure_Code := 0;
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => firstG,
                                    B_Role     => "Has_a",
                                    B_Instance => secondG);
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => secondG,
                                    B_Role     => "Has_a",
                                    B_Instance => thirdG);
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => thirdG,
                                    B_Role     => "Has_a",
                                    B_Instance => fourthG);
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => fourthG,
                                    B_Role     => "Has_a",
                                    B_Instance => fifthG);
                                 
                              else
                                 Has_Failed   := True;
                                 Failure_Code := -12;
                              end if;
                              
                           else
                              Has_Failed := True;
                              Failure_Code := -11;
                           end if;
                           
                        else
                           Has_Failed := True;
                           Failure_Code := -10;
                        end if;
                        
                     else
                        Has_Failed := True;
                        Failure_Code := -9;
                     end if;
                     
                  else
                     Has_Failed := True;
                     Failure_Code := -8;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -7;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -6;
            end if;
            
         else
            
            --  Link didn't work, 
            Failure_Code := -1;
            Has_Failed   := True;
            
         end if;
         
      end if;
      
      
      --  End Test 18
      -- --------------------------------------------------------------------
      --  Test 19
      -- --------------------------------------------------------------------
      
      if Iteration =  19 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Defined := False;
         
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         Relationships_Rel_R11.Link (
            A_Instance => secondG,
            B_Role     => "Has_a",
            B_Instance => thirdG);
         
         Relationships_Rel_R11.Link (
            A_Instance => thirdG,
            B_Role     => "Has_a",
            B_Instance => fourthG);
         
         Relationships_Rel_R11.Link (
            A_Instance => fourthG,
            B_Role     => "Has_a",
            B_Instance => fifthG);
         
         
         --  We know this works, see test 8
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "Has_a",
            To    => second_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => second_instanceG,
            Role  => "Has_a",
            To    => third_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => third_instanceG,
            Role  => "Has_a",
            To    => fourth_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => fourth_instanceG,
            Role  => "Has_a",
            To    => fifth_instanceG);
         
         
         --  Belt and braces, prove it
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R11.Navigate (
               From  => firstG,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => final_instance);
         end;
         
         Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
            The_IH        => final_instance,
            It_Is_Defined => Defined);
         
         
         if Defined then
            
            --  Now unlink the formalised relationship thirdG to fourthG, using same order and role
            --  to unlink that they were linked in
            
            Relationships_Rel_R11.Unlink (
               A_Instance => fourthG,
               B_Role     => "May_have",
               B_Instance => thirdG);
            
            
            --  Check that navigation from first to second, second to third and fourth to fifth
            --  is still possible,
            --  First to third
            
            declare
               Temp_Instance : Root_Object.Object_Access;
            begin
               
               Relationships_Rel_R11.Navigate (
                  From  => firstG,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R11.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => final_instance);
            end;
            
            Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
               The_IH        => final_instance,
               It_Is_Defined => Defined);
            
            
            if Root_Object.Relationships.objG.Relationships_objG_type(final_instance.all).idG =  
            Root_Object.Relationships.objG.Relationships_objG_type(thirdG.all).idG then
               
               --  Third to first
               
               declare
                  Temp_Instance : Root_Object.Object_Access;
               begin
                  
                  Relationships_Rel_R11.Navigate (
                     From  => thirdG,
                     Role  => "May_have",
                     To    => Temp_Instance);
                  
                  Relationships_Rel_R11.Navigate (
                     From  => Temp_Instance,
                     Role  => "May_have",
                     To    => first_instance);
               end;
               
               if Root_Object.Relationships.objG.Relationships_objG_type(first_instance.all).idG =  
               Root_Object.Relationships.objG.Relationships_objG_type(firstG.all).idG then
                  
                  --  Fourth to fifth
                  
                  Relationships_Rel_R11.Navigate (
                     From  => fourthG,
                     Role  => "Has_a",
                     To    => final_instance);
                  
                  
                  if Root_Object.Relationships.objG.Relationships_objG_type(final_instance.all).idG =  
                  Root_Object.Relationships.objG.Relationships_objG_type(fifthG.all).idG then
                     
                     --  Fifth to fourth
                     
                     Relationships_Rel_R11.Navigate (
                        From  => fifthG,
                        Role  => "May_have",
                        To    => first_instance);
                     
                     
                     if Root_Object.Relationships.objG.Relationships_objG_type(first_instance.all).idG =  
                     Root_Object.Relationships.objG.Relationships_objG_type(fourthG.all).idG then
                        
                        --  and navigation from third to fourth, or fourth to third is not possible.
                        
                        Relationships_Rel_R11.Navigate (
                           From  => thirdG,
                           Role  => "Has_a",
                           To    => fourth_instance);
                        
                        
                        Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                           The_IH        => fourth_instance,
                           It_Is_Defined => Defined);
                        
                        
                        if Defined =  False then
                           
                           Relationships_Rel_R11.Navigate (
                              From  => fourthG,
                              Role  => "May_have",
                              To    => third_instance);
                           
                           
                           Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                              The_IH        => third_instance,
                              It_Is_Defined => Defined);
                           
                           
                           if Defined =  False then
                              
                              --  Navigating from third to fourth, and fourth to third returns an
                              --  undefined instance
                              --  And for a finale, relink third to fourth and try the full traverse, first to fifth.
                              Relationships_Rel_R11.Link (
                                 A_Instance => fourthG,
                                 B_Role     => "May_have",
                                 B_Instance => thirdG);
                              
                              
                              declare
                                 Temp_Instance : Root_Object.Object_Access;
                              begin
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => firstG,
                                    Role  => "Has_a",
                                    To    => Temp_Instance);
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => Temp_Instance,
                                    Role  => "Has_a",
                                    To    => Temp_Instance);
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => Temp_Instance,
                                    Role  => "Has_a",
                                    To    => Temp_Instance);
                                 
                                 Relationships_Rel_R11.Navigate (
                                    From  => Temp_Instance,
                                    Role  => "Has_a",
                                    To    => final_instance);
                              end;
                              
                              Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
                                 The_IH        => final_instance,
                                 It_Is_Defined => Defined);
                              
                              
                              if Defined then
                                 
                                 Has_Failed := False;
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => firstG,
                                    B_Role     => "Has_a",
                                    B_Instance => secondG);
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => secondG,
                                    B_Role     => "Has_a",
                                    B_Instance => thirdG);
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => thirdG,
                                    B_Role     => "Has_a",
                                    B_Instance => fourthG);
                                 
                                 
                                 Relationships_Rel_R11.Unlink (
                                    A_Instance => fourthG,
                                    B_Role     => "Has_a",
                                    B_Instance => fifthG);
                                 
                                 
                                 Failure_Code := 0;
                              else
                                 Has_Failed   := True;
                                 Failure_Code := -12;
                              end if;
                              
                           else
                              Has_Failed := True;
                              Failure_Code := -11;
                           end if;
                           
                        else
                           Has_Failed := True;
                           Failure_Code := -10;
                        end if;
                        
                     else
                        Has_Failed := True;
                        Failure_Code := -9;
                     end if;
                     
                  else
                     Has_Failed := True;
                     Failure_Code := -8;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -7;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -6;
            end if;
            
         else
            
            --  Link didn't work, 
            Failure_Code := -1;
            Has_Failed   := True;
            
         end if;
         
      end if;
      
      
      --  End Test 19
      -- --------------------------------------------------------------------
      --  Test 20
      -- --------------------------------------------------------------------
      
      if Iteration =  20 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Defined := False;
         
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         Relationships_Rel_R11.Link (
            A_Instance => secondG,
            B_Role     => "Has_a",
            B_Instance => thirdG);
         
         Relationships_Rel_R11.Link (
            A_Instance => thirdG,
            B_Role     => "Has_a",
            B_Instance => fourthG);
         
         Relationships_Rel_R11.Link (
            A_Instance => fourthG,
            B_Role     => "Has_a",
            B_Instance => fifthG);
         
         
         --  We know this works, see test 8
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "Has_a",
            To    => second_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => second_instanceG,
            Role  => "Has_a",
            To    => third_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => third_instanceG,
            Role  => "Has_a",
            To    => fourth_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => fourth_instanceG,
            Role  => "Has_a",
            To    => fifth_instanceG);
         
         
         --  Belt and braces, prove it
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R11.Navigate (
               From  => firstG,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => final_instance);
         end;
         
         Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
            The_IH        => final_instance,
            It_Is_Defined => Defined);
         
         
         if Defined then
            
            --   Break a link, add a new entry and remake the chain.
            
            Relationships_Rel_R11.Unlink (
               A_Instance => third_instanceG,
               B_Role     => "Has_a",
               B_Instance => fourth_instanceG);
            
            
            local_objectG := Root_Object.Relationships.objG.Create;
            Root_Object.Relationships.objG.Relationships_objG_Type(local_objectG.all).idG       := Iteration;
            Root_Object.Relationships.objG.Relationships_objG_Type(local_objectG.all).ResultA   := 0;
            
            Relationships_Rel_R11.Link (
               A_Instance => third_instanceG,
               B_Role     => "Has_a",
               B_Instance => local_objectG);
            
            Relationships_Rel_R11.Link (
               A_Instance => local_objectG,
               B_Role     => "Has_a",
               B_Instance => fourth_instanceG);
            
            
            --  See if it worked
            
            declare
               Temp_Instance : Root_Object.Object_Access;
            begin
               
               Relationships_Rel_R11.Navigate (
                  From  => firstG,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R11.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R11.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R11.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R11.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => final_instance);
            end;
            
            Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
               The_IH        => final_instance,
               It_Is_Defined => Defined);
            
            
            if Defined then
               
               Relationships_Rel_R11.Unlink (
                  A_Instance => firstG,
                  B_Role     => "Has_a",
                  B_Instance => secondG);
               
               
               Relationships_Rel_R11.Unlink (
                  A_Instance => secondG,
                  B_Role     => "Has_a",
                  B_Instance => thirdG);
               
               
               Relationships_Rel_R11.Unlink (
                  A_Instance => thirdG,
                  B_Role     => "Has_a",
                  B_Instance => local_objectG);
               
               
               Relationships_Rel_R11.Unlink (
                  A_Instance => local_objectG,
                  B_Role     => "Has_a",
                  B_Instance => fourthG);
               
               
               Relationships_Rel_R11.Unlink (
                  A_Instance => fourthG,
                  B_Role     => "Has_a",
                  B_Instance => fifthG);
               
               
               Failure_Code := 0;
               Has_Failed   := False;
            else
               
               --  New link didn't work, 
               Failure_Code := -2;
               Has_Failed   := True;
            end if;
            
         else
            
            --  Link didn't work, 
            Failure_Code := -1;
            Has_Failed   := True;
            
         end if;
         
      end if;
      
      
      --  End Test 20
      -- --------------------------------------------------------------------
      --  Test 21
      -- --------------------------------------------------------------------
      
      if Iteration =  21 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Defined := False;
         
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         Relationships_Rel_R11.Link (
            A_Instance => secondG,
            B_Role     => "Has_a",
            B_Instance => thirdG);
         
         Relationships_Rel_R11.Link (
            A_Instance => thirdG,
            B_Role     => "Has_a",
            B_Instance => fourthG);
         
         Relationships_Rel_R11.Link (
            A_Instance => fourthG,
            B_Role     => "Has_a",
            B_Instance => fifthG);
         
         
         --  We know this works, see test 8
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "Has_a",
            To    => second_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => second_instanceG,
            Role  => "Has_a",
            To    => third_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => third_instanceG,
            Role  => "Has_a",
            To    => fourth_instanceG);
         
         
         Relationships_Rel_R11.Navigate (
            From  => fourth_instanceG,
            Role  => "Has_a",
            To    => fifth_instanceG);
         
         
         --  Belt and braces, prove it
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R11.Navigate (
               From  => firstG,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => Temp_Instance);
            
            Relationships_Rel_R11.Navigate (
               From  => Temp_Instance,
               Role  => "Has_a",
               To    => final_instance);
         end;
         
         Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
            The_IH        => final_instance,
            It_Is_Defined => Defined);
         
         
         if Defined then
            
            --   Break a link, add a new entry and remake the chain.
            
            Relationships_Rel_R11.Unlink (
               A_Instance => second_instanceG,
               B_Role     => "Has_a",
               B_Instance => third_instanceG);
            
            Relationships_Rel_R11.Link (
               A_Instance => second_instanceG,
               B_Role     => "Has_a",
               B_Instance => sixthG);
            
            Relationships_Rel_R11.Link (
               A_Instance => sixthG,
               B_Role     => "Has_a",
               B_Instance => third_instanceG);
            
            
            --  See if it worked
            
            declare
               Temp_Instance : Root_Object.Object_Access;
            begin
               
               Relationships_Rel_R11.Navigate (
                  From  => firstG,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R11.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R11.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R11.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => Temp_Instance);
               
               Relationships_Rel_R11.Navigate (
                  From  => Temp_Instance,
                  Role  => "Has_a",
                  To    => final_instance);
            end;
            
            Relationships_objG1_Is_It_Defined_Service.Relationships_objG1_Is_It_Defined (
               The_IH        => final_instance,
               It_Is_Defined => Defined);
            
            
            if Defined then
               
               Relationships_Rel_R11.Unlink (
                  A_Instance => firstG,
                  B_Role     => "Has_a",
                  B_Instance => secondG);
               
               
               Relationships_Rel_R11.Unlink (
                  A_Instance => secondG,
                  B_Role     => "Has_a",
                  B_Instance => sixthG);
               
               
               Relationships_Rel_R11.Unlink (
                  A_Instance => sixthG,
                  B_Role     => "Has_a",
                  B_Instance => thirdG);
               
               
               Relationships_Rel_R11.Unlink (
                  A_Instance => thirdG,
                  B_Role     => "Has_a",
                  B_Instance => fourthG);
               
               
               Relationships_Rel_R11.Unlink (
                  A_Instance => fourthG,
                  B_Role     => "Has_a",
                  B_Instance => fifthG);
               
               
               Failure_Code := 0;
               Has_Failed   := False;
            else
               
               --  New link didn't work, 
               Failure_Code := -2;
               Has_Failed   := True;
            end if;
            
         else
            
            --  Link didn't work, 
            Failure_Code := -1;
            Has_Failed   := True;
         end if;
         
      end if;
      
      
      --  End Test 21
      -- --------------------------------------------------------------------
      --  Test 22
      -- -------------------------------------------------------------------- 
      
      if Iteration =  22 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0705               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "1 to 1 reflexive                ",
            Purpose         => "Qualifed single instance source ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0605               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0607               ");
         
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
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         Relationships_Rel_R11.Link (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => secondG);
         
         
         --  Attempt navigation from first instance to the unlinked side 
         
         Relationships_Rel_R11.Navigate (
            From  => firstG,
            Role  => "May_have",
            To    => first_undefined_instance);
         
         
         --  Attempt navigation from last instance to unlinked side
         
         Relationships_Rel_R11.Navigate (
            From  => secondG,
            Role  => "Has_a",
            To    => last_undefined_instance);
         
         
         if first_undefined_instance /= Null then
            Failure_Code := -1;
            Has_Failed   := True;
         else
            
            if last_undefined_instance /= Null then
               Failure_Code := -2;
               Has_Failed   := True;
            else
               Failure_Code := 0;
               Has_Failed   := False;
               
               
               Relationships_Rel_R11.Unlink (
                  A_Instance => firstG,
                  B_Role     => "Has_a",
                  B_Instance => secondG);
               
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 22
      -- --------------------------------------------------------------------
      --  Delete some relationships This section deletes relationships 
      --  depending upon which test has been performed.
      -- --------------------------------------------------------------------
      
      if Iteration >= 2 and then
         Iteration <= 6 then
         
         --  Delete the formalised relationships
         
         Relationships_Rel_R11.Unlink (
            A_Instance => firstG,
            B_Role     => "Has_a",
            B_Instance => fifthG);
         
         
         Relationships_Rel_R11.Unlink (
            A_Instance => secondG,
            B_Role     => "May_have",
            B_Instance => thirdG);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      --  Tests complete
      -- --------------------------------------------------------------------
      
      if Unsupported =  False then
         
         if Has_Failed =  False then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "1 to 1 reflexive                ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "1 to 1 reflexive                ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Failure_Code);
            
         end if;
         
      else
         Relationships_RPT4_Test_Unsupported_Bridge.Relationships_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
   end Relationships_objG2_One_To_One_Reflexive;
   
end Relationships_objG2_One_To_One_Reflexive_Service;

--
-- End of file Relationships_objG2_One_To_One_Reflexive_Service.adb
--
