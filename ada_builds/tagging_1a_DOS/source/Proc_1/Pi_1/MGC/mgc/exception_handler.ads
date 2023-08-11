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
-- File Name:                exception_handler.ads
-- Version:                  As detailed by ClearCase
-- Version Date:             As detailed by ClearCase
-- Creation Date:            As detailed by ClearCase
-- Description:              N/A
-- Comments:                 N/A
-- ********************************************************************************
with Ada.Exceptions;
with Ada.Strings.Unbounded;

package Exception_Handler is
   procedure output_exception_table_to_recorder(eventtext_rec: in Ada.Exceptions.Exception_Occurrence;
                                                bonus: in Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("No additional information"));
end Exception_Handler;
