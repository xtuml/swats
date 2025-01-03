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
--* File Name:               Function_Calls_BO11_Have_SEVEN_Same_IH_Parameters_Service.adb
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
--* Domain Name              : Function_Calls
--* Domain Key Letter        : Function_Calls
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Function_Calls.OBJONE;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_BO11_Have_SEVEN_Same_IH_Parameters_Service is
   
   procedure Function_Calls_BO11_Have_SEVEN_Same_IH_Parameters (
      Param1        : in     Root_Object.Object_Access;
      Param2        : in     Root_Object.Object_Access;
      Param3        : in     Root_Object.Object_Access;
      Param4        : in     Root_Object.Object_Access;
      Param5        : in     Root_Object.Object_Access;
      Param6        : in     Root_Object.Object_Access;
      Param7        : in     Root_Object.Object_Access;
      Has_It_Passed :    out Boolean;
      What_With     :    out Application_Types.Base_Integer_Type) is
      
   begin
   -- start of BO11_Have_SEVEN_Same_IH_Parameters
      
      if Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_type(Param1.all).Attribute_One =  1 and then
         Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_type(Param2.all).Attribute_One =  2 and then
         Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_type(Param3.all).Attribute_One =  3 and then
         Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_type(Param4.all).Attribute_One =  4 and then
         Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_type(Param5.all).Attribute_One =  5 and then
         Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_type(Param6.all).Attribute_One =  6 and then
         Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_type(Param7.all).Attribute_One =  7 then
         Has_It_Passed := True;
         What_With     := 0;
      else
         Has_It_Passed := False;
         What_With     := Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_type(Param1.all).Attribute_One;
         
      end if;
      
      
   end Function_Calls_BO11_Have_SEVEN_Same_IH_Parameters;
   
end Function_Calls_BO11_Have_SEVEN_Same_IH_Parameters_Service;

--
-- End of file Function_Calls_BO11_Have_SEVEN_Same_IH_Parameters_Service.adb
--
