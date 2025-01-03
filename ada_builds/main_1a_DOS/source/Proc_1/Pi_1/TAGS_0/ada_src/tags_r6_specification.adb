--
----------------------------------------------------------------------------------------
--
--*************************************************************************************
--*                            UNCLASSIFIED                                           *
--*************************************************************************************
--*                            BAE SYSTEMS PROPRIETARY                                *
--*************************************************************************************
--*          Export Control Restrictions: NONE                                        *
--*************************************************************************************
--*                                                                                   *
--*               Copyright 2024 BAE Systems. All Rights Reserved.                    *
--*                                                                                   *
--*************************************************************************************
--*                                                                                   *
--* No contract-specific restrictions are in place for this code-generated file.      *
--*                                                                                   *
--*************************************************************************************
--*                                                                                   *
--* File Name:               TAGS_rel_R6.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Archetype for Domain Relationships 
--* Comments:                Header written by header.macro                           *
--*                          Template generated package renaming relationship generic 
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*
--*  ERROR HANDLING                                                                   *
--*  --------------                                                                   *
--*  None                                                                             *
--*                                                                                   *
--*  SAFETY         : None                                                            *
--*  ------                                                                           *
--*                                                                                   *
--*  BUILD INFORMATION                                                                *
--* -----------------                                                                 *
--*                                                                                   *
--*  Project Key Letter : TSV2
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--*                                                                                   *
--*  
--*  
--*  
--*  
--*  
--*************************************************************************************
--*  COMPONENTS CONTAINED WITHIN THIS FILE                                            *
--*  package TAGS_Rel_R6 is new Super_Sub
--*  package TAGS_R6_Specification 
--*  function Subtype_Read_Accessor 
--*  procedure Subtype_Write_Accessor 
--*
--*************************************************************************************
with Root_Object.TAGS.ATSUBONE;
with Root_Object.TAGS.ATSUBTWO;
with Root_Object.TAGS.ATSUBTHREE;
with Ada.Tags;
use type Ada.Tags.Tag;

package body TAGS_R6_Specification is
  
   function Subtype_Read_Accessor (This_Object : Root_Object.Object_Access) 
      return Root_Object.Object_Access is

      Local_Value: Root_Object.Object_Access := null;

   begin

      if This_Object'tag = Root_Object.TAGS.ATSUBONE.TAGS_ATSUBONE_Type'tag then
         Local_Value := Root_Object.TAGS.ATSUBONE.Get_R6_Super(This_Object); 


      elsif This_Object'tag = Root_Object.TAGS.ATSUBTWO.TAGS_ATSUBTWO_Type'tag then
         Local_Value := Root_Object.TAGS.ATSUBTWO.Get_R6_Super(This_Object); 


      elsif This_Object'tag = Root_Object.TAGS.ATSUBTHREE.TAGS_ATSUBTHREE_Type'tag then
         Local_Value := Root_Object.TAGS.ATSUBTHREE.Get_R6_Super(This_Object); 

        
      end if;

      return Local_Value;

   end Subtype_Read_Accessor;

--
----------------------------------------------------------------------------------------
--

   procedure Subtype_Write_Accessor (
      This_Object :    in  Root_Object.Object_Access;
      R6_Super_Value : in  Root_Object.Object_Access) is
   begin

      if This_Object'tag = Root_Object.TAGS.ATSUBONE.TAGS_ATSUBONE_Type'tag then

         Root_Object.TAGS.ATSUBONE.Put_R6_Super(This_Object, R6_Super_Value);

      elsif This_Object'tag = Root_Object.TAGS.ATSUBTWO.TAGS_ATSUBTWO_Type'tag then

         Root_Object.TAGS.ATSUBTWO.Put_R6_Super(This_Object, R6_Super_Value);

      elsif This_Object'tag = Root_Object.TAGS.ATSUBTHREE.TAGS_ATSUBTHREE_Type'tag then

         Root_Object.TAGS.ATSUBTHREE.Put_R6_Super(This_Object, R6_Super_Value);

      end if; 

   end Subtype_Write_Accessor;

end TAGS_R6_Specification;
