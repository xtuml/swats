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
--* File Name:               Function_Calls5_Test_Set_Of_IH_Service.adb
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
with Root_Object.Function_Calls.objA;
with Root_Object.Function_Calls.TD;

-- List of bridges used
with Function_Calls_RPT3_Test_Failed_Bridge;
with Function_Calls_RPT2_Test_Passed_Bridge;
with Function_Calls_RPT8_Specify_Requid_Bridge;
with Function_Calls_RPT1_Start_Test_Bridge;

-- List of domain types used
with Function_Calls_Domain_Types;
with Function_Calls_Domain_Types.Ops;
use type Function_Calls_Domain_Types.Structure_For_IH;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_Function_Calls5_Test_Set_Of_IH_Service is
   
   procedure Function_Calls_Function_Calls5_Test_Set_Of_IH (
      Set_Of_IH        : in out Function_Calls_Domain_Types.Structure_For_IH;
      Single           : in     Boolean;
      Testing_For_What : in     Application_Types.Base_Text_Type) is
      
      my_test_data : Root_Object.Object_Access;
      Object_IH    : Root_Object.Object_Access;
      
      Test_Number   : Application_Types.Base_Integer_Type := 1;
      The_Attribute : Application_Types.Base_Integer_Type := 1;
      How_Many      : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of Function_Calls5_Test_Set_Of_IH
      my_test_data := Root_Object.Function_Calls.TD.Unconditional_Find_One;
      Test_Number := Root_Object.Function_Calls.TD.Function_Calls_TD_type(my_test_data.all).The_Test_Number;
      
      
      --  ---------------------------------------------------------------------------
      --  Param1 is set of structures contiaining an instance handle for Object_A.
      --  ---------------------------------------------------------------------------
      
      Function_Calls_RPT1_Start_Test_Bridge.Function_Calls_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1241-0000-01-0807               ",
         Invoking_Domain => " Function Calls                 ",
         Invoking_Object => "Test IH set                     ",
         Purpose         => Testing_For_What);
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test_Number,
         The_Requid_Itself  => "1103-0000-01-1011               ");
      
      Function_Calls_RPT8_Specify_Requid_Bridge.Function_Calls_RPT8_Specify_Requid (
         Requid_Test_Number => Test_Number,
         The_Requid_Itself  => "1101-0000-01-0138               ");
      
      
      The_Attribute := 1;
      How_Many      :=  Function_Calls_Domain_Types.Ops.Count_Of(Set_Of_IH);
      
      if How_Many =  1 then
         
         --  Single IH, not a set.
         --
         -- start of unpacking structure
         
         declare
            use type Root_Object.Object_List.Node_Access_Type;
         begin
            Function_Calls_Domain_Types.Ops.Go_To_Start (Set_Of_IH);
            for i in 1 .. Function_Calls_Domain_Types.Ops.Count_Of (In_Structure => Set_Of_IH) loop
               Function_Calls_Domain_Types.Ops.Extract (
                  A_An_Instance_Handle => Object_IH,
                  From_Structure       => Set_Of_IH);
               
               The_Attribute := Root_Object.Function_Calls.objA.Function_Calls_objA_type(Object_IH.all).ReferenceA;
               
            end loop; -- end of i in 1 .. Function_Calls_Domain_Types.Ops.Count_Of (In_Structure => Set_Of_IH) loop
            
         end;
         -- end of unpacking structure
         --
         
         
         if Single =  True then
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "Single of IH received           ",
               Test_Number        => Test_Number,
               Test_Value         => The_Attribute);
            
         else
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "Single IH expected              ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -1);
            
         end if;
         
      else
         
         --  Set of IH
         
         if Single =  False then
            
            Function_Calls_RPT2_Test_Passed_Bridge.Function_Calls_RPT2_Test_Passed (
               Test_Object_Domain => "Set of IH received              ",
               Test_Number        => Test_Number,
               Test_Value         => How_Many);
            
         else
            Function_Calls_RPT3_Test_Failed_Bridge.Function_Calls_RPT3_Test_Failed (
               Failed_Domain_Object => "Set IH expected                 ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -1);
            
         end if;
         
      end if;
      
      
      --  ---------------------------------------------------------------------------
      
      Test_Number := Test_Number + 1;
      
      
      Root_Object.Function_Calls.TD.Function_Calls_TD_type(my_test_data.all).The_Test_Number := Test_Number;
      
      
   end Function_Calls_Function_Calls5_Test_Set_Of_IH;
   
end Function_Calls_Function_Calls5_Test_Set_Of_IH_Service;

--
-- End of file Function_Calls_Function_Calls5_Test_Set_Of_IH_Service.adb
--
