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
--* File Name:               TAGS_CHECK_2.ada
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
--* Domain Name              : Tagging
--* Domain Key Letter        : TAGS
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.TAGS.TD;
with Root_Object.TAGS.AAO;

-- List of bridges used
with TAGS_RPT4_Test_Unsupported_Bridge;
with TAGS_RPT3_Test_Failed_Bridge;
with TAGS_RPT2_Test_Passed_Bridge;
with TAGS_RPT1_Start_Test_Bridge;

-- List of domain types used
with TAGS_Domain_Types;
use type TAGS_Domain_Types.Environment_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TAGS.CHECK)
   
   procedure TAGS_CHECK_2 (Test_Number               : in     Application_Types.Base_Integer_Type;
                           Active_IH                 : in     Root_Object.Object_Access;
                           Testing_For               : in     Application_Types.Base_Text_Type;
                           Expected                  : in     Application_Types.Base_Integer_Type;
                           Your_Presence_Is_Required : in     Boolean;
                           Call_To_Reset             : in     Boolean;
                           This_Instance             : in out Root_Object.Object_Access) is
   
      
      local_IH         : Root_Object.Object_Access;
      My_Active_Object : Root_Object.Object_Access;
      My_Test_Data     : Root_Object.Object_Access;
      
      The_Result : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Tagged                          ",
         Invoking_Object => "Active Object                   ",
         Purpose         => Testing_For);
      
      
      --  Known bug in I-SIM
      local_IH := Active_IH;
      
      
      if local_IH =  Null then
         
         if Your_Presence_Is_Required =  False then
            
            TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
               Test_Object_Domain => Testing_For,
               Test_Number        => Test_Number,
               Test_Value         => 0);
            
         else
            TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
               Failed_Domain_Object => Testing_For,
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -1);
            
         end if;
         
      else
         
         --  Can't rely on the passed IH still being current (deep shallow copy etc)
         --  The problem arises when the scenario generates the Crash_It event to 
         --  the active object. This deletes the active object, but the instance handle
         --  local to the scenario isn't updated, as it is only a shallow copy of the 
         --  instance.
         --  So try to find the instance indicated by the passed IH
         My_Active_Object := Root_Object.TAGS.AAO.Conditional_Find_One;
         while (My_Active_Object /= null) and then (not (Root_Object.TAGS.AAO.TAGS_AAO_Type(My_Active_Object.all).Unique_Identifier =  
            Root_Object.TAGS.AAO.TAGS_AAO_type(local_IH.all).Unique_Identifier) ) loop
            
            My_Active_Object := My_Active_Object.Next_Object;
         end loop;
         
         My_Test_Data := Root_Object.TAGS.TD.Unconditional_Find_One;
         
         --  If it still exists
         
         if My_Active_Object /= Null then
            
            --  and we want it to still exist
            
            if Your_Presence_Is_Required then
               
               The_Result := Root_Object.TAGS.AAO.TAGS_AAO_type(My_Active_Object.all).Result;
               
               
               --  and it has the correct result
               
               if Expected =  The_Result then
                  
                  TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
                     Test_Object_Domain => Testing_For,
                     Test_Number        => Test_Number,
                     Test_Value         => Expected);
                  
               else
                  TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
                     Failed_Domain_Object => Testing_For,
                     Failed_Test_Number   => Test_Number,
                     Failed_Test_Value    => The_Result);
                  
               end if;
               
               
               --  else it still exists, but we weren't expecting it to be
            else
               --  Is this an I-SIM run
               
               if Root_Object.TAGS.TD.TAGS_TD_type(My_Test_Data.all).Environment =  TAGS_Domain_Types.ISIM then
                  
                  TAGS_RPT4_Test_Unsupported_Bridge.TAGS_RPT4_Test_Unsupported (
                     Unsupported_Test_Number => Test_Number);
                  
                  
                  --  Must be a WACA run, therefore this is a problem
               else
                  
                  TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
                     Failed_Domain_Object => Testing_For,
                     Failed_Test_Number   => Test_Number,
                     Failed_Test_Value    => -2);
                  
               end if;
               
            end if;
            
            
            --  else it doesn't exist
         else
            --  but we expected it to
            
            if Your_Presence_Is_Required then
               
               --  Active Object should have been found but wasn't
               
               TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
                  Failed_Domain_Object => Testing_For,
                  Failed_Test_Number   => Test_Number,
                  Failed_Test_Value    => -3);
               
            else
               
               --  Active Object should not have been found, and wasn't!
               
               TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
                  Test_Object_Domain => Testing_For,
                  Test_Number        => Test_Number,
                  Test_Value         => Expected);
               
            end if;
            
         end if;
         
      end if;
      
      
      if Call_To_Reset then
         
         --  Transition back into the idle state to check more Active object operations.
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.TAGS.CHECK.TAGS_CHECK3'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.TAGS.CHECK.CHECK3,
               Target_Instance  => This_Instance);
            
            Root_Object.TAGS.CHECK.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         --  Final test in active test set. bTidy up and report
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.TAGS.CHECK.TAGS_CHECK2'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.TAGS.CHECK.CHECK2,
               Target_Instance  => This_Instance);
            
            Root_Object.TAGS.CHECK.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      Root_Object.TAGS.CHECK.Process_Queue;
   end TAGS_CHECK_2;
   
--
-- End of file TAGS_CHECK_2.ada
--
