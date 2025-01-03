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
--* File Name:               TAGS_Scenario1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Start_TAGGED_Tests
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
with Root_Object.TAGS.TD;

-- List of services used
with TAGS_TD2_Set_Environment_Service;
with TAGS_TAGS2_Create_Report_Data_Service;

-- List of domain types used
with TAGS_Domain_Types;
use type TAGS_Domain_Types.Environment_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure TAGS_Scenario1 is
   
      
      my_test      : Root_Object.Object_Access;
      Test_Details : Root_Object.Object_Access;
      
   begin
      
      TAGS_TAGS2_Create_Report_Data_Service.TAGS_TAGS2_Create_Report_Data;
      
      
      --  Find the test details. If they already exist, it's because an external
      --  created them, and this must be an I-SIM environment.
      my_test := Root_Object.TAGS.TD.Unconditional_Find_One;
      
      if my_test =  Null then
         
         --  Stick a 'C' insert here to attempt to set an attribute.
         Test_Details := Root_Object.TAGS.TD.Create_Unique;
         Root_Object.TAGS.TD.TAGS_TD_Type(Test_Details.all).Number        := 0;
         Root_Object.TAGS.TD.TAGS_TD_Type(Test_Details.all).Environment   := TAGS_Domain_Types.WACA;
         Root_Object.TAGS.TD.TAGS_TD_Type(Test_Details.all).Current_State := Root_Object.TAGS.TD.Idle;
         
         
         --  Use this function to set the test number to 1 using a 'C' insert
         --  if it returns set, then this must be I-SIM else WACA.
         
         TAGS_TD2_Set_Environment_Service.TAGS_TD2_Set_Environment (
            Input_Test_Data  => Test_Details,
            Output_Test_Data => Test_Details);
         
         
         if Root_Object.TAGS.TD.TAGS_TD_type(Test_Details.all).Number =  1 then
            Root_Object.TAGS.TD.TAGS_TD_type(Test_Details.all).Environment := TAGS_Domain_Types.ISIM;
         else
            Root_Object.TAGS.TD.TAGS_TD_type(Test_Details.all).Number      := 1;
            Root_Object.TAGS.TD.TAGS_TD_type(Test_Details.all).Environment := TAGS_Domain_Types.WACA;
            
         end if;
         
      end if;
      
   end TAGS_Scenario1;
   
--
-- End of file TAGS_Scenario1.ada
--
