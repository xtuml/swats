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
--* File Name:               Relationships_objE1_Create_Relationships_Service.adb
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
with Root_Object.Relationships.OBJEF;
with Root_Object.Relationships.objF;
with Root_Object.Relationships.objE;

-- List of relationships used
with Relationships_rel_R5;

-- List of bridges used
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT8_Specify_Requid_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_objE1_Create_Relationships_Service is
   
   procedure Relationships_objE1_Create_Relationships (
      Test : in     Application_Types.Base_Integer_Type) is
      
      SetF  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetEF : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      firstE   : Root_Object.Object_Access;
      thirdE   : Root_Object.Object_Access;
      fifthE   : Root_Object.Object_Access;
      firstF   : Root_Object.Object_Access;
      fourthF  : Root_Object.Object_Access;
      firstEF  : Root_Object.Object_Access;
      secondEF : Root_Object.Object_Access;
      thirdEF  : Root_Object.Object_Access;
      fourthEF : Root_Object.Object_Access;
      
   begin
   -- start of objE1_Create_Relationships
      
      -- --------------------------------------------------------------------
      --  Create relationships
      --  The architecture shall provide a mechainsm to allow creation of a 
      --  simple relationship link between two object instances 
      --  1241-0000-01-0603
      --  The architecture shall provide a mechanism to allow creation of a 
      --  associative relationship link between two object instances and an 
      --  associative instance
      --  1241-0000-01-0611
      --  The architectureshall support a translation of the ASL link 
      --  statement to map to the mechanism that allows creation of a 
      --  relationship link between two object instances
      --  1241-0000-01-1202
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0603               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objE                            ",
         Purpose         => "Find instances ObjE F and EF    ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0611               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1202               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0612               ");
      
      
      --  Find the desired instances for Object_E
      firstE := Root_Object.Relationships.objE.Conditional_Find_One;
      while (firstE /= null) and then (not (Root_Object.Relationships.objE.Relationships_objE_Type(firstE.all).idE =  1) ) loop
         
         firstE := firstE.Next_Object;
      end loop;
      
      thirdE := Root_Object.Relationships.objE.Conditional_Find_One;
      while (thirdE /= null) and then (not (Root_Object.Relationships.objE.Relationships_objE_Type(thirdE.all).idE =  3) ) loop
         
         thirdE := thirdE.Next_Object;
      end loop;
      
      fifthE := Root_Object.Relationships.objE.Conditional_Find_One;
      while (fifthE /= null) and then (not (Root_Object.Relationships.objE.Relationships_objE_Type(fifthE.all).idE =  5) ) loop
         
         fifthE := fifthE.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Object_F
      firstF := Root_Object.Relationships.objF.Conditional_Find_One;
      while (firstF /= null) and then (not (Root_Object.Relationships.objF.Relationships_objF_Type(firstF.all).idF =  1) ) loop
         
         firstF := firstF.Next_Object;
      end loop;
      
      fourthF := Root_Object.Relationships.objF.Conditional_Find_One;
      while (fourthF /= null) and then (not (Root_Object.Relationships.objF.Relationships_objF_Type(fourthF.all).idF =  4) ) loop
         
         fourthF := fourthF.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Object_EF
      firstEF := Root_Object.Relationships.OBJEF.Conditional_Find_One;
      while (firstEF /= null) and then (not (Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(firstEF.all).idEF =  1) ) loop
         
         firstEF := firstEF.Next_Object;
      end loop;
      
      secondEF := Root_Object.Relationships.OBJEF.Conditional_Find_One;
      while (secondEF /= null) and then (not (Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(secondEF.all).idEF =  2) ) loop
         
         secondEF := secondEF.Next_Object;
      end loop;
      
      thirdEF := Root_Object.Relationships.OBJEF.Conditional_Find_One;
      while (thirdEF /= null) and then (not (Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(thirdEF.all).idEF =  3) ) loop
         
         thirdEF := thirdEF.Next_Object;
      end loop;
      
      fourthEF := Root_Object.Relationships.OBJEF.Conditional_Find_One;
      while (fourthEF /= null) and then (not (Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(fourthEF.all).idEF =  4) ) loop
         
         fourthEF := fourthEF.Next_Object;
      end loop;
      
      
      --  Create Mc:Mc relationships
      Relationships_Rel_R5.Link (
         A_Instance => firstE,
         B_Instance => firstF,
         Using      => fourthEF);
      
      Relationships_Rel_R5.Link (
         A_Instance => firstE,
         B_Instance => fourthF,
         Using      => thirdEF);
      
      Relationships_Rel_R5.Link (
         A_Instance => thirdE,
         B_Instance => fourthF,
         Using      => secondEF);
      
      Relationships_Rel_R5.Link (
         A_Instance => fifthE,
         B_Instance => fourthF,
         Using      => firstEF);
      
      
      -- --------------------------------------------------------------------
      --  Test that the creation and linking has been successfull
      -- --------------------------------------------------------------------
      
      Root_Object.Object_List.Clear (
         From => SetF);
      
      
      Relationships_Rel_R5.Navigate (
         From  => firstE,
         Class => Root_Object.Relationships.objF.Relationships_objF_type'tag,
         To    => SetF);
      
      Root_Object.Object_List.Clear (
         From => SetEF);
      
      
      Relationships_Rel_R5.Navigate (
         From  => firstE,
         Class => Root_Object.Relationships.OBJEF.Relationships_OBJEF_type'tag,
         To    => SetEF);
      
      if Root_Object.Object_List.Count_Of(SetF) /= 0 then
         
         if Root_Object.Object_List.Count_Of(SetEF) /= 0 then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "ObjE                            ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "ObjE                            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -2);
            
         end if;
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "ObjE                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetEF);
      Root_Object.Object_List.Destroy_List (SetF);
      
   end Relationships_objE1_Create_Relationships;
   
end Relationships_objE1_Create_Relationships_Service;

--
-- End of file Relationships_objE1_Create_Relationships_Service.adb
--
