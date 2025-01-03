--*************************************************************************************
--*                            UNCLASSIFIED                                           *
--*************************************************************************************
--*                       BAE SYSTEMS PROPRIETARY                                     *
--*************************************************************************************
--*                 Export Control Restrictions: NONE                                 *
--*************************************************************************************
--*               Copyright 2022 BAE Systems. All Rights Reserved.                    *
--*************************************************************************************
--* No contract-specific restrictions are in place for this file.                     *
--*************************************************************************************
--
-- File Name:                One_To_One.ads
-- Version:                  As detailed by ClearCase
-- Version Date:             As detailed by ClearCase
-- Author:                   J Mann
-- Description:              Generic specification of 1-1 relationship
-- Comments:
--
--  MODIFICATION RECORD
--  --------------------
--    NAME     DATE             ECR No            MODIFICATION
--
--    db      22/04/02        SRLE100002907     Procedure initialise removed as surplus to requirements
--
--    DNS     20/05/15        CR 10265          For Navigate procedures returning a list,
--                                              the Return is now an "in" parameter
--
-- **************************************************************************************
with Root_Object;
with Ada.Tags;

generic
package One_To_One is

   procedure Register_A_End_Class (A_Class: in Ada.Tags.Tag);
   procedure Register_B_End_Class (B_Class: in Ada.Tags.Tag);

   procedure Register_A_End_Role (A_Role: in string);
   procedure Register_B_End_Role (B_Role: in string);

   procedure Register_A_End_Relationship_Write (To_Write: in Root_Object.Formalised_Relationship_Write_Type);
   procedure Register_A_End_Relationship_Read (To_Read: in Root_Object.Formalised_Relationship_Read_Type);

   procedure Register_B_End_Relationship_Write (To_Write: in Root_Object.Formalised_Relationship_Write_Type);
   procedure Register_B_End_Relationship_Read (To_Read: in Root_Object.Formalised_Relationship_Read_Type);

------------------------------------------------------------------------------------------------------
   procedure Link (
      A_Instance : in Root_Object.Object_Access;
      B_Instance : in Root_Object.Object_Access);

   procedure Link (
      A_Instance : in Root_Object.Object_Access;
      B_Role     : in string;
      B_Instance : in Root_Object.Object_Access);
------------------------------------------------------------------------------------------------------
   procedure Unlink (
      A_Instance : in Root_Object.Object_Access;
      B_Instance : in Root_Object.Object_Access);

   procedure Unlink (
      A_Instance : in Root_Object.Object_Access;
      B_Role     : in string;
      B_Instance : in Root_Object.Object_Access);
------------------------------------------------------------------------------------------------------
   procedure Navigate (
      From  : in     Root_Object.Object_Access;
      Class : in     Ada.Tags.Tag;
      To    :    out Root_Object.Object_Access);

   procedure Navigate (
      From : in     Root_Object.Object_Access;
      Role : in     string;
      To   :    out Root_Object.Object_Access);

   procedure Navigate (
      From  : in     Root_Object.Object_List.List_Header_Access_Type;
      Class : in     Ada.Tags.Tag;
      To    : in     Root_Object.Object_List.List_Header_Access_Type);

   procedure Navigate (
      From : in     Root_Object.Object_List.List_Header_Access_Type;
      Role : in     string;
      To   : in     Root_Object.Object_List.List_Header_Access_Type);

end One_To_One;
