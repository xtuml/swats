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
--* File Name:               Relationships_rel_R31.ada
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
--*  package Relationships_Rel_R31 is new Super_Sub
--*  package Relationships_R31_Specification 
--*  function Subtype_Read_Accessor 
--*  procedure Subtype_Write_Accessor 
--*
--*************************************************************************************
with Root_Object.Relationships.objSSL10;
with Root_Object.Relationships.objSSL11;
with Ada.Tags;
use type Ada.Tags.Tag;

package body Relationships_R31_Specification is
  
   function Subtype_Read_Accessor (This_Object : Root_Object.Object_Access) 
      return Root_Object.Object_Access is

      Local_Value: Root_Object.Object_Access := null;

   begin

      if This_Object'tag = Root_Object.Relationships.objSSL10.Relationships_objSSL10_Type'tag then
         Local_Value := Root_Object.Relationships.objSSL10.Get_R31_Super(This_Object); 


      elsif This_Object'tag = Root_Object.Relationships.objSSL11.Relationships_objSSL11_Type'tag then
         Local_Value := Root_Object.Relationships.objSSL11.Get_R31_Super(This_Object); 

        
      end if;

      return Local_Value;

   end Subtype_Read_Accessor;

--
----------------------------------------------------------------------------------------
--

   procedure Subtype_Write_Accessor (
      This_Object :    in  Root_Object.Object_Access;
      R31_Super_Value : in  Root_Object.Object_Access) is
   begin

      if This_Object'tag = Root_Object.Relationships.objSSL10.Relationships_objSSL10_Type'tag then

         Root_Object.Relationships.objSSL10.Put_R31_Super(This_Object, R31_Super_Value);

      elsif This_Object'tag = Root_Object.Relationships.objSSL11.Relationships_objSSL11_Type'tag then

         Root_Object.Relationships.objSSL11.Put_R31_Super(This_Object, R31_Super_Value);

      end if; 

   end Subtype_Write_Accessor;

end Relationships_R31_Specification;
