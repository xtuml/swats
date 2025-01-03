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
--* File Name:               SBONE_ITGWO2_Wide_Blue_Yonder_Bridge.adb
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
--*  Project Key Letter : Main_BSet
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of services used
with SBTWO_SBTWO3_Receive_A_Very_Simple_Structure_Service;

-- List of domain types used
with SBONE_Domain_Types;
with SBONE_Domain_Types.Ops;
use type SBONE_Domain_Types.Very_Simple_Structure_Type;
with SBTWO_Domain_Types;
with SBTWO_Domain_Types.Ops;
use type SBTWO_Domain_Types.Very_Simple_Source_Structure_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body SBONE_ITGWO2_Wide_Blue_Yonder_Bridge is
   
   procedure SBONE_ITGWO2_Wide_Blue_Yonder (
      Test                    : in     Application_Types.Base_Integer_Type;
      Simple_Source_Structure : in out SBONE_Domain_Types.Very_Simple_Structure_Type) is
      
      destination_simple_structure : SBTWO_Domain_Types.Very_Simple_Source_Structure_Type;
      
      local_simple_real : Application_Types.Base_Float_Type := 1.0;
      
      local_simple_integer : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of ITGWO2_Wide_Blue_Yonder
--
-- SBTWO start _____________________________________________v--SBTWO--v_______________________________________________________start SBTWO
      -- {destination_simple_structure} is Very_Simple_Source_Structure_Type
      SBTWO_Domain_Types.Ops.Initialise (destination_simple_structure);
      
-- SBTWO end   _____________________________________________^--SBTWO--^_______________________________________________________end   SBTWO
--

      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         SBONE_Domain_Types.Ops.Go_To_Start (Simple_Source_Structure);
         for i in 1 .. SBONE_Domain_Types.Ops.Count_Of (In_Structure => Simple_Source_Structure) loop
            SBONE_Domain_Types.Ops.Extract (
               A_Simple_Integer => local_simple_integer,
               A_Simple_Real    => local_simple_real,
               From_Structure   => Simple_Source_Structure);
            
--
-- SBTWO start _____________________________________________v--SBTWO--v_______________________________________________________start SBTWO
            --
            -- start of append members to structure
            SBTWO_Domain_Types.Ops.Append (
               A_Source_Simple_Integer => local_simple_integer,
               A_Source_Simple_Real    => local_simple_real, 
               To_Structure            => destination_simple_structure);
            -- end of append members to structure
            --
            
-- SBTWO end   _____________________________________________^--SBTWO--^_______________________________________________________end   SBTWO
--

         end loop; -- end of i in 1 .. SBONE_Domain_Types.Ops.Count_Of (In_Structure => Simple_Source_Structure) loop
         
      end;
      -- end of unpacking structure
      --
      
--
-- SBTWO start _____________________________________________v--SBTWO--v_______________________________________________________start SBTWO
      
      SBTWO_SBTWO3_Receive_A_Very_Simple_Structure_Service.SBTWO_SBTWO3_Receive_A_Very_Simple_Structure (
         Test_Number                    => Test,
         Received_Very_Simple_Structure => destination_simple_structure);
      
-- SBTWO end   _____________________________________________^--SBTWO--^_______________________________________________________end   SBTWO
--

      
   end SBONE_ITGWO2_Wide_Blue_Yonder;
   
end SBONE_ITGWO2_Wide_Blue_Yonder_Bridge;

--
-- End of file SBONE_ITGWO2_Wide_Blue_Yonder_Bridge.adb
--
