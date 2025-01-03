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
--* File Name:               SBTWO3_Receive_A_Very_Simple_Structure_Service.adb
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
--* Domain Name              : Structure_Bridge_Two
--* Domain Key Letter        : SBTWO
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with SBTWO_RPT3_Test_Failed_Bridge;
with SBTWO_RPT2_Test_Passed_Bridge;
with SBTWO_RPT1_Start_Test_Bridge;

-- List of domain types used
with SBTWO_Domain_Types;
with SBTWO_Domain_Types.Ops;
use type SBTWO_Domain_Types.Very_Simple_Source_Structure_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body SBTWO_SBTWO3_Receive_A_Very_Simple_Structure_Service is
   
   procedure SBTWO_SBTWO3_Receive_A_Very_Simple_Structure (
      Test_Number                    : in     Application_Types.Base_Integer_Type;
      Received_Very_Simple_Structure : in out SBTWO_Domain_Types.Very_Simple_Source_Structure_Type) is
      
      Total_Real        : Application_Types.Base_Float_Type := 1.0;
      local_simple_real : Application_Types.Base_Float_Type := 1.0;
      
      Total_Integer        : Application_Types.Base_Integer_Type := 1;
      local_simple_integer : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of SBTWO3_Receive_A_Very_Simple_Structure
      
      SBTWO_RPT1_Start_Test_Bridge.SBTWO_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Structure Bridge Two            ",
         Invoking_Object => "Receive simple structure        ",
         Purpose         => "RX from SBONE                   ");
      
      Total_Integer := 0;
      Total_Real    := 0.0;
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         SBTWO_Domain_Types.Ops.Go_To_Start (Received_Very_Simple_Structure);
         for i in 1 .. SBTWO_Domain_Types.Ops.Count_Of (In_Structure => Received_Very_Simple_Structure) loop
            SBTWO_Domain_Types.Ops.Extract (
               A_Source_Simple_Integer => local_simple_integer,
               A_Source_Simple_Real    => local_simple_real,
               From_Structure          => Received_Very_Simple_Structure);
            
            Total_Integer := Total_Integer + local_simple_integer;
            Total_Real    := Total_Real + local_simple_real;
            
         end loop; -- end of i in 1 .. SBTWO_Domain_Types.Ops.Count_Of (In_Structure => Received_Very_Simple_Structure) loop
         
      end;
      -- end of unpacking structure
      --
      
      
      if Total_Integer =  1530 then
         
         SBTWO_RPT2_Test_Passed_Bridge.SBTWO_RPT2_Test_Passed (
            Test_Object_Domain    => "Receive v simple structure      ",
            Test_Number           => Test_Number,
            Test_Value            => Total_Integer);
         
      else
         SBTWO_RPT3_Test_Failed_Bridge.SBTWO_RPT3_Test_Failed (
            Failed_Domain_Object => "Receive v simple structure      ",
            Failed_Test_Number   => Test_Number,
            Failed_Test_Value    => Total_Integer);
         
      end if;
      
      
   end SBTWO_SBTWO3_Receive_A_Very_Simple_Structure;
   
end SBTWO_SBTWO3_Receive_A_Very_Simple_Structure_Service;

--
-- End of file SBTWO_SBTWO3_Receive_A_Very_Simple_Structure_Service.adb
--
