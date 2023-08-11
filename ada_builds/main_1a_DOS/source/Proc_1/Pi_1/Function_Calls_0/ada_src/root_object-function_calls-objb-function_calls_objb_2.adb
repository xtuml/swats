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
--* File Name:               Function_Calls_objB_2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This object verifies the following:
--*                           
--*                           [1] Function that is accessible by the whole domain
--*                           [2] Function that calls another function
--*                           [3] Passing no parameters/Receiving some parameters
--*                           [4] Passing some parameters/Receiving no parameters
--*                           [5] Passing no parameters/Receiving no parameters
--*                           [6] Recursive function calls
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

-- List of objects used
with Root_Object.Function_Calls.objB;

-- List of services used
with Function_Calls_Function_Calls3_Delete_Report_Data_Service;
with Function_Calls_objB4_FunctionH_Service;
with Function_Calls_objB3_FunctionG_Service;
with Function_Calls_objB2_FunctionF_Service;
with Function_Calls_objB1_FunctionE_Service;
with Function_Calls_Function_Calls1_Domain_FunctionA_Service;

-- List of bridges used
with Function_Calls_RPT2_Test_Passed_Bridge;
with Function_Calls_RPT3_Test_Failed_Bridge;
with Function_Calls_RPT8_Specify_Requid_Bridge;
with Function_Calls_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Function_Calls.objB)
   
   procedure Function_Calls_objB_2 (Test_Case_ID  : in     Application_Types.Base_Integer_Type;
                                    Invocation    : in     Application_Types.Base_Integer_Type;
                                    This_Instance : in out Root_Object.Object_Access) is
   
      
      an_instance_B : Root_Object.Object_Access;
      
      tempA    : Application_Types.Base_Integer_Type := 1;
      IntegerA : Application_Types.Base_Integer_Type := 1;
      temp     : Application_Types.Base_Integer_Type := 1;
      
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- -------------------------------------------------------------------------
      --  Function calls from ObjectB
      -- -------------------------------------------------------------------------
      has_failed := False;
      
      -- -------------------------------------------------------------------------
      --  Test 6 - Call to a function that is accessible for the whole domain
      -- -------------------------------------------------------------------------
      
      if Invocation =  1 then
         
         Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
            Test_Number     => Test_Case_ID,
            Requid          => "1241-0000-01-0803               ",
            Invoking_Domain => "Function Calls                  ",
            Invoking_Object => "objB                            ",
            Purpose         => "domain based function calls     ");
         
         Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
            Requid_Test_Number => Test_Case_ID,
            The_Requid_Itself  => "1241-0000-01-0801               ");
         
         has_failed := False;
         
         
         --  Initialise parameters to be passed to the function.
         
         tempA := 1;
         
         
         --  Call the function.
         
         Function_Calls_Function_Calls1_Domain_FunctionA_Service.Function_Calls_Function_Calls1_Domain_FunctionA (
            InputA  => tempA,
            OutputA => IntegerA);
         
         
         --  Check that the value returned from the function is correct.
         
         if (IntegerA /= 1) then
            
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "objB                            ",
               Failed_Test_Number   => Test_Case_ID,
               Failed_Test_Value    => -1);
            
            
            has_failed := True;
            
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Function_Calls.objB.Function_Calls_objB1'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Function_Calls.objB.objB1,
                  Target_Instance  => This_Instance);
               
               Root_Object.Function_Calls.objB.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         else
            
            temp := Root_Object.Function_Calls.objB.Function_Calls_objB_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Function_Calls.objB.Function_Calls_objB_type(This_Instance.all).ResultA := temp;
            
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "objB                            ",
               Test_Number        => Test_Case_ID,
               Test_Value         => temp);
            
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Function_Calls.objB.Function_Calls_objB2'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Function_Calls.objB.objB2,
                  Target_Instance  => This_Instance,
                  Test_Case_ID     => Test_Case_ID);
               
               Root_Object.Function_Calls.objB.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         end if;
         
      end if;
      
      
      --  End Test 6
      -- -------------------------------------------------------------------------
      --  Test 7 - Call to a function that calls another function.
      -- -------------------------------------------------------------------------
      
      if Invocation =  2 then
         
         Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
            Test_Number      => Test_Case_ID,
            Requid           => "1241-0000-01-0807               ",
            Invoking_Domain  => "Function Calls                  ",
            Invoking_Object  => "objB                            ",
            Purpose          => "Call to function that calls anot");
         
         Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
            Requid_Test_Number => Test_Case_ID,
            The_Requid_Itself  => "1241-0000-01-0801               ");
         
         Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
            Requid_Test_Number => Test_Case_ID,
            The_Requid_Itself  => "1241-0000-01-0802               ");
         
         
         has_failed := False;
         
         
         --  Initialise parameters to be passed to the function.
         
         tempA := 1;
         
         
         --  Call the function.
         
         Function_Calls_objB1_FunctionE_Service.Function_Calls_objB1_FunctionE (
            InputA  => tempA,
            OutputA => IntegerA);
         
         
         --  Check that the value returned from the function is correct.
         
         if (IntegerA /= 2) then
            
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "objB                            ",
               Failed_Test_Number   => Test_Case_ID,
               Failed_Test_Value    => -2);
            
            
            has_failed := True;
            
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Function_Calls.objB.Function_Calls_objB1'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Function_Calls.objB.objB1,
                  Target_Instance  => This_Instance);
               
               Root_Object.Function_Calls.objB.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         else
            
            temp := Root_Object.Function_Calls.objB.Function_Calls_objB_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Function_Calls.objB.Function_Calls_objB_type(This_Instance.all).ResultA := temp;
            
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "objB                            ",
               Test_Number        => Test_Case_ID,
               Test_Value         => temp);
            
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Function_Calls.objB.Function_Calls_objB2'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Function_Calls.objB.objB2,
                  Target_Instance  => This_Instance,
                  Test_Case_ID     => Test_Case_ID);
               
               Root_Object.Function_Calls.objB.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         end if;
         
      end if;
      
      
      --  End Test 7
      -- -------------------------------------------------------------------------
      --  Test 8 - Call a function but not parameters are passed to the function.
      -- -------------------------------------------------------------------------
      
      if Invocation =  3 then
         
         Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
            Test_Number      => Test_Case_ID,
            Requid           => "1241-0000-01-0802               ",
            Invoking_Domain  => "Function Calls                  ",
            Invoking_Object  => "objB                            ",
            Purpose          => "No input parameters             ");
         
         
         has_failed := False;
         
         
         --  Initialise parameters to be passed to the function.
         
         tempA := 1;
         
         
         --  Call the function.
         
         Function_Calls_objB2_FunctionF_Service.Function_Calls_objB2_FunctionF (
            OutputA => IntegerA);
         
         
         --  Check that the value returned from the function is correct.
         
         if (IntegerA /= 3) then
            
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "objB                            ",
               Failed_Test_Number   => Test_Case_ID,
               Failed_Test_Value    => -3);
            
            
            has_failed := True;
            
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Function_Calls.objB.Function_Calls_objB1'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Function_Calls.objB.objB1,
                  Target_Instance  => This_Instance);
               
               Root_Object.Function_Calls.objB.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         else
            
            temp := Root_Object.Function_Calls.objB.Function_Calls_objB_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Function_Calls.objB.Function_Calls_objB_type(This_Instance.all).ResultA := temp;
            
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "objB                            ",
               Test_Number        => Test_Case_ID,
               Test_Value         => temp);
            
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Function_Calls.objB.Function_Calls_objB2'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Function_Calls.objB.objB2,
                  Target_Instance  => This_Instance,
                  Test_Case_ID     => Test_Case_ID);
               
               Root_Object.Function_Calls.objB.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         end if;
         
      end if;
      
      
      --  End Test 8
      -- -------------------------------------------------------------------------
      --  Test 9 - Call a function but not parameters are returned from the 
      --           function.
      -- -------------------------------------------------------------------------
      
      if Invocation =  4 then
         
         Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
            Test_Number      => Test_Case_ID,
            Requid           => "1241-0000-01-0802               ",
            Invoking_Domain  => "Function Calls                  ",
            Invoking_Object  => "objB                            ",
            Purpose          => "No output parameters            ");
         
         
         has_failed := False;
         
         --  Initialise parameters to be passed to the function.
         an_instance_B := Root_Object.Function_Calls.objB.Conditional_Find_One;
         while (an_instance_B /= null) and then (not (Root_Object.Function_Calls.objB.Function_Calls_objB_Type(an_instance_B.all).ReferenceB =  Invocation) ) loop
            
            an_instance_B := an_instance_B.Next_Object;
         end loop;
         
         
         --  Call the function.
         
         Function_Calls_objB3_FunctionG_Service.Function_Calls_objB3_FunctionG (
            InputA => an_instance_B,
            InputB => Test_Case_ID);
         
         
         --  Check that the function performed its task correctly
         
         if (Root_Object.Function_Calls.objB.Function_Calls_objB_type(This_Instance.all).ResultA /= 10) then
            
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "objB                            ",
               Failed_Test_Number   => Test_Case_ID,
               Failed_Test_Value    => -4);
            
            has_failed := True;
            
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Function_Calls.objB.Function_Calls_objB1'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Function_Calls.objB.objB1,
                  Target_Instance  => This_Instance);
               
               Root_Object.Function_Calls.objB.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         else
            
            temp := Root_Object.Function_Calls.objB.Function_Calls_objB_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Function_Calls.objB.Function_Calls_objB_type(This_Instance.all).ResultA := temp;
            
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "objB                            ",
               Test_Number        => Test_Case_ID,
               Test_Value         => temp);
            
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Function_Calls.objB.Function_Calls_objB2'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Function_Calls.objB.objB2,
                  Target_Instance  => This_Instance,
                  Test_Case_ID     => Test_Case_ID);
               
               Root_Object.Function_Calls.objB.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         end if;
         
      end if;
      
      
      --  End Test 9
      -- -------------------------------------------------------------------------
      --  Test 10 - Call a function but pass no parameters and receive no 
      --            parameters from the function.
      -- -------------------------------------------------------------------------
      
      if Invocation =  5 then
         
         Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
            Test_Number      => Test_Case_ID,
            Requid           => "1241-0000-01-0802               ",
            Invoking_Domain  => "Function Calls                  ",
            Invoking_Object  => "objB                            ",
            Purpose          => "no input or output parameters   ");
         
         
         has_failed := False;
         
         --  Call the function.
         
         Function_Calls_objB4_FunctionH_Service.Function_Calls_objB4_FunctionH;
         
         
         --  Check that the function performed its task correctly
         
         if (Root_Object.Function_Calls.objB.Function_Calls_objB_type(This_Instance.all).ResultA /= 10) then
            
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "objB                            ",
               Failed_Test_Number   => Test_Case_ID,
               Failed_Test_Value    => -5);
            
            has_failed := True;
            
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Function_Calls.objB.Function_Calls_objB1'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Function_Calls.objB.objB1,
                  Target_Instance  => This_Instance);
               
               Root_Object.Function_Calls.objB.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         else
            
            temp := Root_Object.Function_Calls.objB.Function_Calls_objB_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Function_Calls.objB.Function_Calls_objB_type(This_Instance.all).ResultA := temp;
            
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "objB                            ",
               Test_Number        => Test_Case_ID,
               Test_Value         => temp);
            
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Function_Calls.objB.Function_Calls_objB2'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Function_Calls.objB.objB2,
                  Target_Instance  => This_Instance,
                  Test_Case_ID     => Test_Case_ID);
               
               Root_Object.Function_Calls.objB.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         end if;
         
         
         Function_Calls_Function_Calls3_Delete_Report_Data_Service.Function_Calls_Function_Calls3_Delete_Report_Data;
         
      end if;
      
      
      --  End Test 10
      -- -------------------------------------------------------------------------
      Root_Object.Function_Calls.objB.Process_Queue;
   end Function_Calls_objB_2;
   
--
-- End of file Function_Calls_objB_2.ada
--
