--*************************************************************************************
--*                            UNCLASSIFIED                                           *
--*************************************************************************************
--*                       BAE SYSTEMS PROPRIETARY                                     *
--*************************************************************************************
--*                 Export Control Restrictions: NONE                                 *
--*************************************************************************************
--*               Copyright 2022 BAE Systems. All Rights Reserved.                    *
--*************************************************************************************
--* No contract-specific restrictions are in place for this file.                     *
--*************************************************************************************
--
-- File Name:                Application_Queue.adb
-- Version:                  As detailed by ClearCase
-- Version Date:             As detailed by ClearCase
-- Author:                   J Mann
-- Description:              Application-wide event queue type
-- Comments:
--
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--     db       09-07-01         PILOT_0000_0230   Remove use clause as per coding standards.
--    ANF       15-04-11              -            Changed Application_Queue to use protected objects
-- **************************************************************************************

package body Application_Queue is
   Real_Application_Queue: Protected_Queue.Protected_Application_Queue;

   procedure Push(Item:        in     Root_Object.Root_Event_Access_Type;
                  Target_FIFO: in out Protected_Queue.FIFO_Type;
                  Top:         in     Boolean := False) is
   begin
      Real_Application_Queue.Push(Item, Top);

   end Push;

   procedure Pop(Item:           out Root_Object.Root_Event_Access_Type;
                 Target_FIFO: in out Protected_Queue.FIFO_Type) is
   begin
      Real_Application_Queue.Pop(Item);
   end Pop;

   function Queue_Length(Queue: Protected_Queue.FIFO_Type) return natural is
   begin
      return Real_Application_Queue.Queue_Length;
   end Queue_Length;

   function Max_Count_Of(Queue: Protected_Queue.FIFO_Type) return natural is
   begin
      return Real_Application_Queue.Max_Count_Of;
   end Max_Count_Of;
end Application_Queue;

