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
--* File Name:               Events_objTERMINAL_2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state shall delete it's own instance, but only 
--*                           after reporting itself as available for deletion.
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
with Root_Object.Events.objTERMINAL;

-- List of bridges used
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT2_Test_Passed_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objTERMINAL)
   
   procedure Events_objTERMINAL_2 (Test          : in     Application_Types.Base_Integer_Type;
                                   Test_Number   : in     Application_Types.Base_Integer_Type;
                                   This_Instance : in out Root_Object.Object_Access) is
   
      
      tob : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      notob : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      -- -----------------------------------------------------------
      --  Terminal state
      -- -----------------------------------------------------------
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Test_Number,
         Requid          => "1241-0000-01-0206               ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "Terminal                        ",
         Purpose         => "Terminal state test             ");
      
      Root_Object.Events.objTERMINAL.Events_objTERMINAL_type(This_Instance.all).ResultA := 10;
      
      
      Root_Object.Object_List.Clear (
         From => tob);
      
      Root_Object.Events.objTERMINAL.Find (
         Add_To => tob);
      
      
      notob := Root_Object.Object_List.Count_Of(tob);
      
      
      --  Due to the vaguaries of the queueing system and the fact that
      --  the scenario runs to completion before events are de-queued, 
      --  for test 1 there will be two instances of Terminal_Object 
      --  loitering in the system waiting to be jumped on. 
      --  This state will delete one of them, leaving one to fend for itself.
      --  Then in test two, the final instance will exit stage left.
      
      if Test  =  1 and then
         notob =  2 then
         
         --  Report a success, there really isn't anything else it could be.
         
         Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
            Test_Object_Domain => "Terminal                        ",
            Test_Number        => Test_Number,
            Test_Value         => Root_Object.Events.objTERMINAL.Events_objTERMINAL_type(This_Instance.all).ResultA);
         
      else
         
         if Test  =  2 and then
            notob =  1 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Terminal                        ",
               Test_Number        => Test_Number,
               Test_Value         => Root_Object.Events.objTERMINAL.Events_objTERMINAL_type(This_Instance.all).ResultA);
            
         else
            
            --  There is more than one of this object. There shouldn't be.
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Terminal                        ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => notob);
            
         end if;
         
      end if;
      
      
      --  Delete the instance.
      
      Root_Object.Events.objTERMINAL.Delete (
         Old_Instance => This_Instance);
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (tob);
      Root_Object.Events.objTERMINAL.Process_Queue;
   end Events_objTERMINAL_2;
   
--
-- End of file Events_objTERMINAL_2.ada
--
