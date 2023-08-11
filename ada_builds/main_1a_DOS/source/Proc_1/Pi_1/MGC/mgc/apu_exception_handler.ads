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
-- File Name:                APU_Exception_Handler.ads
-- Version:                  As detailed by ClearCase
-- Version Date:             As detailed by ClearCase
-- Creation Date:            As detailed by ClearCase
-- Description:              N/A
-- Comments:                 N/A
-- ********************************************************************************
with Ada.Exceptions;

package APU_Exception_Handler is
   procedure Report(Event: in Ada.Exceptions.Exception_Occurrence);
end APU_Exception_Handler;
