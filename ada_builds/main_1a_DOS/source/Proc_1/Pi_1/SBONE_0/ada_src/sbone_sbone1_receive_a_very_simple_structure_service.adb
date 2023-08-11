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
--* File Name:               SBONE1_Receive_A_Very_Simple_Structure_Service.adb
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
--* Domain Name              : Structure_Bridge_One
--* Domain Key Letter        : SBONE
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.SBONE.VSD;

-- List of bridges used
with SBONE_RPT3_Test_Failed_Bridge;
with SBONE_RPT2_Test_Passed_Bridge;
with SBONE_RPT1_Start_Test_Bridge;

-- List of domain types used
with SBONE_Domain_Types;
with SBONE_Domain_Types.Ops;
use type SBONE_Domain_Types.Very_Simple_Structure_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body SBONE_SBONE1_Receive_A_Very_Simple_Structure_Service is
   
   procedure SBONE_SBONE1_Receive_A_Very_Simple_Structure (
      Received_Very_Simple_Structure : in out SBONE_Domain_Types.Very_Simple_Structure_Type;
      Received_Control_Integer       : in     Application_Types.Base_Integer_Type;
      Received_Control_Real          : in     Application_Types.Base_Float_Type;
      Received_Test                  : in     Application_Types.Base_Integer_Type) is
      
      VSD_One : Root_Object.Object_Access;
      
      Local_Real : Application_Types.Base_Float_Type := 1.0;
      
      Local_Integer : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of SBONE1_Receive_A_Very_Simple_Structure
      
      SBONE_RPT1_Start_Test_Bridge.SBONE_RPT1_Start_Test (
         Test_Number     => Received_Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "SBONE                           ",
         Invoking_Object => "DBSS rx a structure             ",
         Purpose         => "rx structure and create simple o");
      
      
      VSD_One := Root_Object.SBONE.VSD.Create;
      Root_Object.SBONE.VSD.SBONE_VSD_Type(VSD_One.all).Object_Reference_VSD := Received_Test;
      
      
      --  For the purposes of this simple test, we are assuming that there is
      --  only one structure in the set.
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         SBONE_Domain_Types.Ops.Go_To_Start (Received_Very_Simple_Structure);
         for i in 1 .. SBONE_Domain_Types.Ops.Count_Of (In_Structure => Received_Very_Simple_Structure) loop
            SBONE_Domain_Types.Ops.Extract (
               A_Simple_Integer => Local_Integer,
               A_Simple_Real    => Local_Real,
               From_Structure   => Received_Very_Simple_Structure);
            
            Root_Object.SBONE.VSD.SBONE_VSD_type(VSD_One.all).Object_Simple_Integer := Local_Integer;
            Root_Object.SBONE.VSD.SBONE_VSD_type(VSD_One.all).Object_Simple_Real    := Local_Real;
            
         end loop; -- end of i in 1 .. SBONE_Domain_Types.Ops.Count_Of (In_Structure => Received_Very_Simple_Structure) loop
         
      end;
      -- end of unpacking structure
      --
      
      
      if Root_Object.SBONE.VSD.SBONE_VSD_type(VSD_One.all).Object_Simple_Integer =  Received_Control_Integer and then
         Root_Object.SBONE.VSD.SBONE_VSD_type(VSD_One.all).Object_Simple_Real    =  Received_Control_Real    then
         
         SBONE_RPT2_Test_Passed_Bridge.SBONE_RPT2_Test_Passed (
            Test_Object_Domain => "SBONE rx structure              ",
            Test_Number        => Received_Test,
            Test_Value         => 0);
         
      else
         SBONE_RPT3_Test_Failed_Bridge.SBONE_RPT3_Test_Failed (
            Failed_Domain_Object => "SBONE rx structure              ",
            Failed_Test_Number   => Received_Test,
            Failed_Test_Value    => -1);
         
      end if;
      
      
   end SBONE_SBONE1_Receive_A_Very_Simple_Structure;
   
end SBONE_SBONE1_Receive_A_Very_Simple_Structure_Service;

--
-- End of file SBONE_SBONE1_Receive_A_Very_Simple_Structure_Service.adb
--
