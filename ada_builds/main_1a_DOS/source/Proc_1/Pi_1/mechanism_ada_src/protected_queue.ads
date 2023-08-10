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
-- File Name:                Protected_Queue.ads
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
--    ANF       15-04-11              -            Created to support protected objects for Application_Queue
-- **************************************************************************************

with Root_Object;

package Protected_Queue is
   -- If FIFO_Queue.Extract is a Null then Queue_FIFO_Underflow_Error is raised.
   -- Queue_FIFO_Underflow_Error can be avoided by checking Queue_Length before 'pop'ping.
   -- Overflow is raised if FIFO_Type.Size exceeds natural'max or if a Storage Error
   -- results when trying to allocate space for a new instance.
   Queue_FIFO_Underflow_Error: exception;

   type FIFO_Type is record
      Size:      natural := 0;
      Max_Count: natural := 0;
      Insert:    Root_Object.Root_Event_Access_Type;
      Extract:   Root_Object.Root_Event_Access_Type;
   end record;

   protected type Protected_Application_Queue is
      procedure Push(Item: in Root_Object.Root_Event_Access_Type;
                     Top:  in Boolean := False);
      entry Pop(Item: out Root_Object.Root_Event_Access_Type);
      function Queue_Length return natural;
      function Max_Count_Of return natural;
   private
      FIFO_Queue: FIFO_Type;
   end Protected_Application_Queue;
end Protected_Queue;
