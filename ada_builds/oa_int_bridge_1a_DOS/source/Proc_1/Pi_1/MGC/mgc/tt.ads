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
---- -----------------------------------------------------------------------------------
---- File Name                TT.ads
---- Version                  5.0.0
---- Description              Provide Weapon Control and Tactics
--
with Application_Types;
use type Application_Types.Base_Integer_Type;

Package TT is
	
   procedure A_Tagged_Local_Terminator(
      Incoming_Parameter_1  : in     Application_Types.Base_Integer_Type;
      Outgoing_Parameter_1 :    out Application_Types.Base_Integer_Type);
   
   procedure A_Tagged_Project_Terminator(
      Incoming_Parameter_3  : in     Application_Types.Base_Integer_Type;
      Outgoing_Parameter_3 :    out Application_Types.Base_Integer_Type);

   procedure A_Tagged_Dummy_Terminator_One(
      Mickey_Mouse_Input_One  : in     Application_Types.Base_Integer_Type;
      Minnie_Mouse_Output_One :    out Application_Types.Base_Integer_Type);
   
   procedure A_Tagged_Dummy_Terminator_Two(
      input_Two  : in     Application_Types.Base_Integer_Type;
      output_Two :    out Application_Types.Base_Integer_Type);

end TT;

