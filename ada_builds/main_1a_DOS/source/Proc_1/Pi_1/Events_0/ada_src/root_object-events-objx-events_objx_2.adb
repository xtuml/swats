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
--* File Name:               Events_objX_2.ada
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

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objX)
   
   procedure Events_objX_2 (Test_No       : in     Application_Types.Base_Integer_Type;
                            ASL_Type      : in     Application_Types.Base_Text_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      Returning_No : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      if ASL_Type =  "State Action                    " then
         Returning_No := 2;
      else
         
         if ASL_Type =  "Sync Service                    " then
            Returning_No := 3;
         else
            
            if ASL_Type =  "Bridge                          " then
               Returning_No := 4;
            else
               
               if ASL_Type =  "Scenario                        " then
                  Returning_No := 5;
               else
                  Returning_No := -10;
                  
               end if;
               
            end if;
            
         end if;
         
      end if;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX2,
            Target_Instance  => This_Instance,
            Test_No          => Test_No,
            The_Test         => "Check_State_Generation          ",
            Returning_No     => Returning_No);
         
         Root_Object.Events.objX.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.Events.objX.Process_Queue;
   end Events_objX_2;
   
--
-- End of file Events_objX_2.ada
--
