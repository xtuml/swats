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
--* File Name:               TAGS10_Perform_Active_One_To_Many_Tests_Service.adb
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
with Root_Object.TAGS.ATMO;
with Root_Object.TAGS.ATSO;
with Root_Object.TAGS.TD;

-- List of relationships used
with TAGS_rel_R2;

-- List of services used
with TAGS_TAGS5_Report_Now_Service;

-- List of bridges used
with TAGS_RPT5_Test_Text_Bridge;
with TAGS_RPT4_Test_Unsupported_Bridge;
with TAGS_RPT1_Start_Test_Bridge;

-- List of domain types used
with TAGS_Domain_Types;
use type TAGS_Domain_Types.Environment_Type;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body TAGS_TAGS10_Perform_Active_One_To_Many_Tests_Service is
   
   procedure TAGS_TAGS10_Perform_Active_One_To_Many_Tests is
      
      Set_Of_Many : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Find_Many   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Remaining   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Find_Single : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      my_test                   : Root_Object.Object_Access;
      Single_Tag                : Root_Object.Object_Access;
      First_Of_Many             : Root_Object.Object_Access;
      Second_Of_Many            : Root_Object.Object_Access;
      Third_Of_Many             : Root_Object.Object_Access;
      Replacement_First_Of_Many : Root_Object.Object_Access;
      each_instance             : Root_Object.Object_Access;
      Active_Single_End         : Root_Object.Object_Access;
      Active_Many_End_1         : Root_Object.Object_Access;
      
      Test                : Application_Types.Base_Integer_Type := 1;
      How_Many            : Application_Types.Base_Integer_Type := 1;
      Failure_Value       : Application_Types.Base_Integer_Type := 1;
      How_Many_Navigation : Application_Types.Base_Integer_Type := 1;
      How_Many_Find       : Application_Types.Base_Integer_Type := 1;
      How_Many_Remaining  : Application_Types.Base_Integer_Type := 1;
      How_Single_Find     : Application_Types.Base_Integer_Type := 1;
      
      Supported : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of TAGS10_Perform_Active_One_To_Many_Tests
      my_test := Root_Object.TAGS.TD.Unconditional_Find_One;
      Test      := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number;
      Supported := False;
      
      if Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Environment =  TAGS_Domain_Types.WACA then
         Supported := True;
         
      end if;
      
      Single_Tag := Root_Object.TAGS.ATSO.Create_Unique;
      Root_Object.TAGS.ATSO.TAGS_ATSO_Type(Single_Tag.all).Attribute_One := Test;
      Root_Object.TAGS.ATSO.TAGS_ATSO_Type(Single_Tag.all).Current_State := Root_Object.TAGS.ATSO.Idle;
      
      First_Of_Many := Root_Object.TAGS.ATMO.Create_Unique;
      Root_Object.TAGS.ATMO.TAGS_ATMO_Type(First_Of_Many.all).Attribute_Two := Test;
      Root_Object.TAGS.ATMO.TAGS_ATMO_Type(First_Of_Many.all).Current_State := Root_Object.TAGS.ATMO.Idle;
      
      Second_Of_Many := Root_Object.TAGS.ATMO.Create_Unique;
      Root_Object.TAGS.ATMO.TAGS_ATMO_Type(Second_Of_Many.all).Attribute_Two := Test;
      Root_Object.TAGS.ATMO.TAGS_ATMO_Type(Second_Of_Many.all).Current_State := Root_Object.TAGS.ATMO.Idle;
      
      Third_Of_Many := Root_Object.TAGS.ATMO.Create_Unique;
      Root_Object.TAGS.ATMO.TAGS_ATMO_Type(Third_Of_Many.all).Attribute_Two := Test;
      Root_Object.TAGS.ATMO.TAGS_ATMO_Type(Third_Of_Many.all).Current_State := Root_Object.TAGS.ATMO.Idle;
      
      TAGS_Rel_R2.Link (
         A_Instance => First_Of_Many,
         B_Instance => Single_Tag);
      
      TAGS_Rel_R2.Link (
         A_Instance => Second_Of_Many,
         B_Instance => Single_Tag);
      
      TAGS_Rel_R2.Link (
         A_Instance => Third_Of_Many,
         B_Instance => Single_Tag);
      
      
      -- --------------------------------------------------------------------------
      --  Test 1
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "1 to M Active Relationships     ",
         Purpose         => "Create three                    ");
      
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Many);
      
      
      TAGS_Rel_R2.Navigate (
         From  => Single_Tag,
         Class => Root_Object.TAGS.ATMO.TAGS_ATMO_type'tag,
         To    => Set_Of_Many);
      
      How_Many := Root_Object.Object_List.Count_Of(Set_Of_Many);
      Failure_Value := How_Many - 3;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Create three                    ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "1 to M Active Relationships     ",
         Purpose         => "Create one more                 ");
      
      
      --  Create one more ih of Many_Tagged_Objects. 
      -- Fourth_Of_Many  = create unique Active_Tagged_Many_Objects  with Attribute_Two = Test & Current_State = 'Idle'
      -- if Fourth_Of_Many = UNDEFINED then
      --    Failure_Value = 0
      -- else
      --    Failure_Value = 1
      --    delete Fourth_Of_Many
      -- endif
      -- [] = TAGS5::Report_Now[Test, "Create one more", Failure_Value, Supported]
      
      TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3 - Unlink one of three, and check that the navigation now returns 
      --           two instances.
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "1 to M Active Relationships     ",
         Purpose         => "Unlink one & navigate           ");
      
      
      TAGS_Rel_R2.Unlink (
         A_Instance => First_Of_Many,
         B_Instance => Single_Tag);
      
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Many);
      
      
      TAGS_Rel_R2.Navigate (
         From  => Single_Tag,
         Class => Root_Object.TAGS.ATMO.TAGS_ATMO_type'tag,
         To    => Set_Of_Many);
      
      How_Many_Navigation := Root_Object.Object_List.Count_Of(Set_Of_Many);
      Failure_Value       := How_Many_Navigation - 2;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Unlink one & navigate           ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 4 - Unlink one of three, and check that the FIND-ALL still returns 
      --           three instances.
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "1 to M Active Relationships     ",
         Purpose         => "Unlink & find-all               ");
      
      
      Root_Object.Object_List.Clear (
         From => Find_Many);
      
      Root_Object.TAGS.ATMO.Find (
         Add_To => Find_Many);
      
      
      How_Many_Find := Root_Object.Object_List.Count_Of(Find_Many);
      Failure_Value := How_Many_Find - 3;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Unlink & find-all               ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      --  End Test 4
      -- --------------------------------------------------------------------------
      --  Test 5 - Just because First_Of_Many has been unlinked, there still should 
      --           be a restriction on the number created. So let's try it.
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "1 to M Active Relationships     ",
         Purpose         => "Create one more                 ");
      
      
      -- Fourth_Of_Many = create unique Active_Tagged_Many_Objects  with Attribute_Two = Test  & Current_State = 'Idle'
      -- if Fourth_Of_Many = UNDEFINED then
      --    Failure_Value = 0
      -- else
      --    Failure_Value = 1
      --    delete Fourth_Of_Many
      -- endif
      -- [] = TAGS5::Report_Now[Test, "Create one more", Failure_Value, Supported]
      
      TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
         Unsupported_Test_Number => Test);
      
      Test := Test + 1;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------------
      --  Test 6 - Now delete First_Of_Many and FIND-ALL on set.
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "1 to M Active Relationships     ",
         Purpose         => "Delete First instance & find    ");
      
      
      Root_Object.TAGS.ATMO.Delete (
         Old_Instance => First_Of_Many);
      
      Root_Object.Object_List.Clear (
         From => Find_Many);
      
      Root_Object.TAGS.ATMO.Find (
         Add_To => Find_Many);
      
      
      How_Many_Find := Root_Object.Object_List.Count_Of(Find_Many);
      Failure_Value := How_Many_Find - 2;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Delete First instance & find    ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 6
      -- --------------------------------------------------------------------------
      --  Test 7 - Perform Navigation to set 
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "1 to M Active Relationships     ",
         Purpose         => "Delete First instance & Navigate");
      
      
      Root_Object.Object_List.Clear (
         From => Set_Of_Many);
      
      
      TAGS_Rel_R2.Navigate (
         From  => Single_Tag,
         Class => Root_Object.TAGS.ATMO.TAGS_ATMO_type'tag,
         To    => Set_Of_Many);
      
      How_Many_Navigation := Root_Object.Object_List.Count_Of(Set_Of_Many);
      Failure_Value       := How_Many_Navigation - 2;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Delete First instance & navigate",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 7
      -- --------------------------------------------------------------------------
      --  Test 8 - ...and then create a replacement.
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "1 to M Active Relationships     ",
         Purpose         => "Replace deleted instance        ");
      
      Replacement_First_Of_Many := Root_Object.TAGS.ATMO.Create_Unique;
      Root_Object.TAGS.ATMO.TAGS_ATMO_Type(Replacement_First_Of_Many.all).Attribute_Two := Test;
      Root_Object.TAGS.ATMO.TAGS_ATMO_Type(Replacement_First_Of_Many.all).Current_State := Root_Object.TAGS.ATMO.Idle;
      
      
      if Replacement_First_Of_Many =  Null then
         
         Failure_Value := 1;
      else
         TAGS_Rel_R2.Link (
            A_Instance => Single_Tag,
            B_Instance => Replacement_First_Of_Many);
         
         
         Root_Object.Object_List.Clear (
            From => Find_Many);
         
         Root_Object.TAGS.ATMO.Find (
            Add_To => Find_Many);
         
         How_Many_Find := Root_Object.Object_List.Count_Of(Find_Many);
         
         
         Root_Object.Object_List.Clear (
            From => Set_Of_Many);
         
         
         TAGS_Rel_R2.Navigate (
            From  => Single_Tag,
            Class => Root_Object.TAGS.ATMO.TAGS_ATMO_type'tag,
            To    => Set_Of_Many);
         
         How_Many_Navigation := Root_Object.Object_List.Count_Of(Set_Of_Many);
         
         
         --  Magic number six arrived at :
         --  Two sets of three instances expected, hence six.
         
         Failure_Value := (How_Many_Find + How_Many_Navigation) - 6;
         
      end if;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Replace deleted instance        ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      
      --  End Test 8
      -- --------------------------------------------------------------------------
      --  Test 9 - Tidy up and finish.
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "1 to M Active Relationships     ",
         Purpose         => "Unlink and delete all           ");
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Set_Of_Many);
         
         while (Temp_Entry /= null) loop
            each_instance := Temp_Entry.Item;
            
            --  Make sure that each instance is currently linked to the single instance
            --  and then unlink it.
            --  This is a navigate from an instance to the single instance end of the one to many
            --  relationship.
            --  There is a formalised relationship between this instance and the single end.
            --  Get rid of it.
            
            TAGS_Rel_R2.Unlink (
               A_Instance => Single_Tag,
               B_Instance => each_instance);
            
            
            Root_Object.TAGS.ATMO.Delete (
               Old_Instance => each_instance);
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Set_Of_Many);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      Root_Object.Object_List.Clear (
         From => Remaining);
      
      
      TAGS_Rel_R2.Navigate (
         From  => Single_Tag,
         Class => Root_Object.TAGS.ATMO.TAGS_ATMO_type'tag,
         To    => Remaining);
      
      How_Many_Remaining := Root_Object.Object_List.Count_Of(Remaining);
      
      
      if How_Many_Remaining =  0 then
         
         Root_Object.TAGS.ATSO.Delete (
            Old_Instance => Single_Tag);
      else
         
         TAGS_RPT5_Test_Text_Bridge.TAGS_RPT5_Test_Text (
            Test_Number => How_Many_Remaining,
            Free_Text   => "Still left linked               ");
         
      end if;
      
      
      Root_Object.Object_List.Clear (
         From => Find_Many);
      
      Root_Object.TAGS.ATMO.Find (
         Add_To => Find_Many);
      
      
      Root_Object.Object_List.Clear (
         From => Find_Single);
      
      Root_Object.TAGS.ATSO.Find (
         Add_To => Find_Single);
      
      
      How_Many_Find   := Root_Object.Object_List.Count_Of(Find_Many);
      How_Single_Find := Root_Object.Object_List.Count_Of(Find_Single);
      
      
      --  Should be zero.
      
      Failure_Value := How_Many_Find + How_Single_Find;
      
      
      TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
         Test_Number     => Test,
         Testing_For     => "Unlink and delete all           ",
         Failure         => Failure_Value,
         It_Is_Supported => Supported);
      
      
      Test := Test + 1;
      
      --  End Test 9
      -- --------------------------------------------------------------------------
      --  Test 10 - Prove that the active object can be generated to
      -- --------------------------------------------------------------------------
      Active_Single_End := Root_Object.TAGS.ATSO.Create_Unique;
      Root_Object.TAGS.ATSO.TAGS_ATSO_Type(Active_Single_End.all).Attribute_One := Test;
      Root_Object.TAGS.ATSO.TAGS_ATSO_Type(Active_Single_End.all).Current_State := Root_Object.TAGS.ATSO.Idle;
      
      Active_Many_End_1 := Root_Object.TAGS.ATMO.Create_Unique;
      Root_Object.TAGS.ATMO.TAGS_ATMO_Type(Active_Many_End_1.all).Attribute_Two := Test;
      Root_Object.TAGS.ATMO.TAGS_ATMO_Type(Active_Many_End_1.all).Current_State := Root_Object.TAGS.ATMO.Idle;
      
      TAGS_Rel_R2.Link (
         A_Instance => Active_Single_End,
         B_Instance => Active_Many_End_1);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.ATSO.TAGS_ATSO1'(Root_Object.Root_Event_Type with
            This_Event_Class  => Root_Object.TAGS.ATSO.ATSO1,
            Target_Instance   => Active_Single_End,
            The_Test_No       => Test);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      Test := Test + 1;
      
      --  End Test 10 
      -- --------------------------------------------------------------------------
      --  Test 11 - Prove that the other end can still be generated to, too!
      -- --------------------------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.ATMO.TAGS_ATMO1'(Root_Object.Root_Event_Type with
            This_Event_Class        => Root_Object.TAGS.ATMO.ATMO1,
            Target_Instance         => Active_Many_End_1,
            ATMO_Test_No            => Test);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      Test := Test + 1;
      
      
      --  End Test 11
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number := Test;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Find_Single);
      Root_Object.Object_List.Destroy_List (Remaining);
      Root_Object.Object_List.Destroy_List (Find_Many);
      Root_Object.Object_List.Destroy_List (Set_Of_Many);
      
   end TAGS_TAGS10_Perform_Active_One_To_Many_Tests;
   
end TAGS_TAGS10_Perform_Active_One_To_Many_Tests_Service;

--
-- End of file TAGS_TAGS10_Perform_Active_One_To_Many_Tests_Service.adb
--
