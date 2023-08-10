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
--*               Copyright 2023 BAE Systems. All Rights Reserved.                    *
--*                                                                                   *
--*************************************************************************************
--*                                                                                   *
--* No contract-specific restrictions are in place for this code-generated file.      *
--*                                                                                   *
--*************************************************************************************
--*                                                                                   *
--* File Name:               Relationships_rel_R27.ada
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
--*  package Relationships_Rel_R27 is new Super_Sub
--*  package Relationships_R27_Specification 
--*  function Subtype_Read_Accessor 
--*  procedure Subtype_Write_Accessor 
--*
--*************************************************************************************
with Root_Object.Relationships.objSSL2;
with Root_Object.Relationships.objSSL3;
with Root_Object.Relationships.objSSL1;
with Root_Object.Relationships.objSSL4;
with Ada.Tags;
use type Ada.Tags.Tag;

package body Relationships_R27_Specification is
  
   function Subtype_Read_Accessor (This_Object : Root_Object.Object_Access) 
      return Root_Object.Object_Access is

      Local_Value: Root_Object.Object_Access := null;

   begin

      if This_Object'tag = Root_Object.Relationships.objSSL2.Relationships_objSSL2_Type'tag then
         Local_Value := Root_Object.Relationships.objSSL2.Get_R27_Super(This_Object); 


      elsif This_Object'tag = Root_Object.Relationships.objSSL3.Relationships_objSSL3_Type'tag then
         Local_Value := Root_Object.Relationships.objSSL3.Get_R27_Super(This_Object); 


      elsif This_Object'tag = Root_Object.Relationships.objSSL1.Relationships_objSSL1_Type'tag then
         Local_Value := Root_Object.Relationships.objSSL1.Get_R27_Super(This_Object); 


      elsif This_Object'tag = Root_Object.Relationships.objSSL4.Relationships_objSSL4_Type'tag then
         Local_Value := Root_Object.Relationships.objSSL4.Get_R27_Super(This_Object); 

        
      end if;

      return Local_Value;

   end Subtype_Read_Accessor;

--
----------------------------------------------------------------------------------------
--

   procedure Subtype_Write_Accessor (
      This_Object :    in  Root_Object.Object_Access;
      R27_Super_Value : in  Root_Object.Object_Access) is
   begin

      if This_Object'tag = Root_Object.Relationships.objSSL2.Relationships_objSSL2_Type'tag then

         Root_Object.Relationships.objSSL2.Put_R27_Super(This_Object, R27_Super_Value);

      elsif This_Object'tag = Root_Object.Relationships.objSSL3.Relationships_objSSL3_Type'tag then

         Root_Object.Relationships.objSSL3.Put_R27_Super(This_Object, R27_Super_Value);

      elsif This_Object'tag = Root_Object.Relationships.objSSL1.Relationships_objSSL1_Type'tag then

         Root_Object.Relationships.objSSL1.Put_R27_Super(This_Object, R27_Super_Value);

      elsif This_Object'tag = Root_Object.Relationships.objSSL4.Relationships_objSSL4_Type'tag then

         Root_Object.Relationships.objSSL4.Put_R27_Super(This_Object, R27_Super_Value);

      end if; 

   end Subtype_Write_Accessor;

end Relationships_R27_Specification;
