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
--* File Name:               Creation_Deletion_dr1_Test_the_Doctors_Mettle_Service.adb
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
--* Domain Name              : Creation_Deletion
--* Domain Key Letter        : Creation_Deletion
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Creation_Deletion.drenemy;
with Root_Object.Creation_Deletion.enemy;
with Root_Object.Creation_Deletion.dr;

-- List of relationships used
with Creation_Deletion_rel_R2;

-- List of bridges used
with Creation_Deletion_RPT4_Test_Unsupported_Bridge;
with Creation_Deletion_RPT5_Test_Text_Bridge;
with Creation_Deletion_RPT3_Test_Failed_Bridge;
with Creation_Deletion_RPT2_Test_Passed_Bridge;
with Creation_Deletion_RPT1_Start_Test_Bridge;

-- List of domain types used
with Creation_Deletion_Domain_Types;
use type Creation_Deletion_Domain_Types.battlefield_arena_type;
use type Creation_Deletion_Domain_Types.actors_who_have_played_the_doctor;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Creation_Deletion_dr1_Test_the_Doctors_Mettle_Service is
   
   procedure Creation_Deletion_dr1_Test_the_Doctors_Mettle (
      Test_Number          : in     Application_Types.Base_Integer_Type;
      Returned_Test_Number :    out Application_Types.Base_Integer_Type) is
      
      toms_enemies              : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      jons_enemies              : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      enemies_vs_jon_the_doctor : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      bad_guys                  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      the_doctors_enemies       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      patricks_enemies          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      toms_enemies_before       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      toms_enemies_after        : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      remaining_enemies         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      remaining_doctors_enemies : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      remaining_doctors         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      any_more_enemies          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      the_doctor_ih                            : Root_Object.Object_Access;
      cybermen_ih                              : Root_Object.Object_Access;
      daleks_ih                                : Root_Object.Object_Access;
      the_master_ih                            : Root_Object.Object_Access;
      cybermen_vs_the_doctor_ih                : Root_Object.Object_Access;
      daleks_vs_the_doctor_ih                  : Root_Object.Object_Access;
      the_master_vs_the_doctor_ih              : Root_Object.Object_Access;
      tom_as_the_doctor                        : Root_Object.Object_Access;
      jon_as_the_doctor                        : Root_Object.Object_Access;
      sea_devils_ih                            : Root_Object.Object_Access;
      davros_ih                                : Root_Object.Object_Access;
      silurians_ih                             : Root_Object.Object_Access;
      sea_devils_vs_the_doctor_ih              : Root_Object.Object_Access;
      davros_vs_the_doctor_ih                  : Root_Object.Object_Access;
      silurians_vs_the_doctor_ih               : Root_Object.Object_Access;
      enemy_of_jon                             : Root_Object.Object_Access;
      which_doctor                             : Root_Object.Object_Access;
      which_enemy                              : Root_Object.Object_Access;
      patrick_the_doctor                       : Root_Object.Object_Access;
      skeksis                                  : Root_Object.Object_Access;
      the_brigadier                            : Root_Object.Object_Access;
      skeksis_vs_the_doctor                    : Root_Object.Object_Access;
      the_brigadier_vs_the_doctor              : Root_Object.Object_Access;
      skeksis_are_the_enemies_of_the_doctor    : Root_Object.Object_Access;
      the_brigadier_is_the_enemy_of_the_doctor : Root_Object.Object_Access;
      the_doctors_enemy                        : Root_Object.Object_Access;
      this_doctor                              : Root_Object.Object_Access;
      daleks                                   : Root_Object.Object_Access;
      remaining_doctors_enemy                  : Root_Object.Object_Access;
      an_enemy                                 : Root_Object.Object_Access;
      the_doctor                               : Root_Object.Object_Access;
      empty_enemy                              : Root_Object.Object_Access;
      empty_doctor                             : Root_Object.Object_Access;
      empty_assoc_enemy                        : Root_Object.Object_Access;
      
      Test                          : Application_Types.Base_Integer_Type := 1;
      number_of_toms_enemies        : Application_Types.Base_Integer_Type := 1;
      number_of_jons_enemies        : Application_Types.Base_Integer_Type := 1;
      Failure_Code                  : Application_Types.Base_Integer_Type := 1;
      number_of_enemies_before      : Application_Types.Base_Integer_Type := 1;
      number_of_enemies_after       : Application_Types.Base_Integer_Type := 1;
      number_of_toms_enemies_before : Application_Types.Base_Integer_Type := 1;
      number_of_toms_enemies_after  : Application_Types.Base_Integer_Type := 1;
      number_of_more_enemies        : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed          : Boolean := Application_Types.Boolean_first;
      The_Test_Has_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of dr1_Test_the_Doctors_Mettle
      
      -- -------------------------------------------------------------------------
      --  Test The Doctors Metal Object Sync Service
      -- -------------------------------------------------------------------------
      Test := Test_Number;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Test the creation and deletion of one to many associated 
      --           relationships
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Doctor                          ",
         Purpose         => "1 to Many associative           ");
      
      
      --  Define the doctor.
      
      the_doctor_ih := Root_Object.Creation_Deletion.dr.Create;
      Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_Type(the_doctor_ih.all).Actor                := Creation_Deletion_Domain_Types.Tom_Baker;
      Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_Type(the_doctor_ih.all).length_of_scarf      := 20;
      
      
      the_doctor_ih := Root_Object.Creation_Deletion.dr.Create;
      Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_Type(the_doctor_ih.all).Actor                := Creation_Deletion_Domain_Types.Jon_Pertwee;
      Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_Type(the_doctor_ih.all).length_of_scarf      := 10;
      
      
      --  Define some bad guys to test him
      
      cybermen_ih := Root_Object.Creation_Deletion.enemy.Create;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(cybermen_ih.all).Humanoid             := True;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(cybermen_ih.all).can_climb_stairs     := True;
      
      
      daleks_ih := Root_Object.Creation_Deletion.enemy.Create;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(daleks_ih.all).Humanoid             := False;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(daleks_ih.all).can_climb_stairs     := False;
      
      
      the_master_ih := Root_Object.Creation_Deletion.enemy.Create;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(the_master_ih.all).Humanoid             := True;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(the_master_ih.all).can_climb_stairs     := True;
      
      
      --  Define the associated instance which captures the spirit of the battle 
      
      cybermen_vs_the_doctor_ih := Root_Object.Creation_Deletion.drenemy.Create;
      Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_Type(cybermen_vs_the_doctor_ih.all).battlefield_arena := 
         Creation_Deletion_Domain_Types.Earth;
      
      
      daleks_vs_the_doctor_ih := Root_Object.Creation_Deletion.drenemy.Create;
      Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_Type(daleks_vs_the_doctor_ih.all).battlefield_arena := 
         Creation_Deletion_Domain_Types.Skarros;
      
      
      the_master_vs_the_doctor_ih := Root_Object.Creation_Deletion.drenemy.Create;
      Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_Type(the_master_vs_the_doctor_ih.all).battlefield_arena := 
         Creation_Deletion_Domain_Types.Gallifrey;
      
      tom_as_the_doctor := Root_Object.Creation_Deletion.dr.Conditional_Find_One;
      while (tom_as_the_doctor /= null) and then (not (Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_Type(tom_as_the_doctor.all).Actor =  
         Creation_Deletion_Domain_Types.Tom_Baker) ) loop
         
         tom_as_the_doctor := tom_as_the_doctor.Next_Object;
      end loop;
      
      jon_as_the_doctor := Root_Object.Creation_Deletion.dr.Conditional_Find_One;
      while (jon_as_the_doctor /= null) and then (not (Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_Type(jon_as_the_doctor.all).Actor =  
         Creation_Deletion_Domain_Types.Jon_Pertwee) ) loop
         
         jon_as_the_doctor := jon_as_the_doctor.Next_Object;
      end loop;
      
      
      --  link using specific ih of tom as the doctor.
      Creation_Deletion_Rel_R2.Link (
         A_Instance => tom_as_the_doctor,
         B_Instance => cybermen_ih,
         Using      => cybermen_vs_the_doctor_ih);
      
      Creation_Deletion_Rel_R2.Link (
         A_Instance => tom_as_the_doctor,
         B_Instance => daleks_ih,
         Using      => daleks_vs_the_doctor_ih);
      
      Creation_Deletion_Rel_R2.Link (
         A_Instance => tom_as_the_doctor,
         B_Instance => the_master_ih,
         Using      => the_master_vs_the_doctor_ih);
      
      
      --  Find out how many enemies the doctor has
      
      Root_Object.Object_List.Clear (
         From => toms_enemies);
      
      
      Creation_Deletion_Rel_R2.Navigate (
         From  => tom_as_the_doctor,
         Class => Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_type'tag,
         To    => toms_enemies);
      
      Root_Object.Object_List.Clear (
         From => jons_enemies);
      
      
      Creation_Deletion_Rel_R2.Navigate (
         From  => jon_as_the_doctor,
         Class => Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_type'tag,
         To    => jons_enemies);
      
      number_of_toms_enemies := Root_Object.Object_List.Count_Of(toms_enemies);
      number_of_jons_enemies := Root_Object.Object_List.Count_Of(jons_enemies);
      
      
      if number_of_toms_enemies =  3 then
         
         if number_of_jons_enemies =  0 then
            
            Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
               Test_Object_Domain => "Doctor                          ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
               Failed_Domain_Object => "Doctor                          ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => number_of_jons_enemies);
            
         end if;
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Doctor                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => number_of_jons_enemies);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - Do it again, this time using the doctor ih to link, and see 
      --           which one it uses.
      --           This can not be checked for WACA version 5.0.0 as referential 
      --           attributes are no longer supported.
      --           check that assoc.Actor = the_doctor_ih.Actor
      --  
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Doctor                          ",
         Purpose         => "Create assoc not specifying attr");
      
      
      sea_devils_ih := Root_Object.Creation_Deletion.enemy.Create;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(sea_devils_ih.all).Humanoid             := False;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(sea_devils_ih.all).can_climb_stairs     := False;
      
      
      davros_ih := Root_Object.Creation_Deletion.enemy.Create;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(davros_ih.all).Humanoid             := True;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(davros_ih.all).can_climb_stairs     := False;
      
      
      silurians_ih := Root_Object.Creation_Deletion.enemy.Create;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(silurians_ih.all).Humanoid             := False;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(silurians_ih.all).can_climb_stairs     := True;
      
      
      sea_devils_vs_the_doctor_ih := Root_Object.Creation_Deletion.drenemy.Create;
      Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_Type(sea_devils_vs_the_doctor_ih.all).battlefield_arena := 
         Creation_Deletion_Domain_Types.Underwater;
      
      
      davros_vs_the_doctor_ih := Root_Object.Creation_Deletion.drenemy.Create;
      Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_Type(davros_vs_the_doctor_ih.all).battlefield_arena := 
         Creation_Deletion_Domain_Types.Wheelchair;
      
      
      silurians_vs_the_doctor_ih := Root_Object.Creation_Deletion.drenemy.Create;
      Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_Type(silurians_vs_the_doctor_ih.all).battlefield_arena := 
         Creation_Deletion_Domain_Types.Venus;
      
      
      --  link using doctor ih of the doctor. This should have picked up
      --  Jon Pertwee as the doctor, since this was the most recent creation.
      Creation_Deletion_Rel_R2.Link (
         A_Instance => the_doctor_ih,
         B_Instance => sea_devils_ih,
         Using      => sea_devils_vs_the_doctor_ih);
      
      Creation_Deletion_Rel_R2.Link (
         A_Instance => the_doctor_ih,
         B_Instance => davros_ih,
         Using      => davros_vs_the_doctor_ih);
      
      Creation_Deletion_Rel_R2.Link (
         A_Instance => the_doctor_ih,
         B_Instance => silurians_ih,
         Using      => silurians_vs_the_doctor_ih);
      
      
      --  However, the Actor attribute set in the assoc creation will be different
      --  from that of the Actor attribute set up with Jon Pertwee's version
      --  of the doctor. The Humanoid attribute will be different, too.
      --  Let's see what happens.
      
      Has_Failed   := False;
      Failure_Code := 0;
      
      --  Hijack this test to prove that we can still get to the attributes that were referential
      --  for the associative object, via the R2 relationship. So in real terms, this information
      --  is still accessable, just a little more awkward.
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => enemies_vs_jon_the_doctor);
         
         Root_Object.Creation_Deletion.drenemy.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_Type(Temp_Entry.Item.all).battlefield_arena /= 
               Creation_Deletion_Domain_Types.Underwater then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => enemies_vs_jon_the_doctor);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => enemies_vs_jon_the_doctor);
         
         while (Temp_Entry /= null) loop
            enemy_of_jon := Temp_Entry.Item;
            
            if enemy_of_jon /= Null then
               
               Creation_Deletion_Rel_R2.Navigate (
                  From  => enemy_of_jon,
                  Class => Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_type'tag,
                  To    => which_doctor);
               
               
               Creation_Deletion_Rel_R2.Navigate (
                  From  => enemy_of_jon,
                  Class => Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_type'tag,
                  To    => which_enemy);
               
               
               if which_doctor /= Null and then
                  which_enemy /= Null then
                  
                  if Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_type(which_doctor.all).Actor         =  Creation_Deletion_Domain_Types.Jon_Pertwee and then
                     Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_type(which_enemy.all).Humanoid =  True then
                     
                     --  This should only find one instance relationship where the doctor is Jon Pertwee
                     --  the enemy is Davros and the battlefield upon which they fought was not underwater.
                     Failure_Code := Failure_Code + 1;
                     
                  end if;
                  
               end if;
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => enemies_vs_jon_the_doctor);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if Failure_Code =  1 then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "Doctor                          ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Doctor                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 4 - Create assoc specifying attributes
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Doctor                          ",
         Purpose         => "Create assoc specifying attribut");
      
      
      --  Continuing on using the previous theme, let's see if the many side of R2
      --  can be found.
      
      Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "create assoc specifying attribut");
      
      
      Root_Object.Object_List.Clear (
         From => bad_guys);
      
      Root_Object.Creation_Deletion.enemy.Find (
         Add_To => bad_guys);
      
      
      --  Using the criteria that only davros, cybermen and the master are humanoid as 
      --  defined at creation of the enemy instance. The definition of the associated 
      --  instance is the opposite, ie davros, cybermen and the master are NOT humanoid.
      --  This should prove that the associated instance does not take-on the 'many'
      --  definition of the attribute. Basically, it is the same as the previous test,
      --  only more complicated.
      --  The_Test_Has_Passed = TRUE
      --  Failure_Code = 0
      --  for bad_guy in {bad_guys} do
      --  Navigate from bad guy to associated doctors enemy
      --  the_doctors_enemy = bad_guy -> R2.Doctors_Enemy
      --    if bad_guy.Humanoid = TRUE then 
      --       The_Test_Has_Passed = FALSE
      --       Failure_Code = Failure_Code - 1
      --       switch the_doctors_enemy.battlefield_arena
      --       case 'Earth'
      --          [] = RPT5:Test_Text[Test, "ERROR  cybermen are masquerading as non humanoid"]
      --       case 'Underwater'
      --          [] = RPT5:Test_Text[Test, "ERROR  sea devils is masquerading as humanoid"]
      --       case 'Wheelchair'
      --          [] = RPT5:Test_Text[Test, "ERROR  Davros is masquerading as non humanoid"]
      --       case 'Skarros'
      --          [] = RPT5:Test_Text[Test, "ERROR  Daleks are masquerading as humanoid"]
      --       case 'Venus'
      --          [] = RPT5:Test_Text[Test, "ERROR  Silurians are masquerading as humanoid"]
      --       case 'Gallifrey'
      --          [] = RPT5:Test_Text[Test, "ERROR  The Master is masquerading as non humanoid"]
      --       default
      --          [] = RPT5:Test_Text[Test, "ERROR  something else is masquerading as an unknown instance"]
      --       endswitch
      --    endif
      -- endfor
      -- if The_Test_Has_Passed = TRUE then
      --    [] = RPT2:Test_Passed["Doctor", Test, 0]
      -- else
      --    [] = RPT3:Test_Failed["Doctor", Test, Failure_Code]
      -- endif
      
      Creation_Deletion_RPT4_Test_Unsupported_Bridge.Creation_Deletion_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 - 
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Doctor                          ",
         Purpose         => "1 to Many associative           ");
      
      
      --  create some more associative instances, but this time, don't attempt to
      --  specify any attributes.
      
      Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "create assoc but do not specify ");
      
      
      --  create a new doctor
      
      patrick_the_doctor := Root_Object.Creation_Deletion.dr.Create;
      Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_Type(patrick_the_doctor.all).Actor                := 
         Creation_Deletion_Domain_Types.Patrick_Troughton;
      Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_Type(patrick_the_doctor.all).length_of_scarf      := 1;
      
      
      --  The Brigadier wasn't really an enemy, but I've run out of bad guys
      
      skeksis := Root_Object.Creation_Deletion.enemy.Create;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(skeksis.all).Humanoid             := True;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(skeksis.all).can_climb_stairs     := False;
      
      
      the_brigadier := Root_Object.Creation_Deletion.enemy.Create;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(the_brigadier.all).Humanoid             := True;
      Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(the_brigadier.all).can_climb_stairs     := True;
      
      
      --  and the Skeksis were in The Dark Crystal, but hey, it's only a model.
      
      skeksis_vs_the_doctor := Root_Object.Creation_Deletion.drenemy.Create;
      Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_Type(skeksis_vs_the_doctor.all).battlefield_arena := 
         Creation_Deletion_Domain_Types.Gallifrey;
      
      
      the_brigadier_vs_the_doctor := Root_Object.Creation_Deletion.drenemy.Create;
      Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_Type(the_brigadier_vs_the_doctor.all).battlefield_arena := 
         Creation_Deletion_Domain_Types.Earth;
      
      
      The_Test_Has_Passed := True;
      Failure_Code        := -36;
      Creation_Deletion_Rel_R2.Link (
         A_Instance => patrick_the_doctor,
         B_Instance => skeksis,
         Using      => skeksis_vs_the_doctor);
      
      Creation_Deletion_Rel_R2.Link (
         A_Instance => patrick_the_doctor,
         B_Instance => the_brigadier,
         Using      => the_brigadier_vs_the_doctor);
      
      
      --  Navigating from the doctor to the doctors_enemy
      
      Root_Object.Object_List.Clear (
         From => the_doctors_enemies);
      
      
      Creation_Deletion_Rel_R2.Navigate (
         From  => patrick_the_doctor,
         Class => Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_type'tag,
         To    => the_doctors_enemies);
      
      --  Navigating from a set of enemies to the doctor_enemy
      
      Creation_Deletion_Rel_R2.Navigate (
         From  => skeksis,
         Class => Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_type'tag,
         To    => skeksis_are_the_enemies_of_the_doctor);
      
      
      Creation_Deletion_Rel_R2.Navigate (
         From  => the_brigadier,
         Class => Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_type'tag,
         To    => the_brigadier_is_the_enemy_of_the_doctor);
      
      
      if skeksis_are_the_enemies_of_the_doctor /= Null and then
         the_brigadier_is_the_enemy_of_the_doctor /= Null then
         
         if Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_type(skeksis_are_the_enemies_of_the_doctor.all).battlefield_arena /= 
         Root_Object.Creation_Deletion.drenemy.Creation_Deletion_drenemy_type(the_brigadier_is_the_enemy_of_the_doctor.all).battlefield_arena then
            
            if Root_Object.Object_List.Count_Of(the_doctors_enemies) =  2 then
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => the_doctors_enemies);
                  
                  while (Temp_Entry /= null) loop
                     the_doctors_enemy := Temp_Entry.Item;
                     
                     Creation_Deletion_Rel_R2.Navigate (
                        From  => the_doctors_enemy,
                        Class => Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_type'tag,
                        To    => this_doctor);
                     
                     
                     if Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_type(this_doctor.all).Actor =  Creation_Deletion_Domain_Types.Patrick_Troughton then
                        The_Test_Has_Passed := True;
                        Failure_Code        := 0;
                     else
                        The_Test_Has_Passed := False;
                        Failure_Code        := -4;
                     end if;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => the_doctors_enemies);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
            else
               The_Test_Has_Passed := False;
               Failure_Code        := -3;
            end if;
            
         else
            The_Test_Has_Passed := False;
            Failure_Code        := -2;
         end if;
         
      else
         The_Test_Has_Passed := False;
         Failure_Code        := -1;
         
      end if;
      
      
      -- for the_doctors_enemy in {the_doctors_enemies} do
      --    if the_doctors_enemy.Actor = patrick_the_doctor.Actor then
      --  The associated attributes have been set by the architecture, illegally.
      --       Failure_Code =  Failure_Code + 1
      --       The_Test_Has_Passed = FALSE
      --    endif
      -- endfor
      --  -------------------------------------------------------------------------------
      --  The following statements were an attempt to show that a referential attribute
      --  had been set by the architecture. This can neither be proven or not.
      --  Referential attributes can not read from or written to. So..... we can't tell!
      --  -------------------------------------------------------------------------------
      --  Humanoid attribute has been written into the associated object attribute
      -- if skeksis_are_the_enemies_of_the_doctor.Humanoid = skeksis.Humanoid then
      --    Failure_Code = Failure_Code + 10
      --    The_Test_Has_Passed = FALSE
      -- endif
      --  Humanoid attribute has been written into the associated object attribute
      -- if the_brigadier_is_the_enemy_of_the_doctor.Humanoid = the_brigadier.Humanoid then 
      --    Failure_Code = Failure_Code + 20
      --    The_Test_Has_Passed = FALSE
      -- endif
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "Doctor                          ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Doctor                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      --  Test 6 - 
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Doctor                          ",
         Purpose         => "Delete assoc instances          ");
      
      Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "Delete last enemy leaving first ");
      
      
      The_Test_Has_Passed := True;
      
      
      Root_Object.Object_List.Clear (
         From => patricks_enemies);
      
      
      Creation_Deletion_Rel_R2.Navigate (
         From  => patrick_the_doctor,
         Class => Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_type'tag,
         To    => patricks_enemies);
      
      number_of_enemies_before := Root_Object.Object_List.Count_Of(patricks_enemies);
      
      
      Creation_Deletion_Rel_R2.Unassociate(
         A_Instance => patrick_the_doctor,
         B_Instance => the_brigadier,
         From       => the_brigadier_vs_the_doctor);
      
      Creation_Deletion_Rel_R2.Unlink (
         A_Instance => patrick_the_doctor,
         B_Instance => the_brigadier);
      
      
      Root_Object.Creation_Deletion.enemy.Delete (
         Old_Instance => the_brigadier);
      
      Root_Object.Creation_Deletion.drenemy.Delete (
         Old_Instance => the_brigadier_vs_the_doctor);
      
      --  There should only be one enemy for patrick the doctor now.
      
      Root_Object.Object_List.Clear (
         From => patricks_enemies);
      
      
      Creation_Deletion_Rel_R2.Navigate (
         From  => patrick_the_doctor,
         Class => Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_type'tag,
         To    => patricks_enemies);
      
      number_of_enemies_after := Root_Object.Object_List.Count_Of(patricks_enemies);
      
      
      if number_of_enemies_after =  number_of_enemies_before then
         
         The_Test_Has_Passed := False;
         Failure_Code        := number_of_enemies_after;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "Doctor                          ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Doctor                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      --  ------------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Doctor                          ",
         Purpose         => "Delete assoc instances          ");
      
      Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "Prove that delete worked        ");
      
      
      The_Test_Has_Passed := True;
      Failure_Code        := -15;
      
      --  The brigadier should have been demoted.
      
      if the_brigadier /= Null then
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 1;
      end if;
      
      
      --  The associated instance of the brigadier vs the doctor should be no more.
      
      if the_brigadier_vs_the_doctor /= Null then
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 2;
      end if;
      
      
      --  Skeksis should still be around causing the doctor some problems.
      
      if skeksis =  Null then
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 3;
      end if;
      
      
      --  Get rid of the remaining bad guys, the assoc instance and Patrick Troughton
      
      Creation_Deletion_Rel_R2.Unassociate(
         A_Instance => patrick_the_doctor,
         B_Instance => skeksis,
         From       => skeksis_vs_the_doctor);
      
      Creation_Deletion_Rel_R2.Unlink (
         A_Instance => patrick_the_doctor,
         B_Instance => skeksis);
      
      
      Root_Object.Creation_Deletion.drenemy.Delete (
         Old_Instance => skeksis_vs_the_doctor);
      
      Root_Object.Creation_Deletion.enemy.Delete (
         Old_Instance => skeksis);
      
      Root_Object.Creation_Deletion.dr.Delete (
         Old_Instance => patrick_the_doctor);
      
      if skeksis /= Null and then
         skeksis_vs_the_doctor /= Null and then
         patrick_the_doctor /= Null then
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 7;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "Doctor                          ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Doctor                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      --  ------------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Doctor                          ",
         Purpose         => "Delete assoc instances          ");
      
      Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "delete first element from a list");
      
      
      The_Test_Has_Passed := True;
      Failure_Code        := -4;
      
      
      -- Tom Baker's enemies numbered three. Cybermen, Daleks and The Master
      
      Root_Object.Object_List.Clear (
         From => toms_enemies_before);
      
      
      Creation_Deletion_Rel_R2.Navigate (
         From  => tom_as_the_doctor,
         Class => Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_type'tag,
         To    => toms_enemies_before);
      
      number_of_toms_enemies_before := Root_Object.Object_List.Count_Of(toms_enemies_before);
      
      
      Creation_Deletion_Rel_R2.Unassociate(
         A_Instance => tom_as_the_doctor,
         B_Instance => cybermen_ih,
         From       => cybermen_vs_the_doctor_ih);
      
      Creation_Deletion_Rel_R2.Unlink (
         A_Instance => tom_as_the_doctor,
         B_Instance => cybermen_ih);
      
      
      Root_Object.Creation_Deletion.drenemy.Delete (
         Old_Instance => cybermen_vs_the_doctor_ih);
      
      Root_Object.Creation_Deletion.enemy.Delete (
         Old_Instance => cybermen_ih);
      
      --  They now number two, Daleks and the Master
      
      Root_Object.Object_List.Clear (
         From => toms_enemies_after);
      
      
      Creation_Deletion_Rel_R2.Navigate (
         From  => tom_as_the_doctor,
         Class => Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_type'tag,
         To    => toms_enemies_after);
      
      number_of_toms_enemies_after := Root_Object.Object_List.Count_Of(toms_enemies_after);
      
      
      if number_of_toms_enemies_after =  number_of_toms_enemies_before then
         
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 1;
      end if;
      
      
      --  Attempt to navigate from the doctor to the second (daleks) enemy
      daleks := Root_Object.Creation_Deletion.enemy.Conditional_Find_One;
      while (daleks /= null) and then (not (Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(daleks.all).Humanoid         =  False and then
                                               Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_Type(daleks.all).can_climb_stairs =  False) ) loop
         
         daleks := daleks.Next_Object;
      end loop;
      
      
      if daleks =  Null then
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 2;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "Doctor                          ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Doctor                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      --  ------------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Doctor                          ",
         Purpose         => "Delete assoc instances          ");
      
      Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "delete middle element from a lis");
      
      
      The_Test_Has_Passed := True;
      Failure_Code        := -15;
      
      
      -- Tom Baker's enemies numbered two. Daleks and The Master
      
      Root_Object.Object_List.Clear (
         From => toms_enemies_before);
      
      
      Creation_Deletion_Rel_R2.Navigate (
         From  => tom_as_the_doctor,
         Class => Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_type'tag,
         To    => toms_enemies_before);
      
      number_of_toms_enemies_before := Root_Object.Object_List.Count_Of(toms_enemies_before);
      
      
      Creation_Deletion_Rel_R2.Unassociate(
         A_Instance => tom_as_the_doctor,
         B_Instance => daleks_ih,
         From       => daleks_vs_the_doctor_ih);
      
      Creation_Deletion_Rel_R2.Unlink (
         A_Instance => tom_as_the_doctor,
         B_Instance => daleks_ih);
      
      
      Root_Object.Creation_Deletion.drenemy.Delete (
         Old_Instance => daleks_vs_the_doctor_ih);
      
      Root_Object.Creation_Deletion.enemy.Delete (
         Old_Instance => daleks_ih);
      
      --  They now number one.
      
      Root_Object.Object_List.Clear (
         From => toms_enemies_after);
      
      
      Creation_Deletion_Rel_R2.Navigate (
         From  => tom_as_the_doctor,
         Class => Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_type'tag,
         To    => toms_enemies_after);
      
      number_of_toms_enemies_after := Root_Object.Object_List.Count_Of(toms_enemies_after);
      
      
      if number_of_toms_enemies_after =  number_of_toms_enemies_before then
         
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 1;
      end if;
      
      
      if daleks_ih /= Null then
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 2;
      end if;
      
      
      if the_master_ih =  Null then
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 4;
      end if;
      
      
      if tom_as_the_doctor =  Null then
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 8;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "Doctor                          ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Doctor                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      --  ------------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Doctor                          ",
         Purpose         => "Delete assoc instances          ");
      
      Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "delete final element in list    ");
      
      
      The_Test_Has_Passed := True;
      Failure_Code        := -4;
      
      Creation_Deletion_Rel_R2.Unassociate(
         A_Instance => tom_as_the_doctor,
         B_Instance => the_master_ih,
         From       => the_master_vs_the_doctor_ih);
      
      Creation_Deletion_Rel_R2.Unlink (
         A_Instance => tom_as_the_doctor,
         B_Instance => the_master_ih);
      
      
      Root_Object.Creation_Deletion.drenemy.Delete (
         Old_Instance => the_master_vs_the_doctor_ih);
      
      Root_Object.Creation_Deletion.enemy.Delete (
         Old_Instance => the_master_ih);
      
      if the_master_ih /= Null then
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 1;
      end if;
      
      
      if tom_as_the_doctor =  Null then
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 2;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "Doctor                          ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Doctor                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      --  ------------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Doctor                          ",
         Purpose         => "Delete assoc instances          ");
      
      Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "delete 1 of many instance       ");
      
      
      Failure_Code := -2;
      
      
      Root_Object.Creation_Deletion.dr.Delete (
         Old_Instance => tom_as_the_doctor);
      
      if tom_as_the_doctor /= Null then
         
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 1;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "Doctor                          ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Doctor                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      --  ------------------------------------------------------------------------------
      
      Test := Test + 1;
      
      
      --  Delete all of Jon Pertwee's enemies, leaving the universe free of bad guys
      
      The_Test_Has_Passed := True;
      Failure_Code        := -4;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Doctor                          ",
         Purpose         => "Delete assoc instances          ");
      
      Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "delete remaining instances in a ");
      
      
      Root_Object.Object_List.Clear (
         From => remaining_enemies);
      
      Root_Object.Creation_Deletion.enemy.Find (
         Add_To => remaining_enemies);
      
      
      Root_Object.Object_List.Clear (
         From => remaining_doctors_enemies);
      
      Root_Object.Creation_Deletion.drenemy.Find (
         Add_To => remaining_doctors_enemies);
      
      
      Root_Object.Object_List.Clear (
         From => remaining_doctors);
      
      Root_Object.Creation_Deletion.dr.Find (
         Add_To => remaining_doctors);
      
      
      --  Need to unassociate each associated instance from the 1 to M relationship
      --  Can't do it in a set
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => remaining_doctors_enemies);
         
         while (Temp_Entry /= null) loop
            remaining_doctors_enemy := Temp_Entry.Item;
            
            Creation_Deletion_Rel_R2.Navigate (
               From  => remaining_doctors_enemy,
               Class => Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_type'tag,
               To    => an_enemy);
            
            
            Creation_Deletion_Rel_R2.Navigate (
               From  => remaining_doctors_enemy,
               Class => Root_Object.Creation_Deletion.dr.Creation_Deletion_dr_type'tag,
               To    => the_doctor);
            
            
            Creation_Deletion_Rel_R2.Unassociate(
               A_Instance => the_doctor,
               B_Instance => an_enemy,
               From       => remaining_doctors_enemy);
            
            Creation_Deletion_Rel_R2.Unlink (
               A_Instance => the_doctor,
               B_Instance => an_enemy);
            
            
            Root_Object.Creation_Deletion.drenemy.Delete (
               Old_Instance => remaining_doctors_enemy);
            
            Root_Object.Creation_Deletion.enemy.Delete (
               Old_Instance => an_enemy);
            
            -- if the doctor has no more enemies, it is safe to delete him
            
            Root_Object.Object_List.Clear (
               From => any_more_enemies);
            
            
            Creation_Deletion_Rel_R2.Navigate (
               From  => the_doctor,
               Class => Root_Object.Creation_Deletion.enemy.Creation_Deletion_enemy_type'tag,
               To    => any_more_enemies);
            
            number_of_more_enemies := Root_Object.Object_List.Count_Of(any_more_enemies);
            
            
            --  Kill off the doctor finally. There should be no more doctors to worry about
            --  Regeneration is not something this doctor can do!
            
            if number_of_more_enemies =  0 then
               
               Root_Object.Creation_Deletion.dr.Delete (
                  Old_Instance => the_doctor);
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => remaining_doctors_enemies);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      --  delete the set of doctors (should be 1),
      --  the set of enemies (should be 3)
      --  and the set of associated enemies (should be 3)
      --  This is unsupported at issue 2.0.1
      --  delete {remaining_doctors_enemies}
      --  delete {remaining_enemies}
      --  delete {remaining_doctors}
      empty_enemy := Root_Object.Creation_Deletion.enemy.Unconditional_Find_One;
      empty_doctor := Root_Object.Creation_Deletion.dr.Unconditional_Find_One;
      empty_assoc_enemy := Root_Object.Creation_Deletion.drenemy.Unconditional_Find_One;
      
      if empty_enemy /= Null then
         
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 1;
      end if;
      
      
      if empty_assoc_enemy /= Null then
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 2;
      end if;
      
      
      if empty_doctor /= Null then
         The_Test_Has_Passed := False;
         Failure_Code        := Failure_Code + 4;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "Doctor                          ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Doctor                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      --  ------------------------------------------------------------------------------
      
      Returned_Test_Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (any_more_enemies);
      Root_Object.Object_List.Destroy_List (remaining_doctors);
      Root_Object.Object_List.Destroy_List (remaining_doctors_enemies);
      Root_Object.Object_List.Destroy_List (remaining_enemies);
      Root_Object.Object_List.Destroy_List (toms_enemies_after);
      Root_Object.Object_List.Destroy_List (toms_enemies_before);
      Root_Object.Object_List.Destroy_List (patricks_enemies);
      Root_Object.Object_List.Destroy_List (the_doctors_enemies);
      Root_Object.Object_List.Destroy_List (bad_guys);
      Root_Object.Object_List.Destroy_List (enemies_vs_jon_the_doctor);
      Root_Object.Object_List.Destroy_List (jons_enemies);
      Root_Object.Object_List.Destroy_List (toms_enemies);
      
   end Creation_Deletion_dr1_Test_the_Doctors_Mettle;
   
end Creation_Deletion_dr1_Test_the_Doctors_Mettle_Service;

--
-- End of file Creation_Deletion_dr1_Test_the_Doctors_Mettle_Service.adb
--
