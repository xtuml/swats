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
--* File Name:               Events_rel_R11.ada
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
--*  package Events_Rel_R11 is new Super_Sub
--*  package Events_R11_Specification 
--*  function Subtype_Read_Accessor 
--*  procedure Subtype_Write_Accessor 
--*
--*************************************************************************************
with Root_Object.Events.SL_TWO_C;
with Root_Object.Events.SL_TWO_D;
with Ada.Tags;
use type Ada.Tags.Tag;

package body Events_R11_Specification is
  
   function Subtype_Read_Accessor (This_Object : Root_Object.Object_Access) 
      return Root_Object.Object_Access is

      Local_Value: Root_Object.Object_Access := null;

   begin

      if This_Object'tag = Root_Object.Events.SL_TWO_C.Events_SL_TWO_C_Type'tag then
         Local_Value := Root_Object.Events.SL_TWO_C.Get_R11_Super(This_Object); 


      elsif This_Object'tag = Root_Object.Events.SL_TWO_D.Events_SL_TWO_D_Type'tag then
         Local_Value := Root_Object.Events.SL_TWO_D.Get_R11_Super(This_Object); 

        
      end if;

      return Local_Value;

   end Subtype_Read_Accessor;

--
----------------------------------------------------------------------------------------
--

   procedure Subtype_Write_Accessor (
      This_Object :    in  Root_Object.Object_Access;
      R11_Super_Value : in  Root_Object.Object_Access) is
   begin

      if This_Object'tag = Root_Object.Events.SL_TWO_C.Events_SL_TWO_C_Type'tag then

         Root_Object.Events.SL_TWO_C.Put_R11_Super(This_Object, R11_Super_Value);

      elsif This_Object'tag = Root_Object.Events.SL_TWO_D.Events_SL_TWO_D_Type'tag then

         Root_Object.Events.SL_TWO_D.Put_R11_Super(This_Object, R11_Super_Value);

      end if; 

   end Subtype_Write_Accessor;

end Events_R11_Specification;
