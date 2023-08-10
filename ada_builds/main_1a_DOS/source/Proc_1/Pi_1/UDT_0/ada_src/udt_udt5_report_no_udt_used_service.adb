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
--* File Name:               UDT5_Report_No_UDT_Used_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Returns the number of user defined types used and confims that the reported
--*                           number is actually the number used.
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
--* Domain Name              : User_Defined_Types
--* Domain Key Letter        : UDT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with UDT_RPT3_Test_Failed_Bridge;
with UDT_RPT2_Test_Passed_Bridge;
with UDT_RPT4_Test_Unsupported_Bridge;
with UDT_BTF3_Get_Environment_Type_Bridge;
with UDT_RPT1_Start_Test_Bridge;

with UDT_Domain_Types;

with Ada.Text_IO;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_UDT5_Report_No_UDT_Used_Service is
   
   procedure UDT_UDT5_Report_No_UDT_Used (
      Test        : in     Application_Types.Base_Integer_Type;
      Testing_For : in     Application_Types.Base_Text_Type) is
      
      Reported_No_UDT : Application_Types.Base_Integer_Type := 1;
      Expected_No_UDT : Application_Types.Base_Integer_Type := 1;
      env             : Application_Types.Base_Integer_Type := 1;
      
      Test_Has_Passed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of UDT5_Report_No_UDT_Used
      Reported_No_UDT := 0;
      Expected_No_UDT := 0;
      Test_Has_Passed := False;
      
      UDT_RPT1_Start_Test_Bridge.UDT_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "User Defined Types              ",
         Invoking_Object => "Reported No UDTs                ",
         Purpose         => Testing_For);
      
      
      if Test =  15 then
         
         UDT_BTF3_Get_Environment_Type_Bridge.UDT_BTF3_Get_Environment_Type (
            Type_Of_Environment => env);
         
         
         if env =  1 then
            
            UDT_RPT4_Test_Unsupported_Bridge.UDT_RPT4_Test_Unsupported (
               Unsupported_Test_Number => Test);
            
         else
            --
            -- start of Ada inline code insertion
                                 
                                 Reported_No_UDT := UDT_Domain_Types.Types_And_Subtypes_Count;
                     Ada.Text_IO.Put_Line("No UDTs in User_Defined_Types = " & integer'image(integer(Reported_No_UDT)));
                  -- end of Ada inline code insertion
            --
            
            Expected_No_UDT := 16;
            
            
            if Reported_No_UDT =  Expected_No_UDT then
               
               UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
                  Test_Object_Domain => Testing_For,
                  Test_Number        => Test,
                  Test_Value         => Reported_No_UDT);
               
            else
               UDT_RPT3_Test_Failed_Bridge.UDT_RPT3_Test_Failed (
                  Failed_Domain_Object => Testing_For,
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => Expected_No_UDT);
               
            end if;
            
         end if;
         
      end if;
      
      
   end UDT_UDT5_Report_No_UDT_Used;
   
end UDT_UDT5_Report_No_UDT_Used_Service;

--
-- End of file UDT_UDT5_Report_No_UDT_Used_Service.adb
--
