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
--* File Name:               RP3_Test_Unsupported_Service.adb
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
with RP_DD3_A_Test_Is_Unsupported_Service;

with Ada.Text_IO;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP3_Test_Unsupported_Service is
   
   procedure RP_RP3_Test_Unsupported (
      Unsupported_Test_Number   : in     Application_Types.Base_Integer_Type;
      Unsupported_Domain_Number : in     Application_Types.Base_Integer_Type) is
      
      the_test   : Application_Types.Base_Integer_Type := 1;
      the_domain : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of RP3_Test_Unsupported
      the_test   := Unsupported_Test_Number;
      the_domain := Unsupported_Domain_Number;
      
      
      RP_DD3_A_Test_Is_Unsupported_Service.RP_DD3_A_Test_Is_Unsupported (
         New_Test_Number => the_test,
         Invoking_Domain => the_domain);
      
      --
      -- start of Ada inline code insertion
            
       
       -- Ada.Text_IO.Put_Line("Test Number " & integer'image(integer(the_test)) & 
       --                     " is UNSUPPORTED");
      
      -- end of Ada inline code insertion
      --
      
      
   end RP_RP3_Test_Unsupported;
   
end RP_RP3_Test_Unsupported_Service;

--
-- End of file RP_RP3_Test_Unsupported_Service.adb
--
