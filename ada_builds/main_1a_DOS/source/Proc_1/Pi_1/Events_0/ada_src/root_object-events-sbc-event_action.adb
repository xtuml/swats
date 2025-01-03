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
--* File Name:               r.Events.sbC.event_action.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Domain Object Event actions 
--* Comments:                Header written by header.macro                           *
--*                          This procedure defines domain control event actions.
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*  This program controls events actions for ACTIVE objects 
--*
--*  ERROR HANDLING                                                                   *
--*  --------------                                                                   *
--*  None                                                                             *
--*                                                                                   *
--*  SAFETY         : None                                                            *
--*  ------                                                                           *
--*                                                                                   *
--*  BUILD INFORMATION                                                                *
--* -----------------                                                                 *
--*                                                                                   *
--*  Project Key Letter : TSV2
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--*                                                                                   *
--*  
--*  
--*  
--*  
--*  
--*************************************************************************************
--*  COMPONENTS CONTAINED WITHIN THIS FILE                                            *
--*  separate of Root_Object.EventssbC
--*     Event_Action
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--    jmm     27/06/00        PILOT_0000_0421   Change to execute polymorphic events in the correct sequence 
--                                              when generated from a chain of supertype events-to-self
--
--    jmm     28/06/00        PILOT_0000_0423   Include diagnostic references.
--
--    jmm     03/10/00        PILOT_0000_0600   Changes for issue 3.0.0 in accordance with ATN_037_03_01.
--
--    db      11/07/01        PILOT_0000_0236   Non referential attributes only
--                            PILOT_0000_0230   Coding Standards transgression
--
--    db      13/08/01        PILOT_0000_0232   Debug switch added.
--
--    db      11/02/02        SRLE100002577     Remove Event_Scope_Lower and _Higher operations and
--                                              replace them with Event_Count_Scope.
--
--    db      14/04/02        SRLE100003005     Update generation conditions.
--
--    db      31/10/02        SRLE100003959     Remove Event_Count_Scope.
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
-- **************************************************************************************
------------------------------------------------------------------------


separate (Root_Object.Events.sbC)
procedure Event_Action (
   Dispatch_Event : in     Events_sbC_Instance_Event_Type;
   This_Event     : in out Root_Object.Root_Event_Access_Type) is

   This_Action : Event_Class;
   This        : Root_Object.Object_Access;
begin

   This_Action := Events_sbC_Instance_Event_Type(This_Event.all).This_Event_Class;
   This := Events_sbC_Instance_Event_Type(This_Event.all).Target_Instance;


   -- Ensure that the source instance still exists. 
   if This /= null then
      This_Event_Dispatch_Matrix (This_Action, Events_sbC_Type(This.all).Current_State) (This, This_Event);
      --
   end if;
  
   Root_Object.Free (This_Event);

end Event_Action;
