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
--* File Name:               TT_BT_3.ada
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
with Root_Object.TT.T;
with Root_Object.TT.TS;

-- List of relationships used
with TT_rel_R2;


with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TT.BT)
   
   procedure TT_BT_3 (This_Instance : in out Root_Object.Object_Access) is
   
      
      the_test_scheduler : Root_Object.Object_Access;
      the_test           : Root_Object.Object_Access;
      
   begin
      the_test_scheduler := Root_Object.TT.TS.Unconditional_Find_One;
      
      TT_Rel_R2.Navigate (
         From  => This_Instance,
         Class => Root_Object.TT.T.TT_T_type'tag,
         To    => the_test);
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.TT.TS.TT_TS2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.TT.TS.TS2,
            Target_Instance  => the_test_scheduler,
            test_instance    => the_test);
         
         Root_Object.TT.BT.Push (
            Event  => Pushed_Event);
      end;
      Root_Object.TT.BT.Process_Queue;
   end TT_BT_3;
   
--
-- End of file TT_BT_3.ada
--
