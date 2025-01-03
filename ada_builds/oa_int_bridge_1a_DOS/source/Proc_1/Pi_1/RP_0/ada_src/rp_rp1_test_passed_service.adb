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
--* File Name:               RP1_Test_Passed_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Same function as domain based synch service.
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
with RP_DD1_A_Test_Has_Passed_Service;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP1_Test_Passed_Service is
   
   procedure RP_RP1_Test_Passed (
      Passed_Domain            : in     Application_Types.Base_Text_Type;
      Passed_Test_Number       : in     Application_Types.Base_Integer_Type;
      Passed_Test_Result_Value : in     Application_Types.Base_Integer_Type;
      Passed_Domain_Number     : in     Application_Types.Base_Integer_Type) is
      
      Invoking_Domain_Number : Application_Types.Base_Integer_Type := 1;
      the_test               : Application_Types.Base_Integer_Type := 1;
      the_val                : Application_Types.Base_Integer_Type := 1;
      
      the_domain : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of RP1_Test_Passed
      Invoking_Domain_Number := Passed_Domain_Number;
      the_test               := Passed_Test_Number;
      the_val                := Passed_Test_Result_Value;
      the_domain             := Passed_Domain;
      
      
      RP_DD1_A_Test_Has_Passed_Service.RP_DD1_A_Test_Has_Passed (
         New_Test_Number       => the_test,
         Invoking_Domain       => Invoking_Domain_Number,
         New_Test_Result_Value => the_val,
         Details_Of_Test       => the_domain);
      
      
      --  $ADA_INLINE
      --  with Ada.Text_IO;
      --  
      --  -- Ada.Text_IO.Put_Line("Object " & the_domain & 
      --  --                     " Test Number " & integer'image(integer(the_test)) & 
      --  --                     " has PASSED with " & integer'image(integer(the_val)));
      --  $END_ADAINLINE
      
   end RP_RP1_Test_Passed;
   
end RP_RP1_Test_Passed_Service;

--
-- End of file RP_RP1_Test_Passed_Service.adb
--
