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
--* File Name:               DomainB8_Service_Params_Service.adb
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
--* Domain Name              : DomainB
--* Domain Key Letter        : DomainB
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainB_DomainB8_Service_Params_Service is
   
   procedure DomainB_DomainB8_Service_Params (
      Input_Int      : in     Application_Types.Base_Integer_Type;
      Input_Real     : in     Application_Types.Base_Float_Type;
      Input_Text     : in     Application_Types.Base_Text_Type;
      Input_Bool     : in     Boolean;
      The_Return_Val :    out Application_Types.Base_Integer_Type) is
      
   begin
   -- start of DomainB8_Service_Params
      
      if Input_Int =  999 then
         
         if Input_Real =  99.9 then
            
            if Input_Text =  "Passed From Domain A            " then
               
               if Input_Bool =  True then
                  The_Return_Val := 10;
               else
                  The_Return_Val := -10;
               end if;
               
            else
               The_Return_Val := -20;
            end if;
            
         else
            The_Return_Val := -30;
         end if;
         
      else
         The_Return_Val := -40;
         
      end if;
      
      
   end DomainB_DomainB8_Service_Params;
   
end DomainB_DomainB8_Service_Params_Service;

--
-- End of file DomainB_DomainB8_Service_Params_Service.adb
--
