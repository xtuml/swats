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
--* File Name:               Events_objX_1.ada
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
--* Domain Name              : Events
--* Domain Key Letter        : Events
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Events.objZ;
with Root_Object.Events.objX;

-- List of bridges used
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT2_Test_Passed_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objX)
   
   procedure Events_objX_1 (Test_No       : in     Application_Types.Base_Integer_Type;
                            The_Test      : in     Application_Types.Base_Text_Type;
                            Returning_No  : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      temp_Inst : Root_Object.Object_Access;
      instZ     : Root_Object.Object_Access;
      
   begin
      
      if The_Test =  "Check_Attributes                " then
         
         if Returning_No =  1 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Check attributes                ",
               Test_Number        => Test_No,
               Test_Value         => Returning_No);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Local attributes not read       ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => Returning_No);
            
         end if;
         
      end if;
      
      
      -- ---------------------------------------------------------------------------
      
      if The_Test =  "Check_New_Attributes            " then
         
         if Root_Object.Events.objX.Events_objX_type(This_Instance.all).Integer_Att =  200 then
            
            if Root_Object.Events.objX.Events_objX_type(This_Instance.all).Real_Att =  199.9 then
               
               if Root_Object.Events.objX.Events_objX_type(This_Instance.all).Text_Att =  "New_Data                        " then
                  
                  if (not Root_Object.Events.objX.Events_objX_type(This_Instance.all).Boolean_Att) then
                     
                     Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                        Test_Object_Domain => "Target attributes updated       ",
                        Test_Number        => Test_No,
                        Test_Value         => 0);
                     
                  else
                     Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                        Failed_Domain_Object => "Target attributes not updated   ",
                        Failed_Test_Number   => Test_No,
                        Failed_Test_Value    => -10);
                     
                  end if;
                  
               else
                  Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                     Failed_Domain_Object => "Target attributes not updated   ",
                     Failed_Test_Number   => Test_No,
                     Failed_Test_Value    => -20);
                  
               end if;
               
            else
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => "Target attributes not updated   ",
                  Failed_Test_Number   => Test_No,
                  Failed_Test_Value    => -30);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Target attributes not updated   ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => -40);
            
         end if;
         
      end if;
      
      
      -- ---------------------------------------------------------------------------
      
      if The_Test =  "Check_Inst_Attributes           " then
         
         if Returning_No =  1 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Check instance attributes       ",
               Test_Number        => Test_No,
               Test_Value         => Returning_No);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Instance attributes not read    ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => Returning_No);
            
         end if;
         
      end if;
      
      
      -- ---------------------------------------------------------------------------
      
      if The_Test =  "Check_New_Inst_Attributes       " then
         temp_Inst := Root_Object.Events.objX.Conditional_Find_One;
         while (temp_Inst /= null) and then (not (Root_Object.Events.objX.Events_objX_Type(temp_Inst.all).The_Test_No =  Test_No) ) loop
            
            temp_Inst := temp_Inst.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objX.Events_objX_type(temp_Inst.all).Integer_Att =  300 then
            
            if Root_Object.Events.objX.Events_objX_type(temp_Inst.all).Real_Att =  299.9 then
               
               if Root_Object.Events.objX.Events_objX_type(temp_Inst.all).Text_Att =  "More_Data                       " then
                  
                  if (not Root_Object.Events.objX.Events_objX_type(temp_Inst.all).Boolean_Att) then
                     
                     Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                        Test_Object_Domain => "Other inst attributes updated   ",
                        Test_Number        => Test_No,
                        Test_Value         => 0);
                     
                  else
                     Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                        Failed_Domain_Object => "Other inst attributes not update",
                        Failed_Test_Number   => Test_No,
                        Failed_Test_Value    => -10);
                     
                  end if;
                  
               else
                  Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                     Failed_Domain_Object => "Other inst attributes not update",
                     Failed_Test_Number   => Test_No,
                     Failed_Test_Value    => -20);
                  
               end if;
               
            else
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => "Other inst attributes not update",
                  Failed_Test_Number   => Test_No,
                  Failed_Test_Value    => -30);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Other inst attributes not update",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => -40);
            
         end if;
         
      end if;
      
      
      -- ---------------------------------------------------------------------------
      
      if The_Test =  "Check_Other_Object              " then
         
         if Returning_No =  1 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Check other attributes          ",
               Test_Number        => Test_No,
               Test_Value         => Returning_No);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Other attributes not read       ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => Returning_No);
            
         end if;
         
      end if;
      
      
      -- ---------------------------------------------------------------------------
      
      if The_Test =  "Check_New_Other_Object          " then
         instZ := Root_Object.Events.objZ.Conditional_Find_One;
         while (instZ /= null) and then (not (Root_Object.Events.objZ.Events_objZ_Type(instZ.all).The_Test_No =  Test_No) ) loop
            
            instZ := instZ.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objZ.Events_objZ_type(instZ.all).Int_Att =  2000 then
            
            if Root_Object.Events.objZ.Events_objZ_type(instZ.all).Real_Att =  2000.0 then
               
               if Root_Object.Events.objZ.Events_objZ_type(instZ.all).Text_Att =  "New_Test_Data                   " then
                  
                  Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                     Test_Object_Domain => "Other object attributes updated ",
                     Test_Number        => Test_No,
                     Test_Value         => 0);
                  
               else
                  Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                     Failed_Domain_Object => "Other object attributes not upda",
                     Failed_Test_Number   => Test_No,
                     Failed_Test_Value    => -10);
                  
               end if;
               
            else
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => "Other object attributes not upda",
                  Failed_Test_Number   => Test_No,
                  Failed_Test_Value    => -20);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Other object attributes not upda",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => -30);
            
         end if;
         
      end if;
      
      
      -- ---------------------------------------------------------------------------
      
      if The_Test =  "Check_State_Generation          " then
         
         if Returning_No =  2 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Generated from State Action     ",
               Test_Number        => Test_No,
               Test_Value         => Returning_No);
            
         else
            
            if Returning_No =  3 then
               
               Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                  Test_Object_Domain => "Generated from Sync Service     ",
                  Test_Number        => Test_No,
                  Test_Value         => Returning_No);
               
            else
               
               if Returning_No =  4 then
                  
                  Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                     Test_Object_Domain => "Generated from Bridge           ",
                     Test_Number        => Test_No,
                     Test_Value         => Returning_No);
                  
               else
                  
                  if Returning_No =  5 then
                     
                     Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                        Test_Object_Domain => "Generated from Scenario         ",
                        Test_Number        => Test_No,
                        Test_Value         => Returning_No);
                     
                  else
                     Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                        Failed_Domain_Object => "Failed to generate              ",
                        Failed_Test_Number   => Test_No,
                        Failed_Test_Value    => Returning_No);
                     
                  end if;
                  
               end if;
               
            end if;
            
         end if;
         
      end if;
      
      
      -- ---------------------------------------------------------------------------
      
      if The_Test =  "Check_ASL_In_Instance           " then
         
         if Returning_No =  200 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "ASL in instance                 ",
               Test_Number        => Test_No,
               Test_Value         => Returning_No);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "ASL in instance                 ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => Returning_No);
            
         end if;
         
      end if;
      
      
      -- ---------------------------------------------------------------------------
      
      if The_Test =  "Unknown_Test                    " then
         
         Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
            Failed_Domain_Object => "Unknown_Test                    ",
            Failed_Test_Number   => Test_No,
            Failed_Test_Value    => Returning_No);
         
      end if;
      
      
      -- ---------------------------------------------------------------------------
      
      if The_Test =  "Lots_Of_Params                  " then
         
         --  in this state check that all the events have been processed and then verify 
         --  the result
         
         if Root_Object.Events.objX.Events_objX_type(This_Instance.all).ResultX =  67108863 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Lots of Params                  ",
               Test_Number        => Test_No,
               Test_Value         => Root_Object.Events.objX.Events_objX_type(This_Instance.all).ResultX);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Lots of Params                  ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => Root_Object.Events.objX.Events_objX_type(This_Instance.all).ResultX);
            
         end if;
         
      end if;
      
      Root_Object.Events.objX.Process_Queue;
   end Events_objX_1;
   
--
-- End of file Events_objX_1.ada
--
