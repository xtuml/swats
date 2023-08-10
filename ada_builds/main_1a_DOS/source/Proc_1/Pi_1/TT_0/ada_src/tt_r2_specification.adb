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
--* File Name:               TT_rel_R2.ada
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
--*  package TT_Rel_R2 is new Super_Sub
--*  package TT_R2_Specification 
--*  function Subtype_Read_Accessor 
--*  procedure Subtype_Write_Accessor 
--*
--*************************************************************************************
with Root_Object.TT.BT;
with Root_Object.TT.U;
with Root_Object.TT.DT;
with Root_Object.TT.RT;
with Root_Object.TT.TR;
with Ada.Tags;
use type Ada.Tags.Tag;

package body TT_R2_Specification is
  
   function Subtype_Read_Accessor (This_Object : Root_Object.Object_Access) 
      return Root_Object.Object_Access is

      Local_Value: Root_Object.Object_Access := null;

   begin

      if This_Object'tag = Root_Object.TT.BT.TT_BT_Type'tag then
         Local_Value := Root_Object.TT.BT.Get_R2_Super(This_Object); 


      elsif This_Object'tag = Root_Object.TT.U.TT_U_Type'tag then
         Local_Value := Root_Object.TT.U.Get_R2_Super(This_Object); 


      elsif This_Object'tag = Root_Object.TT.DT.TT_DT_Type'tag then
         Local_Value := Root_Object.TT.DT.Get_R2_Super(This_Object); 


      elsif This_Object'tag = Root_Object.TT.RT.TT_RT_Type'tag then
         Local_Value := Root_Object.TT.RT.Get_R2_Super(This_Object); 


      elsif This_Object'tag = Root_Object.TT.TR.TT_TR_Type'tag then
         Local_Value := Root_Object.TT.TR.Get_R2_Super(This_Object); 

        
      end if;

      return Local_Value;

   end Subtype_Read_Accessor;

--
----------------------------------------------------------------------------------------
--

   procedure Subtype_Write_Accessor (
      This_Object :    in  Root_Object.Object_Access;
      R2_Super_Value : in  Root_Object.Object_Access) is
   begin

      if This_Object'tag = Root_Object.TT.BT.TT_BT_Type'tag then

         Root_Object.TT.BT.Put_R2_Super(This_Object, R2_Super_Value);

      elsif This_Object'tag = Root_Object.TT.U.TT_U_Type'tag then

         Root_Object.TT.U.Put_R2_Super(This_Object, R2_Super_Value);

      elsif This_Object'tag = Root_Object.TT.DT.TT_DT_Type'tag then

         Root_Object.TT.DT.Put_R2_Super(This_Object, R2_Super_Value);

      elsif This_Object'tag = Root_Object.TT.RT.TT_RT_Type'tag then

         Root_Object.TT.RT.Put_R2_Super(This_Object, R2_Super_Value);

      elsif This_Object'tag = Root_Object.TT.TR.TT_TR_Type'tag then

         Root_Object.TT.TR.Put_R2_Super(This_Object, R2_Super_Value);

      end if; 

   end Subtype_Write_Accessor;

end TT_R2_Specification;
