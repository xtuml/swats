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
--* File Name:               Events_objX_7.ada
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
   
   procedure Events_objX_7 (Test_No       : in     Application_Types.Base_Integer_Type;
                            Param_A       : in     Application_Types.Base_Integer_Type;
                            Param_B       : in     Application_Types.Base_Integer_Type;
                            Param_C       : in     Application_Types.Base_Integer_Type;
                            Param_D       : in     Application_Types.Base_Integer_Type;
                            Param_E       : in     Application_Types.Base_Integer_Type;
                            Param_F       : in     Application_Types.Base_Integer_Type;
                            Param_G       : in     Application_Types.Base_Integer_Type;
                            Param_H       : in     Application_Types.Base_Integer_Type;
                            Param_I       : in     Application_Types.Base_Integer_Type;
                            Param_J       : in     Application_Types.Base_Integer_Type;
                            Param_K       : in     Application_Types.Base_Integer_Type;
                            Param_L       : in     Application_Types.Base_Integer_Type;
                            Param_M       : in     Application_Types.Base_Integer_Type;
                            Param_N       : in     Application_Types.Base_Integer_Type;
                            Param_O       : in     Application_Types.Base_Integer_Type;
                            Param_P       : in     Application_Types.Base_Integer_Type;
                            Param_Q       : in     Application_Types.Base_Integer_Type;
                            Param_R       : in     Application_Types.Base_Integer_Type;
                            Param_S       : in     Application_Types.Base_Integer_Type;
                            Param_T       : in     Application_Types.Base_Integer_Type;
                            Param_U       : in     Application_Types.Base_Integer_Type;
                            Param_V       : in     Application_Types.Base_Integer_Type;
                            Param_W       : in     Application_Types.Base_Integer_Type;
                            Param_X       : in     Application_Types.Base_Integer_Type;
                            Param_Y       : in     Application_Types.Base_Integer_Type;
                            Param_Z       : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      temp : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      -- -------------------------------------------------------------------------
      --  Supertype
      -- -------------------------------------------------------------------------
      temp := Param_A + Param_B + Param_C + Param_D + Param_E + Param_F + Param_G + Param_H + Param_I + Param_J + 
              Param_K + Param_L + Param_M + Param_N + Param_O + Param_P + Param_Q + Param_R + Param_S + Param_T + 
              Param_U + Param_V + Param_W + Param_X + Param_Y + Param_Z;
      
      
      Root_Object.Events.objX.Events_objX_type(This_Instance.all).ResultX := temp;
      
      
      -- -------------------------------------------------------------------------
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.objX.Events_objX2'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.objX.objX2,
            Target_Instance  => This_Instance,
            Test_No          => Test_No,
            The_Test         => "Lots_Of_Params                  ",
            Returning_No     => 0);
         
         Root_Object.Events.objX.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      Root_Object.Events.objX.Process_Queue;
   end Events_objX_7;
   
--
-- End of file Events_objX_7.ada
--
