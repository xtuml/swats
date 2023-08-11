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
-- File Name:                Test_Suite_Text_IO.adb
-- Version:                  2
-- Creation Date:            07-06-01
-- Comments:                 
--
-- **************************************************************************************

with ada.strings.fixed;
with ada.text_io;
with ada.characters; use ada.characters;
with ada.calendar;

package body Test_Suite_Text_IO is

   -- This value specifies how many characters should appear before the requid string in the output
	-- display.
   Screen_Format_Length : Integer := 29;

	-- This defines the length of full string. Two input string lengths + the Screen format length.
	fill_String_Length   : Integer := Application_Types.Base_Text_Type'Length + Application_Types.Base_Text_Type'Length + Screen_Format_Length;

	Current_file_data      : ada.Text_io.File_Type;

	-- Display variable, turns on or off the text display on screen.
	Display_It : Boolean := TRUE;
--	Display_It : Boolean := FALSE;

      -- Write to file variable, turns on or off writes to a file.
      Write_It : boolean := TRUE;
--      Write_It : boolean := FALSE;

	-- Used to uniqley identify a temp file created if the write fails for some reason.
	this_seconds : ada.calendar.day_duration;

	procedure Set_Screen_Format_Length (
		Number_of_Characters : in Integer) is

   begin
	
		Screen_Format_Length := Number_Of_Characters;

	end Set_Screen_Format_Length;

-- --------------------------------------------------------------------------------------

   procedure Display_Requid(
      Some_Text       : in String := "";
      Specific_Requid : in Application_Types.Base_Text_Type) is

   begin  
	
      dump_string(Some_Text & Specific_Requid);

   end Display_Requid;

