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
--* File Name:               Relationships_objH1_Super_Sub_Relationships_Service.adb
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
with Root_Object.Relationships.objSL1;
with Root_Object.Relationships.objSSSL2;
with Root_Object.Relationships.objSSL10;
with Root_Object.Relationships.objSSL9;
with Root_Object.Relationships.objSSL8;
with Root_Object.Relationships.objSSL7;
with Root_Object.Relationships.objSSL6;
with Root_Object.Relationships.objSSL5;
with Root_Object.Relationships.objSSL4;
with Root_Object.Relationships.objSSL3;
with Root_Object.Relationships.objSSL2;
with Root_Object.Relationships.objSSL1;
with Root_Object.Relationships.objSL3;
with Root_Object.Relationships.objSL2;
with Root_Object.Relationships.objK;
with Root_Object.Relationships.objI;
with Root_Object.Relationships.objL;
with Root_Object.Relationships.objH;

-- List of relationships used
with Relationships_rel_R32;
with Relationships_rel_R28;
with Relationships_rel_R31;
with Relationships_rel_R30;
with Relationships_rel_R29;
with Relationships_rel_R27;
with Relationships_rel_R26;
with Relationships_rel_R9;

-- List of bridges used
with Relationships_RPT4_Test_Unsupported_Bridge;
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


