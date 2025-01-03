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
--* File Name:               UDT11_Check_Constraint_Service.adb
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

-- List of objects used
with Root_Object.UDT.INT;

-- List of bridges used
with UDT_RPT3_Test_Failed_Bridge;
with UDT_RPT2_Test_Passed_Bridge;
with UDT_RPT1_Start_Test_Bridge;

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Subset_1_Of_Integer;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_UDT11_Check_Constraint_Service is
   
   procedure UDT_UDT11_Check_Constraint (
      Test : in     Application_Types.Base_Integer_Type) is
      
      The_Object : Root_Object.Object_Access;
      
      Failure_Code : Application_Types.Base_Integer_Type := 1;
      Count        : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of UDT11_Check_Constraint
      
      --  --------------------------------------------------------------------------------------
      --  Check that when a switch statment uses a contrained type default is not required as
      --  all elements of the constrained type should be accounted for
      --  --------------------------------------------------------------------------------------
      
      UDT_RPT1_Start_Test_Bridge.UDT_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "User Defined Types              ",
         Invoking_Object => "Check Constraint                ",
         Purpose         => "Check Constraint in Switch      ");
      
      Has_Failed   := True;
      Failure_Code := -10;
      Count        := 0;
      
      
      The_Object := Root_Object.UDT.INT.Create;
      Root_Object.UDT.INT.UDT_INT_Type(The_Object.all).Unique_Identifier := Test;
      
      
      Root_Object.UDT.INT.UDT_INT_type(The_Object.all).First_Integer := 4;
      
      
      case Root_Object.UDT.INT.UDT_INT_type(The_Object.all).First_Integer is
         when 1 =>
            
            Count := 1;
         
         when 2 =>
            Count := 2;
         
         when 3 =>
            Count := 3;
            
         
         when 4 =>
            
            Count      := 4;
            Has_Failed := False;
            
         
         when 5 =>
            
            Count := 5;
         
         when 6 =>
            Count := 6;
         
         when 7 =>
            Count := 7;
         
         when 8 =>
            Count := 8;
         
         when 9 =>
            Count := 9;
         
         when 10 =>
            Count := 10;
            
         
      end case;
      
      
      Root_Object.UDT.INT.Delete (
         Old_Instance => The_Object);
      
      if (not Has_Failed) then
         
         UDT_RPT2_Test_Passed_Bridge.UDT_RPT2_Test_Passed (
            Test_Object_Domain => "Check Constraint in Switch      ",
            Test_Number        => Test,
            Test_Value         => Count);
         
      else
         UDT_RPT3_Test_Failed_Bridge.UDT_RPT3_Test_Failed (
            Failed_Domain_Object => "Check Constraint in Switch      ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Count);
         
      end if;
      
      
   end UDT_UDT11_Check_Constraint;
   
end UDT_UDT11_Check_Constraint_Service;

--
-- End of file UDT_UDT11_Check_Constraint_Service.adb
--
