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
--* File Name:               FTE2_Environment_Number_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This domain based synch service shall return a number: 
--*                           
--*                           1 for ISIM or
--*                           0 for WACA 
--*                           
--*                           defining environment execution.
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
--* Domain Name              : Find_The_Environment
--* Domain Key Letter        : FTE
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.FTE.ENV;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body FTE_FTE2_Environment_Number_Service is
   
   procedure FTE_FTE2_Environment_Number (
      Env_Number :    out Application_Types.Base_Integer_Type) is
      
      My_Env : Root_Object.Object_Access;
      
      A_Value : Application_Types.Base_Integer_Type := 1;
      
   begin
   -- start of FTE2_Environment_Number
      My_Env := Root_Object.FTE.ENV.Unconditional_Find_One;
      A_Value := 99;
      
      if My_Env /= Null then
         
         if Root_Object.FTE.ENV.FTE_ENV_type(My_Env.all).Where_Are_We =  "ISIM                            " then
            A_Value := 1;
         else
            
            if Root_Object.FTE.ENV.FTE_ENV_type(My_Env.all).Where_Are_We =  "WACA                            " then
               A_Value := 0;
            else
               A_Value := -1;
               
            end if;
            
         end if;
         
      else
         
         A_Value := -1;
      end if;
      
      Env_Number := A_Value;
      
      
   end FTE_FTE2_Environment_Number;
   
end FTE_FTE2_Environment_Number_Service;

--
-- End of file FTE_FTE2_Environment_Number_Service.adb
--
