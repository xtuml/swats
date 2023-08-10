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
--* File Name:               Function_Calls_BO9_Have_Ten_IH_Parameters_Service.ads
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

with Application_Types;
with Root_Object;


package Function_Calls_BO9_Have_Ten_IH_Parameters_Service is
   
   
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
      What_With     :    out Application_Types.Base_Integer_Type);
   
end Function_Calls_BO9_Have_Ten_IH_Parameters_Service;

--
-- End of file Function_Calls_BO9_Have_Ten_IH_Parameters_Service.ads
--
