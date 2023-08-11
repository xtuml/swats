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
-- File Name:                Recorder.ads
-- Version:                  As detailed by ClearCase
-- Version Date:             As detailed by ClearCase
-- Creation Date:            As detailed by ClearCase
-- Description:              N/A
-- Comments:                 N/A
-- ********************************************************************************
with System;

package Recorder is
   procedure Create;
   procedure Destroy;
   procedure Write_Message(data: in System.Address; msg_len: in Integer);
end Recorder;
