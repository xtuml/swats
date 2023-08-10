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
--* File Name:               Relationships_objD1_Create_Relationships_Service.adb
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
with Root_Object.Relationships.objDO;
with Root_Object.Relationships.objO;
with Root_Object.Relationships.objD;
with Root_Object.Relationships.objC;

-- List of relationships used
with Relationships_rel_R19;
with Relationships_rel_R3;

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


package body Relationships_objD1_Create_Relationships_Service is
   
   procedure Relationships_objD1_Create_Relationships (
      Test : in     Application_Types.Base_Integer_Type) is
      
      SetO : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      firstC  : Root_Object.Object_Access;
      thirdC  : Root_Object.Object_Access;
      fourthC : Root_Object.Object_Access;
      fifthC  : Root_Object.Object_Access;
      firstD  : Root_Object.Object_Access;
      fourthD : Root_Object.Object_Access;
      secondO : Root_Object.Object_Access;
      thirdO  : Root_Object.Object_Access;
      firstDO : Root_Object.Object_Access;
      fifthDO : Root_Object.Object_Access;
      InstD   : Root_Object.Object_Access;
      
   begin
   -- start of objD1_Create_Relationships
      
      -- --------------------------------------------------------------------
      --  Create relationships
      --  The architecture shall implement simple 1:M relationships
      --  1241-0000-01-0602
      --  The architecture shall provide a mechanism to allow creation of a 
      --  simple relationship link between two object instances
      --  1241-0000-01-0603
      --  The architecture shall implement associative 1-1:M relationships
      --  1241-0000-01-0609
      --  The architecture shall provide operations which, given a starting 
      --  instance handle and a relationship specification, return a single 
      --  handle of the related instance
      --  1241-0000-01-0701
      --  The architecture shall provide operations which, given a starting 
      --  instance handle and a relationship specification, return a set of 
      --  handles of the related instance
      --  1241-0000-01-0702
      --  The architectureshall support a translation of the ASL link 
      --  statement to map to the mechanism that allows creation of a 
      --  relationship link between two object instances
      --  1241-0000-01-1202
      -- --------------------------------------------------------------------
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0603               ",
         Invoking_Domain => "Relationship                    ",
         Invoking_Object => "objD                            ",
         Purpose         => "Create relationships            ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0602               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0609               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1202               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0611               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0612               ");
      
      
      --  Find the desired instances for Object_C
      firstC := Root_Object.Relationships.objC.Conditional_Find_One;
      while (firstC /= null) and then (not (Root_Object.Relationships.objC.Relationships_objC_Type(firstC.all).idC =  1) ) loop
         
         firstC := firstC.Next_Object;
      end loop;
      
      thirdC := Root_Object.Relationships.objC.Conditional_Find_One;
      while (thirdC /= null) and then (not (Root_Object.Relationships.objC.Relationships_objC_Type(thirdC.all).idC =  3) ) loop
         
         thirdC := thirdC.Next_Object;
      end loop;
      
      fourthC := Root_Object.Relationships.objC.Conditional_Find_One;
      while (fourthC /= null) and then (not (Root_Object.Relationships.objC.Relationships_objC_Type(fourthC.all).idC =  4) ) loop
         
         fourthC := fourthC.Next_Object;
      end loop;
      
      fifthC := Root_Object.Relationships.objC.Conditional_Find_One;
      while (fifthC /= null) and then (not (Root_Object.Relationships.objC.Relationships_objC_Type(fifthC.all).idC =  5) ) loop
         
         fifthC := fifthC.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Object_D
      firstD := Root_Object.Relationships.objD.Conditional_Find_One;
      while (firstD /= null) and then (not (Root_Object.Relationships.objD.Relationships_objD_Type(firstD.all).idD =  1) ) loop
         
         firstD := firstD.Next_Object;
      end loop;
      
      fourthD := Root_Object.Relationships.objD.Conditional_Find_One;
      while (fourthD /= null) and then (not (Root_Object.Relationships.objD.Relationships_objD_Type(fourthD.all).idD =  4) ) loop
         
         fourthD := fourthD.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Object_O
      secondO := Root_Object.Relationships.objO.Conditional_Find_One;
      while (secondO /= null) and then (not (Root_Object.Relationships.objO.Relationships_objO_Type(secondO.all).idO =  2) ) loop
         
         secondO := secondO.Next_Object;
      end loop;
      
      thirdO := Root_Object.Relationships.objO.Conditional_Find_One;
      while (thirdO /= null) and then (not (Root_Object.Relationships.objO.Relationships_objO_Type(thirdO.all).idO =  3) ) loop
         
         thirdO := thirdO.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Object_Do
      firstDO := Root_Object.Relationships.objDO.Conditional_Find_One;
      while (firstDO /= null) and then (not (Root_Object.Relationships.objDO.Relationships_objDO_Type(firstDO.all).idDO =  1) ) loop
         
         firstDO := firstDO.Next_Object;
      end loop;
      
      fifthDO := Root_Object.Relationships.objDO.Conditional_Find_One;
      while (fifthDO /= null) and then (not (Root_Object.Relationships.objDO.Relationships_objDO_Type(fifthDO.all).idDO =  5) ) loop
         
         fifthDO := fifthDO.Next_Object;
      end loop;
      
      
      --  Create normal 1:Mc relationships
      Relationships_Rel_R3.Link (
         A_Instance => firstD,
         B_Instance => firstC);
      
      Relationships_Rel_R3.Link (
         A_Instance => firstD,
         B_Instance => thirdC);
      
      Relationships_Rel_R3.Link (
         A_Instance => fourthD,
         B_Instance => fourthC);
      
      Relationships_Rel_R3.Link (
         A_Instance => fourthD,
         B_Instance => fifthC);
      
      
      --  Create associative 1:M relationships
      Relationships_Rel_R19.Link (
         A_Instance => firstD,
         B_Instance => secondO,
         Using      => firstDO);
      
      Relationships_Rel_R19.Link (
         A_Instance => firstD,
         B_Instance => thirdO,
         Using      => fifthDO);
      
      
      -- --------------------------------------------------------------------
      --  Perform a navigation to ensure that linking has been succesfull
      -- --------------------------------------------------------------------
      
      Relationships_Rel_R3.Navigate (
         From  => firstC,
         Class => Root_Object.Relationships.objD.Relationships_objD_type'tag,
         To    => InstD);
      
      
      Root_Object.Object_List.Clear (
         From => SetO);
      
      
      Relationships_Rel_R19.Navigate (
         From  => firstD,
         Class => Root_Object.Relationships.objO.Relationships_objO_type'tag,
         To    => SetO);
      
      if Root_Object.Relationships.objD.Relationships_objD_type(InstD.all).idD =  1 then
         
         if Root_Object.Object_List.Count_Of(SetO) =  2 then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "objD                            ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "objD                            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -2);
            
         end if;
         
      else
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -1);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetO);
      
   end Relationships_objD1_Create_Relationships;
   
end Relationships_objD1_Create_Relationships_Service;

--
-- End of file Relationships_objD1_Create_Relationships_Service.adb
--
