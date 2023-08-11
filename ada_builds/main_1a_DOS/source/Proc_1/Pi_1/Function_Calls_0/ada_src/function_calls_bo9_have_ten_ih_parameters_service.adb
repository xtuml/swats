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
--* File Name:               Function_Calls_BO9_Have_Ten_IH_Parameters_Service.adb
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
with Root_Object.Function_Calls.OBJTEN;
with Root_Object.Function_Calls.OBJNINE;
with Root_Object.Function_Calls.OBJEIGHT;
with Root_Object.Function_Calls.OBJSEVEN;
with Root_Object.Function_Calls.OBJSIX;
with Root_Object.Function_Calls.OBJFIVE;
with Root_Object.Function_Calls.OBJFOUR;
with Root_Object.Function_Calls.OBJTHREE;
with Root_Object.Function_Calls.OBJTWO;
with Root_Object.Function_Calls.OBJONE;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_BO9_Have_Ten_IH_Parameters_Service is
   
   procedure Function_Calls_BO9_Have_Ten_IH_Parameters (
      Param1        : in     Root_Object.Object_Access;
      Param2        : in     Root_Object.Object_Access;
      Param3        : in     Root_Object.Object_Access;
      Param4        : in     Root_Object.Object_Access;
      Param5        : in     Root_Object.Object_Access;
      Param6        : in     Root_Object.Object_Access;
      Param7        : in     Root_Object.Object_Access;
      Param8        : in     Root_Object.Object_Access;
      Param9        : in     Root_Object.Object_Access;
      Param10       : in     Root_Object.Object_Access;
      Has_It_Passed :    out Boolean;
      What_With     :    out Application_Types.Base_Integer_Type) is
      
   begin
   -- start of BO9_Have_Ten_IH_Parameters
      
      if Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_type(Param1.all).Attribute_One       =  1 and then
         Root_Object.Function_Calls.OBJTWO.Function_Calls_OBJTWO_type(Param2.all).Attribute_Two       =  2 and then
         Root_Object.Function_Calls.OBJTHREE.Function_Calls_OBJTHREE_type(Param3.all).Attribute_Three =  3 and then
         Root_Object.Function_Calls.OBJFOUR.Function_Calls_OBJFOUR_type(Param4.all).Attribute_Four    =  4 and then
         Root_Object.Function_Calls.OBJFIVE.Function_Calls_OBJFIVE_type(Param5.all).Attribute_Five    =  5 and then
         Root_Object.Function_Calls.OBJSIX.Function_Calls_OBJSIX_type(Param6.all).Attribute_Six       =  6 and then
         Root_Object.Function_Calls.OBJSEVEN.Function_Calls_OBJSEVEN_type(Param7.all).Attribute_Seven =  7 and then
         Root_Object.Function_Calls.OBJEIGHT.Function_Calls_OBJEIGHT_type(Param8.all).Attribute_Eight =  8 and then
         Root_Object.Function_Calls.OBJNINE.Function_Calls_OBJNINE_type(Param9.all).Attribute_Nine    =  9 and then
         Root_Object.Function_Calls.OBJTEN.Function_Calls_OBJTEN_type(Param10.all).Attribute_Ten      =  10 then
         Has_It_Passed := True;
         What_With     := 0;
      else
         Has_It_Passed := False;
         What_With     := Root_Object.Function_Calls.OBJONE.Function_Calls_OBJONE_type(Param1.all).Attribute_One;
         
      end if;
      
      
   end Function_Calls_BO9_Have_Ten_IH_Parameters;
   
end Function_Calls_BO9_Have_Ten_IH_Parameters_Service;

--
-- End of file Function_Calls_BO9_Have_Ten_IH_Parameters_Service.adb
--
