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
--* File Name:               Function_Calls_objA_2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies the following:
--*                           
--*                           [1] Passing one parameter/Receiving one parameter
--*                           [2] Passing many parameters/Receiving one parameter
--*                           [3] Passing one parameter/Receiving many parameters
--*                           [4] Passing many parameters/Receiving many parameters
--*                           [5] Function that is accessible by the whole domain
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
--* Domain Name              : Function_Calls
--* Domain Key Letter        : Function_Calls
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of services used
with Function_Calls_Function_Calls1_Domain_FunctionA_Service;
with Function_Calls_objA4_FunctionD_Service;
with Function_Calls_objA3_FunctionC_Service;
with Function_Calls_objA2_FunctionB_Service;
with Function_Calls_objA1_FunctionA_Service;

-- List of bridges used
with Function_Calls_RPT2_Test_Passed_Bridge;
with Function_Calls_RPT3_Test_Failed_Bridge;
with Function_Calls_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Function_Calls.objA)
   
   procedure Function_Calls_objA_2 (Test_Case_ID  : in     Application_Types.Base_Integer_Type;
                                    Invocation    : in     Application_Types.Base_Integer_Type;
                                    This_Instance : in out Root_Object.Object_Access) is
   
      
      IntegerB : Application_Types.Base_Integer_Type := 1;
      tempA    : Application_Types.Base_Integer_Type := 1;
      temp     : Application_Types.Base_Integer_Type := 1;
      tempB    : Application_Types.Base_Integer_Type := 1;
      tempC    : Application_Types.Base_Integer_Type := 1;
      IntegerA : Application_Types.Base_Integer_Type := 1;
      IntegerC : Application_Types.Base_Integer_Type := 1;
      Test     : Application_Types.Base_Integer_Type := 1;
      
      has_failed : Boolean := Application_Types.Boolean_first;
      BooleanA   : Boolean := Application_Types.Boolean_first;
      BooleanB   : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- -------------------------------------------------------------------------
      --  Function calls from ObjectA
      -- -------------------------------------------------------------------------
      has_failed := True;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Function call to a function passing one parameter and receiving 
      --           one parameter.
      -- -------------------------------------------------------------------------
      
      if Invocation =  1 then
         
         IntegerB := 0;
         
         
         Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
            Test_Number     => Test_Case_ID,
            Requid          => "1241-0000-01-0802               ",
            Invoking_Domain => "Function Calls                  ",
            Invoking_Object => "objA                            ",
            Purpose         => "passing one and receiving one   ");
         
         
         has_failed := False;
         
         
         --  Initialise a parameter to be passed to the function.
         
         tempA := 0;
         
         
         --  Call the function.
         
         Function_Calls_objA1_FunctionA_Service.Function_Calls_objA1_FunctionA (
            InputA  => tempA,
            OutputA => IntegerB);
         
         
         --  Check that the value returned from the function is correct.
         
         if IntegerB /= 10 then
            
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "objA                            ",
               Failed_Test_Number   => Test_Case_ID,
               Failed_Test_Value    => -1);
            
            
            has_failed := True;
            
         else
            
            temp := Root_Object.Function_Calls.objA.Function_Calls_objA_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Function_Calls.objA.Function_Calls_objA_type(This_Instance.all).ResultA := temp;
            
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "objA                            ",
               Test_Number        => Test_Case_ID,
               Test_Value         => temp);
            
         end if;
         
      end if;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - Function call to a function passing many parameters and 
      --           receiving one parameter.
      -- -------------------------------------------------------------------------
      
      if Invocation =  2 then
         
         BooleanA := True;
         
         
         Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
            Test_Number     => Test_Case_ID,
            Requid          => "1241-0000-01-0802               ",
            Invoking_Domain => "Function Calls                  ",
            Invoking_Object => "objA                            ",
            Purpose         => "many parameters and receiving on");
         
         
         has_failed := False;
         
         
         --  Initialise parameters to be passed to the function.
         
         tempA := 10;
         tempB := 20;
         tempC := 30;
         
         
         --  Call the function.
         
         Function_Calls_objA2_FunctionB_Service.Function_Calls_objA2_FunctionB (
            InputA  => tempA,
            InputB  => tempB,
            InputC  => tempC,
            OutputA => BooleanA);
         
         
         --  Check that the value returned from the function is correct.
         
         if BooleanA /= True then
            
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "objA                            ",
               Failed_Test_Number   => Test_Case_ID,
               Failed_Test_Value    => -2);
            
            
            has_failed := True;
            
         else
            
            temp := Root_Object.Function_Calls.objA.Function_Calls_objA_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Function_Calls.objA.Function_Calls_objA_type(This_Instance.all).ResultA := temp;
            
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "objA                            ",
               Test_Number        => Test_Case_ID,
               Test_Value         => temp);
            
         end if;
         
      end if;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - Function call to a function passing one parameters and 
      --           receiving many parameter.
      -- -------------------------------------------------------------------------
      
      if Invocation =  3 then
         
         Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
            Test_Number     => Test_Case_ID,
            Requid          => "1241-0000-01-0802               ",
            Invoking_Domain => "Function Calls                  ",
            Invoking_Object => "objA                            ",
            Purpose         => "passing one and receiving many  ");
         
         
         has_failed := False;
         IntegerA   := 0;
         BooleanA   := False;
         BooleanB   := False;
         IntegerB   := 0;
         
         
         --  Initialise a parameter to be passed to the function.
         
         tempA := 10;
         
         
         --  Call the function.
         
         Function_Calls_objA3_FunctionC_Service.Function_Calls_objA3_FunctionC (
            InputA  => tempA,
            OutputA => IntegerA,
            OutputB => BooleanA,
            OutputC => BooleanB,
            OutputD => IntegerB);
         
         
         --  Check that the value returned from the function is correct.
         
         if ((IntegerA /= 10) or else
             (IntegerB /= 30) or else
             (BooleanA /= True) or else
             (BooleanB /= False)) then
            
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "objA                            ",
               Failed_Test_Number   => Test_Case_ID,
               Failed_Test_Value    => -3);
            
            
            has_failed := True;
            
         else
            
            temp := Root_Object.Function_Calls.objA.Function_Calls_objA_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Function_Calls.objA.Function_Calls_objA_type(This_Instance.all).ResultA := temp;
            
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "objA                            ",
               Test_Number        => Test_Case_ID,
               Test_Value         => temp);
            
         end if;
         
      end if;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - Function call to a function passing many parameters and 
      --           receiving many parameter.
      -- -------------------------------------------------------------------------
      
      if Invocation =  4 then
         
         Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
            Test_Number     => Test_Case_ID,
            Requid          => "1241-0000-01-0802               ",
            Invoking_Domain => "Function Calls                  ",
            Invoking_Object => "objA                            ",
            Purpose         => "passing many and receiving many ");
         
         
         has_failed := False;
         
         
         --  Initialise parameters to be passed to the function.
         
         tempA    := 1;
         tempB    := 2;
         tempC    := 3;
         IntegerA := 0;
         IntegerB := 0;
         IntegerC := 0;
         
         
         --  Call the function.
         
         Function_Calls_objA4_FunctionD_Service.Function_Calls_objA4_FunctionD (
            InputA  => tempA,
            InputB  => tempB,
            InputC  => tempC,
            OutputA => IntegerA,
            OutputB => IntegerB,
            OutputC => IntegerC);
         
         
         --  Check that the value returned from the function is correct.
         
         if ((IntegerA /= 1) or else
             (IntegerB /= 2) or else
             (IntegerC /= 3)) then
            
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "objA                            ",
               Failed_Test_Number   => Test_Case_ID,
               Failed_Test_Value    => -4);
            
            
            has_failed := True;
            
         else
            
            temp := Root_Object.Function_Calls.objA.Function_Calls_objA_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Function_Calls.objA.Function_Calls_objA_type(This_Instance.all).ResultA := temp;
            
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "objA                            ",
               Test_Number        => Test_Case_ID,
               Test_Value         => temp);
            
         end if;
         
      end if;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 - Call to a function that is accessible for the whole domain
      -- -------------------------------------------------------------------------
      
      if Invocation =  5 then
         
         Test := 5;
         
         
         Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
            Test_Number     => Test_Case_ID,
            Requid          => "1241-0000-01-0801               ",
            Invoking_Domain => "Function Calls                  ",
            Invoking_Object => "objA                            ",
            Purpose         => "function accessible to whole dom");
         
         
         has_failed := False;
         
         
         --  Initialise parameters to be passed to the function.
         
         tempA    := 1;
         IntegerA := 0;
         
         
         --  Call the function.
         
         Function_Calls_Function_Calls1_Domain_FunctionA_Service.Function_Calls_Function_Calls1_Domain_FunctionA (
            InputA  => tempA,
            OutputA => IntegerA);
         
         
         --  Check that the value returned from the function is correct.
         
         if (IntegerA /= 1) then
            
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "objA                            ",
               Failed_Test_Number   => Test_Case_ID,
               Failed_Test_Value    => -5);
            
            
            has_failed := True;
            
         else
            
            temp := Root_Object.Function_Calls.objA.Function_Calls_objA_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Function_Calls.objA.Function_Calls_objA_type(This_Instance.all).ResultA := temp;
            
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "objA                            ",
               Test_Number        => Test_Case_ID,
               Test_Value         => temp);
            
         end if;
         
      end if;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      
      if (not has_failed) then
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Function_Calls.objA.Function_Calls_objA2'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Function_Calls.objA.objA2,
               Target_Instance  => This_Instance);
            
            Root_Object.Function_Calls.objA.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Function_Calls.objA.Function_Calls_objA1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Function_Calls.objA.objA1,
               Target_Instance  => This_Instance);
            
            Root_Object.Function_Calls.objA.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      
      -- -------------------------------------------------------------------------
      Root_Object.Function_Calls.objA.Process_Queue;
   end Function_Calls_objA_2;
   
--
-- End of file Function_Calls_objA_2.ada
--
