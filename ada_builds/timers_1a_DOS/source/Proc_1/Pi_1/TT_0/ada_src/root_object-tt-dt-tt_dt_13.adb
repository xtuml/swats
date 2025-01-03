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
--* File Name:               TT_DT_13.ada
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
with Root_Object.TT.DT;
with Root_Object.TT.T;

-- List of relationships used
with TT_rel_R2;

with Timer;


with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TT.DT)
   
   procedure TT_DT_13 (This_Instance : in out Root_Object.Object_Access) is
   
      
      the_test : Root_Object.Object_Access;
      
   begin
      
      Timer.Delete_Timer(Timer_ID       => Root_Object.TT.DT.TT_DT_type(This_Instance.all).timer_id_one);
      
      TT_Rel_R2.Navigate (
         From  => This_Instance,
         Class => Root_Object.TT.T.TT_T_type'tag,
         To    => the_test);
      
      
      TT_Rel_R2.Unlink (
         A_Instance => This_Instance,
         B_Instance => the_test);
      
      
      Root_Object.TT.T.Delete (
         Old_Instance => the_test);
      
      Root_Object.TT.DT.Delete (
         Old_Instance => This_Instance);
      Root_Object.TT.DT.Process_Queue;
   end TT_DT_13;
   
--
-- End of file TT_DT_13.ada
--
