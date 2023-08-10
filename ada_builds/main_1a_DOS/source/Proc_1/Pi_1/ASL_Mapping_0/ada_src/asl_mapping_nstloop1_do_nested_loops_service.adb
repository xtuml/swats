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
--* File Name:               ASL_Mapping_NstLOOP1_do_nested_loops_Service.adb
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

-- List of objects used
with Root_Object.ASL_Mapping.NstLOOP;

-- List of bridges used
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_NstLOOP1_do_nested_loops_Service is
   
   procedure ASL_Mapping_NstLOOP1_do_nested_loops (
      an_instanceNESTED_LOOP : in     Root_Object.Object_Access;
      Test_Start             : in     Application_Types.Base_Integer_Type;
      Final_Test             :    out Application_Types.Base_Integer_Type) is
      
      Test   : Application_Types.Base_Integer_Type := 1;
      countA : Application_Types.Base_Integer_Type := 1;
      countB : Application_Types.Base_Integer_Type := 1;
      countC : Application_Types.Base_Integer_Type := 1;
      countD : Application_Types.Base_Integer_Type := 1;
      countE : Application_Types.Base_Integer_Type := 1;
      countF : Application_Types.Base_Integer_Type := 1;
      temp   : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of NstLOOP1_do_nested_loops
      
      -- -------------------------------------------------------------------------
      --  Nested LOOP statements
      -- -------------------------------------------------------------------------
      Test := Test_Start;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Nest Loop statements
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0441               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objNESTEDLOOP                   ",
         Purpose         => "Nest Loop statements            ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0452               ");
      
      
      Has_Failed := False;
      
      
      --  Ensure the attribute 'ResultA' is set to zero
      
      if Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA /= 0 then
         
         Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA := 0;
         
      end if;
      
      
      --  Perform the test
      
      countA := 0;
      
      loop
         countB := 0;
         
         loop
            countC := 0;
            
            loop
               countD := 0;
               
               loop
                  countE := 0;
                  
                  loop
                     countF := 0;
                     
                     
                     loop
                        
                        temp := Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA + 1;
                        
                        
                        Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA := temp;
                        
                        
                        countF := countF + 1;
                        
                        exit when countF =  5;
                     end loop;
                     
                     
                     temp := Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA + 1;
                     
                     
                     Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA := temp;
                     
                     
                     countE := countE + 1;
                     
                     exit when countE =  5;
                  end loop;
                  
                  
                  temp := Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA + 1;
                  
                  
                  Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA := temp;
                  
                  
                  countD := countD + 1;
                  
                  exit when countD =  5;
               end loop;
               
               
               temp := Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA + 1;
               
               
               Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA := temp;
               
               
               countC := countC + 1;
               
               exit when countC =  5;
            end loop;
            
            
            temp := Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA + 1;
            
            
            Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA := temp;
            
            
            countB := countB + 1;
            
            exit when countB =  5;
         end loop;
         
         
         temp := Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA + 1;
         
         
         Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA := temp;
         
         
         countA := countA + 1;
         
         exit when countA =  5;
      end loop;
      
      
      --  Check that the value of attribute 'ResultA' is correct.
      
      if Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA /= 19530 then
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objNESTEDFOR                    ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA);
         
         
         Has_Failed := True;
      end if;
      
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objNESTEDFOR                    ",
            Test_Number        => Test,
            Test_Value         => Root_Object.ASL_Mapping.NstLOOP.ASL_Mapping_NstLOOP_type(an_instanceNESTED_LOOP.all).ResultA);
         
      end if;
      
      Test := Test + 1;
      Final_Test := Test;
      
      
      -- -------------------------------------------------------------------------
      
   end ASL_Mapping_NstLOOP1_do_nested_loops;
   
end ASL_Mapping_NstLOOP1_do_nested_loops_Service;

--
-- End of file ASL_Mapping_NstLOOP1_do_nested_loops_Service.adb
--
