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
-- File Name:                APU_Exception_Handler.adb
-- Version:                  As detailed by ClearCase
-- Version Date:             As detailed by ClearCase
-- Creation Date:            As detailed by ClearCase
-- Description:              N/A
-- Comments:                 N/A
-- ********************************************************************************
with Test_Suite_Text_IO;

package body APU_Exception_Handler is
   procedure Report(Event: in Ada.Exceptions.Exception_Occurrence) is
       output_status_local:Boolean;
   begin
       -- just write exception to screen.
       output_status_local := Test_Suite_Text_IO.Output_Status;
       Test_Suite_Text_IO.Set_Output(TRUE);
       Test_Suite_Text_IO.Dump_String(Ada.Exceptions.Exception_Information(Event));
       Test_Suite_Text_IO.Set_Output(output_status_local);
   end Report;
end APU_Exception_Handler;
