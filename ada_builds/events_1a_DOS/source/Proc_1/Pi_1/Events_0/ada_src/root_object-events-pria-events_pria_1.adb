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
--* File Name:               Events_PriA_1.ada
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
with Root_Object.Events.TD;

-- List of services used
with Events_Events2_Delete_Report_Data_Service;
with Events_Events5_Dump_Text_Service;

-- List of bridges used
with Events_RPT9_Perform_Req_Anal_Bridge;
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT2_Test_Passed_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.PriA)
   
   procedure Events_PriA_1 (Test_No       : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      my_test : Root_Object.Object_Access;
      
      temp            : Application_Types.Base_Integer_Type := 1;
      The_Test_Number : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      Events_Events5_Dump_Text_Service.Events_Events5_Dump_Text (
         The_Text => "Finish Event In PriA Triggered  ");
      
      temp := Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).Event_Count;
      temp := temp + 1;
      
      
      Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).Event_Count := temp;
      
      
      if Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).Event_Count =  1 then
         
         Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).Poly_A := True;
         
      end if;
      
      
      if Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).Event_Count =  2 then
         
         if Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).RefA =  10 then
            
            Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).RefA := 20;
         end if;
         
      end if;
      
      
      if Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).Event_Count =  3 then
         
         if Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).RefA =  20 then
            Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).RefA := 30;
            
         end if;
         
      end if;
      
      
      if Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).Event_Count =  3 then
         
         if Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).RefA =  30 then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Event Priorities                ",
               Test_Number        => Test_No,
               Test_Value         => Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).RefA);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Event Priorities                ",
               Failed_Test_Number   => Test_No,
               Failed_Test_Value    => Root_Object.Events.PriA.Events_PriA_type(This_Instance.all).RefA);
            
         end if;
         
         Events_RPT9_Perform_Req_Anal_Bridge.Events_RPT9_Perform_Req_Anal;
         
         my_test := Root_Object.Events.TD.Unconditional_Find_One;
         
         The_Test_Number := Root_Object.Events.TD.Events_TD_type(my_test.all).Current_Test_Number;
         
         
         Events_Events2_Delete_Report_Data_Service.Events_Events2_Delete_Report_Data;
         
         my_test := Root_Object.Events.TD.Unconditional_Find_One;
         
         if my_test /= Null then
            
            Root_Object.Events.TD.Delete (
               Old_Instance => my_test);
         end if;
         
      end if;
      
      Root_Object.Events.PriA.Process_Queue;
   end Events_PriA_1;
   
--
-- End of file Events_PriA_1.ada
--
