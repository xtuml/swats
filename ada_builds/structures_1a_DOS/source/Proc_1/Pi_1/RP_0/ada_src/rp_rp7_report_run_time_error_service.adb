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
--* File Name:               RP7_Report_Run_Time_Error_Service.adb
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

with Ada.Text_IO;

with Application_Types;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP7_Report_Run_Time_Error_Service is
   
   procedure RP_RP7_Report_Run_Time_Error (
      Detail : in     Application_Types.Base_Text_Type) is
      
      the_detail : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of RP7_Report_Run_Time_Error
      the_detail := Detail;
      
      --
      -- start of Ada inline code insertion
             Ada.Text_IO.New_Line(1);
       Ada.Text_IO.Put_Line("======================= RUN TIME ERROR ENCOUNTERED =======================");
       Ada.Text_IO.New_Line(1);
       Ada.Text_IO.Put_Line("Report : "  & the_detail );
       Ada.Text_IO.New_Line(1);
       Ada.Text_IO.Put_Line("======================= ************************** =======================");
       Ada.Text_IO.New_Line(1);
      
      -- end of Ada inline code insertion
      --
      
      
   end RP_RP7_Report_Run_Time_Error;
   
end RP_RP7_Report_Run_Time_Error_Service;

--
-- End of file RP_RP7_Report_Run_Time_Error_Service.adb
--
