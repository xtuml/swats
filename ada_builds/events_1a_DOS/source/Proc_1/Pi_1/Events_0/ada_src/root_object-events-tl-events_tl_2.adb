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
--* File Name:               Events_TL_2.ada
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

-- List of bridges used
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT2_Test_Passed_Bridge;
with Events_WAW1_What_Env_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.TL)
   
   procedure Events_TL_2 (Test_No       : in     Application_Types.Base_Integer_Type;
                          This_Instance : in out Root_Object.Object_Access) is
   
      
      Total : Application_Types.Base_Integer_Type := 1;
      
      Host : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
      
      Events_WAW1_What_Env_Bridge.Events_WAW1_What_Env (
         Local_Env_Text => Host);
      
      
      if Host =  "ISIM                            " then
         Total := 3;
      else
         Total := 4;
         
      end if;
      
      
      if Root_Object.Events.TL.Events_TL_type(This_Instance.all).Result =  Total then
         
         Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
            Test_Object_Domain => "Event persistence               ",
            Test_Number        => Test_No,
            Test_Value         => 0);
         
      else
         Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
            Failed_Domain_Object => "Event persistence               ",
            Failed_Test_Number   => Test_No,
            Failed_Test_Value    => Root_Object.Events.TL.Events_TL_type(This_Instance.all).Result);
         
      end if;
      
      Root_Object.Events.TL.Process_Queue;
   end Events_TL_2;
   
--
-- End of file Events_TL_2.ada
--
