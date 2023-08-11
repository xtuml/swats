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
--* File Name:               TT_TS_4.ada
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

-- List of relationships used
with TT_rel_R4;
with TT_rel_R4;
with TT_rel_R1;

-- List of services used
with TT_TT2_delete_report_data_Service;

with Application_Types;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TT.TS)
   
   procedure TT_TS_4 (This_Instance : in out Root_Object.Object_Access) is
   
      
      the_current_test : Root_Object.Object_Access;
      the_next_test    : Root_Object.Object_Access;
      
   begin
      
      TT_Rel_R1.Navigate (
         From  => This_Instance,
         Class => Root_Object.TT.T.TT_T_type'tag,
         To    => the_current_test);
      
      
      TT_Rel_R1.Unlink (
         A_Instance => This_Instance,
         B_Instance => the_current_test);
      
      
      loop
         
         TT_Rel_R4.Navigate (
            From  => the_current_test,
            Role  => "is_followed_by",
            To    => the_next_test);
         
         
         if (the_next_test /= Null) then
            
            TT_Rel_R4.Unlink (
               A_Instance => the_current_test,
               B_Role     => "is_followed_by",
               B_Instance => the_next_test);
            
         end if;
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.TT.T.TT_T2'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.TT.T.T2,
               Target_Instance  => the_current_test);
            
            Root_Object.TT.TS.Push (
               Event  => Pushed_Event);
         end;
         the_current_test := the_next_test;
         
         exit when the_current_test =  Null;
      end loop;
      
      
      TT_TT2_delete_report_data_Service.TT_TT2_delete_report_data;
      
      Root_Object.TT.TS.Process_Queue;
   end TT_TS_4;
   
--
-- End of file TT_TS_4.ada
--
