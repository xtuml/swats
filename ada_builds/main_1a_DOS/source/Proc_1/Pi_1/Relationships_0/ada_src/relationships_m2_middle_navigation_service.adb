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
--* File Name:               Relationships_M2_Middle_Navigation_Service.adb
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
with Root_Object.Relationships.objSSSL2;
with Root_Object.Relationships.objSSSL1;
with Root_Object.Relationships.objSSL11;
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
with Root_Object.Relationships.objSL1;
with Root_Object.Relationships.objBM;
with Root_Object.Relationships.objLMRM;
with Root_Object.Relationships.objRM;
with Root_Object.Relationships.objLM;
with Root_Object.Relationships.assMR;
with Root_Object.Relationships.RO;
with Root_Object.Relationships.MO;
with Root_Object.Relationships.LO;
with Root_Object.Relationships.objR;
with Root_Object.Relationships.objQ;
with Root_Object.Relationships.objP;
with Root_Object.Relationships.objO;
with Root_Object.Relationships.objL;
with Root_Object.Relationships.objK;
with Root_Object.Relationships.objI;
with Root_Object.Relationships.objH;
with Root_Object.Relationships.objG;
with Root_Object.Relationships.OBJEF;
with Root_Object.Relationships.objF;
with Root_Object.Relationships.objE;
with Root_Object.Relationships.objDO;
with Root_Object.Relationships.objD;
with Root_Object.Relationships.objC;
with Root_Object.Relationships.objB;
with Root_Object.Relationships.objA;
with Root_Object.Relationships.MA;
with Root_Object.Relationships.MFR;
with Root_Object.Relationships.MRA;
with Root_Object.Relationships.MR;
with Root_Object.Relationships.M;
with Root_Object.Relationships.FL;

-- List of relationships used
with Relationships_rel_R10;
with Relationships_rel_R7;
with Relationships_rel_R6;
with Relationships_rel_R8;

-- List of services used
with Relationships_Relationships3_Memory_Leak_Test_One_To_Many_Service;
with Relationships_Relationships4_Memory_Leak_Test_Many_To_Many_Service;

