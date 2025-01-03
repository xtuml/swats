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
-- File Name:                Test_Suite_Text_IO.ads
-- Version:                  2
-- Creation Date:            07-06-01
-- Description:              Test suite requirements specification
-- Comments:                 
--
-- **************************************************************************************

with Application_Types;

package Test_Suite_Text_IO is

   -- DIsplay the requirement identifier fully formatted
   procedure Display_Requid(
      Some_Text       : in String := "";
	  Root_Requid     : in Application_Types.Base_Text_Type;
      Specific_Requid : in Application_Types.Base_Text_Type);

   procedure Display_Requid(
      Some_Text       : in String := "";
      Specific_Requid : in Application_Types.Base_Text_Type);


	-- Specify the string length
	procedure Set_Screen_Format_Length (
		Number_of_Characters : in Integer); 

	-- Open output file for results dump. 
	-- Only one of these can be opened at once. This file must be closed before another can be opened.
   procedure Open_File_For_Writing(
	   Name_Of_File             : in String;
		Unique_Domain_Identifier : in application_types.base_integer_type);

	-- Close previously opened file.
  	procedure Close_File_For_Writing(
	   Name_Of_File             : in String;
		Unique_Domain_Identifier : in application_types.base_integer_type);
	
	-- Dump output results to file.
	procedure Dump_string (Value : in string);

	-- Set text on screeen display on or off.
	procedure Set_Output (Output_is_On : in boolean);
 
      procedure Set_File_Writing(Writing_To_File_Enabled : in Boolean);

	-- Check screen text display status.
	function Output_status return boolean;
 
      function Output_To_File return boolean;
      

end Test_Suite_Text_IO;


-- ------------------------------------------------------------------------


