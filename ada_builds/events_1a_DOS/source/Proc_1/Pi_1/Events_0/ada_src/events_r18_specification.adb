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
--* File Name:               Events_rel_R18.ada
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
--*  package Events_Rel_R18 is new Super_Sub
--*  package Events_R18_Specification 
--*  function Subtype_Read_Accessor 
--*  procedure Subtype_Write_Accessor 
--*
--*************************************************************************************
with Root_Object.Events.BLF;
with Root_Object.Events.BLE;
with Root_Object.Events.BLD;
with Root_Object.Events.BLC;
with Ada.Tags;
use type Ada.Tags.Tag;

package body Events_R18_Specification is
  
   function Subtype_Read_Accessor (This_Object : Root_Object.Object_Access) 
      return Root_Object.Object_Access is

      Local_Value: Root_Object.Object_Access := null;

   begin

      if This_Object'tag = Root_Object.Events.BLF.Events_BLF_Type'tag then
         Local_Value := Root_Object.Events.BLF.Get_R18_Super(This_Object); 


      elsif This_Object'tag = Root_Object.Events.BLE.Events_BLE_Type'tag then
         Local_Value := Root_Object.Events.BLE.Get_R18_Super(This_Object); 


      elsif This_Object'tag = Root_Object.Events.BLD.Events_BLD_Type'tag then
         Local_Value := Root_Object.Events.BLD.Get_R18_Super(This_Object); 


      elsif This_Object'tag = Root_Object.Events.BLC.Events_BLC_Type'tag then
         Local_Value := Root_Object.Events.BLC.Get_R18_Super(This_Object); 

        
      end if;

      return Local_Value;

   end Subtype_Read_Accessor;

--
----------------------------------------------------------------------------------------
--

   procedure Subtype_Write_Accessor (
      This_Object :    in  Root_Object.Object_Access;
      R18_Super_Value : in  Root_Object.Object_Access) is
   begin

      if This_Object'tag = Root_Object.Events.BLF.Events_BLF_Type'tag then

         Root_Object.Events.BLF.Put_R18_Super(This_Object, R18_Super_Value);

      elsif This_Object'tag = Root_Object.Events.BLE.Events_BLE_Type'tag then

         Root_Object.Events.BLE.Put_R18_Super(This_Object, R18_Super_Value);

      elsif This_Object'tag = Root_Object.Events.BLD.Events_BLD_Type'tag then

         Root_Object.Events.BLD.Put_R18_Super(This_Object, R18_Super_Value);

      elsif This_Object'tag = Root_Object.Events.BLC.Events_BLC_Type'tag then

         Root_Object.Events.BLC.Put_R18_Super(This_Object, R18_Super_Value);

      end if; 

   end Subtype_Write_Accessor;

end Events_R18_Specification;
