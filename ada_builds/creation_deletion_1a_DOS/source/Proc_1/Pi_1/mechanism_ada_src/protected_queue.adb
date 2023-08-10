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
-- File Name:                Protected_Queue.adb
-- Version:                  As detailed by ClearCase
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
use type Root_Object.Root_Event_Access_Type;

package body Protected_Queue is
   protected body Protected_Application_Queue is
      --
      ----
      --
      procedure Push(Item: in Root_Object.Root_Event_Access_Type;
                     Top:  in Boolean := False) is
      begin
         if (FIFO_Queue.Insert = Null) then
            FIFO_Queue.Extract := Item;
         else
            FIFO_Queue.Insert.Previous_Event := Item;
         end if;

         FIFO_Queue.Insert := Item;
         FIFO_Queue.Size := FIFO_Queue.Size + 1;

         if (FIFO_Queue.Size > FIFO_Queue.Max_Count) then
            FIFO_Queue.Max_Count := FIFO_Queue.Size;
         end if;
      end Push;

      --
      ----
      --
      entry Pop(Item: out Root_Object.Root_Event_Access_Type) when FIFO_Queue.Size > 0 is
      begin
         if (FIFO_Queue.Extract = Null) then raise Queue_FIFO_Underflow_Error;
         else
            Item := FIFO_Queue.Extract;
            FIFO_Queue.Extract := FIFO_Queue.Extract.Previous_Event;
            if (FIFO_Queue.Extract /= Null) then
               FIFO_Queue.Extract.Next_Event := Null;
            else
               FIFO_Queue.Extract := Null;
               FIFO_Queue.Insert  := Null;
            end if;
            FIFO_Queue.Size := FIFO_Queue.Size - 1;
         end if;
      end Pop;

      --
      ----
      --
      function Queue_Length return natural is
      begin
        return FIFO_Queue.Size;
      end Queue_Length;

      --
      ----
      --
      function Max_Count_Of return natural is
      begin
         return FIFO_Queue.Max_Count;
      end Max_Count_Of;
   end Protected_Application_Queue;
end Protected_Queue;
