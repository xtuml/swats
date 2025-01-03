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
--* File Name:               UDT_AAO_3.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Not Defined
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
--* Domain Name              : User_Defined_Types
--* Domain Key Letter        : UDT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Active_Object_Status_Type;
use type UDT_Domain_Types.Simple_Enumeration_Type;
use type UDT_Domain_Types.One_To_Maximum_Integer;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.UDT.AAO)
   
   procedure UDT_AAO_3 (Enum_Parameter : in     UDT_Domain_Types.Simple_Enumeration_Type;
                        Subset_Param   : in     UDT_Domain_Types.One_To_Maximum_Integer;
                        This_Instance  : in out Root_Object.Object_Access) is
   
      
   begin
      
      if Enum_Parameter =  UDT_Domain_Types.Two then
         
         if Subset_Param =  Root_Object.UDT.AAO.UDT_AAO_type(This_Instance.all).The_Test_Number then
            Root_Object.UDT.AAO.UDT_AAO_type(This_Instance.all).Why := UDT_Domain_Types.OK;
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.UDT.AAO.UDT_AAO4'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.UDT.AAO.AAO4,
                  Target_Instance  => This_Instance,
                  Reason           => UDT_Domain_Types.OK);
               
               Root_Object.UDT.AAO.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         else
            Root_Object.UDT.AAO.UDT_AAO_type(This_Instance.all).Why := UDT_Domain_Types.Number;
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.UDT.AAO.UDT_AAO3'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.UDT.AAO.AAO3,
                  Target_Instance  => This_Instance,
                  Reason           => UDT_Domain_Types.Number);
               
               Root_Object.UDT.AAO.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         end if;
         
      else
         Root_Object.UDT.AAO.UDT_AAO_type(This_Instance.all).Why := UDT_Domain_Types.Enumeral;
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.UDT.AAO.UDT_AAO3'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.UDT.AAO.AAO3,
               Target_Instance  => This_Instance,
               Reason           => UDT_Domain_Types.Enumeral);
            
            Root_Object.UDT.AAO.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      Root_Object.UDT.AAO.Process_Queue;
   end UDT_AAO_3;
   
--
-- End of file UDT_AAO_3.ada
--
