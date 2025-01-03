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
---- File Name                TT.adb
---- Version                  5.0.0
---- Description              Provide Weapon Control and Tactics

package body TT is


   procedure A_Tagged_Local_Terminator(
      Incoming_Parameter_1  : in     Application_Types.Base_Integer_Type;
      Outgoing_Parameter_1 :    out Application_Types.Base_Integer_Type) is

   begin
	
      Outgoing_Parameter_1 := Incoming_Parameter_1 + 1;

   end A_Tagged_Local_Terminator;

-- --------------------------------------------------------------------------------------

   procedure A_Tagged_Project_Terminator(
      Incoming_Parameter_3  : in     Application_Types.Base_Integer_Type;
      Outgoing_Parameter_3 :    out Application_Types.Base_Integer_Type) is

   begin
	
      Outgoing_Parameter_3 := Incoming_Parameter_3 + 1;

   end A_Tagged_Project_Terminator;
--

   procedure A_Tagged_Dummy_Terminator_One(
      Mickey_Mouse_Input_One  : in     Application_Types.Base_Integer_Type;
      Minnie_Mouse_Output_One :    out Application_Types.Base_Integer_Type) is 

   begin
	
      Minnie_Mouse_Output_One := Mickey_Mouse_Input_One + Application_Types.Base_Integer_Type(1);

   end A_Tagged_Dummy_Terminator_One;

-- --------------------------------------------------------------------------------------

   procedure A_Tagged_Dummy_Terminator_Two(
      input_two  : in     Application_Types.Base_Integer_Type;
      output_two :    out Application_Types.Base_Integer_Type) is 

   begin
	
      output_Two := Input_Two + Application_Types.Base_Integer_Type(1);

   end A_Tagged_Dummy_Terminator_Two;
-------------------------------------------------------------------------

end TT;

