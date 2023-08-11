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
--* File Name:               Relationships_objD3_Delete_Relationships_Service.adb
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


package body Relationships_objD3_Delete_Relationships_Service is
   
   procedure Relationships_objD3_Delete_Relationships (
      Test : in     Application_Types.Base_Integer_Type) is
      
      firstC   : Root_Object.Object_Access;
      secondC  : Root_Object.Object_Access;
      thirdC   : Root_Object.Object_Access;
      fourthC  : Root_Object.Object_Access;
      fifthC   : Root_Object.Object_Access;
      firstD   : Root_Object.Object_Access;
      secondD  : Root_Object.Object_Access;
      thirdD   : Root_Object.Object_Access;
      fourthD  : Root_Object.Object_Access;
      fifthD   : Root_Object.Object_Access;
      firstO   : Root_Object.Object_Access;
      secondO  : Root_Object.Object_Access;
      thirdO   : Root_Object.Object_Access;
      fourthO  : Root_Object.Object_Access;
      fifthO   : Root_Object.Object_Access;
      firstDO  : Root_Object.Object_Access;
      secondDO : Root_Object.Object_Access;
      thirdDO  : Root_Object.Object_Access;
      fourthDO : Root_Object.Object_Access;
      fifthDO  : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objD3_Delete_Relationships
      
      -- --------------------------------------------------------------------
      --  Delete all relationships
      --  The architectre shall provide a mechanism to allow deletion of a 
      --  simple relationship link between two object instance
      --  1241-0000-01-0604
      --  The architecture shall provide a mechanism to allow the deletion of 
      --  an associative link between an associative object and the link 
      --  between two objects
      --  1241-0000-01-0612
      --  The architecture shall provide a mechanism to allow the deletion 
      --  of a link between two objects in a associative relationship
      --  1241-0000-01-0613
      --  The architecture shall support a translation of the ASL unassociate
      --  statment to map to the mechanism that allows the deletion of an 
      --  associative link between an associative object and the link between
      --  two objects
      --  1241-0000-01-1203
      --  The architecture shall support a translation of the ASL unlink
      --  statement to map to the mechanism that allow the deletion of a 
      --  link between two objects in a relationship
      --  1241-0000-01-1204
      --  The architecture shall support a translation of the ASL navigate
      --  statment to map to the mechanism that allows the traversal of
      --  relationship links
      --  1241-0000-01-1205
      -- --------------------------------------------------------------------
      --  Initilise the variables
      Has_Failed   := False;
      Failure_Code := 0;
      
      
      Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1241-0000-01-0612               ",
         Invoking_Domain => "Relationship                    ",
         Invoking_Object => "objD                            ",
         Purpose         => "Delete relationships            ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0604               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0612               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-0613               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1203               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1241-0000-01-1204               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0621               ");
      
      Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0622               ");
      
      
      --  Find the desired instances for Object_C
      firstC := Root_Object.Relationships.objC.Conditional_Find_One;
      while (firstC /= null) and then (not (Root_Object.Relationships.objC.Relationships_objC_Type(firstC.all).idC =  1) ) loop
         
         firstC := firstC.Next_Object;
      end loop;
      
      secondC := Root_Object.Relationships.objC.Conditional_Find_One;
      while (secondC /= null) and then (not (Root_Object.Relationships.objC.Relationships_objC_Type(secondC.all).idC =  2) ) loop
         
         secondC := secondC.Next_Object;
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
      
      secondD := Root_Object.Relationships.objD.Conditional_Find_One;
      while (secondD /= null) and then (not (Root_Object.Relationships.objD.Relationships_objD_Type(secondD.all).idD =  2) ) loop
         
         secondD := secondD.Next_Object;
      end loop;
      
      thirdD := Root_Object.Relationships.objD.Conditional_Find_One;
      while (thirdD /= null) and then (not (Root_Object.Relationships.objD.Relationships_objD_Type(thirdD.all).idD =  3) ) loop
         
         thirdD := thirdD.Next_Object;
      end loop;
      
      fourthD := Root_Object.Relationships.objD.Conditional_Find_One;
      while (fourthD /= null) and then (not (Root_Object.Relationships.objD.Relationships_objD_Type(fourthD.all).idD =  4) ) loop
         
         fourthD := fourthD.Next_Object;
      end loop;
      
      fifthD := Root_Object.Relationships.objD.Conditional_Find_One;
      while (fifthD /= null) and then (not (Root_Object.Relationships.objD.Relationships_objD_Type(fifthD.all).idD =  5) ) loop
         
         fifthD := fifthD.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Object_O
      firstO := Root_Object.Relationships.objO.Conditional_Find_One;
      while (firstO /= null) and then (not (Root_Object.Relationships.objO.Relationships_objO_Type(firstO.all).idO =  1) ) loop
         
         firstO := firstO.Next_Object;
      end loop;
      
      secondO := Root_Object.Relationships.objO.Conditional_Find_One;
      while (secondO /= null) and then (not (Root_Object.Relationships.objO.Relationships_objO_Type(secondO.all).idO =  2) ) loop
         
         secondO := secondO.Next_Object;
      end loop;
      
      thirdO := Root_Object.Relationships.objO.Conditional_Find_One;
      while (thirdO /= null) and then (not (Root_Object.Relationships.objO.Relationships_objO_Type(thirdO.all).idO =  3) ) loop
         
         thirdO := thirdO.Next_Object;
      end loop;
      
      fourthO := Root_Object.Relationships.objO.Conditional_Find_One;
      while (fourthO /= null) and then (not (Root_Object.Relationships.objO.Relationships_objO_Type(fourthO.all).idO =  4) ) loop
         
         fourthO := fourthO.Next_Object;
      end loop;
      
      fifthO := Root_Object.Relationships.objO.Conditional_Find_One;
      while (fifthO /= null) and then (not (Root_Object.Relationships.objO.Relationships_objO_Type(fifthO.all).idO =  5) ) loop
         
         fifthO := fifthO.Next_Object;
      end loop;
      
      
      --  Find the desired instances for Object_DO
      firstDO := Root_Object.Relationships.objDO.Conditional_Find_One;
      while (firstDO /= null) and then (not (Root_Object.Relationships.objDO.Relationships_objDO_Type(firstDO.all).idDO =  1) ) loop
         
         firstDO := firstDO.Next_Object;
      end loop;
      
      secondDO := Root_Object.Relationships.objDO.Conditional_Find_One;
      while (secondDO /= null) and then (not (Root_Object.Relationships.objDO.Relationships_objDO_Type(secondDO.all).idDO =  2) ) loop
         
         secondDO := secondDO.Next_Object;
      end loop;
      
      thirdDO := Root_Object.Relationships.objDO.Conditional_Find_One;
      while (thirdDO /= null) and then (not (Root_Object.Relationships.objDO.Relationships_objDO_Type(thirdDO.all).idDO =  3) ) loop
         
         thirdDO := thirdDO.Next_Object;
      end loop;
      
      fourthDO := Root_Object.Relationships.objDO.Conditional_Find_One;
      while (fourthDO /= null) and then (not (Root_Object.Relationships.objDO.Relationships_objDO_Type(fourthDO.all).idDO =  4) ) loop
         
         fourthDO := fourthDO.Next_Object;
      end loop;
      
      fifthDO := Root_Object.Relationships.objDO.Conditional_Find_One;
      while (fifthDO /= null) and then (not (Root_Object.Relationships.objDO.Relationships_objDO_Type(fifthDO.all).idDO =  5) ) loop
         
         fifthDO := fifthDO.Next_Object;
      end loop;
      
      
      --  Delete relationships
      
      Relationships_Rel_R3.Unlink (
         A_Instance => firstD,
         B_Instance => firstC);
      
      
      Relationships_Rel_R3.Unlink (
         A_Instance => firstD,
         B_Instance => thirdC);
      
      
      Relationships_Rel_R3.Unlink (
         A_Instance => fourthD,
         B_Instance => fourthC);
      
      
      Relationships_Rel_R3.Unlink (
         A_Instance => fourthD,
         B_Instance => fifthC);
      
      
      Relationships_Rel_R19.Unassociate(
         A_Instance => firstD,
         B_Instance => secondO,
         From       => firstDO);
      
      Relationships_Rel_R19.Unassociate(
         A_Instance => firstD,
         B_Instance => thirdO,
         From       => fifthDO);
      
      Relationships_Rel_R19.Unlink (
         A_Instance => firstD,
         B_Instance => secondO);
      
      
      Relationships_Rel_R19.Unlink (
         A_Instance => firstD,
         B_Instance => thirdO);
      
      
      -- --------------------------------------------------------------------
      
      if Has_Failed then
         
         Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
            Failed_Domain_Object => "objD                            ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Failure_Code);
         
      else
         Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
            Test_Object_Domain => "objD                            ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
   end Relationships_objD3_Delete_Relationships;
   
end Relationships_objD3_Delete_Relationships_Service;

--
-- End of file Relationships_objD3_Delete_Relationships_Service.adb
--
