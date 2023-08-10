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
--* File Name:               DomainA_rel_R4.ada
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
--*  package DomainA_Rel_R4 is new Super_Sub
--*  package DomainA_R4_Specification 
--*  function Subtype_Read_Accessor 
--*  procedure Subtype_Write_Accessor 
--*
--*************************************************************************************
with Root_Object.DomainA.DOMAIN_A_SUBA;
with Root_Object.DomainA.DOMAIN_A_SUBB;
with Ada.Tags;
use type Ada.Tags.Tag;

package body DomainA_R4_Specification is
  
   function Subtype_Read_Accessor (This_Object : Root_Object.Object_Access) 
      return Root_Object.Object_Access is

      Local_Value: Root_Object.Object_Access := null;

   begin

      if This_Object'tag = Root_Object.DomainA.DOMAIN_A_SUBA.DomainA_DOMAIN_A_SUBA_Type'tag then
         Local_Value := Root_Object.DomainA.DOMAIN_A_SUBA.Get_R4_Super(This_Object); 


      elsif This_Object'tag = Root_Object.DomainA.DOMAIN_A_SUBB.DomainA_DOMAIN_A_SUBB_Type'tag then
         Local_Value := Root_Object.DomainA.DOMAIN_A_SUBB.Get_R4_Super(This_Object); 

        
      end if;

      return Local_Value;

   end Subtype_Read_Accessor;

--
----------------------------------------------------------------------------------------
--

   procedure Subtype_Write_Accessor (
      This_Object :    in  Root_Object.Object_Access;
      R4_Super_Value : in  Root_Object.Object_Access) is
   begin

      if This_Object'tag = Root_Object.DomainA.DOMAIN_A_SUBA.DomainA_DOMAIN_A_SUBA_Type'tag then

         Root_Object.DomainA.DOMAIN_A_SUBA.Put_R4_Super(This_Object, R4_Super_Value);

      elsif This_Object'tag = Root_Object.DomainA.DOMAIN_A_SUBB.DomainA_DOMAIN_A_SUBB_Type'tag then

         Root_Object.DomainA.DOMAIN_A_SUBB.Put_R4_Super(This_Object, R4_Super_Value);

      end if; 

   end Subtype_Write_Accessor;

end DomainA_R4_Specification;
