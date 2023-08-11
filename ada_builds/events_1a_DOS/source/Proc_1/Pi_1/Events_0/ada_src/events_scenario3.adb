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
--* File Name:               Events_Scenario3.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Polymorphism
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
--* Domain Name              : Events
--* Domain Key Letter        : Events
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Events.BLJ;
with Root_Object.Events.SL_THREE_D;
with Root_Object.Events.SL_TWO_D;
with Root_Object.Events.SL_ONE_B;
with Root_Object.Events.TL;
with Root_Object.Events.TD;

-- List of relationships used
with Events_rel_R16;
with Events_rel_R17;
with Events_rel_R11;
with Events_rel_R9;

-- List of bridges used
with Events_RPT5_Test_Text_Bridge;
with Events_RPT4_Test_Unsupported_Bridge;
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT2_Test_Passed_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure Events_Scenario3 is
   
      
      my_test                 : Root_Object.Object_Access;
      D_TL                    : Root_Object.Object_Access;
      D_SL1B                  : Root_Object.Object_Access;
      D_SL2D                  : Root_Object.Object_Access;
      D_SL3D                  : Root_Object.Object_Access;
      D_BLJ                   : Root_Object.Object_Access;
      View_Of_Top_From_Bottom : Root_Object.Object_Access;
      View_Of_Bottom_From_Top : Root_Object.Object_Access;
      
      The_Test_Number : Application_Types.Base_Integer_Type := 1;
      
   begin
      my_test := Root_Object.Events.TD.Unconditional_Find_One;
      
      if my_test =  Null then
         The_Test_Number := 200;
      else
         The_Test_Number := Root_Object.Events.TD.Events_TD_type(my_test.all).Current_Test_Number;
      end if;
      
      
      -- ---------------------------------------------------------------------------
      
      D_TL := Root_Object.Events.TL.Create;
      Root_Object.Events.TL.Events_TL_Type(D_TL.all).TL_id         := 1;
      Root_Object.Events.TL.Events_TL_Type(D_TL.all).Result        := 0;
      Root_Object.Events.TL.Events_TL_Type(D_TL.all).Current_State := Root_Object.Events.TL.Check;
      
      
      D_SL1B := Root_Object.Events.SL_ONE_B.Create;
      Root_Object.Events.SL_ONE_B.Events_SL_ONE_B_Type(D_SL1B.all).SL1B_id := 1;
      
      
      D_SL2D := Root_Object.Events.SL_TWO_D.Create;
      Root_Object.Events.SL_TWO_D.Events_SL_TWO_D_Type(D_SL2D.all).SL2D_id := 1;
      
      
      D_SL3D := Root_Object.Events.SL_THREE_D.Create;
      Root_Object.Events.SL_THREE_D.Events_SL_THREE_D_Type(D_SL3D.all).SL3D_id := 1;
      
      
      D_BLJ := Root_Object.Events.BLJ.Create;
      Root_Object.Events.BLJ.Events_BLJ_Type(D_BLJ.all).BLJ_id := 1;
      
      
      --  Now link them
      Events_Rel_R9.Link (
         A_Instance => D_TL,
         B_Instance => D_SL1B);
      
      Events_Rel_R11.Link (
         A_Instance => D_SL1B,
         B_Instance => D_SL2D);
      
      Events_Rel_R17.Link (
         A_Instance => D_SL2D,
         B_Instance => D_SL3D);
      
      Events_Rel_R16.Link (
         A_Instance => D_SL3D,
         B_Instance => D_BLJ);
      
      
      -- ---------------------------------------------------------------------------
      --  Before we try anything complicated, let's just prove that Navigation is possible
      --  top to bottom of this creation.
      -- ---------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Multi level super sub           ",
         Purpose         => "Navigate bottom to top          ");
      
      
      declare
         Temp_Instance : Root_Object.Object_Access;
      begin
         
         Events_Rel_R16.Navigate (
            From  => D_BLJ,
            Class => Root_Object.Events.SL_THREE_D.Events_SL_THREE_D_type'tag,
            To    => Temp_Instance);
         
         Events_Rel_R17.Navigate (
            From  => Temp_Instance,
            Class => Root_Object.Events.SL_TWO_D.Events_SL_TWO_D_type'tag,
            To    => Temp_Instance);
         
         Events_Rel_R11.Navigate (
            From  => Temp_Instance,
            Class => Root_Object.Events.SL_ONE_B.Events_SL_ONE_B_type'tag,
            To    => Temp_Instance);
         
         Events_Rel_R9.Navigate (
            From  => Temp_Instance,
            Class => Root_Object.Events.TL.Events_TL_type'tag,
            To    => View_Of_Top_From_Bottom);
      end;
      
      if Root_Object.Events.TL.Events_TL_type(View_Of_Top_From_Bottom.all).TL_id =  Root_Object.Events.TL.Events_TL_type(D_TL.all).TL_id then
         
         Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
            Test_Object_Domain => "View of top                     ",
            Test_Number        => The_Test_Number,
            Test_Value         => Root_Object.Events.TL.Events_TL_type(View_Of_Top_From_Bottom.all).TL_id);
         
      else
         Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
            Failed_Domain_Object => "View of top                     ",
            Failed_Test_Number   => The_Test_Number,
            Failed_Test_Value    => Root_Object.Events.TL.Events_TL_type(View_Of_Top_From_Bottom.all).TL_id);
         
      end if;
      
      
      -- ---------------------------------------------------------------------------
      --  Test 39 - Bottom to top
      -- ---------------------------------------------------------------------------
      The_Test_Number := The_Test_Number + 1;
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Multi level super sub           ",
         Purpose         => "Navigate top to bottom          ");
      
      
      declare
         Temp_Instance : Root_Object.Object_Access;
      begin
         
         Events_Rel_R9.Navigate (
            From  => D_TL,
            Class => Root_Object.Events.SL_ONE_B.Events_SL_ONE_B_type'tag,
            To    => Temp_Instance);
         
         Events_Rel_R11.Navigate (
            From  => Temp_Instance,
            Class => Root_Object.Events.SL_TWO_D.Events_SL_TWO_D_type'tag,
            To    => Temp_Instance);
         
         Events_Rel_R17.Navigate (
            From  => Temp_Instance,
            Class => Root_Object.Events.SL_THREE_D.Events_SL_THREE_D_type'tag,
            To    => Temp_Instance);
         
         Events_Rel_R16.Navigate (
            From  => Temp_Instance,
            Class => Root_Object.Events.BLJ.Events_BLJ_type'tag,
            To    => View_Of_Bottom_From_Top);
      end;
      
      if Root_Object.Events.BLJ.Events_BLJ_type(View_Of_Bottom_From_Top.all).BLJ_id =  Root_Object.Events.BLJ.Events_BLJ_type(D_BLJ.all).BLJ_id then
         
         Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
            Test_Object_Domain => "View of bottom                  ",
            Test_Number        => The_Test_Number,
            Test_Value         => Root_Object.Events.BLJ.Events_BLJ_type(View_Of_Bottom_From_Top.all).BLJ_id);
         
      else
         Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
            Failed_Domain_Object => "View of bottom                  ",
            Failed_Test_Number   => The_Test_Number,
            Failed_Test_Value    => Root_Object.Events.BLJ.Events_BLJ_type(View_Of_Bottom_From_Top.all).BLJ_id);
         
      end if;
      
      The_Test_Number := The_Test_Number + 1;
      
      -- ---------------------------------------------------------------------------
      --  Test 40 - Polymorphically deleviver events from the top level to sub level
      --            1, sub level 2 and the bottom level, missing out sub level 3
      --            N.B. Currently polymorphic event delivery to sub types is
      --            restricted to just one sub level. Attempting to deliver events 
      --            to levels below the first sub type will cause the generated code
      --            to report errors.
      -- ---------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-0404               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Multi level super sub           ",
         Purpose         => "Polymorphic Event Delivery      ");
      
      Events_RPT4_Test_Unsupported_Bridge.Events_RPT4_Test_Unsupported (
         Unsupported_Test_Number => The_Test_Number);
      
      Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
         Test_Number => The_Test_Number,
         Free_Text   => "Only for level                  ");
      
      
      --    generate TL1:Go() to D_TL
      --    generate TL2:Finish(The_Test_Number) to D_TL
      The_Test_Number := The_Test_Number + 1;
      
      
      -- ---------------------------------------------------------------------------
      
      Root_Object.Events.TD.Events_TD_type(my_test.all).Current_Test_Number := The_Test_Number;
      
   end Events_Scenario3;
   
--
-- End of file Events_Scenario3.ada
--
