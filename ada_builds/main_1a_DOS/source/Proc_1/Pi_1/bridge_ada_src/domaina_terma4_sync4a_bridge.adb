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
--* File Name:               DomainA_termA4_Sync4A_Bridge.adb
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
--*  Project Key Letter : Main_Build_Set
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.DomainB.objB;

with Application_Queue;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainA_termA4_Sync4A_Bridge is
   
   procedure DomainA_termA4_Sync4A (
      InputA  : in     Application_Types.Base_Integer_Type;
      InputB  : in     Application_Types.Base_Integer_Type;
      Test    : in     Application_Types.Base_Integer_Type;
      OutputA :    out Application_Types.Base_Integer_Type;
      OutputB :    out Application_Types.Base_Integer_Type) is
      
      an_instanceB : Root_Object.Object_Access;
      
   begin
   -- start of termA4_Sync4A
--
-- DomainB start _____________________________________________v--DomainB--v_______________________________________________________start DomainB
      
      if (InputA /= 1) or else
         (InputB /= 2) then
         
         -- Input values are incorrect do not send an event to DomainB
         OutputA := 1;
         OutputB := 2;
      else
         
         -- Input values are correct and send an event to DomainB
         OutputA := 3;
         OutputB := 4;
         
         an_instanceB := Root_Object.DomainB.objB.Conditional_Find_One;
         while (an_instanceB /= null) and then (not (Root_Object.DomainB.objB.DomainB_objB_Type(an_instanceB.all).idB =  2) ) loop
            
            an_instanceB := an_instanceB.Next_Object;
         end loop;
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.DomainB.objB.DomainB_objB1'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.DomainB.objB.objB1,
               Target_Instance  => an_instanceB,
               paramA           => 3,
               paramB           => 4,
               Test             => Test);
            
            Application_Queue.Push (
               Item        => Pushed_Event,
               Target_Fifo => Application_Queue.Application_Queue);
         end;
      end if;
      
-- DomainB end   _____________________________________________^--DomainB--^_______________________________________________________end   DomainB
--

      
   end DomainA_termA4_Sync4A;
   
end DomainA_termA4_Sync4A_Bridge;

--
-- End of file DomainA_termA4_Sync4A_Bridge.adb
--
