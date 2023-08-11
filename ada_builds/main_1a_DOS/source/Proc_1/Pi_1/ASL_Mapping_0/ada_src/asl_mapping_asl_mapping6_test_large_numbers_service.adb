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
--* File Name:               ASL_Mapping6_Test_Large_Numbers_Service.adb
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
--* Domain Name              : ASL_Mapping
--* Domain Key Letter        : ASL_Mapping
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of bridges used
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;
with ASL_Mapping_WAW1_What_Env_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_ASL_Mapping6_Test_Large_Numbers_Service is
   
   procedure ASL_Mapping_ASL_Mapping6_Test_Large_Numbers (
      Start_Test_Number  : in     Application_Types.Base_Integer_Type;
      Finish_Test_Number :    out Application_Types.Base_Integer_Type) is
      
      This_Test_Number         : Application_Types.Base_Integer_Type := 1;
      System_Maximum           : Application_Types.Base_Integer_Type := 1;
      System_Minimum           : Application_Types.Base_Integer_Type := 1;
      Overflow_System_Maximum  : Application_Types.Base_Integer_Type := 1;
      Underflow_System_Minimum : Application_Types.Base_Integer_Type := 1;
      
      Host : Application_Types.Base_Text_Type := (others => ' ');
      
      WACA : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of ASL_Mapping6_Test_Large_Numbers
      This_Test_Number := Start_Test_Number;
      
      
      ASL_Mapping_WAW1_What_Env_Bridge.ASL_Mapping_WAW1_What_Env (
         Env_Text => Host);
      
      
      if Host =  "WACA                            " then
         
         WACA := True;
      else
         WACA := False;
         
      end if;
      
      
      --  Commented out code indicates that these ASL instructions will cause the WACA not to generate this file,
      --  as an assingment of an out of range value will result in a Fatal Error during code generation.
      --  It is conceivable that WACA could be required to actually limit the maximum and minimum values
      --  to be within the correct range. This does NOT happen currently. If this changes, and WACA is
      --  required to limit any range, the commented out code should be re-instated.
      --  Maximum permissable value
      
      System_Maximum := 2147483647;
      
      --  Minimum permissable value
      System_Minimum := -2147483648;
      
      
      -- Illegal maximum value
      -- Overflow_System_Maximum = 2147483648
      
      Overflow_System_Maximum := System_Maximum;
      
      
      --  Illegal minimum value
      -- Underflow_System_Minimum = -2147483649
      
      Underflow_System_Minimum := System_Minimum;
      
      
      --  ------------------------------------------------------------------------------------------------------------
      --  Test 1 - Integer Overflow Underflow
      --  ------------------------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Integer Overflow Underflow      ",
         Purpose         => "Test max                        ");
      
      
      if System_Maximum =  2147483647 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Integer max                     ",
            Test_Number        => This_Test_Number,
            Test_Value         => System_Maximum);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Integer max                     ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => System_Maximum);
         
      end if;
      
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 1
      --  ------------------------------------------------------------------------------------------------------------
      --  Test 2 - Integer Overflow Underflow
      --  ------------------------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Integer Overflow Underflow      ",
         Purpose         => "Test min                        ");
      
      
      if System_Minimum =  -2147483648 then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Integer max                     ",
            Test_Number        => This_Test_Number,
            Test_Value         => System_Minimum);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Integer max                     ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => System_Minimum);
         
      end if;
      
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 2
      --  ------------------------------------------------------------------------------------------------------------
      --  Test 3 - Integer Overflow Underflow
      --  ------------------------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Integer Overflow Underflow      ",
         Purpose         => "Test constrained to max         ");
      
      
      --  WACA should limit the Overflow_System_Maximum value to the system defined max, 
      --  since this value is outside of the defined integer range.
      --  Compare it to the unmodified maximum legal value System_Maximum
      --  if WACA then
      
      if Overflow_System_Maximum =  System_Maximum then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Integer constrained to max      ",
            Test_Number        => This_Test_Number,
            Test_Value         => Overflow_System_Maximum);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Integer constrained to max      ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => Overflow_System_Maximum);
         
      end if;
      
      
      --  else
      --  ISIM does no limiting, and allows a bigger range anyway.
      --  If this bit ever got tested by WACA (and it shouldn't), this test would pass as both the
      --  operands would have been modified by WACA during code generation. This will be proved later.
      --    if Overflow_System_Maximum = 2147483648 then
      --       [] = RPT2:Test_Passed["Integer constrained to max", This_Test_Number, Overflow_System_Maximum]
      --    else
      --       [] = RPT3:Test_Failed["Integer constrained to max", This_Test_Number, Overflow_System_Maximum]
      --    endif
      -- endif
      This_Test_Number := This_Test_Number + 1;
      
      --  End Test 3
      --  ------------------------------------------------------------------------------------------------------------
      --  Test 4 - Integer Overflow Underflow
      --  ------------------------------------------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => This_Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "Integer Overflow Underflow      ",
         Purpose         => "Test constrained to min         ");
      
      
      --  WACA should limit this value to the system defined min, since this value is outside of the defined integer range.
      --  if WACA then
      
      if Underflow_System_Minimum =  System_Minimum then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "Integer constrained to min      ",
            Test_Number        => This_Test_Number,
            Test_Value         => Underflow_System_Minimum);
         
      else
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "Integer constrained to min      ",
            Failed_Test_Number   => This_Test_Number,
            Failed_Test_Value    => Underflow_System_Minimum);
         
      end if;
      
      
      --  else
      --  ISIM does no limiting, and allows a bigger range anyway.
      --    if Underflow_System_Minimum = -2147483649 then
      --       [] = RPT2:Test_Passed["Integer constrained to min", This_Test_Number, Underflow_System_Minimum]
      --    else
      --       [] = RPT3:Test_Failed["Integer constrained to min", This_Test_Number, Underflow_System_Minimum]
      --    endif
      -- endif
      This_Test_Number := This_Test_Number + 1;
      
      
      --  End Test 4
      --  ------------------------------------------------------------------------------------------------------------
      
      Finish_Test_Number := This_Test_Number;
      
      
   end ASL_Mapping_ASL_Mapping6_Test_Large_Numbers;
   
end ASL_Mapping_ASL_Mapping6_Test_Large_Numbers_Service;

--
-- End of file ASL_Mapping_ASL_Mapping6_Test_Large_Numbers_Service.adb
--
