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
--* File Name:               Creation_Deletion_coloured1_Colourize_It_Service.adb
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
with Root_Object.Creation_Deletion.fandc;
with Root_Object.Creation_Deletion.coloured;
with Root_Object.Creation_Deletion.flavoured;

-- List of relationships used
with Creation_Deletion_rel_R1;

-- List of bridges used
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


package body Creation_Deletion_coloured1_Colourize_It_Service is
   
   procedure Creation_Deletion_coloured1_Colourize_It (
      Test_Number     : in     Application_Types.Base_Integer_Type;
      Returned_Number :    out Application_Types.Base_Integer_Type) is
      
      set_of_associated_instances : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      red_things                  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      blue_things                 : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      green_things                : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      coloured_things             : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      chicken_things              : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      coffee_things               : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      fish_things                 : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      flavoured_things            : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      associated_instances        : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      before_red_chickens         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      after_red_chickens          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      set_of_assoc                : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      set_of_colour               : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      some_flavours               : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      set_of_flavour              : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      a_chicken_flavour     : Root_Object.Object_Access;
      a_red_colour          : Root_Object.Object_Access;
      a_red_chicken         : Root_Object.Object_Access;
      coffee_flavour        : Root_Object.Object_Access;
      fish_flavour          : Root_Object.Object_Access;
      chicken_flavour       : Root_Object.Object_Access;
      blue_colour           : Root_Object.Object_Access;
      red_colour            : Root_Object.Object_Access;
      green_colour          : Root_Object.Object_Access;
      blue_chicken          : Root_Object.Object_Access;
      red_chicken           : Root_Object.Object_Access;
      green_chicken         : Root_Object.Object_Access;
      blue_coffee           : Root_Object.Object_Access;
      red_coffee            : Root_Object.Object_Access;
      green_coffee          : Root_Object.Object_Access;
      blue_fish             : Root_Object.Object_Access;
      red_fish              : Root_Object.Object_Access;
      green_fish            : Root_Object.Object_Access;
      coloured_thing        : Root_Object.Object_Access;
      assoc_instance        : Root_Object.Object_Access;
      this_flavoured_object : Root_Object.Object_Access;
      flavoured_thing       : Root_Object.Object_Access;
      this_colour           : Root_Object.Object_Access;
      assoc_thing           : Root_Object.Object_Access;
      flavoured_instance    : Root_Object.Object_Access;
      coloured_instance     : Root_Object.Object_Access;
      a_chicken             : Root_Object.Object_Access;
      a_red                 : Root_Object.Object_Access;
      an_illegal_chicken    : Root_Object.Object_Access;
      an_illegal_red        : Root_Object.Object_Access;
      assoc_object          : Root_Object.Object_Access;
      left_object           : Root_Object.Object_Access;
      right_object          : Root_Object.Object_Access;
      each_assoc            : Root_Object.Object_Access;
      a_colour              : Root_Object.Object_Access;
      a_flavour             : Root_Object.Object_Access;
      each_colour           : Root_Object.Object_Access;
      each_flavour          : Root_Object.Object_Access;
      assoc                 : Root_Object.Object_Access;
      
      Test                           : Application_Types.Base_Integer_Type := 1;
      Failure_Code                   : Application_Types.Base_Integer_Type := 1;
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
      chicken_count                  : Application_Types.Base_Integer_Type := 1;
      fish_count                     : Application_Types.Base_Integer_Type := 1;
      coffee_count                   : Application_Types.Base_Integer_Type := 1;
      red_count                      : Application_Types.Base_Integer_Type := 1;
      blue_count                     : Application_Types.Base_Integer_Type := 1;
      green_count                    : Application_Types.Base_Integer_Type := 1;
      number_of_red_chickens_before  : Application_Types.Base_Integer_Type := 1;
      number_of_red_chickens_after   : Application_Types.Base_Integer_Type := 1;
      
      colour_string : Application_Types.Base_Text_Type := (others => ' ');
      
      my_colour         : Creation_Deletion_Domain_Types.Coloured_Type                   := Creation_Deletion_Domain_Types.Coloured_Type_first;
      the_assoc_flavour : Creation_Deletion_Domain_Types.Flavoured_Type                  := Creation_Deletion_Domain_Types.Flavoured_Type_first;
      the_colour        : Creation_Deletion_Domain_Types.Coloured_Type                   := Creation_Deletion_Domain_Types.Coloured_Type_first;
      the_assoc_colour  : Creation_Deletion_Domain_Types.Coloured_Type                   := Creation_Deletion_Domain_Types.Coloured_Type_first;
      the_flavour       : Creation_Deletion_Domain_Types.Flavoured_Type                  := Creation_Deletion_Domain_Types.Flavoured_Type_first;
      
      Has_Failed          : Boolean := Application_Types.Boolean_first;
      The_Test_Has_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of coloured1_Colourize_It
      
      -- -------------------------------------------------------------------------
      --  Colouize_It Object Sync Service
      -- -------------------------------------------------------------------------
      Test := Test_Number;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Create MtoM assoc specify attributes
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
         The_Requid_Itself  => "1241-0000-01-0102               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0101               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0116               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0117               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0122               ");
      
      
      a_chicken_flavour := Root_Object.Creation_Deletion.flavoured.Create;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(a_chicken_flavour.all).Flavoured := Creation_Deletion_Domain_Types.chicken;
      
      
      a_red_colour := Root_Object.Creation_Deletion.coloured.Create;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(a_red_colour.all).Coloured := Creation_Deletion_Domain_Types.red;
      
      
      a_red_chicken := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(a_red_chicken.all).Dish_Number     := 201;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(a_red_chicken.all).Coloured        := Creation_Deletion_Domain_Types.red;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(a_red_chicken.all).Flavoured       := Creation_Deletion_Domain_Types.chicken;
      
      
      --  Set attribute using instance handle
      
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type(a_chicken_flavour.all).How_Spicy := 2;
      
      --  Set attribute using object specification
      --  Unsupported.
      --  Coloured_Object.Intensity = 2 where Coloured = red
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
      --  Test 2 - 
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Setup and link m to m           ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0521               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0522               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1101-0000-01-0122               ");
      
      
      coffee_flavour := Root_Object.Creation_Deletion.flavoured.Create;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(coffee_flavour.all).Flavoured := Creation_Deletion_Domain_Types.coffee;
      
      
      fish_flavour := Root_Object.Creation_Deletion.flavoured.Create;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(fish_flavour.all).Flavoured := Creation_Deletion_Domain_Types.fish;
      
      
      chicken_flavour := Root_Object.Creation_Deletion.flavoured.Create;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(chicken_flavour.all).Flavoured       := 
         Creation_Deletion_Domain_Types.chicken;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(chicken_flavour.all).How_Spicy       := 1;
      
      
      coffee_flavour := Root_Object.Creation_Deletion.flavoured.Create;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(coffee_flavour.all).Flavoured       := Creation_Deletion_Domain_Types.coffee;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(coffee_flavour.all).How_Spicy       := 2;
      
      
      fish_flavour := Root_Object.Creation_Deletion.flavoured.Create;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(fish_flavour.all).Flavoured       := Creation_Deletion_Domain_Types.fish;
      Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(fish_flavour.all).How_Spicy       := 3;
      
      
      blue_colour := Root_Object.Creation_Deletion.coloured.Create;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(blue_colour.all).Coloured        := Creation_Deletion_Domain_Types.blue;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(blue_colour.all).Intensity       := 1;
      
      
      red_colour := Root_Object.Creation_Deletion.coloured.Create;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(red_colour.all).Coloured        := Creation_Deletion_Domain_Types.red;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(red_colour.all).Intensity       := 2;
      
      
      green_colour := Root_Object.Creation_Deletion.coloured.Create;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(green_colour.all).Coloured        := Creation_Deletion_Domain_Types.green;
      Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(green_colour.all).Intensity       := 3;
      
      
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
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_chicken.all).Dish_Number     := the_blue_chicken_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_chicken.all).Coloured        := Creation_Deletion_Domain_Types.blue;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_chicken.all).Flavoured       := Creation_Deletion_Domain_Types.chicken;
      
      
      red_chicken := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_chicken.all).Dish_Number     := the_red_chicken_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_chicken.all).Coloured        := Creation_Deletion_Domain_Types.red;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_chicken.all).Flavoured       := Creation_Deletion_Domain_Types.chicken;
      
      
      green_chicken := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_chicken.all).Dish_Number     := the_green_chicken_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_chicken.all).Coloured        := Creation_Deletion_Domain_Types.green;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_chicken.all).Flavoured       := Creation_Deletion_Domain_Types.chicken;
      
      
      blue_coffee := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_coffee.all).Dish_Number     := the_blue_coffee_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_coffee.all).Coloured        := Creation_Deletion_Domain_Types.blue;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_coffee.all).Flavoured       := Creation_Deletion_Domain_Types.coffee;
      
      
      red_coffee := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_coffee.all).Dish_Number     := the_red_coffee_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_coffee.all).Coloured        := Creation_Deletion_Domain_Types.red;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_coffee.all).Flavoured       := Creation_Deletion_Domain_Types.coffee;
      
      
      green_coffee := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_coffee.all).Dish_Number     := the_green_coffee_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_coffee.all).Coloured        := Creation_Deletion_Domain_Types.green;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_coffee.all).Flavoured       := Creation_Deletion_Domain_Types.coffee;
      
      
      blue_fish := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_fish.all).Dish_Number     := the_blue_fish_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_fish.all).Coloured        := Creation_Deletion_Domain_Types.blue;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(blue_fish.all).Flavoured       := Creation_Deletion_Domain_Types.fish;
      
      
      red_fish := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_fish.all).Dish_Number     := the_red_fish_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_fish.all).Coloured        := Creation_Deletion_Domain_Types.red;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_fish.all).Flavoured       := Creation_Deletion_Domain_Types.fish;
      
      
      green_fish := Root_Object.Creation_Deletion.fandc.Create;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_fish.all).Dish_Number     := the_green_fish_dish;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_fish.all).Coloured        := Creation_Deletion_Domain_Types.green;
      Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(green_fish.all).Flavoured       := Creation_Deletion_Domain_Types.fish;
      
      
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
      
      Root_Object.Object_List.Clear (
         From => coloured_things);
      
      Root_Object.Creation_Deletion.coloured.Find (
         Add_To => coloured_things);
      
      
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
      
      
      --  Coloured things in all their glory
      
      number_of_red_things      := Root_Object.Object_List.Count_Of(red_things);
      number_of_blue_things     := Root_Object.Object_List.Count_Of(blue_things);
      number_of_green_things    := Root_Object.Object_List.Count_Of(green_things);
      number_of_coloured_things := Root_Object.Object_List.Count_Of(coloured_things);
      
      
      --  Flavoured things in their entirety.
      
      number_of_chicken_things       := Root_Object.Object_List.Count_Of(chicken_things);
      number_of_fish_things          := Root_Object.Object_List.Count_Of(fish_things);
      number_of_coffee_things        := Root_Object.Object_List.Count_Of(coffee_things);
      number_of_flavoured_things     := Root_Object.Object_List.Count_Of(flavoured_things);
      number_of_associated_instances := Root_Object.Object_List.Count_Of(set_of_associated_instances);
      The_Test_Has_Passed            := False;
      
      
      if number_of_associated_instances =  9 then
         
         if number_of_flavoured_things =  5 then
            
            if number_of_coloured_things =  3 then
               
               --  Test has passed
               
               The_Test_Has_Passed := True;
               
            end if;
            
         end if;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "coloured                        ",
            Test_Number        => Test,
            Test_Value         => number_of_associated_instances);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "coloured                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - Navigate from coloured object to associated object
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
            
            
            --  Debug start
            
            my_colour := Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type(coloured_thing.all).Coloured;
            
            
            if my_colour =  Creation_Deletion_Domain_Types.red then
               
               colour_string := "Red                             ";
            end if;
            
            
            if my_colour =  Creation_Deletion_Domain_Types.green then
               colour_string := "Green                           ";
            end if;
            
            
            if my_colour =  Creation_Deletion_Domain_Types.blue then
               colour_string := "Blue                            ";
               
            end if;
            
            
            --  debug end
            
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
                  
                  
                  --  Use of referential attributes is not permitted.
                  --  the_assoc_flavour = assoc_instance.Flavoured
                  
                  Creation_Deletion_Rel_R1.Navigate (
                     From  => assoc_instance,
                     Class => Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type'tag,
                     To    => this_flavoured_object);
                  
                  
                  the_assoc_flavour := Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type(this_flavoured_object.all).Flavoured;
                  the_colour        := Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type(coloured_thing.all).Coloured;
                  
                  
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
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - Navigate from flavoured object to associated object
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Navigate from flavoured object t");
      
      
      Test_Passed_Counter := 0;
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => flavoured_things);
         
         while (Temp_Entry /= null) loop
            flavoured_thing := Temp_Entry.Item;
            The_Test_Has_Passed := False;
            
            
            Root_Object.Object_List.Clear (
               From => associated_instances);
            
            
            Creation_Deletion_Rel_R1.Navigate (
               From  => flavoured_thing,
               Class => Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_type'tag,
               To    => associated_instances);
            
            number_of_assoc_instances := Root_Object.Object_List.Count_Of(associated_instances);
            
            
            if number_of_associated_instances =  0 then
               
               Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                  Failed_Domain_Object => "coloured                        ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -2);
               
            else
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
                     
                     
                     --  Navigate to the coloured object from the assoc object.
                     
                     Creation_Deletion_Rel_R1.Navigate (
                        From  => assoc_instance,
                        Class => Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type'tag,
                        To    => this_colour);
                     
                     
                     if this_colour /= Null then
                        
                        the_assoc_colour := Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type(this_colour.all).Coloured;
                     end if;
                     
                     the_flavour := Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type(flavoured_thing.all).Flavoured;
                     
                     
                     case the_flavour is
                        when Creation_Deletion_Domain_Types.chicken =>
                           
                           case the_assoc_colour is
                              when Creation_Deletion_Domain_Types.green =>
                                 
                                 if the_dish =  the_green_chicken_dish then
                                    
                                    The_Test_Has_Passed := True;
                                 end if;
                                 
                              
                              when Creation_Deletion_Domain_Types.blue =>
                                 
                                 if the_dish =  the_blue_chicken_dish then
                                    The_Test_Has_Passed := True;
                                 end if;
                                 
                              
                              when Creation_Deletion_Domain_Types.red =>
                                 
                                 if the_dish =  the_red_chicken_dish then
                                    The_Test_Has_Passed := True;
                                 end if;
                                 
                              
                              when others =>
                                 The_Test_Has_Passed := False;
                              
                           end case; -- end of case the_assoc_colour
                           
                        
                        when Creation_Deletion_Domain_Types.fish =>
                           
                           case the_assoc_colour is
                              when Creation_Deletion_Domain_Types.green =>
                                 
                                 if the_dish =  the_green_fish_dish then
                                    The_Test_Has_Passed := True;
                                 end if;
                                 
                              
                              when Creation_Deletion_Domain_Types.blue =>
                                 
                                 if the_dish =  the_blue_fish_dish then
                                    The_Test_Has_Passed := True;
                                 end if;
                                 
                              
                              when Creation_Deletion_Domain_Types.red =>
                                 
                                 if the_dish =  the_red_fish_dish then
                                    The_Test_Has_Passed := True;
                                 end if;
                                 
                              
                              when others =>
                                 The_Test_Has_Passed := False;
                              
                           end case; -- end of case the_assoc_colour
                           
                        
                        when Creation_Deletion_Domain_Types.coffee =>
                           
                           case the_assoc_colour is
                              when Creation_Deletion_Domain_Types.green =>
                                 
                                 if the_dish =  the_green_coffee_dish then
                                    The_Test_Has_Passed := True;
                                 end if;
                                 
                              
                              when Creation_Deletion_Domain_Types.blue =>
                                 
                                 if the_dish =  the_blue_coffee_dish then
                                    The_Test_Has_Passed := True;
                                 end if;
                                 
                              
                              when Creation_Deletion_Domain_Types.red =>
                                 
                                 if the_dish =  the_red_coffee_dish then
                                    The_Test_Has_Passed := True;
                                 end if;
                                 
                              
                              when others =>
                                 The_Test_Has_Passed := False;
                              
                           end case; -- end of case the_assoc_colour
                           
                        
                        when others =>
                           The_Test_Has_Passed := False;
                        
                     end case; -- end of case the_flavour
                     
                     
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
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => flavoured_things);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if Test_Passed_Counter =  9 then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "flavoured                       ",
            Test_Number        => Test,
            Test_Value         => Test_Passed_Counter);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "flavoured                       ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Test_Passed_Counter);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 - Navigate from flavoured object to associated object
      -- -------------------------------------------------------------------------
      
      chicken_count := 0;
      fish_count    := 0;
      coffee_count  := 0;
      
      
      --  Navigate from flavoured object to associated object
      
      The_Test_Has_Passed := False;
      
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Navigate from assoc object to fl");
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => set_of_associated_instances);
         
         while (Temp_Entry /= null) loop
            assoc_thing := Temp_Entry.Item;
            
            Creation_Deletion_Rel_R1.Navigate (
               From  => assoc_thing,
               Class => Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type'tag,
               To    => flavoured_instance);
            
            
            the_flavour := Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type(flavoured_instance.all).Flavoured;
            
            
            if the_flavour =  Creation_Deletion_Domain_Types.chicken then
               
               chicken_count := chicken_count + 1;
               
            else
               
               if the_flavour =  Creation_Deletion_Domain_Types.fish then
                  
                  fish_count := fish_count + 1;
                  
               else
                  
                  if the_flavour =  Creation_Deletion_Domain_Types.coffee then
                     
                     coffee_count := coffee_count + 1;
                     
                  else
                     
                     The_Test_Has_Passed := False;
                  end if;
                  
               end if;
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => set_of_associated_instances);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if coffee_count  =  3 and then
         chicken_count =  3 and then
         fish_count    =  3 then
         The_Test_Has_Passed := True;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "coloured                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "coloured                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      --  Test 6 - Navigate from assoc object to coloured
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Navigate from assoc object to co");
      
      
      red_count           := 0;
      blue_count          := 0;
      green_count         := 0;
      The_Test_Has_Passed := False;
      
      
      --  Navigate from assoc object to coloured object
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => set_of_associated_instances);
         
         while (Temp_Entry /= null) loop
            assoc_thing := Temp_Entry.Item;
            
            Creation_Deletion_Rel_R1.Navigate (
               From  => assoc_thing,
               Class => Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type'tag,
               To    => coloured_instance);
            
            
            the_colour := Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type(coloured_instance.all).Coloured;
            
            
            if the_colour =  Creation_Deletion_Domain_Types.red then
               
               red_count := red_count + 1;
               
            else
               
               if the_colour =  Creation_Deletion_Domain_Types.blue then
                  
                  blue_count := blue_count + 1;
                  
               else
                  
                  if the_colour =  Creation_Deletion_Domain_Types.green then
                     
                     green_count := green_count + 1;
                     
                  else
                     
                     The_Test_Has_Passed := False;
                  end if;
                  
               end if;
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => set_of_associated_instances);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if red_count   =  3 and then
         blue_count  =  3 and then
         green_count =  3 then
         The_Test_Has_Passed := True;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "coloured                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "coloured                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 6
      -- -------------------------------------------------------------------------
      --  Test 7 - Unnassociate assoc object
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Unnassociate assoc object       ");
      
      
      Failure_Code := -3;
      
      
      --  Attempt deletion of assoc object and others 
      red_chicken := Root_Object.Creation_Deletion.fandc.Conditional_Find_One;
      while (red_chicken /= null) and then (not (Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(red_chicken.all).Dish_Number =  201) ) loop
         
         red_chicken := red_chicken.Next_Object;
      end loop;
      
      
      --  Found exactly one red chicken with a dish number of 201
      --  Find the colour and flavour, it should be red and chicken flavoured.
      
      Creation_Deletion_Rel_R1.Navigate (
         From  => red_chicken,
         Class => Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type'tag,
         To    => a_chicken);
      
      
      Creation_Deletion_Rel_R1.Navigate (
         From  => red_chicken,
         Class => Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type'tag,
         To    => a_red);
      
      
      --  Stash this value, it's used in the next test, but unlink and unassociate
      --  are inextricably linked and testing them separately can cause differences
      --  between WACA and ISIM.
      
      Root_Object.Object_List.Clear (
         From => before_red_chickens);
      
      
      Creation_Deletion_Rel_R1.Navigate (
         From  => a_red,
         Class => Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type'tag,
         To    => before_red_chickens);
      
      --  Unassociate the assoc object from the m to m relationship
      
      Creation_Deletion_Rel_R1.Unassociate(
         A_Instance => a_chicken,
         B_Instance => a_red,
         From       => red_chicken);
      
      --  Attempt the navigation again
      
      Creation_Deletion_Rel_R1.Navigate (
         From  => red_chicken,
         Class => Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type'tag,
         To    => an_illegal_chicken);
      
      
      if an_illegal_chicken =  Null then
         
         The_Test_Has_Passed := True;
         Failure_Code        := Failure_Code + 1;
      end if;
      
      
      Creation_Deletion_Rel_R1.Navigate (
         From  => red_chicken,
         Class => Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_type'tag,
         To    => an_illegal_red);
      
      
      if an_illegal_red =  Null then
         The_Test_Has_Passed := True;
         Failure_Code        := Failure_Code + 2;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "coloured                        ",
            Test_Number        => Test,
            Test_Value         => Failure_Code);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "coloured                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 7
      -- -------------------------------------------------------------------------
      --  Test 8 - Unlink assoc object
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Unlink assoc object             ");
      
      
      Failure_Code                  := -1;
      The_Test_Has_Passed           := False;
      number_of_red_chickens_before := Root_Object.Object_List.Count_Of(before_red_chickens);
      
      
      --  Unlink two instances
      
      Creation_Deletion_Rel_R1.Unlink (
         A_Instance => a_chicken,
         B_Instance => a_red);
      
      
      --  Attempt to navigate down remaining links
      
      Root_Object.Object_List.Clear (
         From => after_red_chickens);
      
      
      Creation_Deletion_Rel_R1.Navigate (
         From  => a_red,
         Class => Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type'tag,
         To    => after_red_chickens);
      
      number_of_red_chickens_after := Root_Object.Object_List.Count_Of(after_red_chickens);
      
      
      if number_of_red_chickens_before /= number_of_red_chickens_after then
         
         The_Test_Has_Passed := True;
         Failure_Code        := Failure_Code + 1;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "coloured                        ",
            Test_Number        => Test,
            Test_Value         => Failure_Code);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "coloured                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 8
      -- -------------------------------------------------------------------------
      --  Test 9 - Delete assoc object
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0121               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Delete assoc object             ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0531               ");
      
      
      --  a_chicken is still associated with some other coloured_objects
      --  also a_red is still associated with some other flavoured_objects
      --  but red_chicken isn't
      
      Root_Object.Creation_Deletion.fandc.Delete (
         Old_Instance => red_chicken);
      
      --  Now try and re-aquire them
      assoc_object := Root_Object.Creation_Deletion.fandc.Conditional_Find_One;
      while (assoc_object /= null) and then (not (Root_Object.Creation_Deletion.fandc.Creation_Deletion_fandc_Type(assoc_object.all).Dish_Number =  201) ) loop
         
         assoc_object := assoc_object.Next_Object;
      end loop;
      
      
      --  Left and right objects are still linked and associated with other instances
      left_object := Root_Object.Creation_Deletion.flavoured.Conditional_Find_One;
      while (left_object /= null) and then (not (Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_Type(left_object.all).Flavoured =  
         Creation_Deletion_Domain_Types.chicken) ) loop
         
         left_object := left_object.Next_Object;
      end loop;
      
      right_object := Root_Object.Creation_Deletion.coloured.Conditional_Find_One;
      while (right_object /= null) and then (not (Root_Object.Creation_Deletion.coloured.Creation_Deletion_coloured_Type(right_object.all).Coloured =  
         Creation_Deletion_Domain_Types.red) ) loop
         
         right_object := right_object.Next_Object;
      end loop;
      
      
      The_Test_Has_Passed := False;
      
      if left_object /= Null then
         
         if right_object /= Null then
            
            if assoc_object =  Null then
               The_Test_Has_Passed := True;
               
            end if;
            
         end if;
         
      end if;
      
      
      if The_Test_Has_Passed =  True then
         
         Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
            Test_Object_Domain => "coloured                        ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "coloured                        ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 9
      -- -------------------------------------------------------------------------
      --  Test 10 - Tidy up and delete all instances.
      -- -------------------------------------------------------------------------
      
      Creation_Deletion_RPT1_Start_Test_Bridge.Creation_Deletion_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0121               ",
         Invoking_Domain => "Creation Deletion               ",
         Invoking_Object => "Coloured_Object                 ",
         Purpose         => "Delete everything               ");
      
      Creation_Deletion_RPT8_Specify_Requid_Bridge.Creation_Deletion_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0531               ");
      
      
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
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => set_of_assoc);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      Root_Object.Object_List.Clear (
         From => set_of_colour);
      
      Root_Object.Creation_Deletion.coloured.Find (
         Add_To => set_of_colour);
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => set_of_colour);
         
         while (Temp_Entry /= null) loop
            each_colour := Temp_Entry.Item;
            
            --  Navigate up the relationship to the two instances
            
            Root_Object.Object_List.Clear (
               From => some_flavours);
            
            
            Creation_Deletion_Rel_R1.Navigate (
               From  => each_colour,
               Class => Root_Object.Creation_Deletion.flavoured.Creation_Deletion_flavoured_type'tag,
               To    => some_flavours);
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => some_flavours);
               
               while (Temp_Entry /= null) loop
                  a_flavour := Temp_Entry.Item;
                  
                  Creation_Deletion_Rel_R1.Unlink (
                     A_Instance => each_colour,
                     B_Instance => a_flavour);
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => some_flavours);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            --  Get rid of the colour instance as it is no longer linked to anything.
            
            Root_Object.Creation_Deletion.coloured.Delete (
               Old_Instance => each_colour);
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => set_of_colour);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      Root_Object.Object_List.Clear (
         From => set_of_flavour);
      
      Root_Object.Creation_Deletion.flavoured.Find (
         Add_To => set_of_flavour);
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => set_of_flavour);
         
         while (Temp_Entry /= null) loop
            each_flavour := Temp_Entry.Item;
            
            --  Navigate up the relationship to the two instances
            --    a_colour = each_flavour -> R1.Coloured_Object
            --    unlink each_flavour R1 a_colour
            --  Get rid of the flavour instance as it is no longer linked to anything.
            
            Root_Object.Creation_Deletion.flavoured.Delete (
               Old_Instance => each_flavour);
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => set_of_flavour);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      a_flavour := Root_Object.Creation_Deletion.flavoured.Unconditional_Find_One;
      a_colour := Root_Object.Creation_Deletion.coloured.Unconditional_Find_One;
      assoc := Root_Object.Creation_Deletion.fandc.Unconditional_Find_One;
      
      if a_flavour =  Null then
         
         if a_colour =  Null then
            
            if assoc =  Null then
               
               Creation_Deletion_RPT2_Test_Passed_Bridge.Creation_Deletion_RPT2_Test_Passed (
                  Test_Object_Domain => "coloured                        ",
                  Test_Number        => Test,
                  Test_Value         => 0);
               
            else
               Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
                  Failed_Domain_Object => "coloured assoc                  ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -1);
               
            end if;
            
         else
            Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
               Failed_Domain_Object => "coloured a_colour               ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -2);
            
         end if;
         
      else
         Creation_Deletion_RPT3_Test_Failed_Bridge.Creation_Deletion_RPT3_Test_Failed (
            Failed_Domain_Object => "coloured a_flavour              ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -3);
         
      end if;
      
      
      --  End Test 10
      -- -------------------------------------------------------------------------
      
      Returned_Number := Test + 1;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (set_of_flavour);
      Root_Object.Object_List.Destroy_List (some_flavours);
      Root_Object.Object_List.Destroy_List (set_of_colour);
      Root_Object.Object_List.Destroy_List (set_of_assoc);
      Root_Object.Object_List.Destroy_List (after_red_chickens);
      Root_Object.Object_List.Destroy_List (before_red_chickens);
      Root_Object.Object_List.Destroy_List (associated_instances);
      Root_Object.Object_List.Destroy_List (flavoured_things);
      Root_Object.Object_List.Destroy_List (fish_things);
      Root_Object.Object_List.Destroy_List (coffee_things);
      Root_Object.Object_List.Destroy_List (chicken_things);
      Root_Object.Object_List.Destroy_List (coloured_things);
      Root_Object.Object_List.Destroy_List (green_things);
      Root_Object.Object_List.Destroy_List (blue_things);
      Root_Object.Object_List.Destroy_List (red_things);
      Root_Object.Object_List.Destroy_List (set_of_associated_instances);
      
   end Creation_Deletion_coloured1_Colourize_It;
   
end Creation_Deletion_coloured1_Colourize_It_Service;

--
-- End of file Creation_Deletion_coloured1_Colourize_It_Service.adb
--
