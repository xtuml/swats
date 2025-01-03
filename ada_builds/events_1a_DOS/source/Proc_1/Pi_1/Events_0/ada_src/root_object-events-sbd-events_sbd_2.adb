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
--* File Name:               Events_sbD_2.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Add the value specified in the attribute to the supertype
--*                           ResultA attribute.
--*                          
--* Comments:                Header written by ASL Translator
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
--*  -----------------                                                                *
--*                                                                                   *
--* Domain Name              : Events
--* Domain Key Letter        : Events
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Events.SprA;

-- List of relationships used
with Events_rel_R14;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.sbD)
   
   procedure Events_sbD_2 (Test          : in     Application_Types.Base_Integer_Type;
                           This_Instance : in out Root_Object.Object_Access) is
   
      
      my_super : Root_Object.Object_Access;
      
      temp : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      Events_Rel_R14.Navigate (
         From  => This_Instance,
         Class => Root_Object.Events.SprA.Events_SprA_type'tag,
         To    => my_super);
      
      temp := Root_Object.Events.SprA.Events_SprA_type(my_super.all).ResultA + Root_Object.Events.sbD.Events_sbD_type(This_Instance.all).Value_To_Add;
      
      
      Root_Object.Events.SprA.Events_SprA_type(my_super.all).ResultA := temp;
      
      Root_Object.Events.sbD.Process_Queue;
   end Events_sbD_2;
   
--
-- End of file Events_sbD_2.ada
--
