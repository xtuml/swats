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
--* File Name:               Events_objEDATA_2.ada
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

-- List of bridges used
with Events_RPT2_Test_Passed_Bridge;
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objEDATA)
   
   procedure Events_objEDATA_2 (A             : in     Application_Types.Base_Integer_Type;
                                B             : in     Application_Types.Base_Integer_Type;
                                C             : in     Application_Types.Base_Integer_Type;
                                E             : in     Application_Types.Base_Integer_Type;
                                F             : in     Application_Types.Base_Integer_Type;
                                Test          : in     Application_Types.Base_Integer_Type;
                                Test_Number   : in     Application_Types.Base_Integer_Type;
                                This_Instance : in out Root_Object.Object_Access) is
   
      
      temp : Application_Types.Base_Integer_Type := 1;
      
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- ------------------------------------------------------------------------
      --  Verify the ability of a compiler to handle event data
      -- ------------------------------------------------------------------------
      -- ------------------------------------------------------------------------
      --  Test 1 - Reception of multiple events
      --           N.B.
      --           This test has had to be changed due to a quirk with in the KC 
      --           tool KC cannot cope with a parameter having the same name as 
      --           that of a key letter of a domain or project. Becuase of this 
      --           when a new project was created with a key letter of D the 
      --           parameter D would no longer be accepted. However on removeing 
      --           the project, remenence of the project still remain and so D 
      --           would still not be accepted.
      --           For this reason D has been renamed to E and E is now F. 
      --           Unfortunatly this means that until the project with the key 
      --           letter of D is fully removed frozen versions of the WACA will 
      --           no longer work.
      -- ------------------------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Event Data                      ",
         Purpose         => "State 1 reception               ");
      
      has_failed := False;
      
      if Test =  1 then
         
         if (A /= 1) or else
            (B /= 2) or else
            (C /= 3) or else
            (E /= 4) or else
            (F /= 5) then
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Events.objEDATA.Events_objEDATA1'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Events.objEDATA.objEDATA1,
                  Target_Instance  => This_Instance);
               
               Root_Object.Events.objEDATA.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Event verification state 1      ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -1);
            
            has_failed := True;
            
         else
            
            temp := Root_Object.Events.objEDATA.Events_objEDATA_type(This_Instance.all).ResultA + 10;
            
            
            Root_Object.Events.objEDATA.Events_objEDATA_type(This_Instance.all).ResultA := temp;
            
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Event verification state 1      ",
               Test_Number        => Test_Number,
               Test_Value         => temp);
            
         end if;
         
      end if;
      
      
      if (not has_failed) then
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.objEDATA.Events_objEDATA2'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.objEDATA.objEDATA2,
               Target_Instance  => This_Instance);
            
            Root_Object.Events.objEDATA.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      Root_Object.Events.objEDATA.Process_Queue;
   end Events_objEDATA_2;
   
--
-- End of file Events_objEDATA_2.ada
--
