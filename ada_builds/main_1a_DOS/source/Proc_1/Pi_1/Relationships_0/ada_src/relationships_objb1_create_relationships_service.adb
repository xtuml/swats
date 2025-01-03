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
--* File Name:               Relationships_objB1_Create_Relationships_Service.adb
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


package body Relationships_objB1_Create_Relationships_Service is
   
   procedure Relationships_objB1_Create_Relationships (
      Test : in     Application_Types.Base_Integer_Type) is
      
      firstA  : Root_Object.Object_Access;
      thirdA  : Root_Object.Object_Access;
      firstB  : Root_Object.Object_Access;
      fourthB : Root_Object.Object_Access;
      secondM : Root_Object.Object_Access;
      thirdM  : Root_Object.Object_Access;
      InstA   : Root_Object.Object_Access;
      InstB   : Root_Object.Object_Access;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objB1_Create_Relationships
      
      -- --------------------------------------------------------------------
      --  Create relationships
      --  The architecture shall provide a mechanism to allow creation of a
      --  simple relationship link between two object instances
      --  1241-0000-01-603
      --  The architecture shall provide operations which, given a starting 
      --  instance handle and a relationship specification, return a single
      --  handle of the related instances
      --  1241-0000-01-0701
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
         Requid          => "1241-0000-01-0603               ",
         Invoking_Domain => "Relationships                   ",
         Invoking_Object => "objB                            ",
         Purpose         => "Create relationships            ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0611               ");
      
      Has_Failed := True;
      
      --  Find the desired instances for Object_A
      firstA := Root_Object.Relationships.objA.Conditional_Find_One;
      while (firstA /= null) and then (not (Root_Object.Relationships.objA.Relationships_objA_Type(firstA.all).idA =  1) ) loop
         
         firstA := firstA.Next_Object;
      end loop;
      
      thirdA := Root_Object.Relationships.objA.Conditional_Find_One;
      while (thirdA /= null) and then (not (Root_Object.Relationships.objA.Relationships_objA_Type(thirdA.all).idA =  3) ) loop
         
         thirdA := thirdA.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Object_B 
      firstB := Root_Object.Relationships.objB.Conditional_Find_One;
      while (firstB /= null) and then (not (Root_Object.Relationships.objB.Relationships_objB_Type(firstB.all).idB =  1) ) loop
         
         firstB := firstB.Next_Object;
      end loop;
      
      fourthB := Root_Object.Relationships.objB.Conditional_Find_One;
      while (fourthB /= null) and then (not (Root_Object.Relationships.objB.Relationships_objB_Type(fourthB.all).idB =  4) ) loop
         
         fourthB := fourthB.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Object_M
      secondM := Root_Object.Relationships.objM.Conditional_Find_One;
      while (secondM /= null) and then (not (Root_Object.Relationships.objM.Relationships_objM_Type(secondM.all).idM =  2) ) loop
         
         secondM := secondM.Next_Object;
      end loop;
      
      thirdM := Root_Object.Relationships.objM.Conditional_Find_One;
      while (thirdM /= null) and then (not (Root_Object.Relationships.objM.Relationships_objM_Type(thirdM.all).idM =  3) ) loop
         
         thirdM := thirdM.Next_Object;
      end loop;
      
      
      --  Create normal 1:1 relationships
      Relationships_Rel_R1.Link (
         A_Instance => firstA,
         B_Instance => firstB);
      
      Relationships_Rel_R1.Link (
         A_Instance => thirdA,
         B_Instance => fourthB);
      
      Relationships_Rel_R18.Link (
         A_Instance => fourthB,
         B_Instance => thirdM);
      
      
      --  Create a couple of instances to prove the relationships
      --  For coding purposes, it is necessary to overspecify
      --  the relationship.
      
      Relationships_Rel_R1.Navigate (
         From  => firstB,
         Class => Root_Object.Relationships.objA.Relationships_objA_type'tag,
         To    => InstA);
      
      
      Relationships_Rel_R1.Navigate (
         From  => thirdA,
         Class => Root_Object.Relationships.objB.Relationships_objB_type'tag,
         To    => InstB);
      
      
      --  Now check that the navigations can be performed
      
      if InstA /= Null and then
         InstB /= Null then
         Has_Failed := False;
         
      end if;
      
      
      -- --------------------------------------------------------------------
      --  Test complete
      -- --------------------------------------------------------------------
      
      if Has_Failed then
         
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objB                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
      else
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "objB                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
   end Relationships_objB1_Create_Relationships;
   
end Relationships_objB1_Create_Relationships_Service;

--
-- End of file Relationships_objB1_Create_Relationships_Service.adb
--
