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
--* File Name:               TT_DT_6.ada
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
--* Domain Name              : Test_Timers
--* Domain Key Letter        : TT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.TT.TS;

-- List of bridges used
with TT_RPT3_Test_Failed_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TT.DT)
   
   procedure TT_DT_6 (This_Instance : in out Root_Object.Object_Access) is
   
      
      the_test_scheduler : Root_Object.Object_Access;
      
   begin
      the_test_scheduler := Root_Object.TT.TS.Unconditional_Find_One;
      
      TT_RPT3_Test_Failed_Bridge.TT_RPT3_Test_Failed (
         Failed_Domain_Object => "Delete_Timer                    ",
         Failed_Test_Number   => Root_Object.TT.TS.TT_TS_type(the_test_scheduler.all).current_test_number,
         Failed_Test_Value    => 2);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TT.DT.TT_DT4'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TT.DT.DT4,
            Target_Instance  => This_Instance);
         
         Root_Object.TT.DT.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.TT.DT.Process_Queue;
   end TT_DT_6;
   
--
-- End of file TT_DT_6.ada
--