-- --------------------------------------------------------------------------------------


   procedure Display_Requid(
      Some_Text       : in String := "";
      Root_Requid     : in Application_Types.Base_Text_Type; 
      Specific_Requid : in Application_Types.Base_Text_Type) is

      fill_string : string (1..fill_String_Length)  := (others => ' ');
	   Padding     : String (1..Screen_Format_Length):= (others => ' ');

      Next_Blank_Space_Root, Next_Blank_Space_Specific : integer := 0;

   begin 


	   -- The procedure shall allow the calling routine to display the requirement identifiers.
		-- The parameter Some_Text contains any text that the calling routine wishes to have displayed 
		-- prior to the requid strings. This field is essentially unconstrained string, and then limited to 
		-- 28 characters. Currently this is for screen formatting.

		-- The Root_Requid and Specific_Requid strings are then stripped and concatenated to provide one string.

    	 Next_Blank_Space_Root := ada.strings.fixed.index_non_blank(Root_Requid, ada.strings.Backward);
		 Next_Blank_Space_Specific := (ada.strings.fixed.index_non_blank(Specific_Requid, ada.strings.Backward)+ 1);

		 fill_string (1..Next_Blank_Space_Root) := Root_Requid(1 .. Next_Blank_Space_Root);
		 Fill_String (Next_Blank_Space_Root + 1 .. Next_Blank_Space_Root + Next_Blank_Space_Specific) := 
   		    Specific_Requid(1..Next_Blank_Space_Specific);

 		
      if Some_Text = "" then

	      padding := (others => ' ');

      else   
	 	
          -- Limit Some_Text to 28 chars for sceen formatting.
    		 Padding(1..Screen_Format_Length) := Some_Text(Some_Text'First..Screen_Format_Length);

    	end if;


   	-- Dump put the padding string, which will either contain 28 spaces, or the first 28 characters of the
	   -- input parameter Some_Text. It also sumps out the concatenated string comprising the Root_Requid and
	   -- the Specific_Requid with all leading and trailing spaces excised.

		--      ada.text_io.put_line(Padding & Fill_String);

		dump_string(Padding & Fill_String);

   end Display_Requid;

-- --------------------------------------------------------------------------------------

   -- Open a file to dump all output result to.

   procedure Open_File_For_Writing(
	   Name_Of_File             : in String;
		Unique_Domain_Identifier : in application_types.base_integer_type) is

		This_Year    : ada.Calendar.Year_Number;
		This_Month   : ada.Calendar.Month_Number;
		This_Day     : ada.calendar.Day_Number;

      -- Modifying this extension will be picked up and the filename length adjusted automatically.
		extension : constant string := ".res";

		Extension_length : integer := 0;
		Position_of_blank : integer := 0;
		file_is_open : Boolean := FALSE;
		Old_Display_It : Boolean;

   begin  

		-- find the position of the next blank in the name_of_file and add the extension.
		position_of_Blank := ada.strings.fixed.index_non_blank(Name_Of_File, ada.strings.Backward);
		-- How long is the length of the extension
		extension_length := Extension'length;

		declare
			filename : string (1..position_of_blank + extension_length) := (others => ' ');
		begin
			filename(1..position_of_blank) := name_of_file(Name_Of_File'First..position_of_blank);
			filename(position_of_blank + 1 .. position_of_blank + extension_length) := Extension(1..extension_length);

                  if Write_It then
      
			ada.Text_io.create(
		   	File => Current_file_data , 
	   		Mode => ada.Text_io.Out_File,
		   	Name => Filename, 
			   Form => "");

			-- Flush the IO buffer
			ada.text_io.flush(current_file_Data);

			ada.text_io.Set_line_length(to => 80);
			ada.text_io.set_page_Length(to => 24);

			Ada.calendar.split(
				Date    => ada.calendar.clock, 
				Year    => This_Year,
				Month   => This_Month,
				Day     => This_Day,
				Seconds => This_Seconds);


	 		-- Date stamp the file
			dump_string("********************************************************************************");
			dump_string (" ");
			Old_Display_It := Display_It;
			-- Force display of this test data to screen.
			Display_It := TRUE;
			dump_String("Running Test Suite on domain " & Name_Of_File);
			dump_string("Result recorded in file      " & filename);
			Display_It := Old_Display_It;
			dump_string (" ");
--			dump_string("Test run on : " & ada.calendar.day_number'image(this_day)& ada.calendar.month_number'image(this_month) & ada.calendar.year_number'image(this_year) );
--			dump_string("Time stamp  : " & ada.calendar.day_duration'image(this_seconds));
--			dump_string (" ");
			dump_string("********************************************************************************");
			dump_string (" ");

                  end if;


		end;

	exception 	

		when ada.text_io.Status_Error =>
		   	ada.text_io.put_line("OPEN Status Error : " & Name_Of_File);
				File_Is_Open := ada.text_io.Is_Open(Current_File_Data);

				if file_is_open then
					
					ada.text_io.put_line("File is already open. CLOSING and DELETING file now.");
					ada.text_io.close(File => Current_File_Data);

 				else
				
					ada.text_io.put_line("File is still closed. DELETING file now");

				end if;

				ada.text_io.delete(file => current_file_Data);


		when ada.text_io.Mode_Error | Ada.text_io.name_error | ada.text_io.device_error | ada.text_io.layout_error => 
			   ada.text_io.put_line("OPEN Mode / Device / Layout / Name Error : " & Name_Of_File);

		
		when others =>
			   ada.text_io.put_line("OPEN AOB Error : " & Name_Of_File);
				raise;

	end Open_File_For_Writing;


-- --------------------------------------------------------------------------------------

	procedure Dump_string (Value : in string) is

		file_is_open : Boolean := FALSE;

	begin
		File_Is_Open := ada.text_io.Is_Open(Current_File_Data);

	if file_is_open and Write_It then
		ada.text_io.put_line(file => current_file_data, item => value);
	end if;

	if Display_It then
		ada.text_io.Put_Line(Value);
	end if;


	exception 	

		when ada.text_io.Status_Error =>
		   	ada.text_io.put_line("WRITE Status Error " );
				File_Is_Open := ada.text_io.Is_Open(Current_File_Data);

				if not file_is_open then
 					ada.text_io.put_line("File is still closed. ");
				end if;


		when ada.text_io.Mode_Error => 
			   ada.text_io.put_line("WRITE Mode Error :  RESETTING file mode to OUT FILE");

  				ada.text_io.reset(
					file => current_file_data,
					mode => ada.text_io.Out_file);

				-- Now write the contents which failed to write.
				ada.text_io.put_line(file => current_file_data, item => value);


		when ada.text_io.name_error => 
			   ada.text_io.put_line("WRITE Name Error ");
		when ada.text_io.device_error => 
			   ada.text_io.put_line("WRITE Device Error ");
		when ada.text_io.layout_error => 
			   ada.text_io.put_line("WRITE Layout Error ");
		when others =>
			   ada.text_io.put_line("WRITE AOB Error ");

	end dump_string;

-- --------------------------------------------------------------------------------------


   -- Close a file that has been dumped into.

   procedure Close_File_For_Writing(
	   Name_Of_File             : in String;
		Unique_Domain_Identifier : in application_types.base_integer_type) is

   	data_file : Ada.Text_io.file_type;
      old_display_it : boolean;
   
   begin  

		old_display_it := Display_It;
		display_it := TRUE;
		-- Force display of this text
		dump_string("Testing complete for         " & Name_Of_File);
		dump_string(" ");
		Display_It := old_display_it;

            if write_it then

	   	   ada.Text_io.close(
		      File => Current_File_Data);
     
            end if;
     

	exception 	

		when ada.text_io.Status_Error =>
		   	ada.text_io.put_line("CLOSE Status Error : " & Name_Of_File);
		when ada.text_io.Mode_Error => 
			   ada.text_io.put_line("CLOSE Mode Error : " & Name_Of_File);
		when ada.text_io.name_error => 
			   ada.text_io.put_line("CLOSE Name Error : " & Name_Of_File);
		when ada.text_io.device_error => 
			   ada.text_io.put_line("CLOSE Device Error : " & Name_Of_File);
		when ada.text_io.layout_error => 
			   ada.text_io.put_line("CLOSE Layout Error : " & Name_Of_File);
		when others =>
			   ada.text_io.put_line("CLOSE AOB Error : " & Name_Of_File);

	end Close_File_For_Writing;

-- --------------------------------------------------------------------------------------

	-- Set text on screeen display on or off.
	procedure Set_Output (Output_is_On : in boolean) is
	begin
		Display_It := Output_Is_On;
	end Set_Output;


-- --------------------------------------------------------------------------------------

	-- Set text on file on or off.
	procedure Set_File_Writing(Writing_To_File_Enabled : in Boolean)is
	begin
		Write_It := Writing_To_File_Enabled;
	end Set_File_Writing;




-- --------------------------------------------------------------------------------------

	-- Check screen text display status.
	function Output_Status return boolean is
	begin
		return Display_It;
	end Output_Status;


-- --------------------------------------------------------------------------------------

      function Output_To_File return boolean is
         begin
         return Write_It;
      end Output_To_File;
      

end Test_Suite_Text_IO;
