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
--* File Name:               TAGS_AAAOTO_1.ada
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
with TAGS_TAGS5_Report_Now_Service;

-- List of domain types used
with TAGS_Domain_Types;
use type TAGS_Domain_Types.Environment_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TAGS.AAAOTO)
   
   procedure TAGS_AAAOTO_1 (Final_Value   : in     Application_Types.Base_Integer_Type;
                            Test_Number   : in     Application_Types.Base_Integer_Type;
                            Purpose       : in     Application_Types.Base_Text_Type;
                            Tell_Tales    : in     Boolean;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      my_test : Root_Object.Object_Access;
      
      Test          : Application_Types.Base_Integer_Type := 1;
      Failure_Value : Application_Types.Base_Integer_Type := 1;
      
      This_Environment : TAGS_Domain_Types.Environment_Type     := TAGS_Domain_Types.Environment_Type_first;
      
      Supported : Boolean := Application_Types.Boolean_first;
      
   begin
      my_test := Root_Object.TAGS.TD.Unconditional_Find_One;
      Test             := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Number;
      This_Environment := Root_Object.TAGS.TD.TAGS_TD_type(my_test.all).Environment;
      
      
      if This_Environment =  TAGS_Domain_Types.WACA then
         
         Supported := True;
      else
         Supported := False;
         
      end if;
      
      
      if Root_Object.TAGS.AAAOTO.TAGS_AAAOTO_type(This_Instance.all).Result =  Final_Value then
         
         Failure_Value := 0;
      else
         Failure_Value := 1;
         
      end if;
      
      
      if Tell_Tales then
         
         TAGS_TAGS5_Report_Now_Service.TAGS_TAGS5_Report_Now (
            Test_Number     => Test_Number,
            Testing_For     => Purpose,
            Failure         => Failure_Value,
            It_Is_Supported => Supported);
         
      end if;
      
      Root_Object.TAGS.AAAOTO.Process_Queue;
   end TAGS_AAAOTO_1;
   
--
-- End of file TAGS_AAAOTO_1.ada
--