-- List of bridges used
with Relationships_RPT4_Test_Unsupported_Bridge;
with Relationships_RPT3_Test_Failed_Bridge;
with Relationships_RPT2_Test_Passed_Bridge;
with Relationships_RPT5_Test_Text_Bridge;
with Relationships_RPT8_Specify_Requid_Bridge;
with Relationships_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_M2_Middle_Navigation_Service is
   
   procedure Relationships_M2_Middle_Navigation (
      Iteration : in     Application_Types.Base_Integer_Type;
      Test      : in     Application_Types.Base_Integer_Type) is
      
      Set_Right     : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetAssoc      : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMFR        : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMRA        : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetRight      : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      Set_Of_Left   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetM          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMR         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetFL         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMA         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetA          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetB          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetC          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetD          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetDO         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetE          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetF          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetEF         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetG          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetH          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetI          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetK          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetL          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetO          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetP          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetQ          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetR          : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetLO         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMO         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetRO         : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMRAssoc    : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetLeftMany   : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetRightMany  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetLMRMAssoc  : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetBottomMany : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSL1        : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSL2        : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSL3        : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSL1       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSL2       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSL3       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSL4       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSL5       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSL6       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSL7       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSL8       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSL9       : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSL10      : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSL11      : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSSL1      : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetSSSL2      : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      SetMiddleInst : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      One_Left         : Root_Object.Object_Access;
      One_Middle       : Root_Object.Object_Access;
      One_Right        : Root_Object.Object_Access;
      Two_Right        : Root_Object.Object_Access;
      Three_Right      : Root_Object.Object_Access;
      One_MRA          : Root_Object.Object_Access;
      Two_MRA          : Root_Object.Object_Access;
      One_MFR          : Root_Object.Object_Access;
      Two_MFR          : Root_Object.Object_Access;
      InstRight        : Root_Object.Object_Access;
      FarRight         : Root_Object.Object_Access;
      The_Assoc        : Root_Object.Object_Access;
      InstAssoc        : Root_Object.Object_Access;
      InstMFR          : Root_Object.Object_Access;
      InstMRA          : Root_Object.Object_Access;
      This_Local_Right : Root_Object.Object_Access;
      New_Left         : Root_Object.Object_Access;
      New_Middle       : Root_Object.Object_Access;
      New_Right        : Root_Object.Object_Access;
      Local_Left       : Root_Object.Object_Access;
      InstM            : Root_Object.Object_Access;
      InstL            : Root_Object.Object_Access;
      InstMR           : Root_Object.Object_Access;
      One_Above        : Root_Object.Object_Access;
      Inst             : Root_Object.Object_Access;
      Three_Above      : Root_Object.Object_Access;
      Two_Above        : Root_Object.Object_Access;
      InstMA           : Root_Object.Object_Access;
      Fourth_Right     : Root_Object.Object_Access;
      Fourth_Above     : Root_Object.Object_Access;
      newMiddleInst    : Root_Object.Object_Access;
      newA             : Root_Object.Object_Access;
      newB             : Root_Object.Object_Access;
      newC             : Root_Object.Object_Access;
      newD             : Root_Object.Object_Access;
      newDO            : Root_Object.Object_Access;
      newE             : Root_Object.Object_Access;
      newF             : Root_Object.Object_Access;
      newEF            : Root_Object.Object_Access;
      newG             : Root_Object.Object_Access;
      newH             : Root_Object.Object_Access;
      newI             : Root_Object.Object_Access;
      newK             : Root_Object.Object_Access;
      newL             : Root_Object.Object_Access;
      newO             : Root_Object.Object_Access;
      newP             : Root_Object.Object_Access;
      newQ             : Root_Object.Object_Access;
      newR             : Root_Object.Object_Access;
      newLO            : Root_Object.Object_Access;
      newMO            : Root_Object.Object_Access;
      newRO            : Root_Object.Object_Access;
      newMRAssoc       : Root_Object.Object_Access;
      newLeftMany      : Root_Object.Object_Access;
      newRightMany     : Root_Object.Object_Access;
      newLMRMAssoc     : Root_Object.Object_Access;
      newBottomMany    : Root_Object.Object_Access;
      newSL1           : Root_Object.Object_Access;
      newSL2           : Root_Object.Object_Access;
      newSL3           : Root_Object.Object_Access;
      newSSL1          : Root_Object.Object_Access;
      newSSL2          : Root_Object.Object_Access;
      newSSL3          : Root_Object.Object_Access;
      newSSL4          : Root_Object.Object_Access;
      newSSL5          : Root_Object.Object_Access;
      newSSL6          : Root_Object.Object_Access;
      newSSL7          : Root_Object.Object_Access;
      newSSL8          : Root_Object.Object_Access;
      newSSL9          : Root_Object.Object_Access;
      newSSL10         : Root_Object.Object_Access;
      newSSL11         : Root_Object.Object_Access;
      newSSSL1         : Root_Object.Object_Access;
      newSSSL2         : Root_Object.Object_Access;
      newFL            : Root_Object.Object_Access;
      newMR            : Root_Object.Object_Access;
      newMA            : Root_Object.Object_Access;
      newMRA           : Root_Object.Object_Access;
      newMFR           : Root_Object.Object_Access;
      InstA            : Root_Object.Object_Access;
      InstB            : Root_Object.Object_Access;
      InstC            : Root_Object.Object_Access;
      InstD            : Root_Object.Object_Access;
      InstDO           : Root_Object.Object_Access;
      InstE            : Root_Object.Object_Access;
      InstEF           : Root_Object.Object_Access;
      InstF            : Root_Object.Object_Access;
      InstG            : Root_Object.Object_Access;
      InstH            : Root_Object.Object_Access;
      InstI            : Root_Object.Object_Access;
      InstK            : Root_Object.Object_Access;
      InstL1           : Root_Object.Object_Access;
      InstO            : Root_Object.Object_Access;
      InstP            : Root_Object.Object_Access;
      InstQ            : Root_Object.Object_Access;
      InstR            : Root_Object.Object_Access;
      InstLO           : Root_Object.Object_Access;
      InstRO           : Root_Object.Object_Access;
      InstMO           : Root_Object.Object_Access;
      InstMRAssoc      : Root_Object.Object_Access;
      InstLeftMany     : Root_Object.Object_Access;
      InstRightMany    : Root_Object.Object_Access;
      InstLMRMAssoc    : Root_Object.Object_Access;
      InstBottomMany   : Root_Object.Object_Access;
      InstSL1          : Root_Object.Object_Access;
      InstSL2          : Root_Object.Object_Access;
      InstSL3          : Root_Object.Object_Access;
      InstSSL1         : Root_Object.Object_Access;
      InstSSL2         : Root_Object.Object_Access;
      InstSSL3         : Root_Object.Object_Access;
      InstSSL4         : Root_Object.Object_Access;
      InstSSL5         : Root_Object.Object_Access;
      InstSSL6         : Root_Object.Object_Access;
      InstSSL7         : Root_Object.Object_Access;
      InstSSL8         : Root_Object.Object_Access;
      InstSSL9         : Root_Object.Object_Access;
      InstSSL10        : Root_Object.Object_Access;
      InstSSL11        : Root_Object.Object_Access;
      InstSSSL1        : Root_Object.Object_Access;
      InstSSSL2        : Root_Object.Object_Access;
      InstFarLeft      : Root_Object.Object_Access;
      InstMiddleInst   : Root_Object.Object_Access;
      
      How_Many_Far_Right_To_Make : Application_Types.Base_Integer_Type := 1;
      Loop_Counter               : Application_Types.Base_Integer_Type := 1;
      Counter                    : Application_Types.Base_Integer_Type := 1;
      The_ID                     : Application_Types.Base_Integer_Type := 1;
      break_condition            : Application_Types.Base_Integer_Type := 1;
      Loop_Index                 : Application_Types.Base_Integer_Type := 1;
      Final_Right_Value          : Application_Types.Base_Integer_Type := 1;
      Failure_Code               : Application_Types.Base_Integer_Type := 1;
      Val1                       : Application_Types.Base_Integer_Type := 1;
      Val2                       : Application_Types.Base_Integer_Type := 1;
      Val3                       : Application_Types.Base_Integer_Type := 1;
      outer_loop_counter         : Application_Types.Base_Integer_Type := 1;
      inner_break_condition      : Application_Types.Base_Integer_Type := 1;
      inner_loop_counter         : Application_Types.Base_Integer_Type := 1;
      The_Inner_ID               : Application_Types.Base_Integer_Type := 1;
      Local_Left_Data            : Application_Types.Base_Integer_Type := 1;
      Final_Left_Value           : Application_Types.Base_Integer_Type := 1;
      NoInSet                    : Application_Types.Base_Integer_Type := 1;
      Count                      : Application_Types.Base_Integer_Type := 1;
      No_Inst                    : Application_Types.Base_Integer_Type := 1;
      The_Grand_Total            : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      InstFound  : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of M2_Middle_Navigation
      
      -- --------------------------------------------------------------------
      --  Normal navigation
      --  The architecture shall implement simple 1:M relationships
      --  1241-0000-01-0602
      --  The architecture shall implement associative 1-M:M relationships
      --  1241-0000-01-0610
      --  The architecture shall provide a mechanism to allow the creation of
      --  associative relationship link between two object instances and an
      --  associative instance
      --  1241-0000-01-0611
      --  The architecture shall provide a mechanism to allow the deletion of
      --  an associative link between an associative object and the link 
      --  between two objects
      --  1241-0000-01-0612
      --  The architecture shall provide a mechanism to allow the deletion of
      --  a link between two objects in an associative relationship
      --  1241-0000-01-0613
      --  The architecture shall provide operations which, given a starting 
      --  instance handle and a relationshipspecification, return a single 
      --  handle of the related instance
      --  1241-0000-01-0701
      --  The architecture shall provide operations which, given a starting 
      --  instance handle and a relationship specification , return a set of
      --  handles of the related instances
      --  1241-0000-01-0702
      --  The architecture shall provide operations which, given a starting 
      --  instance handle and a relationship specification, return a set of 
      --  handles of the related instances
      --  1241-0000-01-0703 **** NOT SUPPORTED BY WACA ****
      --  The architecture shall support chains of navigations expressed in 
      --  ASL
      --  1241-0000-01-0704
      --  The architecture shall support navigations to associative objects
      --  expressed in ASL
      --  1241-0000-01-0706
      --  The architecture shall support navigations from singly associative
      --  objects expressed in ASL
      --  1241-0000-01-0707
      --  The architecture shall support a translation of the ASL link 
      --  statment to map to the mechanism that allows creation of a 
      --  relationship link between two object instances
      --  1241-0000-01-1202
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
      One_Left := Root_Object.Relationships.FL.Conditional_Find_One;
      while (One_Left /= null) and then (not (Root_Object.Relationships.FL.Relationships_FL_Type(One_Left.all).Left_Identifier =  1) ) loop
         
         One_Left := One_Left.Next_Object;
      end loop;
      
      One_Middle := Root_Object.Relationships.M.Conditional_Find_One;
      while (One_Middle /= null) and then (not (Root_Object.Relationships.M.Relationships_M_Type(One_Middle.all).Middle_Identifier =  1) ) loop
         
         One_Middle := One_Middle.Next_Object;
      end loop;
      
      One_Right := Root_Object.Relationships.MR.Conditional_Find_One;
      while (One_Right /= null) and then (not (Root_Object.Relationships.MR.Relationships_MR_Type(One_Right.all).Right_Identifier =  1) ) loop
         
         One_Right := One_Right.Next_Object;
      end loop;
      
      Two_Right := Root_Object.Relationships.MR.Conditional_Find_One;
      while (Two_Right /= null) and then (not (Root_Object.Relationships.MR.Relationships_MR_Type(Two_Right.all).Right_Identifier =  2) ) loop
         
         Two_Right := Two_Right.Next_Object;
      end loop;
      
      Three_Right := Root_Object.Relationships.MR.Conditional_Find_One;
      while (Three_Right /= null) and then (not (Root_Object.Relationships.MR.Relationships_MR_Type(Three_Right.all).Right_Identifier =  3) ) loop
         
         Three_Right := Three_Right.Next_Object;
      end loop;
      
      One_MRA := Root_Object.Relationships.MRA.Conditional_Find_One;
      while (One_MRA /= null) and then (not (Root_Object.Relationships.MRA.Relationships_MRA_Type(One_MRA.all).MRA_Identifier =  1) ) loop
         
         One_MRA := One_MRA.Next_Object;
      end loop;
      
      Two_MRA := Root_Object.Relationships.MRA.Conditional_Find_One;
      while (Two_MRA /= null) and then (not (Root_Object.Relationships.MRA.Relationships_MRA_Type(Two_MRA.all).MRA_Identifier =  2) ) loop
         
         Two_MRA := Two_MRA.Next_Object;
      end loop;
      
      One_MFR := Root_Object.Relationships.MFR.Conditional_Find_One;
      while (One_MFR /= null) and then (not (Root_Object.Relationships.MFR.Relationships_MFR_Type(One_MFR.all).MFR_Identifier =  1) ) loop
         
         One_MFR := One_MFR.Next_Object;
      end loop;
      
      Two_MFR := Root_Object.Relationships.MFR.Conditional_Find_One;
      while (Two_MFR /= null) and then (not (Root_Object.Relationships.MFR.Relationships_MFR_Type(Two_MFR.all).MFR_Identifier =  2) ) loop
         
         Two_MFR := Two_MFR.Next_Object;
      end loop;
      
      Has_Failed := False;
      
      
      -- ---------------------------------------------------------------------------------------------
      --  Test 1 - Call a routine in a tight loop that will perform a navigation from an instance in 
      --           a set to a set.
      --           Repeat this call many times to monitor the release of memory when the local  
      --           objects go out of scope.
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  1 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0621               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Navigate in many to many loop   ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0611               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1203               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1204               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         How_Many_Far_Right_To_Make := 3;
         Loop_Counter               := 0;
         
         
         Root_Object.Object_List.Clear (
            From => Set_Right);
         
         Root_Object.Relationships.MR.Find (
            Add_To => Set_Right);
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Set_Right);
            
            while (Temp_Entry /= null) loop
               InstRight := Temp_Entry.Item;
               
               Counter := 0;
               
               
               loop
                  
                  The_ID := Counter + 10;
                  
                  
                  FarRight := Root_Object.Relationships.MFR.Create;
                  Root_Object.Relationships.MFR.Relationships_MFR_Type(FarRight.all).MFR_Identifier      := The_ID;
                  Root_Object.Relationships.MFR.Relationships_MFR_Type(FarRight.all).MFR_Data  := 0;
                  
                  
                  The_Assoc := Root_Object.Relationships.MRA.Create;
                  Root_Object.Relationships.MRA.Relationships_MRA_Type(The_Assoc.all).MRA_Data := The_ID;
                  
                  Relationships_Rel_R8.Link (
                     A_Instance => InstRight,
                     B_Instance => FarRight,
                     Using      => The_Assoc);
                  
                  
                  Counter := Counter + 1;
                  
                  exit when Counter =  How_Many_Far_Right_To_Make;
               end loop;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Set_Right);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         break_condition := 501;
         Loop_Index      := 1;
         
         
         loop
            
            --  Call the memory leak test many times. Monitor the memory useage in NT Task Manager
            
            Relationships_Relationships4_Memory_Leak_Test_Many_To_Many_Service.Relationships_Relationships4_Memory_Leak_Test_Many_To_Many;
            
            
            Loop_Index := Loop_Index + 1;
            
            exit when Loop_Index =  break_condition;
         end loop;
         
         
         --  Now the test is completed unlink and delete the instances  
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Set_Right);
            
            while (Temp_Entry /= null) loop
               InstRight := Temp_Entry.Item;
               
               Root_Object.Object_List.Clear (
                  From => SetAssoc);
               
               
               Relationships_Rel_R8.Navigate (
                  From  => InstRight,
                  Class => Root_Object.Relationships.MRA.Relationships_MRA_type'tag,
                  To    => SetAssoc);
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => SetAssoc);
                  
                  while (Temp_Entry /= null) loop
                     InstAssoc := Temp_Entry.Item;
                     
                     Relationships_Rel_R8.Navigate (
                        From  => InstAssoc,
                        Class => Root_Object.Relationships.MFR.Relationships_MFR_type'tag,
                        To    => InstMFR);
                     
                     
                     if Root_Object.Relationships.MFR.Relationships_MFR_type(InstMFR.all).MFR_Identifier >  9 then
                        
                        Relationships_Rel_R8.Unassociate(
                           A_Instance => InstRight,
                           B_Instance => InstMFR,
                           From       => InstAssoc);
                        
                        Relationships_Rel_R8.Unlink (
                           A_Instance => InstRight,
                           B_Instance => InstMFR);
                        
                     end if;
                     
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => SetAssoc);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Set_Right);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         Root_Object.Object_List.Clear (
            From => SetMFR);
         
         Root_Object.Relationships.MFR.Find (
            Add_To => SetMFR);
         
         
         The_ID := 10;
         
         loop
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetMFR);
               
               while (Temp_Entry /= null) loop
                  InstMFR := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.MFR.Relationships_MFR_type(InstMFR.all).MFR_Identifier =  The_ID then
                     
                     Root_Object.Relationships.MFR.Delete (
                        Old_Instance => InstMFR);
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetMFR);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            The_ID := The_ID + 1;
            exit when The_ID =  14;
         end loop;
         
         
         Root_Object.Object_List.Clear (
            From => SetMRA);
         
         Root_Object.Relationships.MRA.Find (
            Add_To => SetMRA);
         
         The_ID := 10;
         
         loop
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetMRA);
               
               while (Temp_Entry /= null) loop
                  InstMRA := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.MRA.Relationships_MRA_type(InstMRA.all).MRA_Data =  The_ID then
                     
                     Root_Object.Relationships.MRA.Delete (
                        Old_Instance => InstMRA);
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetMRA);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            The_ID := The_ID + 1;
            
            exit when The_ID =  14;
         end loop;
         
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
         begin
            Root_Object.Object_List.Clear (
               From => SetMFR);
            
            Root_Object.Relationships.MFR.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.MFR.Relationships_MFR_Type(Temp_Entry.Item.all).MFR_Identifier >  9 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetMFR);
                  
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
               From => SetMRA);
            
            Root_Object.Relationships.MRA.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.MRA.Relationships_MRA_Type(Temp_Entry.Item.all).MRA_Data >  9 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetMRA);
                  
               end if;
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Temp_List);
               
            end loop;
            
            Root_Object.Object_List.Destroy_List (
               Target_List => Temp_List);
         end;
         
         if Root_Object.Object_List.Count_Of(SetMFR) /= 0 then
            
            Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
               Test_Number => Test,
               Free_Text   => "MFR Not Empty                   ");
            
         end if;
         
         
         if Root_Object.Object_List.Count_Of(SetMRA) /= 0 then
            
            Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
               Test_Number => Test,
               Free_Text   => "MRA Not Empty                   ");
            
         end if;
         
         Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "M  M Memory leak test complete  ");
         
         
         Root_Object.Object_List.Clear (
            From => Set_Right);
         
         Root_Object.Relationships.MFR.Find (
            Add_To => Set_Right);
         
         
         Final_Right_Value := 0;
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Set_Right);
            
            while (Temp_Entry /= null) loop
               This_Local_Right := Temp_Entry.Item;
               Final_Right_Value := Final_Right_Value + Root_Object.Relationships.MFR.Relationships_MFR_type(This_Local_Right.all).MFR_Data;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Set_Right);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         if Final_Right_Value /= 0 then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "Navigate in MM loop             ",
               Test_Number        => Test,
               Test_Value         => Final_Right_Value);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Navigate in MM loop             ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Final_Right_Value);
            
         end if;
         
      end if;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------------------
      --  Test 2 -  Navigate from far left to many to right
      -- --------------------------------------------------------------------------------------
      
      if Iteration =  2 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0601               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Navigate to a set via a chain   ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0704               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => One_Left,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R6.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.M.Relationships_M_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetRight);
            
            Relationships_Rel_R7.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
               To    => SetRight);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         
         if Root_Object.Object_List.Count_Of(SetRight) /= 3 then
            
            Has_Failed := True;
            Failure_Code := -10;
            
         else
            
            Val1 := -20;
            Val2 := -30;
            Val3 := -40;
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetRight);
               
               while (Temp_Entry /= null) loop
                  InstRight := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.MR.Relationships_MR_type(InstRight.all).Right_Identifier =  1 then
                     Val1 := Root_Object.Relationships.MR.Relationships_MR_type(InstRight.all).Right_Identifier;
                  end if;
                  
                  
                  if Root_Object.Relationships.MR.Relationships_MR_type(InstRight.all).Right_Identifier =  2 then
                     Val2 := Root_Object.Relationships.MR.Relationships_MR_type(InstRight.all).Right_Identifier;
                  end if;
                  
                  
                  if Root_Object.Relationships.MR.Relationships_MR_type(InstRight.all).Right_Identifier =  3 then
                     Val3 := Root_Object.Relationships.MR.Relationships_MR_type(InstRight.all).Right_Identifier;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetRight);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if Val1 =  1 then
               
               if Val2 =  2 then
                  
                  if Val3 /= 3 then
                     
                     Has_Failed   := True;
                     Failure_Code := Val3;
                  end if;
                  
               else
                  Has_Failed := True;
                  Failure_Code := Val2;
               end if;
               
            else
               Has_Failed := True;
               Failure_Code := Val1;
               
            end if;
            
         end if;
         
         
         if Has_Failed then
            
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Set navigation                  ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Failure_Code);
            
         else
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "Set navigation                  ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         end if;
         
      end if;
      
      
      --  End Test 2
      -- ---------------------------------------------------------------------------------------------
      --  Test 3 - Call a routine in a tight loop that will perform a navigation from a single 
      --           instance to a set.
      --           Repeat this call many times to monitor the release of memory when the local 
      --           objects go out of scope.
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  3 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0621               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Navigate one to many in loop    ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0603               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1203               ");
         
         
         --  Create many objects for this navigation test.
         
         break_condition := 10;
         outer_loop_counter := 0;
         
         
         loop
            
            The_ID := outer_loop_counter + 10;
            
            
            New_Left := Root_Object.Relationships.FL.Create;
            Root_Object.Relationships.FL.Relationships_FL_Type(New_Left.all).Left_Identifier       := The_ID;
            Root_Object.Relationships.FL.Relationships_FL_Type(New_Left.all).Left_Data := 0;
            
            
            New_Middle := Root_Object.Relationships.M.Create;
            Root_Object.Relationships.M.Relationships_M_Type(New_Middle.all).Middle_Identifier         := The_ID;
            Root_Object.Relationships.M.Relationships_M_Type(New_Middle.all).Middle_Data   := 0;
            
            Relationships_Rel_R6.Link (
               A_Instance => New_Left,
               B_Instance => New_Middle);
            
            
            inner_break_condition := 10;
            inner_loop_counter    := 0;
            
            
            loop
               
               The_Inner_ID := inner_loop_counter + 10;
               
               
               New_Right := Root_Object.Relationships.MR.Create;
               Root_Object.Relationships.MR.Relationships_MR_Type(New_Right.all).Right_Identifier        := The_Inner_ID;
               Root_Object.Relationships.MR.Relationships_MR_Type(New_Right.all).Right_Data  := 0;
               
               Relationships_Rel_R7.Link (
                  A_Instance => New_Middle,
                  B_Instance => New_Right);
               
               
               inner_loop_counter := inner_loop_counter + 1;
               exit when inner_loop_counter =  inner_break_condition;
            end loop;
            
            outer_loop_counter := outer_loop_counter + 1;
            
            exit when outer_loop_counter =  break_condition;
         end loop;
         
         
         break_condition := 501;
         Loop_Index      := 1;
         
         loop
            
            --  Call the memory leak test many times. Monitor the memory useage in NT Task Manager
            
            Relationships_Relationships3_Memory_Leak_Test_One_To_Many_Service.Relationships_Relationships3_Memory_Leak_Test_One_To_Many;
            
            Local_Left_Data := 0;
            Loop_Index      := Loop_Index + 1;
            
            Root_Object.Object_List.Clear (
               From => Set_Of_Left);
            
            Root_Object.Relationships.FL.Find (
               Add_To => Set_Of_Left);
            
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => Set_Of_Left);
               
               while (Temp_Entry /= null) loop
                  Local_Left := Temp_Entry.Item;
                  Local_Left_Data := Local_Left_Data + Root_Object.Relationships.FL.Relationships_FL_type(Local_Left.all).Left_Data;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => Set_Of_Left);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            exit when Loop_Index =  break_condition;
         end loop;
         
         
         --  Delete all of the instances created in this test
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
         begin
            Root_Object.Object_List.Clear (
               From => SetM);
            
            Root_Object.Relationships.M.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.M.Relationships_M_Type(Temp_Entry.Item.all).Middle_Identifier >  9 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetM);
                  
               end if;
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Temp_List);
               
            end loop;
            
            Root_Object.Object_List.Destroy_List (
               Target_List => Temp_List);
         end;
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetM);
            
            while (Temp_Entry /= null) loop
               InstM := Temp_Entry.Item;
               
               Relationships_Rel_R6.Navigate (
                  From  => InstM,
                  Class => Root_Object.Relationships.FL.Relationships_FL_type'tag,
                  To    => InstL);
               
               
               Relationships_Rel_R6.Unlink (
                  A_Instance => InstL,
                  B_Instance => InstM);
               
               
               Root_Object.Relationships.FL.Delete (
                  Old_Instance => InstL);
               
               Root_Object.Object_List.Clear (
                  From => SetMR);
               
               
               Relationships_Rel_R7.Navigate (
                  From  => InstM,
                  Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
                  To    => SetMR);
               --
               -- start of for loop
               
               declare
                  use type Root_Object.Object_List.Node_Access_Type;
                  Temp_Entry : Root_Object.Object_List.Node_Access_Type;
               begin
                  Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                     Target_List => SetMR);
                  
                  while (Temp_Entry /= null) loop
                     InstMR := Temp_Entry.Item;
                     
                     Relationships_Rel_R7.Unlink (
                        A_Instance => InstMR,
                        B_Instance => InstM);
                     
                     
                     Root_Object.Relationships.MR.Delete (
                        Old_Instance => InstMR);
                     
                     Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                        Target_List => SetMR);
                     
                  end loop; -- end of (Temp_Entry /= null) loop
                  
               end;
               -- end of for loop
               --
               
               
               Root_Object.Relationships.M.Delete (
                  Old_Instance => InstM);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetM);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
         begin
            Root_Object.Object_List.Clear (
               From => SetMR);
            
            Root_Object.Relationships.MR.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.MR.Relationships_MR_Type(Temp_Entry.Item.all).Right_Identifier >  9 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetMR);
                  
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
               From => SetM);
            
            Root_Object.Relationships.M.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.M.Relationships_M_Type(Temp_Entry.Item.all).Middle_Identifier >  9 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetM);
                  
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
               From => SetFL);
            
            Root_Object.Relationships.FL.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.FL.Relationships_FL_Type(Temp_Entry.Item.all).Left_Identifier >  9 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetFL);
                  
               end if;
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Temp_List);
               
            end loop;
            
            Root_Object.Object_List.Destroy_List (
               Target_List => Temp_List);
         end;
         
         if Root_Object.Object_List.Count_Of(SetMR) /= 0 then
            
            Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
               Test_Number => Test,
               Free_Text   => "MR Not Empty                    ");
            
         end if;
         
         
         if Root_Object.Object_List.Count_Of(SetM) /= 0 then
            
            Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
               Test_Number => Test,
               Free_Text   => "M Not Empty                     ");
            
         end if;
         
         
         if Root_Object.Object_List.Count_Of(SetFL) /= 0 then
            
            Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
               Test_Number => Test,
               Free_Text   => "FL Not Empty                    ");
            
         end if;
         
         Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "1 M Memory leak test complete   ");
         
         
         Root_Object.Object_List.Clear (
            From => Set_Of_Left);
         
         Root_Object.Relationships.FL.Find (
            Add_To => Set_Of_Left);
         
         
         Final_Left_Value := 0;
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Set_Of_Left);
            
            while (Temp_Entry /= null) loop
               Local_Left := Temp_Entry.Item;
               Final_Left_Value := Final_Left_Value + Root_Object.Relationships.FL.Relationships_FL_type(Local_Left.all).Left_Data;
               
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Set_Of_Left);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         if Final_Left_Value /= 0 then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "Navigate in loop                ",
               Test_Number        => Test,
               Test_Value         => Final_Left_Value);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Navigate in loop                ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Final_Left_Value);
            
         end if;
         
      end if;
      
      
      --  End Test 3
      -- ---------------------------------------------------------------------------------------------
      --  Test 4 - Navigate from a single instance in the Middle Object to a set in the Many
      --           Right object then navigate from the Many Right Object to the Many Above object
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  4 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Single Instance to Single Instan");
         
         Relationships_RPT4_Test_Unsupported_Bridge.Relationships_RPT4_Test_Unsupported (
            Unsupported_Test_Number => Test);
         
         One_Above := Root_Object.Relationships.MA.Create_Unique;
         Root_Object.Relationships.MA.Relationships_MA_Type(One_Above.all).Above_Data := 1;
         
         Relationships_Rel_R10.Link (
            A_Instance => One_Above,
            B_Instance => One_Right);
         
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => One_Middle,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R7.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetMA);
            
            Relationships_Rel_R10.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.MA.Relationships_MA_type'tag,
               To    => SetMA);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         
         NoInSet := Root_Object.Object_List.Count_Of(SetMA);
         
         if NoInSet =  1 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetMA);
               
               while (Temp_Entry /= null) loop
                  Inst := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.MA.Relationships_MA_type(Inst.all).Above_Data =  1 then
                     
                     Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
                        Test_Object_Domain => "Single Instance to Single Instan",
                        Test_Number        => Test,
                        Test_Value         => Root_Object.Relationships.MA.Relationships_MA_type(Inst.all).Above_Data);
                     
                  else
                     Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                        Failed_Domain_Object => "Single Instance to Single Instan",
                        Failed_Test_Number   => Test,
                        Failed_Test_Value    => Root_Object.Relationships.MA.Relationships_MA_type(Inst.all).Above_Data);
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetMA);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Single Instance to Single Instan",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => NoInSet);
            
         end if;
         
      end if;
      
      
      --  End Test 4
      -- ---------------------------------------------------------------------------------------------
      --  Test 5 - Same as the previous test except navigating to a set in Many Above as opposed to a 
      --           single instance
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  5 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Single Instance to Set M to MR t");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0603               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         Three_Above := Root_Object.Relationships.MA.Create_Unique;
         Root_Object.Relationships.MA.Relationships_MA_Type(Three_Above.all).Above_Data := 3;
         
         Relationships_Rel_R10.Link (
            A_Instance => Three_Above,
            B_Instance => Three_Right);
         
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => One_Middle,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R7.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetMA);
            
            Relationships_Rel_R10.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.MA.Relationships_MA_type'tag,
               To    => SetMA);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         NoInSet := Root_Object.Object_List.Count_Of(SetMA);
         
         if NoInSet =  2 then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "Single Instance to Set M to MR t",
               Test_Number        => Test,
               Test_Value         => NoInSet);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Single Instance to Set M to MR t",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => NoInSet);
            
         end if;
         
      end if;
      
      
      --  End Test 5
      -- ---------------------------------------------------------------------------------------------
      --  Test 6 - Add a new instance in Many Above object and link it to One_Right. 
      --           Navigate from a single instance in the Middle Object to Many Right object then to 
      --            Many Above object returning a set
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  6 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Single to Set M to MR to MA     ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0603               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         Two_Above := Root_Object.Relationships.MA.Create_Unique;
         Root_Object.Relationships.MA.Relationships_MA_Type(Two_Above.all).Above_Data := 2;
         
         Relationships_Rel_R10.Link (
            A_Instance => Two_Above,
            B_Instance => One_Right);
         
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => One_Middle,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R7.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetMA);
            
            Relationships_Rel_R10.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.MA.Relationships_MA_type'tag,
               To    => SetMA);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         NoInSet := Root_Object.Object_List.Count_Of(SetMA);
         
         if NoInSet =  3 then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "Single to Set M to MR to MA     ",
               Test_Number        => Test,
               Test_Value         => NoInSet);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Single to Set M to MR to MA     ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => NoInSet);
            
         end if;
         
      end if;
      
      
      --  End Test 6
      -- ---------------------------------------------------------------------------------------------
      --  Test 7 - Add new link from Two_Above to Three_Right, Many Above object has three instances 
      --           but four links. Navigate from Middle to Many Above through Many Right object
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  7 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0704               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Single at M to Set at MA through");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0603               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0702               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         Two_Above := Root_Object.Relationships.MA.Conditional_Find_One;
         while (Two_Above /= null) and then (not (Root_Object.Relationships.MA.Relationships_MA_Type(Two_Above.all).Above_Data =  2) ) loop
            
            Two_Above := Two_Above.Next_Object;
         end loop;
         
         Relationships_Rel_R10.Link (
            A_Instance => Two_Above,
            B_Instance => Three_Right);
         
         
         declare
            Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
            Second_Temporary_Set : Root_Object.Object_List.List_Header_Access_Type;
         begin
            Temporary_Set := Root_Object.Object_List.Initialise;
            Second_Temporary_Set := Root_Object.Object_List.Initialise;
            
            Root_Object.Object_List.Insert (
               New_Item => One_Middle,
               On_To    => Temporary_Set);
            
            Relationships_Rel_R7.Navigate (
               From  => Temporary_Set,
               Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
               To    => Second_Temporary_Set);
            
            Root_Object.Object_List.Clear (
               From => SetMA);
            
            Relationships_Rel_R10.Navigate (
               From  => Second_Temporary_Set,
               Class => Root_Object.Relationships.MA.Relationships_MA_type'tag,
               To    => SetMA);
               
            Root_Object.Object_List.Destroy_List (
               Target_List => Temporary_Set);
            Root_Object.Object_List.Destroy_List (
               Target_List => Second_Temporary_Set);
         end;
         NoInSet := Root_Object.Object_List.Count_Of(SetMA);
         
         
         if NoInSet =  4 then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "Single at M to Set at MA through",
               Test_Number        => Test,
               Test_Value         => NoInSet);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Single at M to Set at MA through",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => NoInSet);
            
         end if;
         
      end if;
      
      
      --  End Test 7
      -- ---------------------------------------------------------------------------------------------
      --  Test 8 - Navigate from a single instance in Middle object to a set in the Many Right  
      --           object. Navigate from the third instance of Many Right object to Many above object
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  8 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0702               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "M1 to MR then MR3 to MA         ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Root_Object.Object_List.Clear (
            From => SetMR);
         
         
         Relationships_Rel_R7.Navigate (
            From  => One_Middle,
            Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
            To    => SetMR);
         
         if Root_Object.Object_List.Count_Of(SetMR) /= 3 then
            
            Has_Failed   := True;
            Failure_Code := -10;
            
         else
            
            InstFound := False;
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetMR);
               
               while (Temp_Entry /= null) loop
                  InstMR := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.MR.Relationships_MR_type(InstMR.all).Right_Identifier =  3 then
                     InstFound := True;
                     
                     
                     Root_Object.Object_List.Clear (
                        From => SetMA);
                     
                     
                     Relationships_Rel_R10.Navigate (
                        From  => InstMR,
                        Class => Root_Object.Relationships.MA.Relationships_MA_type'tag,
                        To    => SetMA);
                     
                     if Root_Object.Object_List.Count_Of(SetMA) =  2 then
                        
                        Val1 := -30;
                        Val2 := -40;
                        --
                        -- start of for loop
                        
                        declare
                           use type Root_Object.Object_List.Node_Access_Type;
                           Temp_Entry : Root_Object.Object_List.Node_Access_Type;
                        begin
                           Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                              Target_List => SetMA);
                           
                           while (Temp_Entry /= null) loop
                              InstMA := Temp_Entry.Item;
                              
                              if Root_Object.Relationships.MA.Relationships_MA_type(InstMA.all).Above_Data =  2 then
                                 Val1 := Root_Object.Relationships.MA.Relationships_MA_type(InstMA.all).Above_Data;
                              end if;
                              
                              
                              if Root_Object.Relationships.MA.Relationships_MA_type(InstMA.all).Above_Data =  3 then
                                 Val2 := Root_Object.Relationships.MA.Relationships_MA_type(InstMA.all).Above_Data;
                                 
                              end if;
                              
                              
                              Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                                 Target_List => SetMA);
                              
                           end loop; -- end of (Temp_Entry /= null) loop
                           
                        end;
                        -- end of for loop
                        --
                        
                        
                        if Val1 =  2 then
                           
                           if Val2 /= 3 then
                              
                              Has_Failed := True;
                              Failure_Code := Val2;
                           end if;
                           
                        else
                           Has_Failed := True;
                           Failure_Code := Val1;
                        end if;
                        
                     else
                        Has_Failed := True;
                        Failure_Code := -50;
                        
                     end if;
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetMR);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
            
            if (not Has_Failed) then
               
               if (not InstFound) then
                  
                  Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                     Failed_Domain_Object => "Instance not found              ",
                     Failed_Test_Number   => Test,
                     Failed_Test_Value    => -20);
                  
               else
                  Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
                     Test_Object_Domain => "M1 to MR then MR3 to MA         ",
                     Test_Number        => Test,
                     Test_Value         => 0);
                  
               end if;
               
            else
               Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                  Failed_Domain_Object => "Navigation Failed               ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => Failure_Code);
               
            end if;
            
         end if;
         
      end if;
      
      
      --  End Test 8
      -- ---------------------------------------------------------------------------------------------
      --  Test 9 - Navigate directly from Many Right object to Many Above object
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  9 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0702               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Many Right to Many Above        ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0603               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1202               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0631               ");
         
         
         Fourth_Right := Root_Object.Relationships.MR.Create;
         Root_Object.Relationships.MR.Relationships_MR_Type(Fourth_Right.all).Right_Identifier        := 4;
         Root_Object.Relationships.MR.Relationships_MR_Type(Fourth_Right.all).Right_Data  := 0;
         
         Fourth_Above := Root_Object.Relationships.MA.Create_Unique;
         Root_Object.Relationships.MA.Relationships_MA_Type(Fourth_Above.all).Above_Data := 4;
         
         Relationships_Rel_R10.Link (
            A_Instance => Fourth_Above,
            B_Instance => Fourth_Right);
         
         
         Root_Object.Object_List.Clear (
            From => SetMA);
         
         
         Relationships_Rel_R10.Navigate (
            From  => Fourth_Right,
            Class => Root_Object.Relationships.MA.Relationships_MA_type'tag,
            To    => SetMA);
         
         if Root_Object.Object_List.Count_Of(SetMA) =  1 then
            --
            -- start of for loop
            
            declare
               use type Root_Object.Object_List.Node_Access_Type;
               Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            begin
               Temp_Entry := Root_Object.Object_List.First_Entry_Of (
                  Target_List => SetMA);
               
               while (Temp_Entry /= null) loop
                  InstMA := Temp_Entry.Item;
                  
                  if Root_Object.Relationships.MA.Relationships_MA_type(InstMA.all).Above_Data =  4 then
                     
                     Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
                        Test_Object_Domain => "Many Right to Many Above        ",
                        Test_Number        => Test,
                        Test_Value         => 0);
                     
                  else
                     Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
                        Failed_Domain_Object => "Wrong instance found            ",
                        Failed_Test_Number   => Test,
                        Failed_Test_Value    => -10);
                     
                  end if;
                  
                  
                  Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                     Target_List => SetMA);
                  
               end loop; -- end of (Temp_Entry /= null) loop
               
            end;
            -- end of for loop
            --
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Empty set in Many Above object  ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -20);
            
         end if;
         
      end if;
      
      
      --  End Test 9
      -- ---------------------------------------------------------------------------------------------
      --  Test 10 - Navigate from a single instance in Many Right object to Middle object
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  10 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0701               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Many Right to Middle            ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0602               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Relationships_Rel_R7.Navigate (
            From  => Two_Right,
            Class => Root_Object.Relationships.M.Relationships_M_type'tag,
            To    => InstM);
         
         
         if Root_Object.Relationships.M.Relationships_M_type(InstM.all).Middle_Identifier =  1 then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "Many Right to Middle            ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Wrong instance in Middle        ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Root_Object.Relationships.M.Relationships_M_type(InstM.all).Middle_Identifier);
            
         end if;
         
      end if;
      
      
      --  End Test 10
      -- ---------------------------------------------------------------------------------------------
      --  Test 11 - Navigate from the many right accociative object to the many right object
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  11 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0707               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Navigate from associative object");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Relationships_Rel_R8.Navigate (
            From  => One_MRA,
            Class => Root_Object.Relationships.MR.Relationships_MR_type'tag,
            To    => InstMR);
         
         
         if Root_Object.Relationships.MR.Relationships_MR_type(InstMR.all).Right_Identifier =  1 then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "Associative object to Many Right",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Wrong instance in Many Right    ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Root_Object.Relationships.MR.Relationships_MR_type(InstMR.all).Right_Identifier);
            
         end if;
         
      end if;
      
      
      --  End Test 11
      -- ---------------------------------------------------------------------------------------------
      --  Test 12 - Navigate from the many right accociative object to the many far right object
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  12 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0707               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Assoc object to Many Far Right  ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-0610               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1103-0000-01-0632               ");
         
         
         Relationships_Rel_R8.Navigate (
            From  => Two_MRA,
            Class => Root_Object.Relationships.MFR.Relationships_MFR_type'tag,
            To    => InstMFR);
         
         
         if Root_Object.Relationships.MFR.Relationships_MFR_type(InstMFR.all).MFR_Identifier =  2 then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "Associative object to Many Right",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Wrong instance found            ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => Root_Object.Relationships.MFR.Relationships_MFR_type(InstMFR.all).MFR_Identifier);
            
         end if;
         
      end if;
      
      
      --  End Test 12
      -- ---------------------------------------------------------------------------------------------
      --  Test 13 - Test to make sure that the architecture does not restrict the number of instances
      --            for a single object
      --            Create 10000 instances as this is many times the maximum number of instances for
      --            a single instance that is currently being implemented
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  13 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0619               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Create many instances           ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         
         --  Set about creating 10000 instances of the Middle object
         
         Count := 0;
         
         
         loop
            
            The_ID := Count + 100;
            
            
            newMiddleInst := Root_Object.Relationships.M.Create;
            Root_Object.Relationships.M.Relationships_M_Type(newMiddleInst.all).Middle_Identifier := The_ID;
            
            
            Count := Count + 1;
            
            exit when Count =  10000;
         end loop;
         
         
         Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "Instances created               ");
         
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
         begin
            Root_Object.Object_List.Clear (
               From => SetM);
            
            Root_Object.Relationships.M.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.M.Relationships_M_Type(Temp_Entry.Item.all).Middle_Identifier >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetM);
                  
               end if;
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Temp_List);
               
            end loop;
            
            Root_Object.Object_List.Destroy_List (
               Target_List => Temp_List);
         end;
         
         No_Inst := Root_Object.Object_List.Count_Of(SetM);
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetM);
            
            while (Temp_Entry /= null) loop
               InstM := Temp_Entry.Item;
               
               Root_Object.Relationships.M.Delete (
                  Old_Instance => InstM);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetM);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "Instances deleted               ");
         
         
         if No_Inst =  10000 then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "All instances created           ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Instances incorrectly created   ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => No_Inst);
            
         end if;
         
      end if;
      
      
      --  End Test 13
      -- ---------------------------------------------------------------------------------------------
      --  Test 14 - Test that architecture does not restrict the total number of instances
      --            There are 40 plus objects in the relationships domain each object is going to be
      --            populated with 10000 instances making 400000 plus instances.
      -- ---------------------------------------------------------------------------------------------
      
      if Iteration =  14 then
         
         Relationships_RPT1_Start_Test_Bridge.Relationships_RPT1_Start_Test (
            Test_Number     => Test,
            Requid          => "1241-0000-01-0619               ",
            Invoking_Domain => "Relationships                   ",
            Invoking_Object => "Set Navigation                  ",
            Purpose         => "Create many instances           ");
         
         Relationships_RPT8_Specify_Requid_Bridge.Relationships_RPT8_Specify_Requid (
            Requid_Test_Number => Test,
            The_Requid_Itself  => "1241-0000-01-1205               ");
         
         
         Count := 0;
         
         
         loop
            
            The_ID := Count + 100;
            
            
            newA := Root_Object.Relationships.objA.Create;
            Root_Object.Relationships.objA.Relationships_objA_Type(newA.all).idA := The_ID;
            
            
            newB := Root_Object.Relationships.objB.Create;
            Root_Object.Relationships.objB.Relationships_objB_Type(newB.all).idB := The_ID;
            
            
            newC := Root_Object.Relationships.objC.Create;
            Root_Object.Relationships.objC.Relationships_objC_Type(newC.all).idC := The_ID;
            
            
            newD := Root_Object.Relationships.objD.Create;
            Root_Object.Relationships.objD.Relationships_objD_Type(newD.all).idD := The_ID;
            
            
            newDO := Root_Object.Relationships.objDO.Create;
            Root_Object.Relationships.objDO.Relationships_objDO_Type(newDO.all).idDO := The_ID;
            
            
            newE := Root_Object.Relationships.objE.Create;
            Root_Object.Relationships.objE.Relationships_objE_Type(newE.all).idE := The_ID;
            
            
            newF := Root_Object.Relationships.objF.Create;
            Root_Object.Relationships.objF.Relationships_objF_Type(newF.all).idF := The_ID;
            
            
            newEF := Root_Object.Relationships.OBJEF.Create;
            Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(newEF.all).idEF := The_ID;
            
            
            newG := Root_Object.Relationships.objG.Create;
            Root_Object.Relationships.objG.Relationships_objG_Type(newG.all).idG := The_ID;
            
            
            newH := Root_Object.Relationships.objH.Create;
            Root_Object.Relationships.objH.Relationships_objH_Type(newH.all).idH := The_ID;
            
            
            newI := Root_Object.Relationships.objI.Create;
            Root_Object.Relationships.objI.Relationships_objI_Type(newI.all).IDI := The_ID;
            
            
            newK := Root_Object.Relationships.objK.Create;
            Root_Object.Relationships.objK.Relationships_objK_Type(newK.all).idK := The_ID;
            
            
            newL := Root_Object.Relationships.objL.Create;
            Root_Object.Relationships.objL.Relationships_objL_Type(newL.all).idL := The_ID;
            
            
            newO := Root_Object.Relationships.objO.Create;
            Root_Object.Relationships.objO.Relationships_objO_Type(newO.all).idO := The_ID;
            
            
            newP := Root_Object.Relationships.objP.Create;
            Root_Object.Relationships.objP.Relationships_objP_Type(newP.all).idP := The_ID;
            
            
            newQ := Root_Object.Relationships.objQ.Create;
            Root_Object.Relationships.objQ.Relationships_objQ_Type(newQ.all).idQ := The_ID;
            
            
            newR := Root_Object.Relationships.objR.Create;
            Root_Object.Relationships.objR.Relationships_objR_Type(newR.all).idR := The_ID;
            
            
            newLO := Root_Object.Relationships.LO.Create;
            Root_Object.Relationships.LO.Relationships_LO_Type(newLO.all).idLO := The_ID;
            
            
            newMO := Root_Object.Relationships.MO.Create;
            Root_Object.Relationships.MO.Relationships_MO_Type(newMO.all).idMO := The_ID;
            
            
            newRO := Root_Object.Relationships.RO.Create;
            Root_Object.Relationships.RO.Relationships_RO_Type(newRO.all).idRO := The_ID;
            
            
            newMRAssoc := Root_Object.Relationships.assMR.Create;
            Root_Object.Relationships.assMR.Relationships_assMR_Type(newMRAssoc.all).idMR := The_ID;
            
            
            newLeftMany := Root_Object.Relationships.objLM.Create;
            Root_Object.Relationships.objLM.Relationships_objLM_Type(newLeftMany.all).idLM := The_ID;
            
            
            newRightMany := Root_Object.Relationships.objRM.Create;
            Root_Object.Relationships.objRM.Relationships_objRM_Type(newRightMany.all).idRM := The_ID;
            
            
            newLMRMAssoc := Root_Object.Relationships.objLMRM.Create;
            Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(newLMRMAssoc.all).idLMRM := The_ID;
            
            
            newBottomMany := Root_Object.Relationships.objBM.Create;
            Root_Object.Relationships.objBM.Relationships_objBM_Type(newBottomMany.all).idBM := The_ID;
            
            
            newSL1 := Root_Object.Relationships.objSL1.Create;
            Root_Object.Relationships.objSL1.Relationships_objSL1_Type(newSL1.all).idSL1 := The_ID;
            
            
            newSL2 := Root_Object.Relationships.objSL2.Create;
            Root_Object.Relationships.objSL2.Relationships_objSL2_Type(newSL2.all).idSL2 := The_ID;
            
            
            newSL3 := Root_Object.Relationships.objSL3.Create;
            Root_Object.Relationships.objSL3.Relationships_objSL3_Type(newSL3.all).idSL3 := The_ID;
            
            
            newSSL1 := Root_Object.Relationships.objSSL1.Create;
            Root_Object.Relationships.objSSL1.Relationships_objSSL1_Type(newSSL1.all).idSSL1 := The_ID;
            
            
            newSSL2 := Root_Object.Relationships.objSSL2.Create;
            Root_Object.Relationships.objSSL2.Relationships_objSSL2_Type(newSSL2.all).idSSL2 := The_ID;
            
            
            newSSL3 := Root_Object.Relationships.objSSL3.Create;
            Root_Object.Relationships.objSSL3.Relationships_objSSL3_Type(newSSL3.all).idSSL3 := The_ID;
            
            
            newSSL4 := Root_Object.Relationships.objSSL4.Create;
            Root_Object.Relationships.objSSL4.Relationships_objSSL4_Type(newSSL4.all).idSSL4 := The_ID;
            
            
            newSSL5 := Root_Object.Relationships.objSSL5.Create;
            Root_Object.Relationships.objSSL5.Relationships_objSSL5_Type(newSSL5.all).idSSL5 := The_ID;
            
            
            newSSL6 := Root_Object.Relationships.objSSL6.Create;
            Root_Object.Relationships.objSSL6.Relationships_objSSL6_Type(newSSL6.all).idSSL6 := The_ID;
            
            
            newSSL7 := Root_Object.Relationships.objSSL7.Create;
            Root_Object.Relationships.objSSL7.Relationships_objSSL7_Type(newSSL7.all).idSSL7 := The_ID;
            
            
            newSSL8 := Root_Object.Relationships.objSSL8.Create;
            Root_Object.Relationships.objSSL8.Relationships_objSSL8_Type(newSSL8.all).idSSL8 := The_ID;
            
            
            newSSL9 := Root_Object.Relationships.objSSL9.Create;
            Root_Object.Relationships.objSSL9.Relationships_objSSL9_Type(newSSL9.all).idSSL9 := The_ID;
            
            
            newSSL10 := Root_Object.Relationships.objSSL10.Create;
            Root_Object.Relationships.objSSL10.Relationships_objSSL10_Type(newSSL10.all).idSSL10 := The_ID;
            
            
            newSSL11 := Root_Object.Relationships.objSSL11.Create;
            Root_Object.Relationships.objSSL11.Relationships_objSSL11_Type(newSSL11.all).idSSL11 := The_ID;
            
            
            newSSSL1 := Root_Object.Relationships.objSSSL1.Create;
            Root_Object.Relationships.objSSSL1.Relationships_objSSSL1_Type(newSSSL1.all).idSSSL1 := The_ID;
            
            
            newSSSL2 := Root_Object.Relationships.objSSSL2.Create;
            Root_Object.Relationships.objSSSL2.Relationships_objSSSL2_Type(newSSSL2.all).idSSSL2 := The_ID;
            
            
            newFL := Root_Object.Relationships.FL.Create;
            Root_Object.Relationships.FL.Relationships_FL_Type(newFL.all).Left_Identifier := The_ID;
            
            
            newMiddleInst := Root_Object.Relationships.M.Create;
            Root_Object.Relationships.M.Relationships_M_Type(newMiddleInst.all).Middle_Identifier := The_ID;
            
            
            newMR := Root_Object.Relationships.MR.Create;
            Root_Object.Relationships.MR.Relationships_MR_Type(newMR.all).Right_Identifier := The_ID;
            
            newMA := Root_Object.Relationships.MA.Create_Unique;
            Root_Object.Relationships.MA.Relationships_MA_Type(newMA.all).Above_Data := The_ID;
            
            
            newMRA := Root_Object.Relationships.MRA.Create;
            Root_Object.Relationships.MRA.Relationships_MRA_Type(newMRA.all).MRA_Identifier := The_ID;
            
            
            newMFR := Root_Object.Relationships.MFR.Create;
            Root_Object.Relationships.MFR.Relationships_MFR_Type(newMFR.all).MFR_Identifier := The_ID;
            
            
            Count := Count + 1;
            
            exit when Count =  10000;
         end loop;
         
         
         Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "Instances created               ");
         
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
            Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
         begin
            Root_Object.Object_List.Clear (
               From => SetA);
            
            Root_Object.Relationships.objA.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objA.Relationships_objA_Type(Temp_Entry.Item.all).idA >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetA);
                  
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
               From => SetB);
            
            Root_Object.Relationships.objB.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objB.Relationships_objB_Type(Temp_Entry.Item.all).idB >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetB);
                  
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
               From => SetC);
            
            Root_Object.Relationships.objC.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objC.Relationships_objC_Type(Temp_Entry.Item.all).idC >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetC);
                  
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
               From => SetD);
            
            Root_Object.Relationships.objD.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objD.Relationships_objD_Type(Temp_Entry.Item.all).idD >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetD);
                  
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
               From => SetDO);
            
            Root_Object.Relationships.objDO.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objDO.Relationships_objDO_Type(Temp_Entry.Item.all).idDO >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetDO);
                  
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
               From => SetE);
            
            Root_Object.Relationships.objE.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objE.Relationships_objE_Type(Temp_Entry.Item.all).idE >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetE);
                  
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
               From => SetF);
            
            Root_Object.Relationships.objF.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objF.Relationships_objF_Type(Temp_Entry.Item.all).idF >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetF);
                  
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
               From => SetEF);
            
            Root_Object.Relationships.OBJEF.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.OBJEF.Relationships_OBJEF_Type(Temp_Entry.Item.all).idEF >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetEF);
                  
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
               From => SetG);
            
            Root_Object.Relationships.objG.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objG.Relationships_objG_Type(Temp_Entry.Item.all).idG >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetG);
                  
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
               From => SetH);
            
            Root_Object.Relationships.objH.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objH.Relationships_objH_Type(Temp_Entry.Item.all).idH >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetH);
                  
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
               From => SetI);
            
            Root_Object.Relationships.objI.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objI.Relationships_objI_Type(Temp_Entry.Item.all).IDI >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetI);
                  
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
               From => SetK);
            
            Root_Object.Relationships.objK.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objK.Relationships_objK_Type(Temp_Entry.Item.all).idK >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetK);
                  
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
               From => SetL);
            
            Root_Object.Relationships.objL.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objL.Relationships_objL_Type(Temp_Entry.Item.all).idL >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetL);
                  
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
               From => SetO);
            
            Root_Object.Relationships.objO.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objO.Relationships_objO_Type(Temp_Entry.Item.all).idO >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetO);
                  
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
               From => SetP);
            
            Root_Object.Relationships.objP.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objP.Relationships_objP_Type(Temp_Entry.Item.all).idP >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetP);
                  
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
               From => SetQ);
            
            Root_Object.Relationships.objQ.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objQ.Relationships_objQ_Type(Temp_Entry.Item.all).idQ >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetQ);
                  
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
               From => SetR);
            
            Root_Object.Relationships.objR.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objR.Relationships_objR_Type(Temp_Entry.Item.all).idR >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetR);
                  
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
               From => SetLO);
            
            Root_Object.Relationships.LO.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.LO.Relationships_LO_Type(Temp_Entry.Item.all).idLO >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetLO);
                  
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
               From => SetMO);
            
            Root_Object.Relationships.MO.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.MO.Relationships_MO_Type(Temp_Entry.Item.all).idMO >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetMO);
                  
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
               From => SetRO);
            
            Root_Object.Relationships.RO.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.RO.Relationships_RO_Type(Temp_Entry.Item.all).idRO >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetRO);
                  
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
               From => SetMRAssoc);
            
            Root_Object.Relationships.assMR.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.assMR.Relationships_assMR_Type(Temp_Entry.Item.all).idMR >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetMRAssoc);
                  
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
               From => SetLeftMany);
            
            Root_Object.Relationships.objLM.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objLM.Relationships_objLM_Type(Temp_Entry.Item.all).idLM >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetLeftMany);
                  
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
               From => SetRightMany);
            
            Root_Object.Relationships.objRM.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objRM.Relationships_objRM_Type(Temp_Entry.Item.all).idRM >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetRightMany);
                  
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
               From => SetLMRMAssoc);
            
            Root_Object.Relationships.objLMRM.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objLMRM.Relationships_objLMRM_Type(Temp_Entry.Item.all).idLMRM >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetLMRMAssoc);
                  
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
               From => SetBottomMany);
            
            Root_Object.Relationships.objBM.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objBM.Relationships_objBM_Type(Temp_Entry.Item.all).idBM >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetBottomMany);
                  
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
               From => SetSL1);
            
            Root_Object.Relationships.objSL1.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSL1.Relationships_objSL1_Type(Temp_Entry.Item.all).idSL1 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSL1);
                  
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
               From => SetSL2);
            
            Root_Object.Relationships.objSL2.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSL2.Relationships_objSL2_Type(Temp_Entry.Item.all).idSL2 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSL2);
                  
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
               From => SetSL3);
            
            Root_Object.Relationships.objSL3.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSL3.Relationships_objSL3_Type(Temp_Entry.Item.all).idSL3 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSL3);
                  
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
               From => SetSSL1);
            
            Root_Object.Relationships.objSSL1.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSL1.Relationships_objSSL1_Type(Temp_Entry.Item.all).idSSL1 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSL1);
                  
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
               From => SetSSL2);
            
            Root_Object.Relationships.objSSL2.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSL2.Relationships_objSSL2_Type(Temp_Entry.Item.all).idSSL2 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSL2);
                  
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
               From => SetSSL3);
            
            Root_Object.Relationships.objSSL3.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSL3.Relationships_objSSL3_Type(Temp_Entry.Item.all).idSSL3 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSL3);
                  
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
               From => SetSSL4);
            
            Root_Object.Relationships.objSSL4.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSL4.Relationships_objSSL4_Type(Temp_Entry.Item.all).idSSL4 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSL4);
                  
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
               From => SetSSL5);
            
            Root_Object.Relationships.objSSL5.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSL5.Relationships_objSSL5_Type(Temp_Entry.Item.all).idSSL5 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSL5);
                  
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
               From => SetSSL6);
            
            Root_Object.Relationships.objSSL6.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSL6.Relationships_objSSL6_Type(Temp_Entry.Item.all).idSSL6 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSL6);
                  
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
               From => SetSSL7);
            
            Root_Object.Relationships.objSSL7.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSL7.Relationships_objSSL7_Type(Temp_Entry.Item.all).idSSL7 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSL7);
                  
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
               From => SetSSL8);
            
            Root_Object.Relationships.objSSL8.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSL8.Relationships_objSSL8_Type(Temp_Entry.Item.all).idSSL8 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSL8);
                  
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
               From => SetSSL9);
            
            Root_Object.Relationships.objSSL9.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSL9.Relationships_objSSL9_Type(Temp_Entry.Item.all).idSSL9 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSL9);
                  
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
               From => SetSSL10);
            
            Root_Object.Relationships.objSSL10.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSL10.Relationships_objSSL10_Type(Temp_Entry.Item.all).idSSL10 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSL10);
                  
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
               From => SetSSL11);
            
            Root_Object.Relationships.objSSL11.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSL11.Relationships_objSSL11_Type(Temp_Entry.Item.all).idSSL11 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSL11);
                  
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
               From => SetSSSL1);
            
            Root_Object.Relationships.objSSSL1.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSSL1.Relationships_objSSSL1_Type(Temp_Entry.Item.all).idSSSL1 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSSL1);
                  
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
               From => SetSSSL2);
            
            Root_Object.Relationships.objSSSL2.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.objSSSL2.Relationships_objSSSL2_Type(Temp_Entry.Item.all).idSSSL2 >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetSSSL2);
                  
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
               From => SetFL);
            
            Root_Object.Relationships.FL.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.FL.Relationships_FL_Type(Temp_Entry.Item.all).Left_Identifier >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetFL);
                  
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
               From => SetMiddleInst);
            
            Root_Object.Relationships.M.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.M.Relationships_M_Type(Temp_Entry.Item.all).Middle_Identifier >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetMiddleInst);
                  
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
               From => SetMR);
            
            Root_Object.Relationships.MR.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.MR.Relationships_MR_Type(Temp_Entry.Item.all).Right_Identifier >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetMR);
                  
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
               From => SetMA);
            
            Root_Object.Relationships.MA.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.MA.Relationships_MA_Type(Temp_Entry.Item.all).Above_Data >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetMA);
                  
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
               From => SetMRA);
            
            Root_Object.Relationships.MRA.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.MRA.Relationships_MRA_Type(Temp_Entry.Item.all).MRA_Identifier >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetMRA);
                  
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
               From => SetMFR);
            
            Root_Object.Relationships.MFR.Find (
               Add_To => Temp_List);
            
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => Temp_List);
            
            while (Temp_Entry /= null) loop
               
               if Root_Object.Relationships.MFR.Relationships_MFR_Type(Temp_Entry.Item.all).MFR_Identifier >= 100 then
                  
                  Root_Object.Object_List.Insert (
                     New_Item => Temp_Entry.Item,
                     On_To    => SetMFR);
                  
               end if;
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => Temp_List);
               
            end loop;
            
            Root_Object.Object_List.Destroy_List (
               Target_List => Temp_List);
         end;
         
         The_Grand_Total := Root_Object.Object_List.Count_Of(SetA);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetB);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetC);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetD);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetDO);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetE);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetEF);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetG);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetH);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetI);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetK);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetL);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetO);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetP);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetQ);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetR);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetLO);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetMO);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetRO);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetMRAssoc);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetLeftMany);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetRightMany);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetLMRMAssoc);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetBottomMany);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSL1);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSL2);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSL3);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSL1);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSL2);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSL3);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSL4);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSL5);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSL6);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSL7);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSL8);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSL9);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSL10);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSL11);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSSL1);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetSSSL2);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetFL);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetMiddleInst);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetMR);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetMA);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetMRA);
         The_Grand_Total := The_Grand_Total + Root_Object.Object_List.Count_Of(SetMFR);
         
         
         if The_Grand_Total =  460000 then
            
            Relationships_RPT2_Test_Passed_Bridge.Relationships_RPT2_Test_Passed (
               Test_Object_Domain => "All instances created           ",
               Test_Number        => Test,
               Test_Value         => 0);
            
         else
            Relationships_RPT3_Test_Failed_Bridge.Relationships_RPT3_Test_Failed (
               Failed_Domain_Object => "Instances incorrectly created   ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => The_Grand_Total);
            
         end if;
         
         Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "Deleting instances              ");
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetA);
            
            while (Temp_Entry /= null) loop
               InstA := Temp_Entry.Item;
               
               Root_Object.Relationships.objA.Delete (
                  Old_Instance => InstA);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetA);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetB);
            
            while (Temp_Entry /= null) loop
               InstB := Temp_Entry.Item;
               
               Root_Object.Relationships.objB.Delete (
                  Old_Instance => InstB);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetB);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetC);
            
            while (Temp_Entry /= null) loop
               InstC := Temp_Entry.Item;
               
               Root_Object.Relationships.objC.Delete (
                  Old_Instance => InstC);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetC);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetD);
            
            while (Temp_Entry /= null) loop
               InstD := Temp_Entry.Item;
               
               Root_Object.Relationships.objD.Delete (
                  Old_Instance => InstD);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetD);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetDO);
            
            while (Temp_Entry /= null) loop
               InstDO := Temp_Entry.Item;
               
               Root_Object.Relationships.objDO.Delete (
                  Old_Instance => InstDO);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetDO);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetE);
            
            while (Temp_Entry /= null) loop
               InstE := Temp_Entry.Item;
               
               Root_Object.Relationships.objE.Delete (
                  Old_Instance => InstE);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetE);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetEF);
            
            while (Temp_Entry /= null) loop
               InstEF := Temp_Entry.Item;
               
               Root_Object.Relationships.OBJEF.Delete (
                  Old_Instance => InstEF);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetEF);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetF);
            
            while (Temp_Entry /= null) loop
               InstF := Temp_Entry.Item;
               
               Root_Object.Relationships.objF.Delete (
                  Old_Instance => InstF);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetF);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetG);
            
            while (Temp_Entry /= null) loop
               InstG := Temp_Entry.Item;
               
               Root_Object.Relationships.objG.Delete (
                  Old_Instance => InstG);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetG);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetH);
            
            while (Temp_Entry /= null) loop
               InstH := Temp_Entry.Item;
               
               Root_Object.Relationships.objH.Delete (
                  Old_Instance => InstH);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetH);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetI);
            
            while (Temp_Entry /= null) loop
               InstI := Temp_Entry.Item;
               
               Root_Object.Relationships.objI.Delete (
                  Old_Instance => InstI);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetI);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
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
               
               Root_Object.Relationships.objK.Delete (
                  Old_Instance => InstK);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetK);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetL);
            
            while (Temp_Entry /= null) loop
               InstL1 := Temp_Entry.Item;
               
               Root_Object.Relationships.objL.Delete (
                  Old_Instance => InstL1);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetL);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetO);
            
            while (Temp_Entry /= null) loop
               InstO := Temp_Entry.Item;
               
               Root_Object.Relationships.objO.Delete (
                  Old_Instance => InstO);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetO);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetP);
            
            while (Temp_Entry /= null) loop
               InstP := Temp_Entry.Item;
               
               Root_Object.Relationships.objP.Delete (
                  Old_Instance => InstP);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetP);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetQ);
            
            while (Temp_Entry /= null) loop
               InstQ := Temp_Entry.Item;
               
               Root_Object.Relationships.objQ.Delete (
                  Old_Instance => InstQ);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetQ);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetR);
            
            while (Temp_Entry /= null) loop
               InstR := Temp_Entry.Item;
               
               Root_Object.Relationships.objR.Delete (
                  Old_Instance => InstR);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetR);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetLO);
            
            while (Temp_Entry /= null) loop
               InstLO := Temp_Entry.Item;
               
               Root_Object.Relationships.LO.Delete (
                  Old_Instance => InstLO);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetLO);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetRO);
            
            while (Temp_Entry /= null) loop
               InstRO := Temp_Entry.Item;
               
               Root_Object.Relationships.RO.Delete (
                  Old_Instance => InstRO);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetRO);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetMO);
            
            while (Temp_Entry /= null) loop
               InstMO := Temp_Entry.Item;
               
               Root_Object.Relationships.MO.Delete (
                  Old_Instance => InstMO);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetMO);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetMRAssoc);
            
            while (Temp_Entry /= null) loop
               InstMRAssoc := Temp_Entry.Item;
               
               Root_Object.Relationships.assMR.Delete (
                  Old_Instance => InstMRAssoc);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetMRAssoc);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetLeftMany);
            
            while (Temp_Entry /= null) loop
               InstLeftMany := Temp_Entry.Item;
               
               Root_Object.Relationships.objLM.Delete (
                  Old_Instance => InstLeftMany);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetLeftMany);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetRightMany);
            
            while (Temp_Entry /= null) loop
               InstRightMany := Temp_Entry.Item;
               
               Root_Object.Relationships.objRM.Delete (
                  Old_Instance => InstRightMany);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetRightMany);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetLMRMAssoc);
            
            while (Temp_Entry /= null) loop
               InstLMRMAssoc := Temp_Entry.Item;
               
               Root_Object.Relationships.objLMRM.Delete (
                  Old_Instance => InstLMRMAssoc);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetLMRMAssoc);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetBottomMany);
            
            while (Temp_Entry /= null) loop
               InstBottomMany := Temp_Entry.Item;
               
               Root_Object.Relationships.objBM.Delete (
                  Old_Instance => InstBottomMany);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetBottomMany);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSL1);
            
            while (Temp_Entry /= null) loop
               InstSL1 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSL1.Delete (
                  Old_Instance => InstSL1);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSL1);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSL2);
            
            while (Temp_Entry /= null) loop
               InstSL2 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSL2.Delete (
                  Old_Instance => InstSL2);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSL2);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSL3);
            
            while (Temp_Entry /= null) loop
               InstSL3 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSL3.Delete (
                  Old_Instance => InstSL3);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSL3);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSL1);
            
            while (Temp_Entry /= null) loop
               InstSSL1 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSL1.Delete (
                  Old_Instance => InstSSL1);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSL1);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSL2);
            
            while (Temp_Entry /= null) loop
               InstSSL2 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSL2.Delete (
                  Old_Instance => InstSSL2);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSL2);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSL3);
            
            while (Temp_Entry /= null) loop
               InstSSL3 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSL3.Delete (
                  Old_Instance => InstSSL3);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSL3);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSL4);
            
            while (Temp_Entry /= null) loop
               InstSSL4 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSL4.Delete (
                  Old_Instance => InstSSL4);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSL4);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSL5);
            
            while (Temp_Entry /= null) loop
               InstSSL5 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSL5.Delete (
                  Old_Instance => InstSSL5);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSL5);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSL6);
            
            while (Temp_Entry /= null) loop
               InstSSL6 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSL6.Delete (
                  Old_Instance => InstSSL6);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSL6);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSL7);
            
            while (Temp_Entry /= null) loop
               InstSSL7 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSL7.Delete (
                  Old_Instance => InstSSL7);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSL7);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSL8);
            
            while (Temp_Entry /= null) loop
               InstSSL8 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSL8.Delete (
                  Old_Instance => InstSSL8);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSL8);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSL9);
            
            while (Temp_Entry /= null) loop
               InstSSL9 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSL9.Delete (
                  Old_Instance => InstSSL9);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSL9);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSL10);
            
            while (Temp_Entry /= null) loop
               InstSSL10 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSL10.Delete (
                  Old_Instance => InstSSL10);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSL10);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSL11);
            
            while (Temp_Entry /= null) loop
               InstSSL11 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSL11.Delete (
                  Old_Instance => InstSSL11);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSL11);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSSL1);
            
            while (Temp_Entry /= null) loop
               InstSSSL1 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSSL1.Delete (
                  Old_Instance => InstSSSL1);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSSL1);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetSSSL2);
            
            while (Temp_Entry /= null) loop
               InstSSSL2 := Temp_Entry.Item;
               
               Root_Object.Relationships.objSSSL2.Delete (
                  Old_Instance => InstSSSL2);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetSSSL2);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetFL);
            
            while (Temp_Entry /= null) loop
               InstFarLeft := Temp_Entry.Item;
               
               Root_Object.Relationships.FL.Delete (
                  Old_Instance => InstFarLeft);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetFL);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetMiddleInst);
            
            while (Temp_Entry /= null) loop
               InstMiddleInst := Temp_Entry.Item;
               
               Root_Object.Relationships.M.Delete (
                  Old_Instance => InstMiddleInst);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetMiddleInst);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetMR);
            
            while (Temp_Entry /= null) loop
               InstMR := Temp_Entry.Item;
               
               Root_Object.Relationships.MR.Delete (
                  Old_Instance => InstMR);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetMR);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetMA);
            
            while (Temp_Entry /= null) loop
               InstMA := Temp_Entry.Item;
               
               Root_Object.Relationships.MA.Delete (
                  Old_Instance => InstMA);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetMA);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetMRA);
            
            while (Temp_Entry /= null) loop
               InstMRA := Temp_Entry.Item;
               
               Root_Object.Relationships.MRA.Delete (
                  Old_Instance => InstMRA);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetMRA);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         --
         -- start of for loop
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
            Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         begin
            Temp_Entry := Root_Object.Object_List.First_Entry_Of (
               Target_List => SetMFR);
            
            while (Temp_Entry /= null) loop
               InstMFR := Temp_Entry.Item;
               
               Root_Object.Relationships.MFR.Delete (
                  Old_Instance => InstMFR);
               
               Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
                  Target_List => SetMFR);
               
            end loop; -- end of (Temp_Entry /= null) loop
            
         end;
         -- end of for loop
         --
         
         
         Relationships_RPT5_Test_Text_Bridge.Relationships_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "Instances Deleted               ");
         
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (SetMiddleInst);
      Root_Object.Object_List.Destroy_List (SetSSSL2);
      Root_Object.Object_List.Destroy_List (SetSSSL1);
      Root_Object.Object_List.Destroy_List (SetSSL11);
      Root_Object.Object_List.Destroy_List (SetSSL10);
      Root_Object.Object_List.Destroy_List (SetSSL9);
      Root_Object.Object_List.Destroy_List (SetSSL8);
      Root_Object.Object_List.Destroy_List (SetSSL7);
      Root_Object.Object_List.Destroy_List (SetSSL6);
      Root_Object.Object_List.Destroy_List (SetSSL5);
      Root_Object.Object_List.Destroy_List (SetSSL4);
      Root_Object.Object_List.Destroy_List (SetSSL3);
      Root_Object.Object_List.Destroy_List (SetSSL2);
      Root_Object.Object_List.Destroy_List (SetSSL1);
      Root_Object.Object_List.Destroy_List (SetSL3);
      Root_Object.Object_List.Destroy_List (SetSL2);
      Root_Object.Object_List.Destroy_List (SetSL1);
      Root_Object.Object_List.Destroy_List (SetBottomMany);
      Root_Object.Object_List.Destroy_List (SetLMRMAssoc);
      Root_Object.Object_List.Destroy_List (SetRightMany);
      Root_Object.Object_List.Destroy_List (SetLeftMany);
      Root_Object.Object_List.Destroy_List (SetMRAssoc);
      Root_Object.Object_List.Destroy_List (SetRO);
      Root_Object.Object_List.Destroy_List (SetMO);
      Root_Object.Object_List.Destroy_List (SetLO);
      Root_Object.Object_List.Destroy_List (SetR);
      Root_Object.Object_List.Destroy_List (SetQ);
      Root_Object.Object_List.Destroy_List (SetP);
      Root_Object.Object_List.Destroy_List (SetO);
      Root_Object.Object_List.Destroy_List (SetL);
      Root_Object.Object_List.Destroy_List (SetK);
      Root_Object.Object_List.Destroy_List (SetI);
      Root_Object.Object_List.Destroy_List (SetH);
      Root_Object.Object_List.Destroy_List (SetG);
      Root_Object.Object_List.Destroy_List (SetEF);
      Root_Object.Object_List.Destroy_List (SetF);
      Root_Object.Object_List.Destroy_List (SetE);
      Root_Object.Object_List.Destroy_List (SetDO);
      Root_Object.Object_List.Destroy_List (SetD);
      Root_Object.Object_List.Destroy_List (SetC);
      Root_Object.Object_List.Destroy_List (SetB);
      Root_Object.Object_List.Destroy_List (SetA);
      Root_Object.Object_List.Destroy_List (SetMA);
      Root_Object.Object_List.Destroy_List (SetFL);
      Root_Object.Object_List.Destroy_List (SetMR);
      Root_Object.Object_List.Destroy_List (SetM);
      Root_Object.Object_List.Destroy_List (Set_Of_Left);
      Root_Object.Object_List.Destroy_List (SetRight);
      Root_Object.Object_List.Destroy_List (SetMRA);
      Root_Object.Object_List.Destroy_List (SetMFR);
      Root_Object.Object_List.Destroy_List (SetAssoc);
      Root_Object.Object_List.Destroy_List (Set_Right);
      
   end Relationships_M2_Middle_Navigation;
   
end Relationships_M2_Middle_Navigation_Service;

--
-- End of file Relationships_M2_Middle_Navigation_Service.adb
--
