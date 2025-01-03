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
--* File Name:               Creation_Deletion_coloured2_Regression_Tests_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          There is a problem in version 2.0.2 of WACA. This service will attempt to c
--*                          larify what is going wrong.
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
with Root_Object.Creation_Deletion.fandc;
with Root_Object.Creation_Deletion.coloured;
with Root_Object.Creation_Deletion.flavoured;

-- List of relationships used
with Creation_Deletion_rel_R1;

-- List of bridges used
with Creation_Deletion_RPT5_Test_Text_Bridge;
with Creation_Deletion_RPT3_Test_Failed_Bridge;
with Creation_Deletion_RPT2_Test_Passed_Bridge;
with Creation_Deletion_RPT8_Specify_Requid_Bridge;
with Creation_Deletion_RPT1_Start_Test_Bridge;

-- List of domain types used
with Creation_Deletion_Domain_Types;
use type Creation_Deletion_Domain_Types.Flavoured_Type;
use type Creation_Deletion_Domain_Types.Coloured_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Creation_Deletion_coloured2_Regression_Tests_Service is
   
   procedure Creation_Deletion_coloured2_Regression_Tests (
      Test_Number          : in     Application_Types.Base_Integer_Type;
      Returned_Test_Number :    out Application_Types.Base_Integer_Type) is
      
      faded_set_of_colours        : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      mouldering_set_of_flavours  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      mouldered_and_faded         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      new_associated_instances    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      set_of_associated_instances : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      red_things                  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      blue_things                 : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      green_things                : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      chicken_things              : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      coffee_things               : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      fish_things                 : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      flavoured_things            : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      coloured_things             : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      associated_instances        : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      set_of_assoc                : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      any_more_flavours           : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      any_more_colours            : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      a_chicken_flavour  : Root_Object.Object_Access;
      a_red_colour       : Root_Object.Object_Access;
      a_red_chicken      : Root_Object.Object_Access;
      a_new_blue_colour  : Root_Object.Object_Access;
      a_new_fish_flavour : Root_Object.Object_Access;
      a_new_blue_fish    : Root_Object.Object_Access;
      unwanted_instance  : Root_Object.Object_Access;
      chicken_flavour    : Root_Object.Object_Access;
      coffee_flavour     : Root_Object.Object_Access;
      fish_flavour       : Root_Object.Object_Access;
      blue_colour        : Root_Object.Object_Access;
      red_colour         : Root_Object.Object_Access;
      green_colour       : Root_Object.Object_Access;
      blue_chicken       : Root_Object.Object_Access;
      red_chicken        : Root_Object.Object_Access;
      green_chicken      : Root_Object.Object_Access;
      blue_coffee        : Root_Object.Object_Access;
      red_coffee         : Root_Object.Object_Access;
      green_coffee       : Root_Object.Object_Access;
      blue_fish          : Root_Object.Object_Access;
      red_fish           : Root_Object.Object_Access;
      green_fish         : Root_Object.Object_Access;
      coloured_thing     : Root_Object.Object_Access;
      assoc_instance     : Root_Object.Object_Access;
      this_flavour       : Root_Object.Object_Access;
      each_assoc         : Root_Object.Object_Access;
      a_colour           : Root_Object.Object_Access;
      a_flavour          : Root_Object.Object_Access;
      assoc              : Root_Object.Object_Access;
      
      Test                           : Application_Types.Base_Integer_Type := 1;
      Failure_Code                   : Application_Types.Base_Integer_Type := 1;
      no_of_faded                    : Application_Types.Base_Integer_Type := 1;
      no_of_mouldered                : Application_Types.Base_Integer_Type := 1;
      no_of_mouldered_and_faded      : Application_Types.Base_Integer_Type := 1;
      no_of_new_associated_instances : Application_Types.Base_Integer_Type := 1;
      the_blue_chicken_dish          : Application_Types.Base_Integer_Type := 1;
      the_blue_coffee_dish           : Application_Types.Base_Integer_Type := 1;
      the_blue_fish_dish             : Application_Types.Base_Integer_Type := 1;
      the_red_chicken_dish           : Application_Types.Base_Integer_Type := 1;
      the_red_coffee_dish            : Application_Types.Base_Integer_Type := 1;
      the_red_fish_dish              : Application_Types.Base_Integer_Type := 1;
      the_green_chicken_dish         : Application_Types.Base_Integer_Type := 1;
      the_green_coffee_dish          : Application_Types.Base_Integer_Type := 1;
      the_green_fish_dish            : Application_Types.Base_Integer_Type := 1;
      number_of_red_things           : Application_Types.Base_Integer_Type := 1;
      number_of_blue_things          : Application_Types.Base_Integer_Type := 1;
      number_of_green_things         : Application_Types.Base_Integer_Type := 1;
      number_of_coloured_things      : Application_Types.Base_Integer_Type := 1;
      number_of_chicken_things       : Application_Types.Base_Integer_Type := 1;
      number_of_fish_things          : Application_Types.Base_Integer_Type := 1;
      number_of_coffee_things        : Application_Types.Base_Integer_Type := 1;
      number_of_flavoured_things     : Application_Types.Base_Integer_Type := 1;
      number_of_associated_instances : Application_Types.Base_Integer_Type := 1;
      Test_Passed_Counter            : Application_Types.Base_Integer_Type := 1;
      number_of_assoc_instances      : Application_Types.Base_Integer_Type := 1;
      the_dish                       : Application_Types.Base_Integer_Type := 1;
      
      my_colour         : Creation_Deletion_Domain_Types.Coloured_Type                   := Creation_Deletion_Domain_Types.Coloured_Type_first;
      the_assoc_flavour : Creation_Deletion_Domain_Types.Flavoured_Type                  := Creation_Deletion_Domain_Types.Flavoured_Type_first;
      the_colour        : Creation_Deletion_Domain_Types.Coloured_Type                   := Creation_Deletion_Domain_Types.Coloured_Type_first;
      
      Has_Failed          : Boolean := Application_Types.Boolean_first;
      The_Test_Has_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of coloured2_Regression_Tests
      Test := Test_Number;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Create Many to Many assoc specify attributes
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Create MtoM assoc specify attrib");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0521               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0522               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0531               ");
      
      
      a_chicken_flavour := Root_Object.Creation_Deletion.flavoured.Create;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(a_chicken_flavour.all).Flavoured := Creation_Deletion_Domain_Types.chicken;
      
      
      a_red_colour := Root_Object.Creation_Deletion.coloured.Create;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(a_red_colour.all).Coloured := Creation_Deletion_Domain_Types.red;
      
      
      a_red_chicken := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(a_red_chicken.all).Dish_Number          := 201;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(a_red_chicken.all).Coloured             := Creation_Deletion_Domain_Types.red;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(a_red_chicken.all).Flavoured            := Creation_Deletion_Domain_Types.chicken;
      
      
      --  Set attribute using instance handle
      
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type(a_chicken_flavour.all).How_Spicy := 2;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type(a_red_colour.all).Intensity := 2;
      
      
      --  Check that attributes have been set correctly
      
      Has_Failed := False;
      
      
      if Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_type(a_red_chicken.all).Dish_Number =  201 then
         
         if Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type(a_chicken_flavour.all).How_Spicy =  2 then
            
            if Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type(a_red_colour.all).Intensity /= 2 then
               
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
      
      
      if (not Has_Failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "Coloured                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Coloured                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Root_Object.Creation_Deletion.flavoured.Delete (
         Old_Instance => a_chicken_flavour);
      
      Root_Object.Creation_Deletion.coloured.Delete (
         Old_Instance => a_red_colour);
      
      Root_Object.Creation_Deletion.fandc.Delete (
         Old_Instance => a_red_chicken);
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - Full delete of all instances
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0531               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Full delete of all instances    ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      
      --  All flavours and colours and associated instances should now be in the
      --  bin, mouldering quietly.
      --  Prove it.
      
      Root_Object.Object_List.Clear (
         From => faded_set_of_colours);
      
      Root_Object.Creation_Deletion.coloured.Find (
         Add_To => faded_set_of_colours);
      
      
      Root_Object.Object_List.Clear (
         From => mouldering_set_of_flavours);
      
      Root_Object.Creation_Deletion.flavoured.Find (
         Add_To => mouldering_set_of_flavours);
      
      
      Root_Object.Object_List.Clear (
         From => mouldered_and_faded);
      
      Root_Object.Creation_Deletion.fandc.Find (
         Add_To => mouldered_and_faded);
      
      
      no_of_faded               := Root_Object.Object_List.Count_Of(faded_set_of_colours);
      no_of_mouldered           := Root_Object.Object_List.Count_Of(mouldering_set_of_flavours);
      no_of_mouldered_and_faded := Root_Object.Object_List.Count_Of(mouldered_and_faded);
      
      
      if no_of_faded =  0 then
         
         if no_of_mouldered =  0 then
            
            if no_of_mouldered_and_faded =  0 then
               
               Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
                  Test_Object_Domain => "Full Delete                     ",
                  Test_Number        => Test,
                  Test_Value         => 0);
               
            else
               Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                  Failed_Domain_Object => "Mouldered And Faded             ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => no_of_mouldered_and_faded);
               
            end if;
            
         else
            Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
               Failed_Domain_Object => "Mouldered Still Exists          ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => no_of_mouldered);
            
         end if;
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Faded Still Exists              ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => no_of_faded);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - Link new instances
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Link new instances              ");
      
      
      --  Having established that in the previous test these appear to have been deleted, 
      --  create a new flavour, colour, flavoured_and_coloured situation and see
      --  if the link has been really freshly created, or is there some baggage?
      
      a_new_blue_colour := Root_Object.Creation_Deletion.coloured.Create;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(a_new_blue_colour.all).Coloured             := 
         Creation_Deletion_Domain_Types.blue;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(a_new_blue_colour.all).Intensity            := 1;
      
      
      a_new_fish_flavour := Root_Object.Creation_Deletion.flavoured.Create;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(a_new_fish_flavour.all).Flavoured            := 
         Creation_Deletion_Domain_Types.fish;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(a_new_fish_flavour.all).How_Spicy            := 1;
      
      
      a_new_blue_fish := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(a_new_blue_fish.all).Dish_Number          := 202;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(a_new_blue_fish.all).Coloured             := Creation_Deletion_Domain_Types.blue;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(a_new_blue_fish.all).Flavoured            := Creation_Deletion_Domain_Types.fish;
      
      
      --  link the relationship
      Creation_Deletion_Rel_R1.Link (
         A_Instance => a_new_fish_flavour,
         B_Instance => a_new_blue_colour,
         Using      => a_new_blue_fish);
      
      
      --  Navigate from the blue colour to the set of associated instances. Don't rely
      --  on a find for the instance handle for the blue object, we already know it.
      
      Root_Object.Object_List.Clear (
         From => new_associated_instances);
      
      
      Creation_Deletion_Rel_R1.Navigate (
         From  => a_new_blue_colour,
         Class => Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_type'tag,
         To    => new_associated_instances);
      
      --  There should only be one blue fish associated instance handle in the set
      
      no_of_new_associated_instances := Root_Object.Object_List.Count_Of(new_associated_instances);
      
      
      if no_of_new_associated_instances =  1 then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "Link new instance               ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         
         --  There is more of these than there should be. Schlepper off down the 
         --  link and see what is on the other side. If the dish number is either 201 
         --  or 202, then it means that the data is still visible, and not just some
         --  hyperspace value.
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => new_associated_instances);
            
            while (Temp_Entry /= null) loop
               unwanted_instance := Temp_Entry.Item;
               
               Creation_Deletion_RPT5_Test_Text_Bridge.Creation_Deletion_RPT5_Test_Text (
                  Test_Number => Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_type(unwanted_instance.all).Dish_Number,
                  Free_Text   => "found this assoc instance       ");
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => new_associated_instances);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Link new instance               ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => no_of_new_associated_instances);
         
      end if;
      
      
      --  Get rid of the latest instances.
      
      Creation_Deletion_Rel_R1.Unassociate(
         A_Instance => a_new_fish_flavour,
         B_Instance => a_new_blue_colour,
         From       => a_new_blue_fish);
      
      Creation_Deletion_Rel_R1.Unlink (
         A_Instance => a_new_fish_flavour,
         B_Instance => a_new_blue_colour);
      
      
      Root_Object.Creation_Deletion.flavoured.Delete (
         Old_Instance => a_new_fish_flavour);
      
      Root_Object.Creation_Deletion.coloured.Delete (
         Old_Instance => a_new_blue_colour);
      
      Root_Object.Creation_Deletion.fandc.Delete (
         Old_Instance => a_new_blue_fish);
      
      --  We know that these may still exist, and so cause a future test to fail.
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - Setup and link m to m
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Setup and link m to m           ");
      
      
      chicken_flavour := Root_Object.Creation_Deletion.flavoured.Create;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(chicken_flavour.all).Flavoured            := 
         Creation_Deletion_Domain_Types.chicken;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(chicken_flavour.all).How_Spicy            := 1;
      
      
      coffee_flavour := Root_Object.Creation_Deletion.flavoured.Create;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(coffee_flavour.all).Flavoured            := 
         Creation_Deletion_Domain_Types.coffee;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(coffee_flavour.all).How_Spicy            := 2;
      
      
      fish_flavour := Root_Object.Creation_Deletion.flavoured.Create;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(fish_flavour.all).Flavoured            := Creation_Deletion_Domain_Types.fish;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(fish_flavour.all).How_Spicy            := 3;
      
      
      blue_colour := Root_Object.Creation_Deletion.coloured.Create;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(blue_colour.all).Coloured             := Creation_Deletion_Domain_Types.blue;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(blue_colour.all).Intensity            := 1;
      
      
      red_colour := Root_Object.Creation_Deletion.coloured.Create;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(red_colour.all).Coloured             := Creation_Deletion_Domain_Types.red;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(red_colour.all).Intensity            := 2;
      
      
      green_colour := Root_Object.Creation_Deletion.coloured.Create;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(green_colour.all).Coloured             := Creation_Deletion_Domain_Types.green;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(green_colour.all).Intensity            := 3;
      
      
      the_blue_chicken_dish  := 101;
      the_blue_coffee_dish   := 102;
      the_blue_fish_dish     := 103;
      the_red_chicken_dish   := 201;
      the_red_coffee_dish    := 202;
      the_red_fish_dish      := 203;
      the_green_chicken_dish := 301;
      the_green_coffee_dish  := 302;
      the_green_fish_dish    := 303;
      
      
      --  Create associative objects to use when linking flavoured and coloured objects
      
      blue_chicken := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_chicken.all).Dish_Number          := the_blue_chicken_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_chicken.all).Coloured             := Creation_Deletion_Domain_Types.blue;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_chicken.all).Flavoured            := Creation_Deletion_Domain_Types.chicken;
      
      
      red_chicken := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_chicken.all).Dish_Number          := the_red_chicken_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_chicken.all).Coloured             := Creation_Deletion_Domain_Types.red;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_chicken.all).Flavoured            := Creation_Deletion_Domain_Types.chicken;
      
      
      green_chicken := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_chicken.all).Dish_Number          := the_green_chicken_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_chicken.all).Coloured             := Creation_Deletion_Domain_Types.green;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_chicken.all).Flavoured            := Creation_Deletion_Domain_Types.chicken;
      
      
      blue_coffee := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_coffee.all).Dish_Number          := the_blue_coffee_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_coffee.all).Coloured             := Creation_Deletion_Domain_Types.blue;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_coffee.all).Flavoured            := Creation_Deletion_Domain_Types.coffee;
      
      
      red_coffee := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_coffee.all).Dish_Number          := the_red_coffee_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_coffee.all).Coloured             := Creation_Deletion_Domain_Types.red;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_coffee.all).Flavoured            := Creation_Deletion_Domain_Types.coffee;
      
      
      green_coffee := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_coffee.all).Dish_Number          := the_green_coffee_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_coffee.all).Coloured             := Creation_Deletion_Domain_Types.green;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_coffee.all).Flavoured            := Creation_Deletion_Domain_Types.coffee;
      
      
      blue_fish := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_fish.all).Dish_Number          := the_blue_fish_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_fish.all).Coloured             := Creation_Deletion_Domain_Types.blue;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_fish.all).Flavoured            := Creation_Deletion_Domain_Types.fish;
      
      
      red_fish := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_fish.all).Dish_Number          := the_red_fish_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_fish.all).Coloured             := Creation_Deletion_Domain_Types.red;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_fish.all).Flavoured            := Creation_Deletion_Domain_Types.fish;
      
      
      green_fish := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_fish.all).Dish_Number          := the_green_fish_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_fish.all).Coloured             := Creation_Deletion_Domain_Types.green;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_fish.all).Flavoured            := Creation_Deletion_Domain_Types.fish;
      
      
      --  many to many
      Creation_Deletion_Rel_R1.Link (
         A_Instance => chicken_flavour,
         B_Instance => blue_colour,
         Using      => blue_chicken);
      
      Creation_Deletion_Rel_R1.Link (
         A_Instance => chicken_flavour,
         B_Instance => red_colour,
         Using      => red_chicken);
      
      Creation_Deletion_Rel_R1.Link (
         A_Instance => chicken_flavour,
         B_Instance => green_colour,
         Using      => green_chicken);
      
      Creation_Deletion_Rel_R1.Link (
         A_Instance => coffee_flavour,
         B_Instance => blue_colour,
         Using      => blue_coffee);
      
      Creation_Deletion_Rel_R1.Link (
         A_Instance => coffee_flavour,
         B_Instance => red_colour,
         Using      => red_coffee);
      
      Creation_Deletion_Rel_R1.Link (
         A_Instance => coffee_flavour,
         B_Instance => green_colour,
         Using      => green_coffee);
      
      Creation_Deletion_Rel_R1.Link (
         A_Instance => fish_flavour,
         B_Instance => blue_colour,
         Using      => blue_fish);
      
      Creation_Deletion_Rel_R1.Link (
         A_Instance => fish_flavour,
         B_Instance => red_colour,
         Using      => red_fish);
      
      Creation_Deletion_Rel_R1.Link (
         A_Instance => fish_flavour,
         B_Instance => green_colour,
         Using      => green_fish);
      
      
      Root_Object.Object_List.Clear (
         From => set_of_associated_instances);
      
      Root_Object.Creation_Deletion.fandc.Find (
         Add_To => set_of_associated_instances);
      
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => red_things);
         
         Root_Object.Creation_Deletion.coloured.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(Temp_Entry.Item.all).Coloured =  Creation_Deletion_Domain_Types.red then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => red_things);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => blue_things);
         
         Root_Object.Creation_Deletion.coloured.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(Temp_Entry.Item.all).Coloured =  Creation_Deletion_Domain_Types.blue then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => blue_things);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => green_things);
         
         Root_Object.Creation_Deletion.coloured.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(Temp_Entry.Item.all).Coloured =  Creation_Deletion_Domain_Types.green then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => green_things);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => chicken_things);
         
         Root_Object.Creation_Deletion.flavoured.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(Temp_Entry.Item.all).Flavoured =  Creation_Deletion_Domain_Types.chicken then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => chicken_things);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => coffee_things);
         
         Root_Object.Creation_Deletion.flavoured.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(Temp_Entry.Item.all).Flavoured =  Creation_Deletion_Domain_Types.coffee then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => coffee_things);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => fish_things);
         
         Root_Object.Creation_Deletion.flavoured.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(Temp_Entry.Item.all).Flavoured =  Creation_Deletion_Domain_Types.fish then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => fish_things);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      Root_Object.Object_List.Clear (
         From => flavoured_things);
      
      Root_Object.Creation_Deletion.flavoured.Find (
         Add_To => flavoured_things);
      
      
      Root_Object.Object_List.Clear (
         From => coloured_things);
      
      Root_Object.Creation_Deletion.coloured.Find (
         Add_To => coloured_things);
      
      
      number_of_red_things           := Root_Object.Object_List.Count_Of(red_things);
      number_of_blue_things          := Root_Object.Object_List.Count_Of(blue_things);
      number_of_green_things         := Root_Object.Object_List.Count_Of(green_things);
      number_of_coloured_things      := Root_Object.Object_List.Count_Of(coloured_things);
      number_of_chicken_things       := Root_Object.Object_List.Count_Of(chicken_things);
      number_of_fish_things          := Root_Object.Object_List.Count_Of(fish_things);
      number_of_coffee_things        := Root_Object.Object_List.Count_Of(coffee_things);
      number_of_flavoured_things     := Root_Object.Object_List.Count_Of(flavoured_things);
      number_of_associated_instances := Root_Object.Object_List.Count_Of(set_of_associated_instances);
      Has_Failed                     := False;
      
      
      if number_of_associated_instances =  9 then
         
         if number_of_flavoured_things =  3 then
            
            if number_of_coloured_things /= 3 then
               
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
      
      
      if (not Has_Failed) then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "coloured                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "coloured                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 - Navigate from coloured object to associated object
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Navigate from coloured object to");
      
      
      Test_Passed_Counter := 0;
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => coloured_things);
         
         while (Temp_Entry /= null) loop
            coloured_thing := Temp_Entry.Item;
            The_Test_Has_Passed := False;
            my_colour           := Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type(coloured_thing.all).Coloured;
            
            
            --  Perform the navigation to find the set of associated instances.
            
            Root_Object.Object_List.Clear (
               From => associated_instances);
            
            
            Creation_Deletion_Rel_R1.Navigate (
               From  => coloured_thing,
               Class => Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_type'tag,
               To    => associated_instances);
            
            number_of_assoc_instances := Root_Object.Object_List.Count_Of(associated_instances);
            The_Test_Has_Passed       := False;
            
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => associated_instances);
               
               while (Temp_Entry /= null) loop
                  assoc_instance := Temp_Entry.Item;
                  
                  the_dish := Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_type(assoc_instance.all).Dish_Number;
                  
                  
                  Creation_Deletion_Rel_R1.Navigate (
                     From  => assoc_instance,
                     Class => Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type'tag,
                     To    => this_flavour);
                  
                  
                  if this_flavour /= Null then
                     
                     the_assoc_flavour := Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type(this_flavour.all).Flavoured;
                  end if;
                  
                  the_colour := Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type(coloured_thing.all).Coloured;
                  
                  
                  case the_colour is
                     when Creation_Deletion_Domain_Types.red =>
                        
                        case the_assoc_flavour is
                           when Creation_Deletion_Domain_Types.chicken =>
                              
                              if the_dish =  the_red_chicken_dish then
                                 
                                 The_Test_Has_Passed := True;
                              end if;
                              
                           
                           when Creation_Deletion_Domain_Types.fish =>
                              
                              if the_dish =  the_red_fish_dish then
                                 The_Test_Has_Passed := True;
                              end if;
                              
                           
                           when Creation_Deletion_Domain_Types.coffee =>
                              
                              if the_dish =  the_red_coffee_dish then
                                 The_Test_Has_Passed := True;
                              end if;
                              
                           
                           when others =>
                              The_Test_Has_Passed := False;
                           
                        end case; -- end of case the_assoc_flavour
                        
                     
                     when Creation_Deletion_Domain_Types.blue =>
                        
                        case the_assoc_flavour is
                           when Creation_Deletion_Domain_Types.chicken =>
                              
                              if the_dish =  the_blue_chicken_dish then
                                 The_Test_Has_Passed := True;
                              end if;
                              
                           
                           when Creation_Deletion_Domain_Types.fish =>
                              
                              if the_dish =  the_blue_fish_dish then
                                 The_Test_Has_Passed := True;
                              end if;
                              
                           
                           when Creation_Deletion_Domain_Types.coffee =>
                              
                              if the_dish =  the_blue_coffee_dish then
                                 The_Test_Has_Passed := True;
                              end if;
                              
                           
                           when others =>
                              The_Test_Has_Passed := False;
                           
                        end case; -- end of case the_assoc_flavour
                        
                     
                     when Creation_Deletion_Domain_Types.green =>
                        
                        case the_assoc_flavour is
                           when Creation_Deletion_Domain_Types.chicken =>
                              
                              if the_dish =  the_green_chicken_dish then
                                 The_Test_Has_Passed := True;
                              end if;
                              
                           
                           when Creation_Deletion_Domain_Types.fish =>
                              
                              if the_dish =  the_green_fish_dish then
                                 The_Test_Has_Passed := True;
                              end if;
                              
                           
                           when Creation_Deletion_Domain_Types.coffee =>
                              
                              if the_dish =  the_green_coffee_dish then
                                 The_Test_Has_Passed := True;
                              end if;
                              
                           
                           when others =>
                              The_Test_Has_Passed := False;
                           
                        end case; -- end of case the_assoc_flavour
                        
                     
                     when others =>
                        The_Test_Has_Passed := False;
                     
                  end case; -- end of case the_colour
                  
                  
                  if The_Test_Has_Passed =  True then
                     Test_Passed_Counter := Test_Passed_Counter + 1;
                  else
                     Test_Passed_Counter := Test_Passed_Counter - 1;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => associated_instances);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => coloured_things);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if Test_Passed_Counter =  9 then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "coloured                        ",
            Test_Number        => Test,
            Test_Value         => Test_Passed_Counter);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "coloured                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Test_Passed_Counter);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      --  Test 6 - Tidy up and delete all instances.
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0531               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Delete everything               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0121               ");
      
      
      Root_Object.Object_List.Clear (
         From => set_of_assoc);
      
      Root_Object.Creation_Deletion.fandc.Find (
         Add_To => set_of_assoc);
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => set_of_assoc);
         
         while (Temp_Entry /= null) loop
            each_assoc := Temp_Entry.Item;
            
            --  Navigate up the relationship to the two instances
            
            Creation_Deletion_Rel_R1.Navigate (
               From  => each_assoc,
               Class => Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type'tag,
               To    => a_colour);
            
            
            Creation_Deletion_Rel_R1.Navigate (
               From  => each_assoc,
               Class => Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type'tag,
               To    => a_flavour);
            
            
            Creation_Deletion_Rel_R1.Unassociate(
               A_Instance => a_flavour,
               B_Instance => a_colour,
               From       => each_assoc);
            
            Creation_Deletion_Rel_R1.Unlink (
               A_Instance => a_colour,
               B_Instance => a_flavour);
            
            
            --  Get rid of the assoc instance as it is no longer linked to anything.
            
            Root_Object.Creation_Deletion.fandc.Delete (
               Old_Instance => each_assoc);
            
            Root_Object.Object_List.Clear (
               From => any_more_flavours);
            
            
            Creation_Deletion_Rel_R1.Navigate (
               From  => a_colour,
               Class => Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type'tag,
               To    => any_more_flavours);
            
            Root_Object.Object_List.Clear (
               From => any_more_colours);
            
            
            Creation_Deletion_Rel_R1.Navigate (
               From  => a_flavour,
               Class => Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type'tag,
               To    => any_more_colours);
            
            if Root_Object.Object_List.Count_Of(any_more_flavours) =  0 then
               
               --  This instance of colour is not linked to any more flavours.
               
               Root_Object.Creation_Deletion.coloured.Delete (
                  Old_Instance => a_colour);
            end if;
            
            
            if Root_Object.Object_List.Count_Of(any_more_colours) =  0 then
               
               --  This instance of flavour is not linked to any more colours.
               
               Root_Object.Creation_Deletion.flavoured.Delete (
                  Old_Instance => a_flavour);
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => set_of_assoc);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      a_flavour := Root_Object.Creation_Deletion.flavoured.Unconditional_Find_One;
      a_colour := Root_Object.Creation_Deletion.coloured.Unconditional_Find_One;
      assoc := Root_Object.Creation_Deletion.fandc.Unconditional_Find_One;
      
      if a_flavour =  Null then
         
         if a_colour =  Null then
            
            if assoc /= Null then
               
               Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                  Failed_Domain_Object => "Coloured                        ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -10);
               
            else
               Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
                  Test_Object_Domain => "Coloured                        ",
                  Test_Number        => Test,
                  Test_Value         => 0);
               
            end if;
            
         else
            Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
               Failed_Domain_Object => "Coloured                        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "Coloured                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -30);
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      
      Returned_Test_Number := Test + 1;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (any_more_colours);
      Root_Object.Object_List.Destroy_List (any_more_flavours);
      Root_Object.Object_List.Destroy_List (set_of_assoc);
      Root_Object.Object_List.Destroy_List (associated_instances);
      Root_Object.Object_List.Destroy_List (coloured_things);
      Root_Object.Object_List.Destroy_List (flavoured_things);
      Root_Object.Object_List.Destroy_List (fish_things);
      Root_Object.Object_List.Destroy_List (coffee_things);
      Root_Object.Object_List.Destroy_List (chicken_things);
      Root_Object.Object_List.Destroy_List (green_things);
      Root_Object.Object_List.Destroy_List (blue_things);
      Root_Object.Object_List.Destroy_List (red_things);
      Root_Object.Object_List.Destroy_List (set_of_associated_instances);
      Root_Object.Object_List.Destroy_List (new_associated_instances);
      Root_Object.Object_List.Destroy_List (mouldered_and_faded);
      Root_Object.Object_List.Destroy_List (mouldering_set_of_flavours);
      Root_Object.Object_List.Destroy_List (faded_set_of_colours);
      
   end Creation_Deletion_coloured2_Regression_Tests;
   
end Creation_Deletion_coloured2_Regression_Tests_Service;

--
-- End of file Creation_Deletion_coloured2_Regression_Tests_Service.adb
--
