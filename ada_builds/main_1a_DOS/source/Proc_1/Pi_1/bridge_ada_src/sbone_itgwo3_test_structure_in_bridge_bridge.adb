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
--* File Name:               SBONE_ITGWO3_Test_Structure_In_Bridge_Bridge.adb
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
--*  Project Key Letter : Main_Build_Set
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.SBONE.RD;

-- List of services used
with RP_RP2_Test_Failed_Service;
with RP_RP1_Test_Passed_Service;

-- List of domain types used
with SBONE_Domain_Types;
with SBONE_Domain_Types.Ops;
use type SBONE_Domain_Types.Structure_Of_UDTs;
use type SBONE_Domain_Types.Pos;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body SBONE_ITGWO3_Test_Structure_In_Bridge_Bridge is
   
   procedure SBONE_ITGWO3_Test_Structure_In_Bridge (
      Test            : in     Application_Types.Base_Integer_Type;
      Input_Structure : in out SBONE_Domain_Types.Structure_Of_UDTs) is
      
      Reporter : Root_Object.Object_Access;
      
      Reporter_Number : Application_Types.Base_Integer_Type := 1;
      the_result      : Application_Types.Base_Integer_Type := 1;
      
      int_from_struct : SBONE_Domain_Types.Pos := SBONE_Domain_Types.Pos_first;
      
   begin
   -- start of ITGWO3_Test_Structure_In_Bridge
      Reporter := Root_Object.SBONE.RD.Unconditional_Find_One;
      
      if Reporter /= Null then
         Reporter_Number := Root_Object.SBONE.RD.SBONE_RD_type(Reporter.all).Reported_Domain_Number;
      else
         Reporter_Number := -1;
         
      end if;
      
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         SBONE_Domain_Types.Ops.Go_To_Start (Input_Structure);
         for i in 1 .. SBONE_Domain_Types.Ops.Count_Of (In_Structure => Input_Structure) loop
            SBONE_Domain_Types.Ops.Extract (
               A_The_Range      => int_from_struct,
               From_Structure   => Input_Structure);
            
            
            the_result := (int_from_struct * 256) - 100;
            
         end loop; -- end of i in 1 .. SBONE_Domain_Types.Ops.Count_Of (In_Structure => Input_Structure) loop
         
      end;
      -- end of unpacking structure
      --
      
--
-- RP start _____________________________________________v--RP--v_______________________________________________________start RP
      
      if the_result =  412 then
         
         RP_RP1_Test_Passed_Service.RP_RP1_Test_Passed (
            Passed_Domain            => "Structure correctly read        ",
            Passed_Test_Number       => Test,
            Passed_Test_Result_Value => 0,
            Passed_Domain_Number     => Reporter_Number);
         
      else
         RP_RP2_Test_Failed_Service.RP_RP2_Test_Failed (
            Failed_Domain        => "Structure incorrectly read      ",
            the_test_no          => Test,
            the_test_value       => -10,
            Failed_Domain_Number => Reporter_Number);
         
      end if;
      
-- RP end   _____________________________________________^--RP--^_______________________________________________________end   RP
--

      
   end SBONE_ITGWO3_Test_Structure_In_Bridge;
   
end SBONE_ITGWO3_Test_Structure_In_Bridge_Bridge;

--
-- End of file SBONE_ITGWO3_Test_Structure_In_Bridge_Bridge.adb
--
