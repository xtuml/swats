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
--* File Name:               ASL_Mapping5_Test_Unfeasibly_Large_Object_Service.adb
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
--* Domain Name              : ASL_Mapping
--* Domain Key Letter        : ASL_Mapping
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.ASL_Mapping.objBIG;

-- List of services used
with ASL_Mapping_objBIG1_Receive_Unfeasonableness_Service;

-- List of bridges used
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_ASL_Mapping5_Test_Unfeasibly_Large_Object_Service is
   
   procedure ASL_Mapping_ASL_Mapping5_Test_Unfeasibly_Large_Object (
      Start_Test_Number  : in     Application_Types.Base_Integer_Type;
      Finish_Test_Number :    out Application_Types.Base_Integer_Type) is
      
      big_set     : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      all_big_set : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      Unfeasibly_Large_Object           : Root_Object.Object_Access;
      found_one_large_object            : Root_Object.Object_Access;
      found_one_where_large_object      : Root_Object.Object_Access;
      found_only_large_object           : Root_Object.Object_Access;
      found_only_where_large_object     : Root_Object.Object_Access;
      found_only_where_set_large_object : Root_Object.Object_Access;
      found_all_set_large_object        : Root_Object.Object_Access;
      Active_Unfeasibly_Large_Object    : Root_Object.Object_Access;
      Doomed_Unfeasibly_Large_Object    : Root_Object.Object_Access;
      
      This_Test_Number : Application_Types.Base_Integer_Type := 1;
      Expected_Number  : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of ASL_Mapping5_Test_Unfeasibly_Large_Object
      
      --  -----------------------------------------------------------------------------------
      --  These series of test are to exmaine what happens when an object is larger than 
      --  would reasonably be expected is created. Further test show what happens when 
      --  said object is manipulated in various forms.
      --  These tests could be spread into a variety of domains, eg. find-and-sets, 
      --  function-calls and others. But since creating such a big object is a pain, all 
      --  these tests shall reside here for the big object.
      --  -----------------------------------------------------------------------------------
      --  -----------------------------------------------------------------------------------
      --  Test 1 - Create the unfeasibly large object and see what may be done with it.
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Start_Test_Number,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Create big object               ");
      
      
      Unfeasibly_Large_Object := Root_Object.ASL_Mapping.objBIG.Create;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).One                := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Two                := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Three              := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Four               := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Five               := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Six                := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Seven              := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Eight              := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Nine               := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Ten                := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Eleven             := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Twelve             := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Thirteen           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fourteen           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fifteen            := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Sixteen            := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Eighteen           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Nineteen           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Twenty             := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Twentyone          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Twentytwo          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Twentythree        := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Twentyfour         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Twentyfive         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Twentysix          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Twentyseven        := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Twentyeight        := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Twentynine         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Thirty             := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Thirtyone          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Thirtytwo          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Thirtythree        := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Thirtyfour         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Thirtyfive         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Thirtysix          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Thirtyseven        := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Thirtyeight        := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Thirtynine         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Forty              := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fortyone           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fortytwo           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fortythree         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fortyfour          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fortyfive          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fortysix           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fortyseven         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fortyeight         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fortynine          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fifty              := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fiftyone           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fiftytwo           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fiftythree         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fiftyfour          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fiftyfive          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fiftysix           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fiftyseven         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fiftyeight         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Fiftynine          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Sixty              := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Sixtyone           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Sixtytwo           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Sixtythree         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Sixtyfour          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Sixtyfive          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Sixtysix           := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Sixtyseven         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Sixtyeight         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Sixtynine          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Seventy            := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Seventyone         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Seventytwo         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Seventythree       := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Seventyfour        := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Seventyfive        := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Seventysix         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Seventyseven       := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Seventyeight       := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Seventynine        := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Eighty             := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Eightyone          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Eightytwo          := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Eightythree        := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Eightyfour         := Start_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Unfeasibly_Large_Object.all).Current_State      := Root_Object.ASL_Mapping.objBIG.Idle_State;
      
      
      if Unfeasibly_Large_Object /= Null then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Create Big Object               ",
            Test_Number        => Start_Test_Number,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Create Big Object               ",
            Failed_Test_Number   => Start_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      This_Test_Number := Start_Test_Number + 1;
      
      --  End Test 1
      --  -----------------------------------------------------------------------------------
      --  Test 2 - Check to see that the attributes can be read from
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0522               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Examine big object              ");
      
      
      if Unfeasibly_Large_Object /= Null then
         
         if Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(Unfeasibly_Large_Object.all).One        =  Start_Test_Number and then
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(Unfeasibly_Large_Object.all).Fortytwo   =  Start_Test_Number and then
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(Unfeasibly_Large_Object.all).Eightyfour =  Start_Test_Number then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "Examine Big Object              ",
               Test_Number        => This_Test_Number,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "Examine Big Object              ",
               Failed_Test_Number   => This_Test_Number,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Examine Big Object              ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 2
      --  -----------------------------------------------------------------------------------
      --  Test 3 - Perform find-one on large object
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0544               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Find-one big object             ");
      
      found_one_large_object := Root_Object.ASL_Mapping.objBIG.Unconditional_Find_One;
      
      if found_one_large_object /= Null then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Find-One Big Object             ",
            Test_Number        => This_Test_Number,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Find-One Big Object             ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 3
      --  -----------------------------------------------------------------------------------
      --  Test 4 - Check to see that the attributes can be read from
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0522               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Examine found-one object        ");
      
      
      if found_one_large_object /= Null then
         
         if Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_one_large_object.all).One        =  Start_Test_Number and then
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_one_large_object.all).Fortytwo   =  Start_Test_Number and then
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_one_large_object.all).Eightyfour =  Start_Test_Number then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "Examine Big Object              ",
               Test_Number        => This_Test_Number,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "Examine Big Object              ",
               Failed_Test_Number   => This_Test_Number,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Examine Big Object              ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 4
      --  -----------------------------------------------------------------------------------
      --  Test 5 - Perform find-one <object> where <boolean condition> on large object
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0545               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Find-one where fully specifying ");
      
      found_one_where_large_object := Root_Object.ASL_Mapping.objBIG.Conditional_Find_One;
      while (found_one_where_large_object /= null) and then (not (
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).One         =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Two         =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Three       =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Four        =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Five        =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Six         =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Seven       =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Eight       =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Nine        =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Ten         =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Eleven      =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Twelve      =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Thirteen    =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Fourteen    =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Fifteen     =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Sixteen     =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Eighteen    =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Nineteen    =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Twenty      =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Twentyone   =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Twentytwo   =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Twentythree =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Twentyfour  =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Twentyfive  =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Twentysix   =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Twentyseven =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Twentyeight =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Twentynine  =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Thirty      =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Thirtyone   =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Thirtytwo   =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Thirtythree =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Thirtyfour  =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Thirtyfive  =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Thirtysix   =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Thirtyseven =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Thirtyeight =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Thirtynine  =  Start_Test_Number and then
                                                                     
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_one_where_large_object.all).Forty       =  Start_Test_Number) ) loop
         
         found_one_where_large_object := found_one_where_large_object.Next_Object;
      end loop;
      
      
      -- Fortyone     = Start_Test_Number &\
      -- Fortytwo     = Start_Test_Number &\
      -- Fortythree   = Start_Test_Number &\
      -- Fortyfour    = Start_Test_Number &\
      -- Fortyfive    = Start_Test_Number &\
      -- Fortysix     = Start_Test_Number &\
      -- Fortyseven   = Start_Test_Number &\
      -- Fortyeight   = Start_Test_Number &\
      -- Fortynine    = Start_Test_Number &\
      -- Fifty        = Start_Test_Number &\ 
      -- Fiftyone     = Start_Test_Number &\
      -- Fiftytwo     = Start_Test_Number &\
      -- Fiftythree   = Start_Test_Number &\
      -- Fiftyfour    = Start_Test_Number &\
      -- Fiftyfive    = Start_Test_Number &\
      -- Fiftysix     = Start_Test_Number &\
      -- Fiftyseven   = Start_Test_Number &\
      -- Fiftyeight   = Start_Test_Number &\
      -- Fiftynine    = Start_Test_Number &\
      -- Sixty        = Start_Test_Number &\
      -- Sixtyone     = Start_Test_Number &\
      -- Sixtytwo     = Start_Test_Number &\
      -- Sixtythree   = Start_Test_Number &\
      -- Sixtyfour    = Start_Test_Number &\
      -- Sixtyfive    = Start_Test_Number &\
      -- Sixtysix     = Start_Test_Number &\
      -- Sixtyseven   = Start_Test_Number &\
      -- Sixtyeight   = Start_Test_Number &\
      -- Sixtynine    = Start_Test_Number &\
      -- Seventy      = Start_Test_Number &\
      -- Seventyone   = Start_Test_Number &\
      -- Seventytwo   = Start_Test_Number &\
      -- Seventythree = Start_Test_Number &\
      -- Seventyfour  = Start_Test_Number &\
      -- Seventyfive  = Start_Test_Number &\ 
      -- Seventysix   = Start_Test_Number &\
      -- Seventyseven = Start_Test_Number &\
      -- Seventyeight = Start_Test_Number &\
      -- Seventynine  = Start_Test_Number &\
      -- Eighty       = Start_Test_Number &\
      -- Eightyone    = Start_Test_Number &\
      -- Eightytwo    = Start_Test_Number &\
      -- Eightythree  = Start_Test_Number &\
      -- Eightyfour   = Start_Test_Number
      
      if found_one_where_large_object /= Null then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Find One Where Object           ",
            Test_Number        => This_Test_Number,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Find One Where Object           ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 5
      --  -----------------------------------------------------------------------------------
      --  Test 6 - Check to see that the attributes can be read from
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0522               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Examine found-one where object  ");
      
      
      if found_one_where_large_object /= Null then
         
         if Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_one_where_large_object.all).One        =  Start_Test_Number and then
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_one_where_large_object.all).Fortytwo   =  Start_Test_Number and then
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_one_where_large_object.all).Eightyfour =  Start_Test_Number then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "Examine Found One Where Object  ",
               Test_Number        => This_Test_Number,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "Examine found one where object  ",
               Failed_Test_Number   => This_Test_Number,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Examine found one where object  ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 6
      --  -----------------------------------------------------------------------------------
      --  Test 7 - Perform find-only on large object
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0545               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG object                      ",
         Purpose         => "Find-only big object            ");
      
      found_only_large_object := Root_Object.ASL_Mapping.objBIG.Unconditional_Find_One;
      
      if found_only_large_object /= Null then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "find-only big object            ",
            Test_Number        => This_Test_Number,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "find-only big object            ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -1);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 7
      --  -----------------------------------------------------------------------------------
      --  Test 8 - Check to see that the attributes can be read from
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0522               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Examine found-only object       ");
      
      
      if found_only_large_object /= Null then
         
         if Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_only_large_object.all).One        =  Start_Test_Number and then
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_only_large_object.all).Fortytwo   =  Start_Test_Number and then
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_only_large_object.all).Eightyfour =  Start_Test_Number then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "Examine Find-Only Object        ",
               Test_Number        => This_Test_Number,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "Examine Find-Only Object        ",
               Failed_Test_Number   => This_Test_Number,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Examine Find-Only Object        ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 8
      --  -----------------------------------------------------------------------------------
      --  Test 9 - Perform find-only <object> where <boolean condition> on large object
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0547               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG object                      ",
         Purpose         => "Find-only where fully specifying");
      
      
      -- One = Start_Test_Number &\
      -- Two = Start_Test_Number &\
      -- Three = Start_Test_Number &\
      -- Four = Start_Test_Number &\
      -- Five = Start_Test_Number &\
      -- Six = Start_Test_Number &\
      -- Seven = Start_Test_Number &\
      -- Eight = Start_Test_Number &\
      -- Nine = Start_Test_Number &\
      -- Ten = Start_Test_Number &\
      -- Eleven = Start_Test_Number &\
      -- Twelve = Start_Test_Number &\
      -- Thirteen = Start_Test_Number &\
      -- Fourteen = Start_Test_Number &\
      -- Fifteen = Start_Test_Number &\
      -- Sixteen = Start_Test_Number &\
      -- Eighteen = Start_Test_Number &\
      -- Nineteen = Start_Test_Number &\
      -- Twenty = Start_Test_Number &\
      -- Twentyone = Start_Test_Number &\
      -- Twentytwo = Start_Test_Number &\
      -- Twentythree = Start_Test_Number &\
      -- Twentyfour = Start_Test_Number &\
      -- Twentyfive = Start_Test_Number &\
      -- Twentysix = Start_Test_Number &\
      -- Twentyseven = Start_Test_Number &\
      -- Twentyeight = Start_Test_Number &\
      -- Twentynine = Start_Test_Number &\
      -- Thirty = Start_Test_Number &\
      -- Thirtyone = Start_Test_Number &\
      -- Thirtytwo = Start_Test_Number &\
      -- Thirtythree = Start_Test_Number &\
      -- Thirtyfour = Start_Test_Number &\
      -- Thirtyfive = Start_Test_Number &\
      -- Thirtysix = Start_Test_Number &\
      -- Thirtyseven = Start_Test_Number &\
      -- Thirtyeight = Start_Test_Number &\
      -- Thirtynine = Start_Test_Number &\
      found_only_where_large_object := Root_Object.ASL_Mapping.objBIG.Conditional_Find_One;
      while (found_only_where_large_object /= null) and then (not (
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Forty        =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fortyone     =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fortytwo     =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fortythree   =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fortyfour    =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fortyfive    =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fortysix     =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fortyseven   =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fortyeight   =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fortynine    =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fifty        =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fiftyone     =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fiftytwo     =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fiftythree   =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fiftyfour    =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fiftyfive    =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fiftysix     =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fiftyseven   =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fiftyeight   =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Fiftynine    =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Sixty        =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Sixtyone     =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Sixtytwo     =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Sixtythree   =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Sixtyfour    =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Sixtyfive    =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Sixtysix     =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Sixtyseven   =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Sixtyeight   =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Sixtynine    =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Seventy      =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Seventyone   =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Seventytwo   =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Seventythree =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Seventyfour  =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Seventyfive  =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Seventysix   =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Seventyseven =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Seventyeight =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Seventynine  =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Eighty       =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Eightyone    =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Eightytwo    =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Eightythree  =  Start_Test_Number and then
                                                                      
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(found_only_where_large_object.all).Eightyfour   =  Start_Test_Number) ) loop
         
         found_only_where_large_object := found_only_where_large_object.Next_Object;
      end loop;
      
      
      if found_only_where_large_object /= Null then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Find Only Where Object          ",
            Test_Number        => This_Test_Number,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Find Only Where Object          ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --   End Test 9
      --  -----------------------------------------------------------------------------------
      --  Test 10 - Check to see that the attributes can be read from
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0522               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Examine found-only where object ");
      
      
      if found_only_where_large_object /= Null then
         
         if Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_only_where_large_object.all).One        =  Start_Test_Number and then
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_only_where_large_object.all).Fortytwo   =  Start_Test_Number and then
            Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_only_where_large_object.all).Eightyfour =  Start_Test_Number then
            
            ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
               Test_Object_Domain => "Examine Found Only Where Object ",
               Test_Number        => This_Test_Number,
               Test_Value         => 0);
            
         else
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "Examine found only where object ",
               Failed_Test_Number   => This_Test_Number,
               Failed_Test_Value    => -20);
            
         end if;
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Examine found only where object ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 10
      --  -----------------------------------------------------------------------------------
      --  Test 11 - {set} = find <object> where <boolean condition>
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0541               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Find set where object           ");
      
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
         Temp_List : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      begin
         Root_Object.Object_List.Clear (
            From => big_set);
         
         Root_Object.ASL_Mapping.objBIG.Find (
            Add_To => Temp_List);
         
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Temp_List);
         
         while (Temp_Entry /= null) loop
            
            if Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).One         =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Two         =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Three       =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Four        =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Five        =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Six         =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Seven       =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Eight       =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Nine        =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Ten         =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Eleven      =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Twelve      =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Thirteen    =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fourteen    =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fifteen     =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Sixteen     =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Eighteen    =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Nineteen    =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Twenty      =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Forty       =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fortyone    =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fortytwo    =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fortythree  =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fortyfour   =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fortyfive   =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fortysix    =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fortyseven  =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fortyeight  =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fortynine   =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fifty       =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fiftyone    =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fiftytwo    =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fiftythree  =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fiftyfour   =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fiftyfive   =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fiftysix    =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fiftyseven  =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fiftyeight  =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Fiftynine   =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Eighty      =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Eightyone   =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Eightytwo   =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Eightythree =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Temp_Entry.Item.all).Eightyfour  =  Start_Test_Number then
               
               Root_Object.Object_List.Insert (
                  New_Item => Temp_Entry.Item,
                  On_To    => big_set);
               
            end if;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Temp_List);
            
         end loop;
         
         Root_Object.Object_List.Destroy_List (
            Target_List => Temp_List);
      end;
      
      -- Twentyone    = Start_Test_Number &\
      -- Twentytwo    = Start_Test_Number &\
      -- Twentythree  = Start_Test_Number &\
      -- Twentyfour   = Start_Test_Number &\
      -- Twentyfive   = Start_Test_Number &\
      -- Twentysix    = Start_Test_Number &\
      -- Twentyseven  = Start_Test_Number &\
      -- Twentyeight  = Start_Test_Number &\
      -- Twentynine   = Start_Test_Number &\
      -- Thirty       = Start_Test_Number &\
      -- Thirtyone    = Start_Test_Number &\
      -- Thirtytwo    = Start_Test_Number &\
      -- Thirtythree  = Start_Test_Number &\
      -- Thirtyfour   = Start_Test_Number &\
      -- Thirtyfive   = Start_Test_Number &\
      -- Thirtysix    = Start_Test_Number &\
      -- Thirtyseven  = Start_Test_Number &\
      -- Thirtyeight  = Start_Test_Number &\
      -- Thirtynine   = Start_Test_Number &\
      -- Sixty        = Start_Test_Number &\
      -- Sixtyone     = Start_Test_Number &\
      -- Sixtytwo     = Start_Test_Number &\
      -- Sixtythree   = Start_Test_Number &\
      -- Sixtyfour    = Start_Test_Number &\
      -- Sixtyfive    = Start_Test_Number &\
      -- Sixtysix     = Start_Test_Number &\
      -- Sixtyseven   = Start_Test_Number &\
      -- Sixtyeight   = Start_Test_Number &\
      -- Sixtynine    = Start_Test_Number &\
      -- Seventy      = Start_Test_Number &\
      -- Seventyone   = Start_Test_Number &\
      -- Seventytwo   = Start_Test_Number &\
      -- Seventythree = Start_Test_Number &\
      -- Seventyfour  = Start_Test_Number &\
      -- Seventyfive  = Start_Test_Number &\
      -- Seventysix   = Start_Test_Number &\
      -- Seventyseven = Start_Test_Number &\
      -- Seventyeight = Start_Test_Number &\
      -- Seventynine  = Start_Test_Number &\
      
      if Root_Object.Object_List.Count_Of(big_set) =  1 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Find Set Of Big Object          ",
            Test_Number        => This_Test_Number,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Find Set Of Big Object          ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 11
      --  -----------------------------------------------------------------------------------
      --  Test 12 - Check to see that the attributes can be read from each in the set
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0522               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Examine found-only where object ");
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => big_set);
         
         while (Temp_Entry /= null) loop
            found_only_where_set_large_object := Temp_Entry.Item;
            
            if found_only_where_set_large_object /= Null then
               
               if Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_only_where_set_large_object.all).One        =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_only_where_set_large_object.all).Fortytwo   =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_only_where_set_large_object.all).Eightyfour =  Start_Test_Number then
                  
                  ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
                     Test_Object_Domain => "Examine Found Only Where Object ",
                     Test_Number        => This_Test_Number,
                     Test_Value         => 0);
                  
               else
                  ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                     Failed_Domain_Object => "Examine Found Only Where Object ",
                     Failed_Test_Number   => This_Test_Number,
                     Failed_Test_Value    => -20);
                  
               end if;
               
            else
               ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                  Failed_Domain_Object => "Examine Found Only Where Object ",
                  Failed_Test_Number   => This_Test_Number,
                  Failed_Test_Value    => -10);
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => big_set);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 12
      --  -----------------------------------------------------------------------------------
      --  Test 13 - find-all <object>
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0543               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Find-all set where object       ");
      
      
      Root_Object.Object_List.Clear (
         From => all_big_set);
      
      Root_Object.ASL_Mapping.objBIG.Find (
         Add_To => all_big_set);
      
      
      if Root_Object.Object_List.Count_Of(all_big_set) =  1 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Find-All Set Of Big Object      ",
            Test_Number        => This_Test_Number,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Find-All Set Of Big Object      ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 13
      --  -----------------------------------------------------------------------------------
      --  Test 14 - Check to see that the attributes can be read from each in the set
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0522               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Examine found-all object        ");
      
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => all_big_set);
         
         while (Temp_Entry /= null) loop
            found_all_set_large_object := Temp_Entry.Item;
            
            if found_all_set_large_object /= Null then
               
               if Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_all_set_large_object.all).One        =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_all_set_large_object.all).Fortytwo   =  Start_Test_Number and then
                  Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_type(found_all_set_large_object.all).Eightyfour =  Start_Test_Number then
                  
                  ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
                     Test_Object_Domain => "Examine Found All Object        ",
                     Test_Number        => This_Test_Number,
                     Test_Value         => 0);
                  
               else
                  ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                     Failed_Domain_Object => "Examine Found All Object        ",
                     Failed_Test_Number   => This_Test_Number,
                     Failed_Test_Value    => -20);
                  
               end if;
               
            else
               ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                  Failed_Domain_Object => "Examine Found All Object        ",
                  Failed_Test_Number   => This_Test_Number,
                  Failed_Test_Value    => -10);
               
            end if;
            
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => all_big_set);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 14
      --  -----------------------------------------------------------------------------------
      --  Test 15 - Check to see that the large object may be passed as a parameter into a 
      --            domain based synch service
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_objBIG1_Receive_Unfeasonableness_Service.ASL_Mapping_objBIG1_Receive_Unfeasonableness (
         A_Big_Object       => Unfeasibly_Large_Object,
         Current_Test       => This_Test_Number,
         Expected_Attribute => Start_Test_Number);
      
      This_Test_Number := This_Test_Number + 1;
      
      
      --  End Test 15
      --  -----------------------------------------------------------------------------------
      --  Test 16 - Create the unfeasibly large object and see what may be done with it
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG Object                      ",
         Purpose         => "Create big active object        ");
      
      
      --  Stash this number for later use when this object is decoded.
      
      Expected_Number := This_Test_Number;
      
      
      Active_Unfeasibly_Large_Object := Root_Object.ASL_Mapping.objBIG.Create;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).One                := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Two                := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Three              := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Four               := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Five               := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Six                := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Seven              := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Eight              := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Nine               := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Ten                := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Eleven             := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Twelve             := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Thirteen           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fourteen           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fifteen            := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Sixteen            := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Eighteen           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Nineteen           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Twenty             := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Twentyone          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Twentytwo          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Twentythree        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Twentyfour         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Twentyfive         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Twentysix          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Twentyseven        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Twentyeight        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Twentynine         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Thirty             := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Thirtyone          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Thirtytwo          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Thirtythree        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Thirtyfour         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Thirtyfive         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Thirtysix          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Thirtyseven        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Thirtyeight        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Thirtynine         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Forty              := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fortyone           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fortytwo           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fortythree         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fortyfour          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fortyfive          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fortysix           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fortyseven         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fortyeight         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fortynine          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fifty              := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fiftyone           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fiftytwo           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fiftythree         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fiftyfour          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fiftyfive          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fiftysix           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fiftyseven         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fiftyeight         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Fiftynine          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Sixty              := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Sixtyone           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Sixtytwo           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Sixtythree         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Sixtyfour          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Sixtyfive          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Sixtysix           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Sixtyseven         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Sixtyeight         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Sixtynine          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Seventy            := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Seventyone         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Seventytwo         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Seventythree       := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Seventyfour        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Seventyfive        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Seventysix         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Seventyseven       := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Seventyeight       := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Seventynine        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Eighty             := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Eightyone          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Eightytwo          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Eightythree        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Eightyfour         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Active_Unfeasibly_Large_Object.all).Current_State      := 
         Root_Object.ASL_Mapping.objBIG.Idle_State;
      
      
      if Active_Unfeasibly_Large_Object /= Null then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "create Big Active Object        ",
            Test_Number        => This_Test_Number,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "create Big Active Object        ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 16
      --  -----------------------------------------------------------------------------------
      --  Test 17 - There are two separate tests performed by that last generate statement, 
      --            so increment the counter accordingly
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "1103-0000-01-0511               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG object                      ",
         Purpose         => "Delete big active object        ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => This_Test_Number,
         The_Requid_Itself  => "1103-0000-01-0531               ");
      
      
      Doomed_Unfeasibly_Large_Object := Root_Object.ASL_Mapping.objBIG.Create;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).One                := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Two                := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Three              := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Four               := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Five               := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Six                := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Seven              := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Eight              := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Nine               := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Ten                := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Eleven             := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Twelve             := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Thirteen           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fourteen           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fifteen            := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Sixteen            := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Eighteen           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Nineteen           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Twenty             := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Twentyone          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Twentytwo          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Twentythree        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Twentyfour         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Twentyfive         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Twentysix          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Twentyseven        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Twentyeight        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Twentynine         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Thirty             := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Thirtyone          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Thirtytwo          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Thirtythree        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Thirtyfour         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Thirtyfive         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Thirtysix          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Thirtyseven        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Thirtyeight        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Thirtynine         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Forty              := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fortyone           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fortytwo           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fortythree         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fortyfour          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fortyfive          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fortysix           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fortyseven         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fortyeight         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fortynine          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fifty              := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fiftyone           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fiftytwo           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fiftythree         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fiftyfour          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fiftyfive          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fiftysix           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fiftyseven         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fiftyeight         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Fiftynine          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Sixty              := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Sixtyone           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Sixtytwo           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Sixtythree         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Sixtyfour          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Sixtyfive          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Sixtysix           := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Sixtyseven         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Sixtyeight         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Sixtynine          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Seventy            := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Seventyone         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Seventytwo         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Seventythree       := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Seventyfour        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Seventyfive        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Seventysix         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Seventyseven       := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Seventyeight       := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Seventynine        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Eighty             := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Eightyone          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Eightytwo          := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Eightythree        := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Eightyfour         := This_Test_Number;
      Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG_Type(Doomed_Unfeasibly_Large_Object.all).Current_State      := 
         Root_Object.ASL_Mapping.objBIG.Idle_State;
      
      
      Root_Object.ASL_Mapping.objBIG.Delete (
         Old_Instance => Doomed_Unfeasibly_Large_Object);
      
      if Doomed_Unfeasibly_Large_Object =  Null then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Delete Big Active Object        ",
            Test_Number        => This_Test_Number,
            Test_Value         => 0);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Delete Big Active Object        ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => -10);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 17
      --  -----------------------------------------------------------------------------------
      --  Test 18 - 
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG object                      ",
         Purpose         => "NULL                            ");
      
      ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
         Test_Object_Domain => "NULL                            ",
         Test_Number        => This_Test_Number,
         Test_Value         => 0);
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 18
      --  -----------------------------------------------------------------------------------
      --  Test 19 - 
      --  -----------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "BIG object                      ",
         Purpose         => "NULL2                           ");
      
      ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
         Test_Object_Domain => "NULL2                           ",
         Test_Number        => This_Test_Number,
         Test_Value         => 0);
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 19
      --  -----------------------------------------------------------------------------------
      --  Test 20 -
      --  -----------------------------------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.ASL_Mapping.objBIG.ASL_Mapping_objBIG1'(Root_Object.Root_Event_Type with
            This_Event_Class       => Root_Object.ASL_Mapping.objBIG.objBIG1,
            Target_Instance        => Active_Unfeasibly_Large_Object,
            Big_IH                 => Unfeasibly_Large_Object,
            Current_Test_Number    => This_Test_Number,
            Expected_Result_Number => Expected_Number);
         
         Application_Queue.Push (
            Item        => Pushed_Event,
            Target_Fifo => Application_Queue.Application_Queue);
      end;
      This_Test_Number := This_Test_Number + 1;
      
      
      --  End Test 20
      --  -----------------------------------------------------------------------------------
      --  Test 21 -
      --  -----------------------------------------------------------------------------------
      --  generate to send the object into termination state.
      --  This will only work if the events generated following the transition out of 'IDLE_STATE' have been processed first.
      --  generate objBIG2:To_Complete() to Active_Unfeasibly_Large_Object
      --  -----------------------------------------------------------------------------------
      
      Finish_Test_Number := This_Test_Number;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (all_big_set);
      Root_Object.Object_List.Destroy_List (big_set);
      
   end ASL_Mapping_ASL_Mapping5_Test_Unfeasibly_Large_Object;
   
end ASL_Mapping_ASL_Mapping5_Test_Unfeasibly_Large_Object_Service;

--
-- End of file ASL_Mapping_ASL_Mapping5_Test_Unfeasibly_Large_Object_Service.adb
--
