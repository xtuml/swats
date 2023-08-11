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
--* File Name:               Relationships_MO1_Create_Relationships_Service.adb
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
with Root_Object.Relationships.assMR;
with Root_Object.Relationships.RO;
with Root_Object.Relationships.MO;
with Root_Object.Relationships.LO;

-- List of relationships used
with Relationships_rel_R14;
with Relationships_rel_R12;

-- List of bridges used
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT8_Specify_Requid_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_MO1_Create_Relationships_Service is
   
   procedure Relationships_MO1_Create_Relationships (
      Test : in     Application_Types.Base_Integer_Type) is
      
      MiddleSet : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      firstLeft     : Root_Object.Object_Access;
      secondLeft    : Root_Object.Object_Access;
      thirdLeft     : Root_Object.Object_Access;
      firstMiddle   : Root_Object.Object_Access;
      thirdMiddle   : Root_Object.Object_Access;
      fourthMiddle  : Root_Object.Object_Access;
      fifthMiddle   : Root_Object.Object_Access;
      secondRight   : Root_Object.Object_Access;
      fourthRight   : Root_Object.Object_Access;
      fifthRight    : Root_Object.Object_Access;
      firstMR       : Root_Object.Object_Access;
      secondMR      : Root_Object.Object_Access;
      thirdMR       : Root_Object.Object_Access;
      fifthMR       : Root_Object.Object_Access;
      LeftInstance  : Root_Object.Object_Access;
      RightInstance : Root_Object.Object_Access;
      InstAssoc     : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of MO1_Create_Relationships
      
      -- --------------------------------------------------------------------
      --  Create relationships
      --  The architecture shall implement simple 1:M relationships
      --  1241-0000-01-0602
      --  The architecture shall provide a mechanism to allow creation of a 
      --  simple relationship link between two object instances
      --  1241-0000-01-0603
      --  The architecture shall implement associative 1-1:M relationships
      --  1241-0000-01-0609
      --  
      --  The architecture shall provide a mechanism to allow creation of an
      --  associative relationship link between two object instances and am
      --  associative instance
      --  1241-0000-01-0611
      --  The architectureshall support a translation of the ASL link 
      --  statement to map to the mechanism that allows creation of a 
      --  relationship link between two object instances
      --  1241-0000-01-1202
      --  The architecture shall support a translation of the ASL navigate
      --  statment to map to the mechanism that allows the traversal of
      --  relationship links
      --  1241-0000-01-1205
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0602               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "MO                              ",
         Purpose         => "Create relationships            ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0603               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0609               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0611               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1202               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0611               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0612               ");
      
      Has_Failed := False;
      
      
      --  Find the desired instances for Left_Object
      firstLeft := Root_Object.Relationships.LO.Conditional_Find_One;
      while (firstLeft /= null) and then (not (Root_Object.Relationships.LO.Relationships_LO_Type(firstLeft.all).idLO =  1) ) loop
         
         firstLeft := firstLeft.Next_Object;
      end loop;
      
      secondLeft := Root_Object.Relationships.LO.Conditional_Find_One;
      while (secondLeft /= null) and then (not (Root_Object.Relationships.LO.Relationships_LO_Type(secondLeft.all).idLO =  2) ) loop
         
         secondLeft := secondLeft.Next_Object;
      end loop;
      
      thirdLeft := Root_Object.Relationships.LO.Conditional_Find_One;
      while (thirdLeft /= null) and then (not (Root_Object.Relationships.LO.Relationships_LO_Type(thirdLeft.all).idLO =  3) ) loop
         
         thirdLeft := thirdLeft.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Middle_Object
      firstMiddle := Root_Object.Relationships.MO.Conditional_Find_One;
      while (firstMiddle /= null) and then (not (Root_Object.Relationships.MO.Relationships_MO_Type(firstMiddle.all).idMO =  1) ) loop
         
         firstMiddle := firstMiddle.Next_Object;
      end loop;
      
      thirdMiddle := Root_Object.Relationships.MO.Conditional_Find_One;
      while (thirdMiddle /= null) and then (not (Root_Object.Relationships.MO.Relationships_MO_Type(thirdMiddle.all).idMO =  3) ) loop
         
         thirdMiddle := thirdMiddle.Next_Object;
      end loop;
      
      fourthMiddle := Root_Object.Relationships.MO.Conditional_Find_One;
      while (fourthMiddle /= null) and then (not (Root_Object.Relationships.MO.Relationships_MO_Type(fourthMiddle.all).idMO =  4) ) loop
         
         fourthMiddle := fourthMiddle.Next_Object;
      end loop;
      
      fifthMiddle := Root_Object.Relationships.MO.Conditional_Find_One;
      while (fifthMiddle /= null) and then (not (Root_Object.Relationships.MO.Relationships_MO_Type(fifthMiddle.all).idMO =  5) ) loop
         
         fifthMiddle := fifthMiddle.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Right_Object
      secondRight := Root_Object.Relationships.RO.Conditional_Find_One;
      while (secondRight /= null) and then (not (Root_Object.Relationships.RO.Relationships_RO_Type(secondRight.all).idRO =  2) ) loop
         
         secondRight := secondRight.Next_Object;
      end loop;
      
      fourthRight := Root_Object.Relationships.RO.Conditional_Find_One;
      while (fourthRight /= null) and then (not (Root_Object.Relationships.RO.Relationships_RO_Type(fourthRight.all).idRO =  4) ) loop
         
         fourthRight := fourthRight.Next_Object;
      end loop;
      
      fifthRight := Root_Object.Relationships.RO.Conditional_Find_One;
      while (fifthRight /= null) and then (not (Root_Object.Relationships.RO.Relationships_RO_Type(fifthRight.all).idRO =  5) ) loop
         
         fifthRight := fifthRight.Next_Object;
      end loop;
      
      
      --  Find the desired instances for MR_Object
      firstMR := Root_Object.Relationships.assMR.Conditional_Find_One;
      while (firstMR /= null) and then (not (Root_Object.Relationships.assMR.Relationships_assMR_Type(firstMR.all).idMR =  1) ) loop
         
         firstMR := firstMR.Next_Object;
      end loop;
      
      secondMR := Root_Object.Relationships.assMR.Conditional_Find_One;
      while (secondMR /= null) and then (not (Root_Object.Relationships.assMR.Relationships_assMR_Type(secondMR.all).idMR =  2) ) loop
         
         secondMR := secondMR.Next_Object;
      end loop;
      
      thirdMR := Root_Object.Relationships.assMR.Conditional_Find_One;
      while (thirdMR /= null) and then (not (Root_Object.Relationships.assMR.Relationships_assMR_Type(thirdMR.all).idMR =  3) ) loop
         
         thirdMR := thirdMR.Next_Object;
      end loop;
      
      fifthMR := Root_Object.Relationships.assMR.Conditional_Find_One;
      while (fifthMR /= null) and then (not (Root_Object.Relationships.assMR.Relationships_assMR_Type(fifthMR.all).idMR =  5) ) loop
         
         fifthMR := fifthMR.Next_Object;
      end loop;
      
      
      --  Create normal 1:Mc relationships
      Relationships_Rel_R12.Link (
         A_Instance => firstLeft,
         B_Instance => firstMiddle);
      
      Relationships_Rel_R12.Link (
         A_Instance => firstLeft,
         B_Instance => thirdMiddle);
      
      Relationships_Rel_R12.Link (
         A_Instance => secondLeft,
         B_Instance => fifthMiddle);
      
      
      --  Create associative Mc:1 relationships
      Relationships_Rel_R14.Link (
         A_Instance => firstMiddle,
         B_Instance => secondRight,
         Using      => firstMR);
      
      Relationships_Rel_R14.Link (
         A_Instance => thirdMiddle,
         B_Instance => fourthRight,
         Using      => fifthMR);
      
      Relationships_Rel_R14.Link (
         A_Instance => fifthMiddle,
         B_Instance => fourthRight,
         Using      => thirdMR);
      
      
      --  Create a couple of instances to prove the relationships
      --  For coding purposes, it is necessary to overspecify
      --  the relationship.
      
      Relationships_Rel_R12.Navigate (
         From  => firstMiddle,
         Class => Root_Object.Relationships.LO.Relationships_LO_type'tag,
         To    => LeftInstance);
      
      
      Root_Object.Object_List.Clear (
         From => MiddleSet);
      
      
      Relationships_Rel_R12.Navigate (
         From  => secondLeft,
         Class => Root_Object.Relationships.MO.Relationships_MO_type'tag,
         To    => MiddleSet);
      
      Relationships_Rel_R14.Navigate (
         From  => firstMiddle,
         Class => Root_Object.Relationships.RO.Relationships_RO_type'tag,
         To    => RightInstance);
      
      
      Relationships_Rel_R14.Navigate (
         From  => firstMiddle,
         Class => Root_Object.Relationships.assMR.Relationships_assMR_type'tag,
         To    => InstAssoc);
      
      
      --  Now check that the navigations can be performed
      
      if LeftInstance =  Null then
         
         Has_Failed   := True;
         Failure_Code := -10;
      else
         
         if Root_Object.Relationships.LO.Relationships_LO_type(LeftInstance.all).idLO /= 1 then
            Has_Failed   := True;
            Failure_Code := -20;
         end if;
         
      end if;
      
      
      if (not Has_Failed) then
         
         if Root_Object.Object_List.Count_Of(MiddleSet) /= 1 then
            Has_Failed   := True;
            Failure_Code := -30;
         end if;
         
      end if;
      
      
      if (not Has_Failed) then
         
         if InstAssoc =  Null then
            Has_Failed   := True;
            Failure_Code := -40;
         else
            
            if Root_Object.Relationships.assMR.Relationships_assMR_type(InstAssoc.all).idMR /= 1 then
               Has_Failed   := True;
               Failure_Code := -50;
            end if;
            
         end if;
         
      end if;
      
      
      if (not Has_Failed) then
         
         if RightInstance =  Null then
            Has_Failed := True;
            Failure_Code := -60;
         else
            
            if Root_Object.Relationships.RO.Relationships_RO_type(RightInstance.all).idRO /= 2 then
               Has_Failed   := True;
               Failure_Code := -70;
               
            end if;
            
         end if;
         
      end if;
      
      
      -- --------------------------------------------------------------------
      --  Test complete
      -- --------------------------------------------------------------------
      
      if (not Has_Failed) then
         
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "MO                              ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "MO                              ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (MiddleSet);
      
   end Relationships_MO1_Create_Relationships;
   
end Relationships_MO1_Create_Relationships_Service;

--
-- End of file Relationships_MO1_Create_Relationships_Service.adb
--
