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
--* File Name:               RP2_Test_Failed_Service.adb
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

-- List of services used
with RP_DD2_A_Test_Has_Failed_Service;

with Ada.Text_IO;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP2_Test_Failed_Service is
   
   procedure RP_RP2_Test_Failed (
      Failed_Domain        : in     Application_Types.Base_Text_Type;
      the_test_no          : in     Application_Types.Base_Integer_Type;
      the_test_value       : in     Application_Types.Base_Integer_Type;
      Failed_Domain_Number : in     Application_Types.Base_Integer_Type) is
      
      the_test          : Application_Types.Base_Integer_Type := 1;
      the_val           : Application_Types.Base_Integer_Type := 1;
      the_domain_number : Application_Types.Base_Integer_Type := 1;
      
      the_domain : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of RP2_Test_Failed
      the_test          := the_test_no;
      the_val           := the_test_value;
      the_domain        := Failed_Domain;
      the_domain_number := Failed_Domain_Number;
      
      
      RP_DD2_A_Test_Has_Failed_Service.RP_DD2_A_Test_Has_Failed (
         New_Test_Number       => the_test,
         Invoking_Domain       => the_domain_number,
         New_Test_Result_Value => the_val,
         Details_Of_Test       => the_domain);
      
      --
      -- start of Ada inline code insertion
            
       -- Ada.Text_IO.New_Line(1);
       -- Ada.Text_IO.Put_Line("Object " & the_domain & 
       --                    " Test Number " & integer'image(integer(the_test)) & 
       --                    " has **** FAILED **** with " & integer'image(integer(the_val)));
       -- Ada.Text_IO.New_Line(1);
      -- end of Ada inline code insertion
      --
      
      
   end RP_RP2_Test_Failed;
   
end RP_RP2_Test_Failed_Service;

--
-- End of file RP_RP2_Test_Failed_Service.adb
--
