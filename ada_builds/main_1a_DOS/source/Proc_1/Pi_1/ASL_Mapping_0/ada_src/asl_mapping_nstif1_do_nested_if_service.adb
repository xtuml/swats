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
--* File Name:               ASL_Mapping_NstIF1_do_nested_if_Service.adb
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
with Root_Object.ASL_Mapping.NstIF;

-- List of bridges used
with ASL_Mapping_RPT8_Specify_Requid_Bridge;
with ASL_Mapping_RPT2_Test_Passed_Bridge;
with ASL_Mapping_RPT3_Test_Failed_Bridge;
with ASL_Mapping_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body ASL_Mapping_NstIF1_do_nested_if_Service is
   
   procedure ASL_Mapping_NstIF1_do_nested_if (
      an_instanceNESTED_IF : in     Root_Object.Object_Access;
      Test_Start           : in     Application_Types.Base_Integer_Type;
      Final_Test           :    out Application_Types.Base_Integer_Type) is
      
      Test  : Application_Types.Base_Integer_Type := 1;
      tempA : Application_Types.Base_Integer_Type := 1;
      tempB : Application_Types.Base_Integer_Type := 1;
      tempC : Application_Types.Base_Integer_Type := 1;
      tempD : Application_Types.Base_Integer_Type := 1;
      tempE : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of NstIF1_do_nested_if
      
      -- -------------------------------------------------------------------------
      --  Nested IF statements, WITHOUT LOGICAL CONDITIONS
      --  The ASL <if ... else> statement shall be supported
      --  1103-0000-01-0422
      --  Logical conditions returning a Boolean data type of true or false shall
      --  be supported
      --  1103-0000-01-0911
      -- -------------------------------------------------------------------------
      Test := Test_Start;
      
      
      -- -------------------------------------------------------------------------
      --  Test 1 - Nested IFs that don't contain logic.
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0422               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objNESTEDIF                     ",
         Purpose         => "Do not contain logic            ");
      
      
      Has_Failed := False;
      
      
      --  Initialise temporary variables
      
      tempA := 1;
      tempB := 2;
      tempC := 3;
      tempD := 4;
      tempE := 5;
      
      
      --  Perform the test, 12 Nested IF statements
      
      if tempA =  1 then
         
         if tempB >  1 then
            
            if tempC <  4 then
               
               if tempD <= 4 then
                  
                  if tempE >= 5 then
                     
                     if tempA /= 2 then
                        
                        if tempB <= 3 then
                           
                           if tempC >= 2 then
                              
                              if tempD /= 3 then
                                 
                                 if tempE <  6 then
                                    
                                    if tempA >  0 then
                                       
                                       if tempB =  2 then
                                          
                                          Root_Object.ASL_Mapping.NstIF.ASL_Mapping_NstIF_type(an_instanceNESTED_IF.all).ResultA := 10;
                                          
                                       else
                                          
                                          ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                                             Failed_Domain_Object => "objNESTEDIF                     ",
                                             Failed_Test_Number   => Test,
                                             Failed_Test_Value    => -10);
                                          
                                          
                                          Has_Failed := True;
                                       end if;
                                       
                                    else
                                       
                                       ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                                          Failed_Domain_Object => "objNESTEDIF                     ",
                                          Failed_Test_Number   => Test,
                                          Failed_Test_Value    => -20);
                                       
                                       Has_Failed := True;
                                    end if;
                                    
                                 else
                                    
                                    ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                                       Failed_Domain_Object => "objNESTEDIF                     ",
                                       Failed_Test_Number   => Test,
                                       Failed_Test_Value    => -30);
                                    
                                    Has_Failed := True;
                                 end if;
                                 
                              else
                                 
                                 ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                                    Failed_Domain_Object => "objNESTEDIF                     ",
                                    Failed_Test_Number   => Test,
                                    Failed_Test_Value    => -40);
                                 
                                 Has_Failed := True;
                              end if;
                              
                           else
                              
                              ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                                 Failed_Domain_Object => "objNESTEDIF                     ",
                                 Failed_Test_Number   => Test,
                                 Failed_Test_Value    => -50);
                              
                              Has_Failed := True;
                           end if;
                           
                        else
                           
                           ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                              Failed_Domain_Object => "objNESTEDIF                     ",
                              Failed_Test_Number   => Test,
                              Failed_Test_Value    => -60);
                           
                           Has_Failed := True;
                        end if;
                        
                     else
                        
                        ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                           Failed_Domain_Object => "objNESTEDIF                     ",
                           Failed_Test_Number   => Test,
                           Failed_Test_Value    => -70);
                        
                        Has_Failed := True;
                     end if;
                     
                  else
                     
                     ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                        Failed_Domain_Object => "objNESTEDIF                     ",
                        Failed_Test_Number   => Test,
                        Failed_Test_Value    => -80);
                     
                     Has_Failed := True;
                  end if;
                  
               else
                  
                  ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                     Failed_Domain_Object => "objNESTEDIF                     ",
                     Failed_Test_Number   => Test,
                     Failed_Test_Value    => -90);
                  
                  Has_Failed := True;
               end if;
               
            else
               
               ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
                  Failed_Domain_Object => "objNESTEDIF                     ",
                  Failed_Test_Number   => Test,
                  Failed_Test_Value    => -100);
               
               Has_Failed := True;
            end if;
            
         else
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objNESTEDIF                     ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -110);
            
            Has_Failed := True;
         end if;
         
      else
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objNESTEDIF                     ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -120);
         
         Has_Failed := True;
         
      end if;
      
      
      --  Test complete
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objNESTEDIF                     ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - Nested IF statements, WITH LOGICAL CONDITIONS
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0422               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objNESTEDIF                     ",
         Purpose         => "Contain logical and             ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0911               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0913               ");
      
      
      Has_Failed := False;
      
      
      --  Initialise temporary variables
      
      tempA := 1;
      tempB := 2;
      tempC := 3;
      tempD := 4;
      tempE := 5;
      
      
      --  Perform the test
      
      if ((tempA =  1) and then
          (tempB /= 1) and then
          (tempC <  4) and then
          (tempD >  3) and then
          (tempE <= 5) and then
          (tempA >= 1) and then
          (tempB <= 3) and then
          (tempC >= 1)) then
         
         if ((tempA =  1) and then
             (tempB /= 1) and then
             (tempC <  4) and then
             (tempD >  3) and then
             (tempE <= 5) and then
             (tempA >= 1) and then
             (tempB <= 3) and then
             (tempC >= 1)) then
            
            Root_Object.ASL_Mapping.NstIF.ASL_Mapping_NstIF_type(an_instanceNESTED_IF.all).ResultA := 20;
            
         else
            
            Has_Failed := True;
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objNESTEDIF                     ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
         end if;
         
      else
         Has_Failed := True;
         
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objNESTEDIF                     ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -20);
         
      end if;
      
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objNESTEDIF                     ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - Nested IFs that contain logic, using |
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0422               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objNESTEDIF                     ",
         Purpose         => "Contain logical or              ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0911               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0913               ");
      
      
      Has_Failed := False;
      
      
      --  Perform the test, 12 Nested IF statements
      
      if ((tempA =  2) or else
          (tempB /= 2) or else
          (tempC <  12) or else
          (tempD >  3) or else
          (tempE <= 5) or else
          (tempA >= 7) or else
          (tempB <= 1) or else
          (tempC >= 2)) then
         
         if ((tempA =  1) or else
             (tempB /= 1) or else
             (tempC <  4) or else
             (tempD >  4) or else
             (tempE <= 5) or else
             (tempA >= 1) or else
             (tempB <= 1) or else
             (tempC >= 2)) then
            
            Root_Object.ASL_Mapping.NstIF.ASL_Mapping_NstIF_type(an_instanceNESTED_IF.all).ResultA := 30;
            
         else
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objNESTEDIF                     ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
            
            Has_Failed := True;
         end if;
         
      else
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objNESTEDIF                     ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -20);
         
         Has_Failed := True;
         
      end if;
      
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objNESTEDIF                     ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - Nested IFs that contain logic, mixed
      -- -------------------------------------------------------------------------
      
      ASL_Mapping_RPT1_Start_Test_Bridge.ASL_Mapping_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "1103-0000-01-0422               ",
         Invoking_Domain => "ASL Mapping                     ",
         Invoking_Object => "objNESTEDIF                     ",
         Purpose         => "Contain logical mixed           ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0911               ");
      
      ASL_Mapping_RPT8_Specify_Requid_Bridge.ASL_Mapping_RPT8_Specify_Requid (
         Requid_Test_Number => Test,
         The_Requid_Itself  => "1103-0000-01-0913               ");
      
      
      Has_Failed := False;
      
      
      --  Perform the test, 12 Nested IF statements
      
      if (((tempA =  1) and then
           (tempB /= 1)) or else
           (tempC <  4) or else
           (tempD >  3) or else
           (tempE <= 5) or else
           (tempA >= 1) or else
           (tempB <= 1) or else
           (tempC >= 2)) then
         
         if ((tempA =  1) or else
             (((tempB /= 1) and then
             (tempC <  4)) or else
             (tempD >  3)) or else
             (tempE <= 5) or else
             ((tempA >= 1) and then
             (tempB <= 1) and then
             (tempC >= 2))) then
            
            Root_Object.ASL_Mapping.NstIF.ASL_Mapping_NstIF_type(an_instanceNESTED_IF.all).ResultA := 40;
            
         else
            
            ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
               Failed_Domain_Object => "objNESTEDIF                     ",
               Failed_Test_Number   => Test,
               Failed_Test_Value    => -10);
            
            
            Has_Failed := True;
         end if;
         
      else
         
         ASL_Mapping_RPT3_Test_Failed_Bridge.ASL_Mapping_RPT3_Test_Failed (
            Failed_Domain_Object => "objNESTEDIF                     ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => -20);
         
         Has_Failed := True;
         
      end if;
      
      
      if (not Has_Failed) then
         
         ASL_Mapping_RPT2_Test_Passed_Bridge.ASL_Mapping_RPT2_Test_Passed (
            Test_Object_Domain => "objNESTEDIF                     ",
            Test_Number        => Test,
            Test_Value         => 0);
         
      end if;
      
      
      Test := Test + 1;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      
      Final_Test := Test;
      
      
   end ASL_Mapping_NstIF1_do_nested_if;
   
end ASL_Mapping_NstIF1_do_nested_if_Service;

--
-- End of file ASL_Mapping_NstIF1_do_nested_if_Service.adb
--
