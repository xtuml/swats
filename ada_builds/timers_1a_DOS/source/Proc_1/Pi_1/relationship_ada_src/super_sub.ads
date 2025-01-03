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
-- File Name:                Super_Sub.ads
-- Version:                  As detailed by ClearCase
-- Version Date:             As detailed by ClearCase
-- Author:                   J Mann
-- Description:              Generic specification of Supertype-Subtype relationship
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
package Super_Sub is

   procedure Register_Super_End_Class (Super_Class: in Ada.Tags.Tag);

   procedure Register_Sub_End_Relationship_Write (To_Write : in Root_Object.Formalised_Relationship_Write_Type);
   procedure Register_Sub_End_Relationship_Read  (To_Read  : in Root_Object.Formalised_Relationship_Read_Type);

   procedure Register_Super_End_Relationship_Write (To_Write : in Root_Object.Formalised_Relationship_Write_Type);
   procedure Register_Super_End_Relationship_Read  (To_Read  : in Root_Object.Formalised_Relationship_Read_Type);

   procedure Link (
      A_Instance : in Root_Object.Object_Access;
      B_Instance : in Root_Object.Object_Access);

   procedure Unlink (
      A_Instance : in Root_Object.Object_Access;
      B_Instance : in Root_Object.Object_Access);

   procedure Navigate (
      From : in     Root_Object.Object_Access;
      To   :    out Root_Object.Object_Access);

   procedure Navigate (
      From  : in  Root_Object.Object_Access;
      Class : in  Ada.Tags.Tag;
      To    : out Root_Object.Object_Access);

   procedure Navigate (
      From : in  Root_Object.Object_List.List_Header_Access_Type;
      To   : in  Root_Object.Object_List.List_Header_Access_Type);

   procedure Navigate (
      From  : in  Root_Object.Object_List.List_Header_Access_Type;
      Class : in  Ada.Tags.Tag;
      To    : in  Root_Object.Object_List.List_Header_Access_Type);
------------------------------------------------------------------------------------------------------

end Super_Sub;
