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
-- File Name:                exception_handler.adb
-- Version:                  As detailed by ClearCase
-- Version Date:             As detailed by ClearCase
-- Creation Date:            As detailed by ClearCase
-- Description:              N/A
-- Comments:                 N/A
-- ********************************************************************************
with Test_Suite_Text_IO;


package body Exception_Handler is

   procedure output_exception_table_to_recorder(eventtext_rec: in Ada.Exceptions.Exception_Occurrence;
                                                bonus: in Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("No additional information")) is
       output_status_local:Boolean;
   begin
       -- just write exception to screen.
       output_status_local := Test_Suite_Text_IO.Output_Status;
       Test_Suite_Text_IO.Set_Output(TRUE);
       Test_Suite_Text_IO.Dump_String(Ada.Exceptions.Exception_Information(eventtext_rec));
       Test_Suite_Text_IO.Set_Output(output_status_local);
   end output_exception_table_to_recorder;
end Exception_Handler;
