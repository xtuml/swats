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
--* File Name:               RP9_Test_Anomalous_Behaviour_Service.adb
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
--* Domain Name              : Report
--* Domain Key Letter        : RP
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP9_Test_Anomalous_Behaviour_Service is
   
   procedure RP_RP9_Test_Anomalous_Behaviour (
      Anomalous_Test_Number : in     Application_Types.Base_Integer_Type;
      Anomalous_Detail      : in     Application_Types.Base_Text_Type) is
      
      the_test_number : Application_Types.Base_Integer_Type := 1;
      
      the_detail : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of RP9_Test_Anomalous_Behaviour
      the_detail      := Anomalous_Detail;
      the_test_number := Anomalous_Test_Number;
      
      
      --  with Ada.Text_IO;
      --  Ada.Text_IO.New_Line(1);
      --  Ada.Text_IO.Put_Line("ANOMALOUS BEHAVIOUR DETECTED");
      --  Ada.Text_IO.New_Line(1);
      --  Ada.Text_IO.Put_Line("Test Number " & integer'image(integer(the_test_number)) & " Report : "  & the_detail );
      --  Ada.Text_IO.New_Line(1);
      --  Ada.Text_IO.Put_Line("****************************");
      --  Ada.Text_IO.New_Line(1);
      
   end RP_RP9_Test_Anomalous_Behaviour;
   
end RP_RP9_Test_Anomalous_Behaviour_Service;

--
-- End of file RP_RP9_Test_Anomalous_Behaviour_Service.adb
--
