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
--* File Name:               comms-constants-buffer.ads
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Spec for VxWorks and Win32 targets
--* Comments:                Header written by header.macro                           *
--*                           
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
--* -----------------                                                                 *
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
--*  comms.constants.buffer.ads
--*
--*************************************************************************************

package Comms.Constants.Buffer is
   -------------------------------------------------------------------------------------------------------------------
   -- Serial Comms
   -------------------------------------------------------------------------------------------------------------------
   -- << -- PPCM2 Only
   SERIAL_BUFFER_LENGTH: constant := 60;
   --       PPCM2 Only -- >>
   -- << -- SBC314 Only
   -- The maximum number of bytes held by the UART:
   ARRAY_SIZE: constant := 60;
   --       SBC314 Only -- >>

   -------------------------------------------------------------------------------------------------------------------
   -- Incoming Comms Buffer
   -------------------------------------------------------------------------------------------------------------------
   MESSAGE_LENGTH: constant := 3500;
   MESSAGE_OVERHEAD_FACTOR: constant := 2;
   MESSAGE_MAX_LENGTH: constant := MESSAGE_LENGTH * MESSAGE_OVERHEAD_FACTOR;

   -- The allowable number of longest complete messages that could be read:
   NUMBER_OF_COMPLETE_MESSAGES: constant := 2;
   NUMBER_BUFF_SEGMENTS: constant := 2;
   -- The SEGMENT_SIZE in bytes must be set to a value >= the Message Size in bytes read from the stream:
   SEGMENT_SIZE: constant := MESSAGE_MAX_LENGTH * 4 * NUMBER_OF_COMPLETE_MESSAGES;
   CIR_BUFF_SIZE: constant := SEGMENT_SIZE * NUMBER_BUFF_SEGMENTS;

   -------------------------------------------------------------------------------------------------------------------
   -- Outgoing Comms Buffer
   -------------------------------------------------------------------------------------------------------------------
   -- Send queue buffer should empty on 1 entry - length is to allow factor of 5 overhead.
   MAX_QUEUE_LENGTH: constant Integer := 5;
end Comms.Constants.Buffer;