package body Relationships_objH1_Super_Sub_Relationships_Service is
   
   procedure Relationships_objH1_Super_Sub_Relationships (
      Iteration : in     Application_Types.Base_Integer_Type;
      Test      : in     Application_Types.Base_Integer_Type) is
      
      SetK : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      firstH      : Root_Object.Object_Access;
      secondH     : Root_Object.Object_Access;
      thirdH      : Root_Object.Object_Access;
      fourthH     : Root_Object.Object_Access;
      fifthH      : Root_Object.Object_Access;
      firstL      : Root_Object.Object_Access;
      secondL     : Root_Object.Object_Access;
      thirdL      : Root_Object.Object_Access;
      secondI     : Root_Object.Object_Access;
      thirdI      : Root_Object.Object_Access;
      fourthI     : Root_Object.Object_Access;
      fifthI      : Root_Object.Object_Access;
      firstK      : Root_Object.Object_Access;
      thirdK      : Root_Object.Object_Access;
      fifthK      : Root_Object.Object_Access;
      secondSL2   : Root_Object.Object_Access;
      firstSL3    : Root_Object.Object_Access;
      secondSL3   : Root_Object.Object_Access;
      thirdSL3    : Root_Object.Object_Access;
      firstSSL1   : Root_Object.Object_Access;
      secondSSL2  : Root_Object.Object_Access;
      thirdSSL3   : Root_Object.Object_Access;
      fourthSSL4  : Root_Object.Object_Access;
      fifthSSL5   : Root_Object.Object_Access;
      firstSSL6   : Root_Object.Object_Access;
      fourthSSL6  : Root_Object.Object_Access;
      secondSSL7  : Root_Object.Object_Access;
      thirdSSL8   : Root_Object.Object_Access;
      fourthSSL9  : Root_Object.Object_Access;
      thirdSSL10  : Root_Object.Object_Access;
      fifthSSL10  : Root_Object.Object_Access;
      fourthSSSL2 : Root_Object.Object_Access;
      InstL       : Root_Object.Object_Access;
      InstI       : Root_Object.Object_Access;
      InstSL3     : Root_Object.Object_Access;
      InstSL2     : Root_Object.Object_Access;
      InstSL1     : Root_Object.Object_Access;
      InstSSL1    : Root_Object.Object_Access;
      InstSSL7    : Root_Object.Object_Access;
      InstSSL8    : Root_Object.Object_Access;
      InstSSL10   : Root_Object.Object_Access;
      InstSSSL2   : Root_Object.Object_Access;
      InstSSL6    : Root_Object.Object_Access;
      InstH       : Root_Object.Object_Access;
      InstK       : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      Val1         : Application_Types.Base_Integer_Type := 1;
      Val2         : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed  : Boolean := Application_Types.Boolean_first;
      Unsupported : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objH1_Super_Sub_Relationships
      
      -- --------------------------------------------------------------------
      --  Subtype/Supertype relationship
      --  The architecture shall implement supertype/subtype relationships
      --  1241-0000-01-0614
      --  The architecture shall provide a mechanism to allow creation of a 
      --  supertype/subtype relationship link between two object instances
      --  1241-0000-01-0615
      --  The architecture shall provide a mechanism to all deletion of a 
      --  supertype/subtype relationship link between two object instances
      --  1241-0000-01-0616
      --  
      --  The architecture shall support a minimum of three subtype trees 
      --  from any supertype object class
      --  1241-0000-01-0617
      --  The architecture shall tress of depth greater than 1
      --  1241-0000-01-0618
      --  
      --  The architecture shall provide operations which, given a stating 
      --  instance handle and a relationship specification, return a set of
      --  instance handles
      --  1241-0000-01-0702
      --  The architecture shall support naviagations from a subtype object 
      --  to a supertype object expressed in ASL
      --  1241-0000-01-0708
      --  The architecture shall support navigations from a supertype object
      --  to a subtype object expressed in ASL
      --  1241-0000-01-0709
      --  The architecture shall support a translation of the ASL link 
      --  statment to map to the mechanism that allows creation of a 
      --  relationship link between two object instances
      --  1241-0000-01-1202
      --  The architecture shall support a translation of the ASL unlink
      --  statement to map to the mechanism that allow the deletion of a 
      --  link between two objects in a relationship
      --  1241-0000-01-1204
      --  The architecture shall support a translation of the ASL navigate
      --  statment to map to the mechanism that allows the traversal of
      --  relationship links
      --  1241-0000-01-1205
      -- --------------------------------------------------------------------
      --  Initialise the variables
      Has_Failed  := False;
      Unsupported := False;
      
      
      -- --------------------------------------------------------------------
      --  Find the desired instances Object_H
      firstH := Root_Object.Relationships.objH.Conditional_Find_One;
      while (firstH /= null) and then (not (Root_Object.Relationships.objH.Relationships_objH_Type(firstH.all).idH =  1) ) loop
         
         firstH := firstH.Next_Object;
      end loop;
      
      secondH := Root_Object.Relationships.objH.Conditional_Find_One;
      while (secondH /= null) and then (not (Root_Object.Relationships.objH.Relationships_objH_Type(secondH.all).idH =  2) ) loop
         
         secondH := secondH.Next_Object;
      end loop;
      
      thirdH := Root_Object.Relationships.objH.Conditional_Find_One;
      while (thirdH /= null) and then (not (Root_Object.Relationships.objH.Relationships_objH_Type(thirdH.all).idH =  3) ) loop
         
         thirdH := thirdH.Next_Object;
      end loop;
      
      fourthH := Root_Object.Relationships.objH.Conditional_Find_One;
      while (fourthH /= null) and then (not (Root_Object.Relationships.objH.Relationships_objH_Type(fourthH.all).idH =  4) ) loop
         
         fourthH := fourthH.Next_Object;
      end loop;
      
      fifthH := Root_Object.Relationships.objH.Conditional_Find_One;
      while (fifthH /= null) and then (not (Root_Object.Relationships.objH.Relationships_objH_Type(fifthH.all).idH =  5) ) loop
         
         fifthH := fifthH.Next_Object;
      end loop;
      
      
      --  Find the desired instances Object_L
      firstL := Root_Object.Relationships.objL.Conditional_Find_One;
      while (firstL /= null) and then (not (Root_Object.Relationships.objL.Relationships_objL_Type(firstL.all).idL =  1) ) loop
         
         firstL := firstL.Next_Object;
      end loop;
      
      secondL := Root_Object.Relationships.objL.Conditional_Find_One;
      while (secondL /= null) and then (not (Root_Object.Relationships.objL.Relationships_objL_Type(secondL.all).idL =  2) ) loop
         
         secondL := secondL.Next_Object;
      end loop;
      
      thirdL := Root_Object.Relationships.objL.Conditional_Find_One;
      while (thirdL /= null) and then (not (Root_Object.Relationships.objL.Relationships_objL_Type(thirdL.all).idL =  3) ) loop
         
         thirdL := thirdL.Next_Object;
      end loop;
      
      
      --  Find the desired instances Object_I
      secondI := Root_Object.Relationships.objI.Conditional_Find_One;
      while (secondI /= null) and then (not (Root_Object.Relationships.objI.Relationships_objI_Type(secondI.all).IDI =  2) ) loop
         
         secondI := secondI.Next_Object;
      end loop;
      
      thirdI := Root_Object.Relationships.objI.Conditional_Find_One;
      while (thirdI /= null) and then (not (Root_Object.Relationships.objI.Relationships_objI_Type(thirdI.all).IDI =  3) ) loop
         
         thirdI := thirdI.Next_Object;
      end loop;
      
      fourthI := Root_Object.Relationships.objI.Conditional_Find_One;
      while (fourthI /= null) and then (not (Root_Object.Relationships.objI.Relationships_objI_Type(fourthI.all).IDI =  4) ) loop
         
         fourthI := fourthI.Next_Object;
      end loop;
      
      fifthI := Root_Object.Relationships.objI.Conditional_Find_One;
      while (fifthI /= null) and then (not (Root_Object.Relationships.objI.Relationships_objI_Type(fifthI.all).IDI =  5) ) loop
         
         fifthI := fifthI.Next_Object;
      end loop;
      
      
      --  Find the desired instance of Object_K
      firstK := Root_Object.Relationships.objK.Conditional_Find_One;
      while (firstK /= null) and then (not (Root_Object.Relationships.objK.Relationships_objK_Type(firstK.all).idK =  1) ) loop
         
         firstK := firstK.Next_Object;
      end loop;
      
      thirdK := Root_Object.Relationships.objK.Conditional_Find_One;
      while (thirdK /= null) and then (not (Root_Object.Relationships.objK.Relationships_objK_Type(thirdK.all).idK =  3) ) loop
         
         thirdK := thirdK.Next_Object;
      end loop;
      
      fifthK := Root_Object.Relationships.objK.Conditional_Find_One;
      while (fifthK /= null) and then (not (Root_Object.Relationships.objK.Relationships_objK_Type(fifthK.all).idK =  5) ) loop
         
         fifthK := fifthK.Next_Object;
      end loop;
      
      
      --  Find the desired instance of Sub_L2
      secondSL2 := Root_Object.Relationships.objSL2.Conditional_Find_One;
      while (secondSL2 /= null) and then (not (Root_Object.Relationships.objSL2.Relationships_objSL2_Type(secondSL2.all).idSL2 =  2) ) loop
         
         secondSL2 := secondSL2.Next_Object;
      end loop;
      
      
      --  Find the desired instances Sub_L3
      firstSL3 := Root_Object.Relationships.objSL3.Conditional_Find_One;
      while (firstSL3 /= null) and then (not (Root_Object.Relationships.objSL3.Relationships_objSL3_Type(firstSL3.all).idSL3 =  1) ) loop
         
         firstSL3 := firstSL3.Next_Object;
      end loop;
      
      secondSL3 := Root_Object.Relationships.objSL3.Conditional_Find_One;
      while (secondSL3 /= null) and then (not (Root_Object.Relationships.objSL3.Relationships_objSL3_Type(secondSL3.all).idSL3 =  2) ) loop
         
         secondSL3 := secondSL3.Next_Object;
      end loop;
      
      thirdSL3 := Root_Object.Relationships.objSL3.Conditional_Find_One;
      while (thirdSL3 /= null) and then (not (Root_Object.Relationships.objSL3.Relationships_objSL3_Type(thirdSL3.all).idSL3 =  3) ) loop
         
         thirdSL3 := thirdSL3.Next_Object;
      end loop;
      
      
      --  Find the desired instances Sub_Sub_L1
      firstSSL1 := Root_Object.Relationships.objSSL1.Conditional_Find_One;
      while (firstSSL1 /= null) and then (not (Root_Object.Relationships.objSSL1.Relationships_objSSL1_Type(firstSSL1.all).idSSL1 =  1) ) loop
         
         firstSSL1 := firstSSL1.Next_Object;
      end loop;
      
      
      --  Find the desired instances Sub_Sub_L2
      secondSSL2 := Root_Object.Relationships.objSSL2.Conditional_Find_One;
      while (secondSSL2 /= null) and then (not (Root_Object.Relationships.objSSL2.Relationships_objSSL2_Type(secondSSL2.all).idSSL2 =  2) ) loop
         
         secondSSL2 := secondSSL2.Next_Object;
      end loop;
      
      
      --  Find the desired instances Sub_Sub_L3
      thirdSSL3 := Root_Object.Relationships.objSSL3.Conditional_Find_One;
      while (thirdSSL3 /= null) and then (not (Root_Object.Relationships.objSSL3.Relationships_objSSL3_Type(thirdSSL3.all).idSSL3 =  3) ) loop
         
         thirdSSL3 := thirdSSL3.Next_Object;
      end loop;
      
      
      --  Find the desired instances Sub_Sub_L4
      fourthSSL4 := Root_Object.Relationships.objSSL4.Conditional_Find_One;
      while (fourthSSL4 /= null) and then (not (Root_Object.Relationships.objSSL4.Relationships_objSSL4_Type(fourthSSL4.all).idSSL4 =  4) ) loop
         
         fourthSSL4 := fourthSSL4.Next_Object;
      end loop;
      
      
      --  Find the desired instances Sub_Sub_L5
      fifthSSL5 := Root_Object.Relationships.objSSL5.Conditional_Find_One;
      while (fifthSSL5 /= null) and then (not (Root_Object.Relationships.objSSL5.Relationships_objSSL5_Type(fifthSSL5.all).idSSL5 =  5) ) loop
         
         fifthSSL5 := fifthSSL5.Next_Object;
      end loop;
      
      
      --  Find the desired instances Sub_Sub_L6
      firstSSL6 := Root_Object.Relationships.objSSL6.Conditional_Find_One;
      while (firstSSL6 /= null) and then (not (Root_Object.Relationships.objSSL6.Relationships_objSSL6_Type(firstSSL6.all).idSSL6 =  1) ) loop
         
         firstSSL6 := firstSSL6.Next_Object;
      end loop;
      
      fourthSSL6 := Root_Object.Relationships.objSSL6.Conditional_Find_One;
      while (fourthSSL6 /= null) and then (not (Root_Object.Relationships.objSSL6.Relationships_objSSL6_Type(fourthSSL6.all).idSSL6 =  4) ) loop
         
         fourthSSL6 := fourthSSL6.Next_Object;
      end loop;
      
      
      --  Find the desired instances Sub_Sub_L7
      secondSSL7 := Root_Object.Relationships.objSSL7.Conditional_Find_One;
      while (secondSSL7 /= null) and then (not (Root_Object.Relationships.objSSL7.Relationships_objSSL7_Type(secondSSL7.all).idSSL7 =  2) ) loop
         
         secondSSL7 := secondSSL7.Next_Object;
      end loop;
      
      
      --  Find the desired instances Sub_Sub_L8
      thirdSSL8 := Root_Object.Relationships.objSSL8.Conditional_Find_One;
      while (thirdSSL8 /= null) and then (not (Root_Object.Relationships.objSSL8.Relationships_objSSL8_Type(thirdSSL8.all).idSSL8 =  3) ) loop
         
         thirdSSL8 := thirdSSL8.Next_Object;
      end loop;
      
      
      --  Find the desired instances Sub_Sub_L9
      fourthSSL9 := Root_Object.Relationships.objSSL9.Conditional_Find_One;
      while (fourthSSL9 /= null) and then (not (Root_Object.Relationships.objSSL9.Relationships_objSSL9_Type(fourthSSL9.all).idSSL9 =  4) ) loop
         
         fourthSSL9 := fourthSSL9.Next_Object;
      end loop;
      
      
      --  Find the desired instances Sub_Sub_L10
      thirdSSL10 := Root_Object.Relationships.objSSL10.Conditional_Find_One;
      while (thirdSSL10 /= null) and then (not (Root_Object.Relationships.objSSL10.Relationships_objSSL10_Type(thirdSSL10.all).idSSL10 =  3) ) loop
         
         thirdSSL10 := thirdSSL10.Next_Object;
      end loop;
      
      fifthSSL10 := Root_Object.Relationships.objSSL10.Conditional_Find_One;
      while (fifthSSL10 /= null) and then (not (Root_Object.Relationships.objSSL10.Relationships_objSSL10_Type(fifthSSL10.all).idSSL10 =  5) ) loop
         
         fifthSSL10 := fifthSSL10.Next_Object;
      end loop;
      
      
      --  Find the desired instances Sub_Sub_L10
      fourthSSSL2 := Root_Object.Relationships.objSSSL2.Conditional_Find_One;
      while (fourthSSSL2 /= null) and then (not (Root_Object.Relationships.objSSSL2.Relationships_objSSSL2_Type(fourthSSSL2.all).idSSSL2 =  4) ) loop
         
         fourthSSSL2 := fourthSSSL2.Next_Object;
      end loop;
      
      
      -- --------------------------------------------------------------------
      --  Test 1 - Navigate from second instance of Object H to Object L
      -- --------------------------------------------------------------------
      
      if Iteration =  1 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0709               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "ObjH to ObjL                    ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0614               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0615               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0616               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Create a relationship
         Relationships_Rel_R9.Link (
            A_Instance => secondH,
            B_Instance => firstL);
         
         
         --  Perform the navigation
         
         Relationships_Rel_R9.Navigate (
            From  => secondH,
            Class => Root_Object.Relationships.objL.Relationships_objL_type'tag,
            To    => InstL);
         
         
         --  Check the result of the navigation
         
         if InstL =  Null then
            
            Has_Failed   := True;
            Failure_Code := -10;
         else
            
            if Root_Object.Relationships.objL.Relationships_objL_type(InstL.all).idL /= 1 then
               Has_Failed   := True;
               Failure_Code := -20;
            end if;
            
         end if;
         
         
         --  Unlink the relationship
         
         Relationships_Rel_R9.Unlink (
            A_Instance => secondH,
            B_Instance => firstL);
         
      end if;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------
      --  Test 2 - Navigate from the first instance of object H to Object I
      -- --------------------------------------------------------------------
      
      if Iteration =  2 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0709               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "ObjH to ObjI                    ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0614               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0615               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0616               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Create the relationship
         Relationships_Rel_R9.Link (
            A_Instance => firstH,
            B_Instance => thirdI);
         
         
         --  Perform the navigation
         
         Relationships_Rel_R9.Navigate (
            From  => firstH,
            Class => Root_Object.Relationships.objI.Relationships_objI_type'tag,
            To    => InstI);
         
         
         --  Check the result of the navigation
         
         if InstI =  Null then
            Has_Failed := True;
            Failure_Code := -10;
         else
            
            if Root_Object.Relationships.objI.Relationships_objI_type(InstI.all).IDI /= 3 then
               Has_Failed   := True;
               Failure_Code := -20;
            end if;
            
         end if;
         
         
         --  Unlink the relationship
         
         Relationships_Rel_R9.Unlink (
            A_Instance => firstH,
            B_Instance => thirdI);
         
      end if;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------
      --  Test 3 - Navigate a chained relationship from the third instance of 
      --           Object H to the third instance of SubL3 via Object L
      -- --------------------------------------------------------------------
      
      if Iteration =  3 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0709               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "ObjH to SubL3 via ObjL          ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0614               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0615               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0616               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0618               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Create the relationship
         Relationships_Rel_R9.Link (
            A_Instance => thirdH,
            B_Instance => thirdL);
         
         Relationships_Rel_R26.Link (
            A_Instance => thirdL,
            B_Instance => thirdSL3);
         
         
         --  Perform the navigation
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R9.Navigate (
               From  => thirdH,
               Class => Root_Object.Relationships.objL.Relationships_objL_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R26.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSL3.Relationships_objSL3_type'tag,
               To    => InstSL3);
         end;
         
         --  Check the result of the navigation
         
         if InstSL3 =  Null then
            Has_Failed := True;
            Failure_Code := -10;
         else
            
            if Root_Object.Relationships.objSL3.Relationships_objSL3_type(InstSL3.all).idSL3 /= 3 then
               Has_Failed   := True;
               Failure_Code := -20;
            end if;
            
         end if;
         
         
         --  Unlink the relationships
         
         Relationships_Rel_R9.Unlink (
            A_Instance => thirdH,
            B_Instance => thirdL);
         
         
         Relationships_Rel_R26.Unlink (
            A_Instance => thirdL,
            B_Instance => thirdSL3);
         
      end if;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------
      --  Test 4 - Navigate from the second instance of Object H again this  
      --           time to the fifth instance of Object I
      -- --------------------------------------------------------------------
      
      if Iteration =  4 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0709               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "ObjH to ObjI                    ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0614               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0615               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0616               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Create the relationship
         Relationships_Rel_R9.Link (
            A_Instance => secondH,
            B_Instance => fifthI);
         
         
         --  Perform the navigation
         
         Relationships_Rel_R9.Navigate (
            From  => secondH,
            Class => Root_Object.Relationships.objI.Relationships_objI_type'tag,
            To    => InstI);
         
         
         --  Check the result of the navigation
         
         if InstI =  Null then
            Has_Failed := True;
            Failure_Code := -10;
         else
            
            if Root_Object.Relationships.objI.Relationships_objI_type(InstI.all).IDI /= 5 then
               Has_Failed   := True;
               Failure_Code := -20;
            end if;
            
         end if;
         
         
         --  Unlink the relationship
         
         Relationships_Rel_R9.Unlink (
            A_Instance => secondH,
            B_Instance => fifthI);
         
      end if;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------
      --  Test 5 - Navigate from Object L to Sub L2 without linking Object L  
      --           to Object H
      -- --------------------------------------------------------------------
      
      if Iteration =  5 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-1205               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "ObjL to SubSL2                  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Create the relationship
         Relationships_Rel_R26.Link (
            A_Instance => secondL,
            B_Instance => secondSL2);
         
         
         --  Perform the navigation
         
         Relationships_Rel_R26.Navigate (
            From  => secondL,
            Class => Root_Object.Relationships.objSL2.Relationships_objSL2_type'tag,
            To    => InstSL2);
         
         
         --  Check the results of the navigation
         
         if InstSL2 =  Null then
            Has_Failed := True;
            Failure_Code := -10;
         else
            
            if Root_Object.Relationships.objSL2.Relationships_objSL2_type(InstSL2.all).idSL2 /= 2 then
               Has_Failed   := True;
               Failure_Code := -20;
            end if;
            
         end if;
         
         
         --  Unlink the relationship
         
         Relationships_Rel_R26.Unlink (
            A_Instance => secondL,
            B_Instance => secondSL2);
         
      end if;
      
      
      --  End Test 5
      -- --------------------------------------------------------------------
      --  Test 6 - Attempt to navigate a partially defined relationship, i.e.
      --           the last sequence in the relationship has been deleted
      -- --------------------------------------------------------------------
      
      if Iteration =  6 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-1205               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "Partially defined relationship  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Create the relationship
         Relationships_Rel_R9.Link (
            A_Instance => firstH,
            B_Instance => firstL);
         
         
         --  Perform the navigation
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R9.Navigate (
               From  => firstH,
               Class => Root_Object.Relationships.objL.Relationships_objL_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R26.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSL1.Relationships_objSL1_type'tag,
               To    => InstSL1);
         end;
         
         --  Check the result of the navigation
         
         if InstSL1 /= Null then
            Has_Failed := True;
            Failure_Code := -10;
         end if;
         
         
         --  Unlink the relationship
         
         Relationships_Rel_R9.Unlink (
            A_Instance => firstH,
            B_Instance => firstL);
         
      end if;
      
      
      --  End Test 6
      -- --------------------------------------------------------------------
      --  Test 7 - Attempt to navigate to one subtype object while linked to 
      --           another
      -- --------------------------------------------------------------------
      
      if Iteration =  7 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-1205               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "Attempt to nav incorrect to subt");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Define a relationship
         Relationships_Rel_R9.Link (
            A_Instance => thirdH,
            B_Instance => firstL);
         
         
         --  Perform the navigation
         
         Relationships_Rel_R9.Navigate (
            From  => thirdH,
            Class => Root_Object.Relationships.objI.Relationships_objI_type'tag,
            To    => InstI);
         
         
         --  Check the result of the navigation
         
         if InstI /= Null then
            Has_Failed   := True;
            Failure_Code := -10;
         end if;
         
         
         --  Deleete the relationship
         
         Relationships_Rel_R9.Unlink (
            A_Instance => thirdH,
            B_Instance => firstL);
         
      end if;
      
      
      --  End Test 7
      -- --------------------------------------------------------------------
      --  Test 8 - Attempt to navigate undefined relationship
      -- --------------------------------------------------------------------
      
      if Iteration =  8 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "Null Requid                     ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "Attempt to navigate undefined re");
         
         
         Relationships_Rel_R9.Navigate (
            From  => thirdH,
            Class => Root_Object.Relationships.objI.Relationships_objI_type'tag,
            To    => InstI);
         
         
         --  Check the reult of the navigation
         
         if InstI /= Null then
            Has_Failed   := True;
            Failure_Code := -10;
            
         end if;
         
      end if;
      
      
      --  End Test 8
      -- --------------------------------------------------------------------
      --  Test 9 - Navigate to all subtype treesbranching off Sub_L3
      -- --------------------------------------------------------------------
      
      if Iteration =  9 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0709               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "Navigate to all subtypes trees o");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0614               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0615               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0616               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0617               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Create the relationships
         Relationships_Rel_R9.Link (
            A_Instance => firstH,
            B_Instance => firstL);
         
         Relationships_Rel_R26.Link (
            A_Instance => firstL,
            B_Instance => secondSL3);
         
         Relationships_Rel_R27.Link (
            A_Instance => secondSL3,
            B_Instance => firstSSL1);
         
         Relationships_Rel_R29.Link (
            A_Instance => secondSL3,
            B_Instance => secondSSL7);
         
         Relationships_Rel_R30.Link (
            A_Instance => secondSL3,
            B_Instance => thirdSSL8);
         
         Relationships_Rel_R31.Link (
            A_Instance => secondSL3,
            B_Instance => fifthSSL10);
         
         
         --  Perform all of the navigations
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R9.Navigate (
               From  => firstH,
               Class => Root_Object.Relationships.objL.Relationships_objL_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R26.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSL3.Relationships_objSL3_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R27.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSSL1.Relationships_objSSL1_type'tag,
               To    => InstSSL1);
         end;
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R9.Navigate (
               From  => firstH,
               Class => Root_Object.Relationships.objL.Relationships_objL_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R26.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSL3.Relationships_objSL3_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R29.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSSL7.Relationships_objSSL7_type'tag,
               To    => InstSSL7);
         end;
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R9.Navigate (
               From  => firstH,
               Class => Root_Object.Relationships.objL.Relationships_objL_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R26.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSL3.Relationships_objSL3_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R30.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSSL8.Relationships_objSSL8_type'tag,
               To    => InstSSL8);
         end;
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R9.Navigate (
               From  => firstH,
               Class => Root_Object.Relationships.objL.Relationships_objL_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R26.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSL3.Relationships_objSL3_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R31.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSSL10.Relationships_objSSL10_type'tag,
               To    => InstSSL10);
         end;
         
         if InstSSL1 /= Null then
            
            if InstSSL7 /= Null then
               
               if InstSSL8 /= Null then
                  
                  if InstSSL10 /= Null then
                     
                     Has_Failed := False;
                     
                  else
                     
                     Has_Failed   := True;
                     Failure_Code := -40;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := -30;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := -20;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -10;
         end if;
         
         
         --  Delete the relationships
         
         Relationships_Rel_R9.Unlink (
            A_Instance => firstH,
            B_Instance => firstL);
         
         
         Relationships_Rel_R26.Unlink (
            A_Instance => firstL,
            B_Instance => secondSL3);
         
         
         Relationships_Rel_R27.Unlink (
            A_Instance => secondSL3,
            B_Instance => firstSSL1);
         
         
         Relationships_Rel_R29.Unlink (
            A_Instance => secondSL3,
            B_Instance => secondSSL7);
         
         
         Relationships_Rel_R30.Unlink (
            A_Instance => secondSL3,
            B_Instance => thirdSSL8);
         
         
         Relationships_Rel_R31.Unlink (
            A_Instance => secondSL3,
            B_Instance => fifthSSL10);
         
      end if;
      
      
      --  End Test 9
      -- --------------------------------------------------------------------
      --  Test 10 - Navigate from Object H all the way down to 
      --            Sub_Sub_Sub_L1
      -- --------------------------------------------------------------------
      
      if Iteration =  10 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0709               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "H to L to SL to SSl to SSSL     ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0614               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0615               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0616               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0618               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Create the relationships
         Relationships_Rel_R9.Link (
            A_Instance => secondH,
            B_Instance => thirdL);
         
         Relationships_Rel_R26.Link (
            A_Instance => thirdL,
            B_Instance => secondSL3);
         
         Relationships_Rel_R27.Link (
            A_Instance => secondSL3,
            B_Instance => secondSSL2);
         
         Relationships_Rel_R28.Link (
            A_Instance => secondSSL2,
            B_Instance => fourthSSSL2);
         
         
         --  Perform the navigation
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R9.Navigate (
               From  => secondH,
               Class => Root_Object.Relationships.objL.Relationships_objL_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R26.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSL3.Relationships_objSL3_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R27.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSSL2.Relationships_objSSL2_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R28.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSSSL2.Relationships_objSSSL2_type'tag,
               To    => InstSSSL2);
         end;
         
         if InstSSSL2 =  Null then
            Has_Failed   := True;
            Failure_Code := -10;
         else
            
            if Root_Object.Relationships.objSSSL2.Relationships_objSSSL2_type(InstSSSL2.all).idSSSL2 /= 4 then
               Has_Failed   := True;
               Failure_Code := -20;
               
            end if;
            
         end if;
         
         
         --  Delete the relationships
         
         Relationships_Rel_R9.Unlink (
            A_Instance => secondH,
            B_Instance => thirdL);
         
         
         Relationships_Rel_R26.Unlink (
            A_Instance => thirdL,
            B_Instance => secondSL3);
         
         
         Relationships_Rel_R27.Unlink (
            A_Instance => secondSL3,
            B_Instance => secondSSL2);
         
         
         Relationships_Rel_R28.Unlink (
            A_Instance => secondSSL2,
            B_Instance => fourthSSSL2);
         
      end if;
      
      
      --  End Test 10
      -- --------------------------------------------------------------------
      --  Test 11 - Navigate from SSL10 to SSL6 via SL3
      -- --------------------------------------------------------------------
      
      if Iteration =  11 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0708               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "SSL10 to SLL6 via SL3           ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0614               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0615               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0616               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0617               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Create the relationships
         Relationships_Rel_R31.Link (
            A_Instance => firstSL3,
            B_Instance => thirdSSL10);
         
         Relationships_Rel_R29.Link (
            A_Instance => firstSL3,
            B_Instance => fourthSSL6);
         
         
         --  Perform the navigation
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R31.Navigate (
               From  => thirdSSL10,
               Class => Root_Object.Relationships.objSL3.Relationships_objSL3_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R29.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSSL6.Relationships_objSSL6_type'tag,
               To    => InstSSL6);
         end;
         
         if InstSSL6 /= Null then
            
            if Root_Object.Relationships.objSSL6.Relationships_objSSL6_type(InstSSL6.all).idSSL6 =  4 then
               
               Has_Failed := False;
               
            else
               
               Has_Failed   := True;
               Failure_Code := -20;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -10;
            
         end if;
         
         
         --  Delete the relationships
         
         Relationships_Rel_R31.Unlink (
            A_Instance => firstSL3,
            B_Instance => thirdSSL10);
         
         
         Relationships_Rel_R29.Unlink (
            A_Instance => firstSL3,
            B_Instance => fourthSSL6);
         
      end if;
      
      
      --  End Test 11
      -- --------------------------------------------------------------------
      --  Test 12 - Navigate from Sub_Sub_Sub_L2 to Object H
      -- --------------------------------------------------------------------
      
      if Iteration =  12 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0708               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "SSSL2 to ObjH                   ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0614               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0615               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0616               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0618               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Create the relationships
         Relationships_Rel_R9.Link (
            A_Instance => firstH,
            B_Instance => secondL);
         
         Relationships_Rel_R26.Link (
            A_Instance => secondL,
            B_Instance => secondSL3);
         
         Relationships_Rel_R27.Link (
            A_Instance => secondSL3,
            B_Instance => secondSSL2);
         
         Relationships_Rel_R28.Link (
            A_Instance => secondSSL2,
            B_Instance => fourthSSSL2);
         
         
         --  Perform the navigation
         
         declare
            Temp_Instance : Root_Object.Object_Access;
         begin
            
            Relationships_Rel_R28.Navigate (
               From  => fourthSSSL2,
               Class => Root_Object.Relationships.objSSL2.Relationships_objSSL2_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R27.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objSL3.Relationships_objSL3_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R26.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objL.Relationships_objL_type'tag,
               To    => Temp_Instance);
            
            Relationships_Rel_R9.Navigate (
               From  => Temp_Instance,
               Class => Root_Object.Relationships.objH.Relationships_objH_type'tag,
               To    => InstH);
         end;
         
         if InstH /= Null then
            
            if Root_Object.Relationships.objH.Relationships_objH_type(InstH.all).idH =  1 then
               
               Has_Failed := False;
               
            else
               
               Has_Failed   := True;
               Failure_Code := -20;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -10;
            
         end if;
         
         
         --  Delete the relationships
         
         Relationships_Rel_R9.Unlink (
            A_Instance => firstH,
            B_Instance => secondL);
         
         
         Relationships_Rel_R26.Unlink (
            A_Instance => secondL,
            B_Instance => secondSL3);
         
         
         Relationships_Rel_R27.Unlink (
            A_Instance => secondSL3,
            B_Instance => secondSSL2);
         
         
         Relationships_Rel_R28.Unlink (
            A_Instance => secondSSL2,
            B_Instance => fourthSSSL2);
         
      end if;
      
      
      --  End Test 12
      -- --------------------------------------------------------------------
      --  Test 13 - Navigate from Object_H to Object_K
      -- --------------------------------------------------------------------
      
      if Iteration =  13 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0709               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "objH                            ",
            Purpose         => "Naviaget from objH to ObjK      ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0614               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0615               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0616               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0618               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0621               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         --  Create the relationships
         Relationships_Rel_R9.Link (
            A_Instance => firstH,
            B_Instance => secondL);
         
         Relationships_Rel_R26.Link (
            A_Instance => secondL,
            B_Instance => secondSL3);
         
         Relationships_Rel_R29.Link (
            A_Instance => secondSL3,
            B_Instance => firstSSL6);
         
         Relationships_Rel_R32.Link (
            A_Instance => firstSSL6,
            B_Instance => firstK);
         
         Relationships_Rel_R32.Link (
            A_Instance => firstSSL6,
            B_Instance => fifthK);
         
         
         --  Perform the navigation
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => firstH,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R9.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.objL.Relationships_objL_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => Temporary_Set);
            
            Relationships_Rel_R26.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.objSL3.Relationships_objSL3_type'tag,
               To    => Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => Second_Temporary_Set);
            
            Relationships_Rel_R29.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.objSSL6.Relationships_objSSL6_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetK);
            
            Relationships_Rel_R32.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.objK.Relationships_objK_type'tag,
               To    => SetK);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         
         if Root_Object.Object_List.Count_Of(SetK) /= 0 then
            
            Val1 := -10;
            Val2 := -20;
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetK);
               
               while (Temp_Entry /= null) loop
                  InstK := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.objK.Relationships_objK_type(InstK.all).idK =  1 then
                     Val1 := Root_Object.Relationships.objK.Relationships_objK_type(InstK.all).idK;
                  end if;
                  
                  
                  if Root_Object.Relationships.objK.Relationships_objK_type(InstK.all).idK =  5 then
                     Val2 := Root_Object.Relationships.objK.Relationships_objK_type(InstK.all).idK;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetK);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Val1 =  1 then
               
               if Val2 =  5 then
                  
                  Has_Failed := False;
                  
               else
                  
                  Has_Failed   := True;
                  Failure_Code := Val2;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := Val1;
            end if;
            
         else
            Has_Failed := True;
            Failure_Code := -30;
            
         end if;
         
         
         --  Delete the relationships
         
         Relationships_Rel_R9.Unlink (
            A_Instance => firstH,
            B_Instance => secondL);
         
         
         Relationships_Rel_R26.Unlink (
            A_Instance => secondL,
            B_Instance => secondSL3);
         
         
         Relationships_Rel_R29.Unlink (
            A_Instance => secondSL3,
            B_Instance => firstSSL6);
         
         
         Relationships_Rel_R32.Unlink (
            A_Instance => firstSSL6,
            B_Instance => firstK);
         
         
         Relationships_Rel_R32.Unlink (
            A_Instance => firstSSL6,
            B_Instance => fifthK);
         
      end if;
      
      
      --  End Test 13
      -- --------------------------------------------------------------------
      --  Test complete
      -- --------------------------------------------------------------------
      
      if Unsupported =  False then
         
         if Has_Failed =  False then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "objH                            ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "objH                            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Failure_Code);
            
         end if;
         
      else
         Relationships_RPT4_Test_Unsupported_Bridge.Relationships_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
      end if;
      
      
      -- --------------------------------------------------------------------
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetK);
      
   end Relationships_objH1_Super_Sub_Relationships;
   
end Relationships_objH1_Super_Sub_Relationships_Service;

--
-- End of file Relationships_objH1_Super_Sub_Relationships_Service.adb
--
