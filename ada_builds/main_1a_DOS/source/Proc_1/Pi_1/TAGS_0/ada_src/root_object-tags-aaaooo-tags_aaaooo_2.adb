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
--* File Name:               TAGS_AAAOOO_2.ada
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

-- List of bridges used
with TAGS_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TAGS.AAAOOO)
   
   procedure TAGS_AAAOOO_2 (Test_Number     : in     Application_Types.Base_Integer_Type;
                            Add             : in     Application_Types.Base_Integer_Type;
                            Purpose         : in     Application_Types.Base_Text_Type;
                            Expected_Result : in     Application_Types.Base_Integer_Type;
                            This_Instance   : in out Root_Object.Object_Access) is
   
      
      Test_Expected_Result : Application_Types.Base_Integer_Type := 1;
      Number_Of_Test       : Application_Types.Base_Integer_Type := 1;
      
      Test_Purpose : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Single Array Active Object      ",
         Purpose         => Purpose);
      
      Root_Object.TAGS.AAAOOO.TAGS_AAAOOO_type(This_Instance.all).Result := Add;
      
      
      Test_Purpose         := Purpose;
      Test_Expected_Result := Expected_Result;
      Number_Of_Test       := Test_Number;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TAGS.AAAOOO.TAGS_AAAOOO2'(Root_Object.Root_Event_Type with
            This_Event_Class  => Root_Object.TAGS.AAAOOO.AAAOOO2,
            Target_Instance   => This_Instance,
            Final_Value       => Test_Expected_Result,
            Test_Number       => Number_Of_Test,
            Purpose           => Test_Purpose,
            Tell_Tales        => True);
         
         Root_Object.TAGS.AAAOOO.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.TAGS.AAAOOO.Process_Queue;
   end TAGS_AAAOOO_2;
   
--
-- End of file TAGS_AAAOOO_2.ada
--
