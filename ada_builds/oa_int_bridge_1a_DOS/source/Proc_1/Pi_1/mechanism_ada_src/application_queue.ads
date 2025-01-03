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
-- File Name:                Application_Queue.ads
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


with Root_Object;
with Protected_Queue;

-- Interface to remainder of architecture is as was but implementation now deferred to a protected type to make it thread safe
package Application_Queue is
   Application_Queue: Protected_Queue.FIFO_Type; -- Used by the architecture but this is now just a dumy queue as real one is hidden

   procedure Push(Item:        in     Root_Object.Root_Event_Access_Type;
                  Target_FIFO: in out Protected_Queue.FIFO_Type;
                  Top:         in     Boolean := False);

   procedure Pop(Item:           out Root_Object.Root_Event_Access_Type;
                 Target_FIFO: in out Protected_Queue.FIFO_Type);

   function Queue_Length(Queue: Protected_Queue.FIFO_Type) return natural;

   function Max_Count_Of(Queue: Protected_Queue.FIFO_Type) return natural;

end Application_Queue;
