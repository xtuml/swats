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
-- File Name:                One_To_Many_Associative.ads
-- Version:                  As detailed by ClearCase
-- Version Date:             As detailed by ClearCase
-- Author:                   J Mann
-- Description:              Generic specification of 1-1:M relationship
-- Comments:
--
--  MODIFICATION RECORD
--  --------------------
--    NAME     DATE             ECR No            MODIFICATION
--
--    DB      24/09/01        PILOT_0000_2473   Rename Link, Unlink & Unassociate parameters
--                                              to match those for 1:1 type relationships,
--                                              at the request of George.
--
--    db      17/04/02        SRLE100003005     Correlated associative navigations supported.
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
package One_To_Many_Associative is

  procedure Register_Multiple_End_Class    (Multiple_Instance: in Ada.Tags.Tag);
  procedure Register_Multiple_End_Role     (Multiple_Role: in string);
  procedure Register_Single_End_Class      (Single_Instance: in Ada.Tags.Tag);
  procedure Register_Single_End_Role       (Single_Role: in string);
  procedure Register_Associative_End_Class (Associative_Instance: in Ada.Tags.Tag);
  procedure Register_Associative_End_Role  (Associative_Role: in string);
--
---------------------------------------------------------------------
   procedure Link (
      A_Instance : in Root_Object.Object_Access;
      B_Instance : in Root_Object.Object_Access;
      Using      : in Root_Object.Object_Access);

   procedure Unassociate (
     A_Instance : in Root_Object.Object_Access;
     B_Instance : in Root_Object.Object_Access;
     From       : in Root_Object.Object_Access);

   procedure Unlink (
      A_Instance : in Root_Object.Object_Access;
      B_Instance : in Root_Object.Object_Access);

   procedure Navigate (
      From  : in     Root_Object.Object_List.List_Header_Access_Type;
      Class : in     Ada.Tags.Tag;
      To    : in     Root_Object.Object_List.List_Header_Access_Type);
  --
  -- navigate from a set to a set
  -- valid for all traversals
  --
  --
   procedure Navigate (
      From  : in     Root_Object.Object_Access;
      Class : in     Ada.Tags.Tag;
      To    :    out Root_Object.Object_Access);
  --
  -- navigate from a single to a single
  -- valid for:
  --   A -> M
  --   A -> S
  --   M -> S
  --   M -> A
  --
  --
   procedure Navigate (
      From  : in     Root_Object.Object_Access;
      Class : in     Ada.Tags.Tag;
      To    : in     Root_Object.Object_List.List_Header_Access_Type);
  --
  -- navigate from a single to a set
  -- valid for:
  --   S -> M
  --   S -> A
  --
  --

  -- associative correlated navigation
  procedure Navigate (
     From  : in     Root_Object.Object_Access;
     Also  : in     Root_Object.Object_Access;
     Class : in     Ada.Tags.Tag;
     To    :    out Root_Object.Object_Access);


end One_To_Many_Associative;
